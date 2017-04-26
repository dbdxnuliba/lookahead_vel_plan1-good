/**Copyright(C) 2013 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file:	look_ahead.cpp
 * @author: 陈晓颖，吴承华
 * @date: 	2013-1-10
 * @brief: 	本文件包含前瞻算法的函数实现*/
#include <math.h>
#include "look_ahead.h"
#include "data_definition.h"
#include "interpolation.h"

//前瞻类构造函数
LookAhead::LookAhead(Interpolation* interpolator, uint16_t channel_index,
		NCCCTChannelConfig* channel_config,
		ChannelRealtimeState* realtime_state) {
	//g_log_trace->PrintTrace(TRACE_INFO, LOOKAHEAD, "-->LookAhead::LookAhead");
	m_interpolator = interpolator;
	SetChannelIndex(channel_index, channel_config);
	m_realtime_state = realtime_state;
//	SetLookaheadNum(m_channel_config->lookahead_number);
	m_data_buffer = 0;

	Init();
	//g_log_trace->PrintTrace(TRACE_INFO, LOOKAHEAD, "<--LookAhead::LookAhead");
}

//前瞻类构造函数
LookAhead::~LookAhead() {
	//g_log_trace->PrintTrace(TRACE_INFO, LOOKAHEAD, "-->LookAhead::~LookAhead");
	if (m_data_buffer) {
		delete m_data_buffer;
		m_data_buffer = NULL;
	}
	if(m_vector != NULL) {
		delete[] m_vector;
	}
	if(m_start_point != NULL) {
		delete[] m_start_point;
	}
	//g_log_trace->PrintTrace(TRACE_INFO, LOOKAHEAD, "<--LookAhead::~LookAhead");
}

//前瞻初始化函数
int16_t LookAhead::Init() {
	int16_t res = ERROR_NONE;

	if (!m_data_buffer) {
		m_data_buffer = new CircularBuffer<LineData>(LOOK_AHEAD_BUF_SIZE);
		if (!m_data_buffer) {
//			g_log_trace->PrintTrace(TRACE_INFO, LOOKAHEAD, "-->LookAhead::Init error");
			res = NC_INIT_ERR;
			return res;
		}
	}

	m_vector = new double[m_channel_config->axis_number];
	if(m_vector == NULL) {
		return NC_INIT_ERR;
	}
	m_start_point = new double[m_channel_config->axis_number];
	if(m_start_point == NULL) {
		return NC_INIT_ERR;
	}
	Reset();
	return res;
}

//重启前瞻模块，初始化为初始状态
void LookAhead::Reset() {
	for (int i = 0; i < m_channel_config->axis_number; i++) {
		//在复位时不需要将上一个点的坐标值变为零，否则就会发生坐标跳变。陈晓颖，2013-4-12
		m_last_position.dest_pos[i] = m_realtime_state->cur_pos.pos[i];
		m_vector[i] = 0;
		m_start_point[i] = m_realtime_state->cur_pos.pos[i];
	}
	m_min_acc_for_geo_axis = m_channel_config->channel_axis_config[0]->max_axis_acc;
	for(int i=1; i<3; i++) {
		if(m_min_acc_for_geo_axis > m_channel_config->channel_axis_config[0]->max_axis_acc) {
			m_min_acc_for_geo_axis = m_channel_config->channel_axis_config[0]->max_axis_acc;
		}
	}
	m_prepare_count = 0;
	m_last_speed = 0;
	m_dist_len = 0;
	m_min_len = 0;
	m_has_vector = false;
	m_has_position = false;
	SetLookaheadNum(m_channel_config->lookahead_number);
	m_data_buffer->ClearBuf();
	m_pre_data = NULL;
	m_tool_change_axis_move = 0;
}

//设置该轴当前位置
void LookAhead::SetCurPos(uint16_t axis_index, double pos) {
	m_last_position.dest_pos[axis_index] = pos;
	m_start_point[axis_index] = pos;
	return;
}

//判断前瞻缓冲区是否满
bool LookAhead::IsBufFull() {
	return (m_data_buffer->BufLen() >= LOOK_AHEAD_BUF_SIZE);
}

//将前瞻处理后的数据发送给插补模块
void LookAhead::InsertDataToInterpolation(LineData* data) {
	if (!data)
		return;
//	// 将半径变为正值
//	if (point2->extra_mov_data.extra_data[EX_R] < 0) {
//		point2->extra_mov_data.extra_data[EX_R] = -point2->extra_mov_data.extra_data[EX_R];
//	}
//	data->axis_mov_data.cur_speed[0] = 0;
	m_interpolator->InsertInterpolationData(data);

	//保存最后点的未速度和坐标
	if (data->interpolation_flag) {
		m_last_speed = data->feed_info.end_feed_speed;
		m_last_position = data->axis_mov_data;
		m_has_position = true;
	}
}

//前瞻对外接口，将数据放入前瞻缓冲区中，并调用前瞻处理程序进行处理
int16_t LookAhead::Process(LineData* line_data) {
	int16_t res = ERROR_NONE;
	line_data->is_consider_angle = false;
//	g_log_trace->PrintTrace(TRACE_INFO, LOOKAHEAD,
//			"-->LookAhead::Process");
//	if (line_data->interpolation_flag) {
//		// 将指令中的单位转换成需要的单位
//		TransDataUnit(line_data);
//	}
	//如果线段的长度几乎为零，则认为当前行不插补
	if(line_data->axis_mov_data.dist < ZERO_DOUBLE) {
		line_data->interpolation_flag = 0;
	}
	if(line_data->m_commands.HasCmd(M06)) {
		for(int index=0; index<m_channel_config->axis_number; index++) {
			//解决CNC-2791，记下换刀后轴是否移动的状态，在下次轴移动时其加速度不予计算，直接取所有轴加速度中的最小值；否则可能有加速度超限的情况
			if (m_channel_config->channel_axis_config[index]->tool_change_axis_move
					!= 0
					&& m_channel_config->channel_axis_config[index]->axis_type
							!= INVALID_AXIS) {
				m_tool_change_axis_move |= (1 << index);
			}
		}
	}
	if (!line_data->interpolation_flag) {
		line_data->axis_mov_data.dist = 0.0;
//		line_data->axis_mov_data.cur_speed[0] = 0.0;
		line_data->feed_info.usr_target_feed_speed = 0.0;
	}
	else {
		if(m_tool_change_axis_move == 0) {
			if(line_data->interpolation_type == G00 || line_data->interpolation_type == G01) {
				CalculateLineAcc(line_data, m_start_point);
			}
			else if(line_data->interpolation_type == G02 || line_data->interpolation_type == G03 ||
					line_data->interpolation_type == G02_4) {
				CalculateArcAcc(line_data);
			}
		}
		else {
			if(line_data->interpolation_type == G00 || line_data->interpolation_type == G01) {
				line_data->acc = m_channel_config->channel_axis_config[0]->max_axis_acc;
				line_data->jerk = m_channel_config->channel_axis_config[0]->max_axis_jerk;
				//解决CNC-2791
				for(int i=0; i<m_channel_config->axis_number; i++) {
					if(line_data->axis_mov_data.CheckMask(i) != 0) {
						m_tool_change_axis_move &= (~(1<<i));
						if(line_data->acc > m_channel_config->channel_axis_config[i]->max_axis_acc) {
							line_data->acc = m_channel_config->channel_axis_config[i]->max_axis_acc;
						}
						if(line_data->jerk > m_channel_config->channel_axis_config[i]->max_axis_jerk) {
							line_data->jerk = m_channel_config->channel_axis_config[i]->max_axis_jerk;
						}
					}
				}
			}
			else if(line_data->interpolation_type == G02 || line_data->interpolation_type == G03 ||
					line_data->interpolation_type == G02_4) {
				CalculateArcAcc(line_data);
			}
		}
	}

	int16_t len = m_data_buffer->WriteData(line_data, 1);

	if(line_data->interpolation_flag != 0) {
		for(int i=0; i<m_channel_config->axis_number; i++) {
			m_start_point[i] = line_data->axis_mov_data.dest_pos[i];
		}
	}
	if (len <= 0) {
//		g_log_trace->PrintTrace(TRACE_INFO, LOOKAHEAD,
//					"-->LookAhead::Process write data error");
		res = INVALID_PARA; // TODO:返回错误类型缓冲区满
	}

//#ifndef LOOK_AHEAD_USE_THREAD
	// 前瞻处理程序
	LookAheadHandle();
//#endif
	return res;
}

//前瞻线程函数，执行前瞻处理
void LookAhead::LookAheadThread(void* args) {
	LookAhead* lookahead = static_cast<LookAhead*>(args);
	lookahead->LookAheadHandle();
}

//前瞻处理程序
void LookAhead::LookAheadHandle() {
	int16_t len = m_data_buffer->BufLen();

	if (len > m_prepare_count) {
		// 有新的数据,进行预处理及前瞻处理

		LineData *data;

		int16_t cur = m_prepare_count;

		if (cur == 0) {
		} else {
			int index = cur - 1;
			data = m_data_buffer->ReadDataPtr(index);
			while(!data->interpolation_flag && index > 0){
				index--;
				data = m_data_buffer->ReadDataPtr(index);
			}
			if (data->interpolation_flag){
//				g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "0:%d,%d,%f",
//												pre_data->line_no, pre_data->interpolation_flag,
//												pre_data->axis_mov_data.dest_pos[2]);
//							g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "0:%d,%d,%f",
//									data->line_no, data->interpolation_flag,
//									data->axis_mov_data.dest_pos[2]);
				m_pre_data = data;
			} 
		}

		while (cur < len) {
			data = m_data_buffer->ReadDataPtr(cur);
//			g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "1:%d,%d,%f",
//								pre_data->line_no, pre_data->interpolation_flag,
//								pre_data->axis_mov_data.dest_pos[2]);
//			g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "1:%d,%d,%f",
//					data->line_no, data->interpolation_flag,
//					data->axis_mov_data.dest_pos[2]);
			if (data->interpolation_flag) {
//				g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "2:%d,%d,%f",
//									pre_data->line_no, pre_data->interpolation_flag,
//									pre_data->axis_mov_data.dest_pos[2]);
//				g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "2:%d,%d,%f",
//						data->line_no, data->interpolation_flag,
//						data->axis_mov_data.dest_pos[2]);
				PrepareProcess(m_pre_data, data);
			}

			if (data->over_flag) {
//				g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "3:%d,%d,%f",
//													pre_data->line_no, pre_data->interpolation_flag,
//													pre_data->axis_mov_data.dest_pos[2]);
//				g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "3:%d,%d,%f",
//									data->line_no, data->interpolation_flag,
//									data->axis_mov_data.dest_pos[2]);
				// 程序结束,结束之前的前瞻处理
				if (data->interpolation_flag) {
					EndProcess(cur + 1);
				} else {
					data->feed_info.end_feed_speed = 0.0;
					EndProcess(cur);
					InsertDataToInterpolation(data);
					m_data_buffer->Next(); // 不向插补发送当前指令
				}

				// 前瞻程序复位
				//2016.5.17,GLH,MDA模式下，当程序执行完毕时不需要复位，否则设置错误的m_start_point
				if(data->m_commands.HasCmd(M02) || data->m_commands.HasCmd(M30)) {
					Reset();
				}

				// 已处理cur+1条数据
				len -= cur + 1;
				cur = 0;
				m_pre_data = NULL;
			} else if (data->feed_info.no_need_lookahead || data->NeedToStop()
					|| data->m_commands.HasCmd(M01) || m_channel_config->machining_mode
					|| data->feed_info.speed_ctrl_mode == TAPPING_MODE //攻丝方式
					|| data->feed_info.speed_ctrl_mode == ACCURATE_STOP_MODE //准停方式
					|| data->protection_zone_alarm_flag != 0
					|| data->feedback_flag != 0 || data->para_entry.para_entry_values_mask != 0) {
				data->feed_info.end_feed_speed = 0.0;
//				g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "4:%d,%d,%f",
//													pre_data->line_no, pre_data->interpolation_flag,
//													pre_data->axis_mov_data.dest_pos[2]);
//				g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "4:%d,%d,%f",
//									data->line_no, data->interpolation_flag,
//									data->axis_mov_data.dest_pos[2]);
				//结束之前的前瞻处理
				EndProcess(cur);

				if (data->interpolation_flag) {
					SetEndSpeed(data, 0);
					m_pre_data = data;
				}

				//直接向插补发送当前指令
				InsertDataToInterpolation(data);
				m_data_buffer->Next();

				// 已处理cur+1条数据
				len -= cur + 1;
				cur = 0;
			} else {
//				g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "5:%d,%d,%f",
//													pre_data->line_no, pre_data->interpolation_flag,
//													pre_data->axis_mov_data.dest_pos[2]);
//				g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "5:%d,%d,%f",
//									data->line_no, data->interpolation_flag,
//									data->axis_mov_data.dest_pos[2]);
				if (m_pre_data && data->interpolation_flag != 0) {
					double stop_dist = (m_pre_data->feed_info.end_feed_speed * m_pre_data->feed_info.end_feed_speed) /
							(2.0 * data->acc);
					if (data->axis_mov_data.dist
							>= stop_dist) {
//						g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "6:%d,%d,%f",
//															pre_data->line_no, pre_data->interpolation_flag,
//															pre_data->axis_mov_data.dest_pos[2]);
//						g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "6:%d,%d,%f",
//											data->line_no, data->interpolation_flag,
//											data->axis_mov_data.dest_pos[2]);
						// 线段长度大于末速度要求长度,可以进行前瞻
						GetLookAheadData(cur, false);

						// 已处理cur条数据
						len -= cur;
						cur = 1;
					} else {
						cur++;
					}
				} else {
					cur++;
				}
				if (data->interpolation_flag != 0) {
//					g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "7:%d,%d,%f",
//														pre_data->line_no, pre_data->interpolation_flag,
//														pre_data->axis_mov_data.dest_pos[2]);
//					g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "7:%d,%d,%f",
//										data->line_no, data->interpolation_flag,
//										data->axis_mov_data.dest_pos[2]);
					m_pre_data = data;
				}
			}

		}
	}

	if (len >= m_lookahead_count) {
		// 缓冲区满,强制计算前瞻数据
		while (len >= m_lookahead_count) {
			ForceOneProcess();
			len--;
		}
	} else if (len > 1) {
		if (NormalProcess())
			len--;
	}
	m_prepare_count = len;
}

//设置线段末速度
void LookAhead::SetEndSpeed(LineData* data, double speed) {
	data->feed_info.end_feed_speed = speed;

	// 事先计算好末速度停下来的最短距离V^2/(2*a),保存在data->axis_mov_data.cur_speed[0]中
//	data->axis_mov_data.cur_speed[0] = 0.5 * pow(speed, 2)
//			/ data->acc;
}

//预处理数据，计算长度，最大夹角速度等信息
void LookAhead::PrepareProcess(LineData* pre_data, LineData* line_data) {
	if (pre_data == NULL) {
		LineData data;
		FillLineDataByLastPos(&data);

#ifdef LOOK_AHEAD_COMPUTE_CIRCLE
		//将圆弧数据填充完整
		FillCircleData(&data, line_data);
#endif

#ifdef LOOK_AHEAD_COMPUTE_DIST
		// 计算段长
		line_data->axis_mov_data.dist = Distant(&data, line_data);
#endif

		// 计算线段速度
		line_data->feed_info.calc_target_feed_speed = CalcSpeed(line_data);

		// 计算方向向量和轴速度
		AngleSpeed(&data, line_data);

		// 设置末速度,此时末速度等于目标速度
		SetEndSpeed(line_data, line_data->feed_info.calc_target_feed_speed);
	} else {

#ifdef LOOK_AHEAD_COMPUTE_CIRCLE
		//将圆弧数据填充完整
		FillCircleData(pre_data, line_data);
#endif

#ifdef LOOK_AHEAD_COMPUTE_DIST
		// 计算段长
		line_data->axis_mov_data.dist = Distant(pre_data, line_data);
#endif

		// 计算线段末速度
		line_data->feed_info.calc_target_feed_speed = CalcSpeed(line_data);

		// 计算上一条线段最大夹角速度,同时也计算方向向量和轴速度
		double speed = AngleSpeed(pre_data, line_data);
		if (pre_data->feed_info.end_feed_speed > speed) {
			SetEndSpeed(pre_data, speed);
		}

		// 设置末速度,此时末速度等于目标速度
		SetEndSpeed(line_data, line_data->feed_info.calc_target_feed_speed);

		// 计算上一条线段最大末速度是否超过本条线段的目标速度
		if (pre_data->feed_info.end_feed_speed
				> line_data->feed_info.calc_target_feed_speed) {
			SetEndSpeed(pre_data, line_data->feed_info.calc_target_feed_speed);
		}
	}

	// 计算线段总长
	m_dist_len += line_data->axis_mov_data.dist;
}

//获得len个前瞻数据
void LookAhead::GetLookAheadData(int16_t len, bool end) {
	if (len <= 0)
		return;

	int32_t i;
	LineData *data;
	double v0, v1, vmax, dist_len;

	// 获得上一个点的末速度
	v0 = m_last_speed;

	// 计算加速限制条件,v1^2 <= v0^2+2*a*L
	for (i = 0; i < len; i++) {
		data = m_data_buffer->ReadDataPtr(i);
		if (!data->interpolation_flag || data->axis_mov_data.dist < ZERO_DOUBLE) {
			data->feed_info.end_feed_speed = v0;
			data->axis_mov_data.dist = 0.0;
//			data->axis_mov_data.cur_speed[0] = 0.0;
			continue;
		}
		v1 = data->feed_info.end_feed_speed;
		if (v0 < v1) {
			vmax = sqrt(
					pow(v0, 2)
							+ 2 * data->axis_mov_data.dist * data->acc);
			if (vmax < v1)
				SetEndSpeed(data, vmax);
		}

		v0 = data->feed_info.end_feed_speed;
	}

	// 获得最后一个点的末速度
	int find_index = 1;
	LineData* temp_data = m_data_buffer->ReadDataPtr(len - 1);
	while(((temp_data->interpolation_flag == 0) || (temp_data->axis_mov_data.dist < ZERO_DOUBLE)) &&
			(find_index < len)) {
		find_index++;
		temp_data = m_data_buffer->ReadDataPtr(len - find_index);
	}
	v0 = temp_data->feed_info.end_feed_speed;
	dist_len = temp_data->axis_mov_data.dist;
	find_index++;
	double acc0 = temp_data->acc;

	// 计算减速限制条件, 从后向前计算,v1^2 <= v0^2+2*a*L
	for (i = len - find_index; i >= 0; i--) {
		data = m_data_buffer->ReadDataPtr(i);
		if(data->interpolation_flag == 0 || data->axis_mov_data.dist < ZERO_DOUBLE) {
			continue;
		}
		v1 = data->feed_info.end_feed_speed;
		if (!data->interpolation_flag) {
			data->feed_info.end_feed_speed = v0;
			data->axis_mov_data.dist = 0.0;
//			data->axis_mov_data.cur_speed[0] = 0.0;
		}
		if (v0 < v1) {
			vmax = sqrt(pow(v0, 2) + 2 * dist_len * acc0);
			if (vmax < v1)
				SetEndSpeed(data, vmax);
		}
		v0 = data->feed_info.end_feed_speed;
		acc0 = data->acc;
		dist_len = data->axis_mov_data.dist;
	}

	// 前瞻完成,发送数据给插补模块
	for (i = 0; i < len; i++) {
		InsertDataToInterpolation(m_data_buffer->ReadDataPtr(0));
		m_data_buffer->Next();
	}

	m_min_len = 0;

	if (end) {
		m_dist_len = 0;
		m_has_vector = false;
	} else {
		// 计算剩余线段长度
		m_dist_len = 0;
		len = m_data_buffer->BufLen();
		for (i = 0; i < len; i++) {
			m_dist_len += m_data_buffer->ReadDataPtr(i)->axis_mov_data.dist;
		}
	}
}

//结束len之前数据的前瞻处理
void LookAhead::EndProcess(int16_t len) {

	if (len <= 0)
		return;
	// 最后一点末速度为0
	int index = len - 1;
	LineData* data;
	data = m_data_buffer->ReadDataPtr(index);
	while (!data->interpolation_flag && index > 0) {
		data->feed_info.end_feed_speed = 0.0;
		index--;
		data = m_data_buffer->ReadDataPtr(index);
	}
	SetEndSpeed(m_data_buffer->ReadDataPtr(index), 0);

	GetLookAheadData(len, true);
}

//无论前瞻条件是否满足,强制进行第一条线段的前瞻处理
void LookAhead::ForceOneProcess() {
	int16_t len = m_data_buffer->BufLen();
	if (len <= 0)
		return;

	int16_t i;
	LineData *data;
	double v0, v1, vmax;

	data = m_data_buffer->ReadDataPtr(0);

#ifdef LOOK_AHEAD_DISTANT_LIMIT
	// 当已经达到最大前瞻条数时,总长度仍不够当前点的前瞻条件,用总长度限制当前点的最大末速度
	if (len >= m_lookahead_count) {
		double total_len = m_dist_len - data->axis_mov_data.dist;
		vmax = sqrt(2*total_len*data->acc);
		if (data->feed_info.end_feed_speed > vmax) {
			SetEndSpeed(data, vmax);
		}
	}
#endif

	// 计算加速限制条件,v1^2 <= v0^2+2*a*L
	v0 = m_last_speed;
	v1 = data->feed_info.end_feed_speed;
	if (v0 < v1) {
		vmax = sqrt(
				pow(v0, 2) + 2 * data->axis_mov_data.dist * data->acc);
		if (vmax < v1)
			SetEndSpeed(data, vmax);
	}

	double min_square_f = 0.0;
	LineData* next_data;
	double square_f;
	// 计算减速限制条件,比较各线段的最短停止长度
	for (i = len -1; i > 0; i--) {
		next_data = m_data_buffer->ReadDataPtr(i);
		if((next_data != NULL) && (next_data->interpolation_flag)) {
			square_f = next_data->feed_info.end_feed_speed * next_data->feed_info.end_feed_speed;
			if(square_f > min_square_f) {
				square_f = min_square_f;
			}
			min_square_f = square_f + 2.0 * next_data->acc * next_data->axis_mov_data.dist;
		}
	}
	//从后往前推得到的最大速度平方值min_square_f小于当前速度平方，则降低当前速度
	if(min_square_f < (data->feed_info.end_feed_speed * data->feed_info.end_feed_speed)) {
		data->feed_info.end_feed_speed = sqrt(min_square_f);
	}

	// 第一条线段前瞻完成,发送数据给插补模块
	m_dist_len -= data->axis_mov_data.dist;
	m_min_len = 0;
	InsertDataToInterpolation(m_data_buffer->ReadDataPtr(0));
	m_data_buffer->Next();
}

//正常前瞻处理，条件满足时才进行计算,否则等待后继数据
int16_t LookAhead::NormalProcess() {
	int16_t res = 0;

	if (m_min_len == 0) {
		// 若没有第一条线段末速度最小长度,则进行计算

		double stop_dist = CalculateStopDist(0);

		// 加上本条线段的长度
		m_min_len += stop_dist;
	}

	if (m_dist_len >= m_min_len) {
		// 第一条线段前瞻条件满足,可以开始计算
		ForceOneProcess();
		res = 1;
	}
	return res;
}

//从多个输入速度中取出最小者
double LookAhead::v_min(int num, ...) {
	double m, n;
	va_list arg_ptr;
	va_start(arg_ptr, num);
	m = va_arg(arg_ptr,double);
	for (int i = 1; i < num; i++) {
		n = va_arg(arg_ptr,double);
		if (m > n) {
			m = n;
		}
	}
	va_end(arg_ptr);
	return m;
}

//用当前坐标填充LineData
void LookAhead::FillLineDataByCurPos(LineData* data) {
	data->interpolation_type = G00;
	for (int i = 0; i < m_channel_config->axis_number; i++) {
		m_last_position.dest_pos[i] = m_realtime_state->cur_pos.pos[i];
	}
	data->axis_mov_data = m_last_position;
}

//用上一条指令坐标填充LineData
void LookAhead::FillLineDataByLastPos(LineData* data) {
	if (m_has_position) {
		for (int i = 0; i < m_channel_config->axis_number; i++) {
			//在复位时不需要将上一个点的坐标值变为零，否则就会发生坐标跳变。陈晓颖，2013-4-12
			m_last_position.dest_pos[i] = m_realtime_state->cur_pos.pos[i];
		}
		data->interpolation_type = G00;
		data->axis_mov_data = m_last_position;
	} else {
		FillLineDataByCurPos(data);
	}
}

//转换数据为需要的单位
void LookAhead::TransDataUnit(LineData* data) {
#if (POS_POWER != 1)
	for (int i = 0; i < m_channel_config->axis_number; i++) {
		data->axis_mov_data.dest_pos[i] *= POS_POWER;
	}
	data->axis_mov_data.dist *= POS_POWER;
#endif
	if (DataIsArc(data->interpolation_type)) {
#if (POS_POWER != 1)
		data->extra_mov_data.extra_data[EX_R] *= POS_POWER;
		data->extra_mov_data.extra_data[EX_Q] *= POS_POWER;
		data->extra_mov_data.extra_data[EX_I] *= POS_POWER;
		data->extra_mov_data.extra_data[EX_J] *= POS_POWER;
		data->extra_mov_data.extra_data[EX_K] *= POS_POWER;
		data->extra_mov_data.extra_data[EX_I1] *= POS_POWER;
		data->extra_mov_data.extra_data[EX_J1] *= POS_POWER;
		data->extra_mov_data.extra_data[EX_K1] *= POS_POWER;
#endif
//		data->extra_mov_data.extra_data[EX_AR] *= (PI / 180);
	}
}

//计算中点及中点与起点的偏移
void LookAhead::GetMidXY(const LineData* point1, const LineData* point2,
		double* mid, double* x, double* y) {
	mid[0] = (point1->axis_mov_data.dest_pos[0]
			+ point2->axis_mov_data.dest_pos[0]) / 2;
	mid[1] = (point1->axis_mov_data.dest_pos[1]
			+ point2->axis_mov_data.dest_pos[1]) / 2;
	mid[2] = (point1->axis_mov_data.dest_pos[2]
			+ point2->axis_mov_data.dest_pos[2]) / 2;

	if (point2->coord_info.surface_flag == 0) { //0:XY* 1:ZX* 2:YZ*
		mid[2] = point1->axis_mov_data.dest_pos[2];
		*x = mid[0] - point1->axis_mov_data.dest_pos[0];
		*y = mid[1] - point1->axis_mov_data.dest_pos[1];
	} else if (point2->coord_info.surface_flag == 1) {
		mid[1] = point1->axis_mov_data.dest_pos[1];
		*x = mid[2] - point1->axis_mov_data.dest_pos[2];
		*y = mid[0] - point1->axis_mov_data.dest_pos[0];
	} else {
		mid[0] = point1->axis_mov_data.dest_pos[0];
		*x = mid[1] - point1->axis_mov_data.dest_pos[1];
		*y = mid[2] - point1->axis_mov_data.dest_pos[2];
	}
}

//已经提供IJK值,计算圆弧半径(IJK值就是圆心)
int16_t LookAhead::GetRadiusFromIJK(const LineData* point1, LineData* point2) {
	double r, i, j, k;

	i = point2->extra_mov_data.extra_data[EX_I]
			- point1->axis_mov_data.dest_pos[0];
	j = point2->extra_mov_data.extra_data[EX_J]
			- point1->axis_mov_data.dest_pos[1];
	k = point2->extra_mov_data.extra_data[EX_K]
			- point1->axis_mov_data.dest_pos[2];

	if (point2->coord_info.surface_flag == 0) { //0:XY* 1:ZX* 2:YZ*
		r = sqrt(i * i + j * j);
	} else if (point2->coord_info.surface_flag == 1) {
		r = sqrt(k * k + i * i);
	} else {
		r = sqrt(j * j + k * k);
	}

	point2->extra_mov_data.extra_data[EX_R] = r;
	return ERROR_NONE;
}

//已经提供IJK值,计算圆弧角度
int16_t LookAhead::GetAngleFromIJK(const LineData* point1, LineData* point2) {
	int16_t res = ERROR_NONE;

	uint16_t distant_type = point2->interpolation_type;

	//中点坐标
	double mid[3];

	// xy是中点到起点的偏移量,r是半径
	double x, y, r;

	// 得到半径
	r = point2->extra_mov_data.extra_data[EX_R];

	// 得到中点
	GetMidXY(point1, point2, mid, &x, &y);

	// 起点与终点相同,全圆
	if (IS_ZERO(x*x+y*y)) {
		point2->extra_mov_data.extra_data[EX_AR] = 2 * PI;
		return res;
	} else if (IS_ZERO(r)) {
		// 半径太小
//		g_log_trace->PrintTrace(TRACE_INFO, LOOKAHEAD,
//				"LookAhead::GetAngleFromIJK Error : r is zero");
		point2->extra_mov_data.extra_data[EX_AR] = PI;
		return res;
	}

	double h = pow(r, 2) - pow(x, 2) - pow(y, 2);

	if (IS_ZERO(h)) {
		// 圆心就是弦中点
		point2->extra_mov_data.extra_data[EX_AR] = PI;
	} else if (h < 0) {
		// 出错,半径没有弦长的一半长
//		g_log_trace->PrintTrace(TRACE_INFO, LOOKAHEAD,
//				"LookAhead::GetAngleFromIJK Error ijk: r short than bow");
		res = INVALID_PARA;
	} else {
		h = sqrt(h);

		// 计算圆心坐标
		double center[3];
		center[0] = point2->extra_mov_data.extra_data[EX_I];
		center[1] = point2->extra_mov_data.extra_data[EX_J];
		center[2] = point2->extra_mov_data.extra_data[EX_K];

		// 优劣弧标志
		bool bigArc = false;

		if (x == 0) {
			// x=0为垂线
			if (y > 0)
				bigArc = false;
			else
				bigArc = true;

			if (point2->coord_info.surface_flag == 0) { //0:XY* 1:ZX* 2:YZ*
				if (center[0] < mid[0])
					bigArc = !bigArc;
			} else if (point2->coord_info.surface_flag == 1) {
				if (center[2] < mid[2])
					bigArc = !bigArc;
			} else {
				if (center[1] < mid[1])
					bigArc = !bigArc;
			}
		} else {
			if (x > 0 && y >= 0) {
				bigArc = false;
			} else if (x < 0 && y <= 0) {
				bigArc = true;
			} else if (x > 0 && y <= 0) {
				bigArc = false;
			} else if (x < 0 && y >= 0) {
				bigArc = true;
			}

			if (point2->coord_info.surface_flag == 0) { //0:XY* 1:ZX* 2:YZ*
				if (center[1] > mid[1])
					bigArc = !bigArc;
			} else if (point2->coord_info.surface_flag == 1) {
				if (center[0] > mid[0])
					bigArc = !bigArc;
			} else {
				if (center[2] > mid[2])
					bigArc = !bigArc;
			}
		}

		if (!DataIsClockWise(distant_type)) {
			// 逆时针方向优劣弧与顺时针方向正好相反
			bigArc = !bigArc;
		}

		// 计算劣弧张角
		double angle = asin(sqrt(1 - pow(h / r, 2))) * 2;
		if (bigArc) {
			// 转为优弧
			angle = 2 * PI - angle;
		}
		point2->extra_mov_data.extra_data[EX_AR] = angle;
	}
	return res;
}

//根据输入两个终点信息，根据半径计算圆心及圆弧角度
int16_t LookAhead::GetIJKAngleFromRadius(const LineData* point1,
		LineData* point2) {
	int16_t res = ERROR_NONE;

	uint16_t distant_type = point2->interpolation_type;

	//中点坐标
	double mid[3];

	// xy是中点到起点的偏移量,r是半径
	double x, y, r;

	// 得到半径
	r = point2->extra_mov_data.extra_data[EX_R];

	GetMidXY(point1, point2, mid, &x, &y);

	// 起点与终点相同,零度圆
	if (IS_ZERO(x*x+y*y)) {
		point2->extra_mov_data.extra_data[EX_I] =
				point1->axis_mov_data.dest_pos[0];
		point2->extra_mov_data.extra_data[EX_J] =
				point1->axis_mov_data.dest_pos[1];
		point2->extra_mov_data.extra_data[EX_K] =
				point1->axis_mov_data.dest_pos[2];
		point2->extra_mov_data.extra_data[EX_AR] = 0;
		return res;
	}

	// 计算圆心到弦中点的长度
	double h = r * r - x * x - y * y;

	if (IS_ZERO(h)) {
		// 圆心就是弦中点
		point2->extra_mov_data.extra_data[EX_I] = mid[0];
		point2->extra_mov_data.extra_data[EX_J] = mid[1];
		point2->extra_mov_data.extra_data[EX_K] = mid[2];
		point2->extra_mov_data.extra_data[EX_AR] = PI;
	} else if (h < 0) {
		// 出错,半径没有弦长的一半长
//		g_log_trace->PrintTrace(TRACE_INFO, LOOKAHEAD,
//				"LookAhead::DistantCicle Error:r short than bow");
		res = INVALID_PARA;
	} else {
		// 计算圆心

		h = sqrt(h);

		double angle;

		if (x == 0) {
			if (y > 0)
				angle = PI / 2;
			else
				angle = -PI / 2;
		} else {
			angle = atan(y / x);
		}

		double xoff = h * sin(angle), yoff = -h * cos(angle);

		if (x > 0 && y >= 0) {
			if (r < 0) {
				xoff = -xoff;
				yoff = -yoff;
			}
		} else if (x < 0 && y <= 0) {
			if (r > 0) {
				xoff = -xoff;
				yoff = -yoff;
			}
		} else if (x > 0 && y <= 0) {
			if (r < 0) {
				xoff = -xoff;
				yoff = -yoff;
			}
		} else if (x < 0 && y >= 0) {
			if (r > 0) {
				xoff = -xoff;
				yoff = -yoff;
			}
		} else {
			// x为0,垂线
			if (r < 0) {
				xoff = -xoff;
				yoff = -yoff;
			}
		}

		if (!DataIsClockWise(distant_type)) {
			// 逆时针方向,圆心与顺时针正好相对
			xoff = -xoff;
			yoff = -yoff;
		}

		if (point2->coord_info.surface_flag == 0) { //0:XY* 1:ZX* 2:YZ*
			point2->extra_mov_data.extra_data[EX_I] = mid[0] + xoff;
			point2->extra_mov_data.extra_data[EX_J] = mid[1] + yoff;
			point2->extra_mov_data.extra_data[EX_K] =
					point1->axis_mov_data.dest_pos[2];
		} else if (point2->coord_info.surface_flag == 1) {
			point2->extra_mov_data.extra_data[EX_I] = mid[0] + yoff;
			point2->extra_mov_data.extra_data[EX_J] =
					point1->axis_mov_data.dest_pos[1];
			point2->extra_mov_data.extra_data[EX_K] = mid[2] + xoff;
		} else {
			point2->extra_mov_data.extra_data[EX_I] =
					point1->axis_mov_data.dest_pos[0];
			point2->extra_mov_data.extra_data[EX_J] = mid[1] + xoff;
			point2->extra_mov_data.extra_data[EX_K] = mid[2] + yoff;
		}

		// 计算劣弧张角
		angle = asin(sqrt(1 - pow(h / r, 2))) * 2;

		if (r < 0) {
			// 转为优弧
			angle = 2 * PI - angle;
		}
		point2->extra_mov_data.extra_data[EX_AR] = angle;
	}
	return res;
}

//根据输入两个终点信息，将圆数据填充完整,填充的数据有:半径,IJK值,圆弧角度
int16_t LookAhead::FillCircleData(const LineData* point1, LineData* point2) {
	int16_t res = ERROR_NONE;

	uint16_t distant_type = point2->interpolation_type;

	//线段的类型如果不是圆弧则不必计算
	if (!DataIsArc(distant_type))
		return res;

	if ((point2->extra_mov_data.mask & (1 << EX_I))
			|| (point2->extra_mov_data.mask & (1 << EX_J))
			|| (point2->extra_mov_data.mask & (1 << EX_K))) {
		// 已经提供IJK值,计算半径
		GetRadiusFromIJK(point1, point2);
		return GetAngleFromIJK(point1, point2);
	} else if (point2->extra_mov_data.mask & (1 << EX_R)) {
		// 已经提供半径,根据半径计算圆心和角度
		return GetIJKAngleFromRadius(point1, point2);
	} else {
		// 出错,没有提供R和IJK值
//		g_log_trace->PrintTrace(TRACE_INFO, LOOKAHEAD,
//				"LookAhead::DistantCicle Error:no r and ijk");
		res = INVALID_PARA;
	}
	return res;
}

//计算第一条线段的长度
double LookAhead::Distant(const LineData* point) {
	LineData data;

	FillLineDataByLastPos(&data);
	return Distant(&data, point);
}

//根据输入两个点位置信息，计算出两点间的路线长度
double LookAhead::Distant(const LineData* point1, const LineData* point2) {
	double distant_long;
	double start_pos[3], end_pos[3];
	uint16_t distant_type;

	start_pos[0] = point1->axis_mov_data.dest_pos[0];
	start_pos[1] = point1->axis_mov_data.dest_pos[1];
	start_pos[2] = point1->axis_mov_data.dest_pos[2];

	end_pos[0] = point2->axis_mov_data.dest_pos[0];
	end_pos[1] = point2->axis_mov_data.dest_pos[1];
	end_pos[2] = point2->axis_mov_data.dest_pos[2];

	//读出路线的类型，0，1表示直线，2，3表示圆弧
	distant_type = point2->interpolation_type;

	//计算相邻两点的段长
	if (distant_type == G00 || distant_type == G01) {
		distant_long = sqrt(
				pow(end_pos[0] - start_pos[0], 2)
						+ pow(end_pos[1] - start_pos[1], 2)
						+ pow(end_pos[2] - start_pos[2], 2)); //线段长度
	} else if (DataIsArc(distant_type)) {
		//获得圆弧长度
		distant_long = DistantCircle(point1, point2);
	} else {
		//不能识别的数据类型,按直线计算
		distant_long = sqrt(
				pow(end_pos[0] - start_pos[0], 2)
						+ pow(end_pos[1] - start_pos[1], 2)
						+ pow(end_pos[2] - start_pos[2], 2));

//		g_log_trace->PrintTrace(TRACE_INFO, LOOKAHEAD,
//			"Distant GCode error:%d", distant_type);
	}
	return distant_long;
}

//根据输入两个终点位置信息，圆弧，圆锥，螺线长度
double LookAhead::DistantCircle(const LineData* point1,
		const LineData* point2) {
	double distant_long;
	double R, angle, Q, R2, K;

	R = fabs(point2->extra_mov_data.extra_data[EX_R]);
	angle = point2->extra_mov_data.extra_data[EX_AR];

//	g_log_trace->PrintTrace(TRACE_DETAIL, LOOKAHEAD,
//		"-->LookAhead::DistantCicle r=%f,angle=%f", R, point2->extra_mov_data.extra_data[EX_AR]);

	if (point2->interpolation_type == G02_4) {
		// 三维圆弧
		K = 0;
	} else {
		if (point2->coord_info.surface_flag == 0) { //0:XY* 1:ZX* 2:YZ*
			K = point2->axis_mov_data.dest_pos[2]
					- point1->axis_mov_data.dest_pos[2];
		} else if (point2->coord_info.surface_flag == 1) {
			K = point2->axis_mov_data.dest_pos[1]
					- point1->axis_mov_data.dest_pos[1];
		} else {
			K = point2->axis_mov_data.dest_pos[0]
					- point1->axis_mov_data.dest_pos[0];
		}

		if (point2->extra_mov_data.mask & (1 << EX_Q)) {
			Q = point2->extra_mov_data.extra_data[EX_Q];
			R2 = R + Q * angle / (2 * PI);
			if (IS_ZERO(R) || IS_ZERO(R2)) {
				R = (R + R2) / 2;
			} else {
				R = 2 * 1.0 / (1.0 / R + 1.0 / R2);
			}
		}
	}

	if (K == 0)
		distant_long = R * angle;
	else
		distant_long = sqrt(pow(R, 2) * pow(angle, 2) + pow(K, 2));

//	g_log_trace->PrintTrace(TRACE_DETAIL, LOOKAHEAD,
//			"LookAhead::DistantCicle distant:%f", distant_long);

	return distant_long;
}

//计算由系统最大速度，用户指定速度，最大弓高误差，最大向心加速度下的圆弧段加工目标速度
double LookAhead::CalcSpeed(LineData* data) {
	double v_bow_max, v_circle_max, v_return;
	uint16_t distant_type;

	//读出路线的类型，0，1表示直线，2，3表示圆弧
	distant_type = data->interpolation_type;

	if (DataIsArc(distant_type)) {
		// 计算最大向心速度
		v_circle_max = sqrt(
				data->max_centripetal_acc
						* fabs(data->extra_mov_data.extra_data[EX_R]));

		// 计算最大弓高误差限制速度
		if (m_channel_config->max_bow_err * POS_POWER
				> fabs(data->extra_mov_data.extra_data[EX_R])) {
			v_bow_max = m_channel_config->max_speed * SPEED_POWER;
		} else {
			v_bow_max =
					2
							* sqrt(
									(2
											* fabs(
													data->extra_mov_data.extra_data[EX_R])
											- m_channel_config->max_bow_err * POS_POWER)
											* m_channel_config->max_bow_err * POS_POWER)
							/ (m_channel_config->interpolation_cycle * CYCLE_POWER);
		}

		v_return = v_min(4, v_bow_max, v_circle_max,
				m_channel_config->max_speed * SPEED_POWER,
				GetUserFeed(&(data->feed_info)));
//		g_log_trace->PrintTrace(TRACE_DETAIL, LOOKAHEAD,
//				"LookAhead::CalcArcSpeed v_bow_max=%f,v_circle_max=%f, max=%f, v_ret=%f",
//					v_bow_max, v_circle_max, g_config.max_speed*SPEED_POWER, v_return);
	} else {
		v_return = v_min(2, m_channel_config->max_speed * SPEED_POWER,
				GetUserFeed(&(data->feed_info)));
//		g_log_trace->PrintTrace(TRACE_DETAIL, LOOKAHEAD,
//			"LookAhead::CalcSpeed max=%f, v_ret=%f",
//				g_config.max_speed*SPEED_POWER, v_return);
	}

	return v_return;
}

//向量归一化
bool LookAhead::VectorNormal(double* vector) {
	double cur_len = sqrt(
			pow(vector[0], 2) + pow(vector[1], 2) + pow(vector[2], 2));
	if (IS_ZERO(cur_len))
		return false;
	vector[0] = vector[0] / cur_len;
	vector[1] = vector[1] / cur_len;
	vector[2] = vector[2] / cur_len;
	return true;
}

//计算圆弧切向量
void LookAhead::GetArcVector(uint16_t type, uint8_t surface, double h,
		const double* center, const double* point, double* vector) {
	double v[3];

	v[0] = point[0] - center[0];
	v[1] = point[1] - center[1];
	v[2] = point[2] - center[2];

	if (DataIsClockWise(type)) {
		if (surface == 0) { //0:XY* 1:ZX* 2:YZ*
			vector[0] = v[1];
			vector[1] = -v[0];
			vector[2] = h;
		} else if (surface == 1) {
			vector[0] = -v[2];
			vector[1] = h;
			vector[2] = v[0];
		} else {
			vector[0] = h;
			vector[1] = v[2];
			vector[2] = -v[1];
		}
	} else {
		if (surface == 0) { //0:XY* 1:ZX* 2:YZ*
			vector[0] = -v[1];
			vector[1] = v[0];
			vector[2] = h;
		} else if (surface == 1) {
			vector[0] = v[2];
			vector[1] = h;
			vector[2] = -v[0];
		} else {
			vector[0] = h;
			vector[1] = -v[2];
			vector[2] = v[1];
		}
	}
	VectorNormal(vector);
}

//计算螺旋线相对于半径的高度,以便计算螺旋线切向量
double LookAhead::GetArcHeight(const LineData* point1, const LineData* point2) {
	double h;

	if (point2->coord_info.surface_flag == 0) { //0:XY* 1:ZX* 2:YZ*
		h = point2->axis_mov_data.dest_pos[2]
				- point1->axis_mov_data.dest_pos[2];
	} else if (point2->coord_info.surface_flag == 1) {
		h = point2->axis_mov_data.dest_pos[1]
				- point1->axis_mov_data.dest_pos[1];
	} else {
		h = point2->axis_mov_data.dest_pos[0]
				- point1->axis_mov_data.dest_pos[0];
	}
	if (!IS_ZERO(point2->extra_mov_data.extra_data[EX_AR]))
		h /= point2->extra_mov_data.extra_data[EX_AR];
	return h;
}

//获得三维圆弧的起点和终点切向量
void LookAhead::Get3DArcVector(const double* point1, const double* point2,
		const double* center, const double* norm_v, double* start_v,
		double* end_v) {
	double v1[3], v2[3], v3[3];

	// 获得圆心到起点终点的向量
	for (int i = 0; i < 3; i++) {
		v1[i] = point1[i] - center[i];
		v2[i] = point2[i] - center[i];
		v3[i] = norm_v[i];
	}
	//计算后续法向量，切向量之前，应先将径向量归一化，
	//否则可能会导致结果向量的模过小，而被视为0向量
	//*****这样做的另一个好处是，计算结果模为1，不必再进行归一化 *赵楠楠*
	VectorNormal(v1);
	VectorNormal(v2);
	VectorNormal(v3);

	/*	// 获得法向量
	 v3[0] = v1[1] * v2[2] - v1[2] * v2[1];
	 v3[1] = v1[2] * v2[0] - v1[0] * v2[2];
	 v3[2] = v1[0] * v2[1] - v1[1] * v2[0];*/

	// 获得起点切向量
	start_v[0] = v3[1] * v1[2] - v3[2] * v1[1];
	start_v[1] = v3[2] * v1[0] - v3[0] * v1[2];
	start_v[2] = v3[0] * v1[1] - v3[1] * v1[0];
	//VectorNormal(start_v);

	// 获得终点切向量
	end_v[0] = v3[1] * v2[2] - v3[2] * v2[1];
	end_v[1] = v3[2] * v2[0] - v3[0] * v2[2];
	end_v[2] = v3[0] * v2[1] - v3[1] * v2[0];
	//VectorNormal(end_v);
}

//计算线段夹角速度,同时计算方向向量和每轴最大速度
double LookAhead::AngleSpeed(const LineData* point1, LineData* point2) {
	uint16_t distant_type;
//	g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "p1:%d,%d,%f",
//			point1->line_no, point1->interpolation_flag,
//			point1->axis_mov_data.dest_pos[2]);
//	g_log_trace->PrintTrace(TRACE_ERROR, LOOKAHEAD, "p2:%d,%d,%f",
//			point2->line_no, point2->interpolation_flag,
//			point2->axis_mov_data.dest_pos[2]);
	double cur_vector[MAX_AXIS_NUM], speed;
	//终点速度取相邻两段线段目标速度的最小值
	if (point1->feed_info.usr_target_feed_speed
			> point2->feed_info.usr_target_feed_speed) {
		speed = point2->feed_info.usr_target_feed_speed;
	} else {
		speed = point1->feed_info.usr_target_feed_speed;
	}
	//终点速度不超过系统最大允许速度
	if (speed > m_channel_config->max_speed) {
		speed = m_channel_config->max_speed;
	}
	double end_vector[MAX_AXIS_NUM]; // 圆弧终点切向量

	//读出路线的类型，0，1表示直线，2，3表示圆弧
	distant_type = point2->interpolation_type;

	if (distant_type == G01 || distant_type == G00) {
		cur_vector[0] = point2->axis_mov_data.dest_pos[0]
				- point1->axis_mov_data.dest_pos[0];
		cur_vector[1] = point2->axis_mov_data.dest_pos[1]
				- point1->axis_mov_data.dest_pos[1];
		cur_vector[2] = point2->axis_mov_data.dest_pos[2]
				- point1->axis_mov_data.dest_pos[2];
		//在此处理单个轴的速度是否超限
		if (!VectorNormal(cur_vector)) {
			// 与上一点坐标相同,不计算角速度
			return speed;
		}
		double axis_slope, axis_speed;
		//对于直线，校验每个轴的最大速度是否超限
		for (int i = 0; i < 3; i++) {
			axis_slope = fabs(cur_vector[i]);
			if (axis_slope > ZERO) {
				axis_speed = m_channel_config->channel_axis_config[i]->max_axis_speed / axis_slope;
				if (speed > axis_speed) {
					speed = axis_speed;
				}
			}
		}
	} else if (DataIsArc(distant_type)) {
		double center[3];
		center[0] = point2->extra_mov_data.extra_data[EX_I];
		center[1] = point2->extra_mov_data.extra_data[EX_J];
		center[2] = point2->extra_mov_data.extra_data[EX_K];

		if (distant_type == G02_4) {
			double arc_norm[3];

			arc_norm[0] = point2->extra_mov_data.extra_data[EX_I1];
			arc_norm[1] = point2->extra_mov_data.extra_data[EX_J1];
			arc_norm[2] = point2->extra_mov_data.extra_data[EX_K1];

			//获得三维圆弧起点与终点切向量
			Get3DArcVector(point1->axis_mov_data.dest_pos,
					point2->axis_mov_data.dest_pos, center, arc_norm,
					cur_vector, end_vector);
		} else {
			double h = GetArcHeight(point1, point2);

			// 计算圆弧起点切向量
			GetArcVector(distant_type, point2->coord_info.surface_flag, h,
					center, point1->axis_mov_data.dest_pos, cur_vector);

			// 计算圆弧终点切向量
			GetArcVector(distant_type, point2->coord_info.surface_flag, h,
					center, point2->axis_mov_data.dest_pos, end_vector);
		}

		double m_min_radius = point2->extra_mov_data.extra_data[EX_R];
		if (point2->extra_mov_data.extra_data[EX_Q] < -ZERO_DOUBLE) {
			m_min_radius +=
					(point2->extra_mov_data.extra_data[EX_AR] / (TWO_PI))
							* point2->extra_mov_data.extra_data[EX_Q];
		}
		double min_radius = m_min_radius;
		if (m_min_radius < m_channel_config->limit_radius) {
			min_radius = m_channel_config->limit_radius;
		}
		//对直线轴的允许速度进行校验
		double permit_speed = speed;
		double slope;
		//在螺线和螺旋线的时候在此需要校验直线轴的速度
		int line_mask = point2->axis_mov_data.mask;
		int arc_mask = 0;
		//根据圆弧法向量将圆弧轴的标志置为零，不需要进行直线轴的相关运算
		if(fabs(fabs(point2->extra_mov_data.extra_data[EX_K1]) - 1.0) < ZERO_DOUBLE) {
			//如果法向量与Z轴平行，则加工平面为XOY平面
			arc_mask = 0x03;
		}
		else if(fabs(fabs(point2->extra_mov_data.extra_data[EX_I1]) - 1.0) < ZERO_DOUBLE) {
			//如果圆弧的法向量与X轴平行，则加工平面为YOZ平面
			arc_mask = 0x06;
		}
		else if(fabs(fabs(point2->extra_mov_data.extra_data[EX_J1]) - 1.0) < ZERO_DOUBLE) {
			//如果圆弧的法向量与Y轴平行，则加工平面为XOZ平面
			arc_mask = 0x05;
		}
		else {
			arc_mask = 0x07;
		}
		line_mask &= (~arc_mask);
		//根据圆弧所在的平面确定螺线或者螺旋的直线轴
		for (int i = 0; i < m_channel_config->axis_number; i++) {
			//对每个直线轴上的速度进行校验，是否超过轴允许最大速度
			if ((line_mask & (1 << i)) != 0) {
				slope = fabs(
						(point2->axis_mov_data.dest_pos[i]
								- point1->axis_mov_data.dest_pos[i])
								/ point2->axis_mov_data.dist);
				if (slope > ZERO_DOUBLE) {
					permit_speed = m_channel_config->channel_axis_config[i]->max_axis_speed
							* (slope + min_radius) / slope;
				}
				if (permit_speed < speed) {
					speed = permit_speed;
				}
			}
		}
		//然后验证圆弧轴上分得的速度是否超限
		for (int i = 0; i < 3; i++) {
			slope = fabs(end_vector[i]);
			if (slope > ZERO_DOUBLE) {
				if (m_channel_config->channel_axis_config[i]->max_axis_speed / slope < speed) {
					speed = m_channel_config->channel_axis_config[i]->max_axis_speed;
				}
			}
		}
	} else {
//		g_log_trace->PrintTrace(TRACE_INFO, LOOKAHEAD,
//					"LookAhead::AngleSpeed GCode error %d", distant_type);
		return speed;
	}

	if ((point1->interpolation_type == G00) || (distant_type == G00)) {
		speed = 0.0;
	}
	// 前面已经有了线段,可计算夹角
	else if (m_has_vector) {
		//计算线段夹角, 必须保证输入为单位向量
		double productor = m_vector[0] * cur_vector[0]
				+ m_vector[1] * cur_vector[1] + m_vector[2] * cur_vector[2];
		if (productor < -1)
			productor = -1;
		if (productor > 1)
			productor = 1;
		double angle = acos(productor);

		//取前后两条线段中加速度的最小值
		double max_angle_acc = point1->acc;
		if(max_angle_acc > point2->acc) {
			max_angle_acc = point2->acc;
		}
		if (angle > 0.000001) {
			//计算最大角速度 V <= T＊a／(2*sin(angle/2）)
			speed = m_channel_config->interpolation_cycle * CYCLE_POWER
					* max_angle_acc * 0.5 / sin(angle / 2);
			point2->is_consider_angle = true;
		}
	}

	// 如果是圆弧,则下一次使用终点切向量
	if (DataIsArc(distant_type)) {
		for (int i = 0; i < m_channel_config->axis_number; i++)
			m_vector[i] = end_vector[i];
	} else {
		for (int i = 0; i < m_channel_config->axis_number; i++)
			m_vector[i] = cur_vector[i];
	}
	m_has_vector = true;

	return speed;
}

//计算用户指定速度
double LookAhead::GetUserFeed(FeedInfo* feed) {
	return feed->usr_target_feed_speed * SPEED_POWER;
}

//判断是否是圆弧
bool LookAhead::DataIsArc(uint16_t type) {
	if (type == G02 || type == G03 || type == G02_4)
		return true;
	return false;
}

//判断是否顺时针圆弧
bool LookAhead::DataIsClockWise(uint16_t type) {
	if (type == G02)
		return true;
	return false;
}

//根据轴加速度的大小和直线的几何参数计算圆弧的合成加速度
void LookAhead::CalculateLineAcc(LineData* data, double start_point[]) {
	//标志是否找到第一个运动轴
	bool is_find_first_axis = false;
	double axis_permit_acc;
	double axis_permit_jerk;
	double axis_slope;
	if(data->interpolation_type == G01) {
		for(int i=0; i<m_channel_config->axis_number; i++) {
			if(data->axis_mov_data.CheckMask(i) == 1) {
				axis_slope = fabs((data->axis_mov_data.dest_pos[i] - start_point[i]) / data->axis_mov_data.dist);
				if(!is_find_first_axis) {
					if(axis_slope > ZERO_DOUBLE) {
						data->acc = m_channel_config->channel_axis_config[i]->max_axis_acc / axis_slope;
						data->jerk = m_channel_config->channel_axis_config[i]->max_axis_jerk / axis_slope;
					}
					else {
						data->acc = m_channel_config->channel_axis_config[i]->max_axis_acc * 1000.0;
						data->jerk = m_channel_config->channel_axis_config[i]->max_axis_jerk * 1000.0;
					}
					is_find_first_axis = true;
				}
				else {
					axis_permit_acc = m_channel_config->channel_axis_config[i]->max_axis_acc / axis_slope;
					axis_permit_jerk = m_channel_config->channel_axis_config[i]->max_axis_jerk / axis_slope;
					if(data->acc > axis_permit_acc) {
						data->acc = axis_permit_acc;
					}
					if(data->jerk > axis_permit_jerk) {
						data->jerk = axis_permit_jerk;
					}
				}
			}
		}
	}
	else {
		//G00插补指令，读取快速移动的系统参数
		for(int i=0; i<m_channel_config->axis_number; i++) {
			if(data->axis_mov_data.CheckMask(i) == 1) {
				axis_slope = fabs((data->axis_mov_data.dest_pos[i] - start_point[i]) / data->axis_mov_data.dist);
				if(!is_find_first_axis) {
					if(axis_slope > ZERO_DOUBLE) {
						data->acc = m_channel_config->channel_axis_config[i]->max_G00_axis_acc / axis_slope;
						data->jerk = m_channel_config->channel_axis_config[i]->max_axis_jerk / axis_slope;
					}
					else {
						data->acc = m_channel_config->channel_axis_config[i]->max_G00_axis_acc * 1000.0;
						data->jerk = m_channel_config->channel_axis_config[i]->max_axis_jerk * 1000.0;
					}
					is_find_first_axis = true;
				}
				else {
					axis_permit_acc = m_channel_config->channel_axis_config[i]->max_G00_axis_acc / axis_slope;
					axis_permit_jerk = m_channel_config->channel_axis_config[i]->max_axis_jerk / axis_slope;
					if(data->acc > axis_permit_acc) {
						data->acc = axis_permit_acc;
					}
					if(data->jerk > axis_permit_jerk) {
						data->jerk = axis_permit_jerk;
					}
				}
			}
		}
	}
}

//根据轴加速度的大小和直线的几何参数计算圆弧的合成加速度
void LookAhead::CalculateArcAcc(LineData* data) {
	//首先求出所有移动轴中加速度最小的，切向加速度不得大于此加速度
	double max_axis_acc;
	bool is_find_first_axis = false;
	for(int i=0; i<m_channel_config->axis_number; i++) {
		if(data->axis_mov_data.CheckMask(i) == 1) {
			if(is_find_first_axis) {
				if(max_axis_acc > m_channel_config->channel_axis_config[i]->max_axis_acc) {
					max_axis_acc = m_channel_config->channel_axis_config[i]->max_axis_acc;
				}
				if(data->jerk > m_channel_config->channel_axis_config[i]->max_axis_jerk) {
					data->jerk = m_channel_config->channel_axis_config[i]->max_axis_jerk;
				}
			}
			else if(!is_find_first_axis) {
				//第一个运动的轴的最大加速度赋值
				max_axis_acc = m_channel_config->channel_axis_config[i]->max_axis_acc;
				data->jerk = m_channel_config->channel_axis_config[i]->max_axis_jerk;
				is_find_first_axis = true;
			}
		}
	}
	if(!is_find_first_axis) {
		//没有运动轴指令，则直接返回
		return;
	}

	//如果圆弧的向心加速度大于单个轴的最大允许加速度的2/3，则将向心加速度降低为最大允许加速度的2/3
	data->max_centripetal_acc = max_axis_acc * 0.666666666667;
	if(m_channel_config->max_centripetal_acc < data->max_centripetal_acc) {
		data->max_centripetal_acc = m_channel_config->max_centripetal_acc;
	}

	data->acc = sqrt(max_axis_acc * max_axis_acc - data->max_centripetal_acc * data->max_centripetal_acc);
}

//计算缓冲区中指定index数据减速到零的距离
double LookAhead::CalculateStopDist(int buf_index) {
	LineData *data = m_data_buffer->ReadDataPtr(buf_index);

	if (!data) {
		return 0.0;
	}

	//找到使当前速度停止的最小距离
	int next_index = buf_index + 1;
	double buf_len = m_data_buffer->BufLen();
	double dec_speed = data->feed_info.end_feed_speed;
	double last_dec_speed = dec_speed;
	double stop_dist = 0.0;
	double speed_square = 0.0;
	LineData* next_data;
	while((next_index < buf_len) && (dec_speed > ZERO_DOUBLE)) {
		next_data = m_data_buffer->ReadDataPtr(next_index);
		//因为每一段的加速度不同，计算减速距离时需要读取buf中的数据，用来判断需要的距离
		if((next_data != NULL) && (next_data->interpolation_flag != 0)) {
			//2016.2.2,G1,B,GongLihui,修正计算速度公式
			//下一个数据数据的距离将使当前速度减速的速度大小
			//dec_speed -= 2.0 * next_data->acc * next_data->axis_mov_data.dist;
			speed_square = dec_speed * dec_speed - 2.0 * next_data->acc * next_data->axis_mov_data.dist;
			if (speed_square > 0.0) {
				dec_speed = sqrt(speed_square);
			} else {
				dec_speed = -ZERO_DOUBLE;
			}
			//2016.2.2,G1,E
			if(dec_speed < 0.0) {
				//如果速度成功降为零，则按照精确的降为零的距离计算
				dec_speed = 0.0;
				stop_dist += last_dec_speed * last_dec_speed / (2.0 * next_data->acc);
				return stop_dist;
			}
			else {
				//速度没有降为零，停止距离加上下一个数据的长度
				stop_dist += next_data->axis_mov_data.dist;
			}
			last_dec_speed = dec_speed;
		}
		next_index++;
	}

	if(dec_speed > ZERO_DOUBLE) {
		//stop_dist += dec_speed * dec_speed / (2.0 * m_min_acc_for_geo_axis);
		//缓冲区中的数据没有使当前速度停止，直接返回一个不可能到达的距离
		return 9999.0;
	}
	return stop_dist;
}

//设置前瞻段数
void LookAhead::SetLookaheadNum(uint16_t num){
	m_lookahead_count = num * 2 / 3;
	if(m_lookahead_count < 3) {
		m_lookahead_count = 3;
	} else if(m_lookahead_count > LOOK_AHEAD_BUF_SIZE) {
		m_lookahead_count = LOOK_AHEAD_BUF_SIZE;
	}
}

//设置通道号
void LookAhead::SetChannelIndex(int channel_index, NCCCTChannelConfig* channel_config) {
	m_channel_index = channel_index;
	m_channel_config = channel_config;
}
