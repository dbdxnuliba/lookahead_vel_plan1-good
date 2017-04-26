/**Copyright(C) 2013 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file:	interpolation_algorithm.cpp
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本源文件包含插补算法的实现。*/

#include "interpolation_algorithm.h"
#include "s_velocity_planning.h"
#include "t_velocity_planning.h"
#include "alg_interface.h"
extern ALGLogTrace* alg_log_trace;

//构造函数
InterpolationAlgorithm::InterpolationAlgorithm(Geometry* geometry,
		DynamicInfo** dynamic_info, int channel_index, NCCCTChannelConfig* channel_config,
		ChannelRealtimeState* realtime_state) {
	SetChannelIndex(channel_index, channel_config);
	//peitingbin 2017.04.06 CNCC-561 插补接口类构造函数需增加对ChannelRealtimeState指针的透传
	m_realtime_state = realtime_state;
	//peitingbin 2017.04.06
	m_interpolation_cycle = ((double)m_channel_config->interpolation_cycle) * 0.000001;
	m_geometry = geometry;
	m_dynamic_info = dynamic_info;
	for(int i=0; i<m_channel_config->axis_number; i++) {
		m_is_to_reset[i] = false;
	}
}
//InterpolationAlgorithm的析构函数
InterpolationAlgorithm::~InterpolationAlgorithm() {
	if(m_s_velocity_planning != NULL) {
		delete m_s_velocity_planning;
		m_s_velocity_planning = NULL;
	}
	if(m_t_velocity_planning != NULL) {
		delete m_t_velocity_planning;
		m_t_velocity_planning = NULL;
	}
	if(m_is_to_reset != NULL) {
		delete[] m_is_to_reset;
	}
}
//初始化函数
int InterpolationAlgorithm::Init(SpeedProfileType speed_profile_type) {
	m_s_velocity_planning = new SVelocityPlanning(m_interpolation_cycle);
	m_t_velocity_planning = new TVelocityPlanning(m_interpolation_cycle);
	if(m_is_to_reset == NULL) {
		m_is_to_reset = new bool[m_channel_config->axis_number];
	}
	if(m_is_to_reset == NULL) {
		return NC_INIT_ERR;
	}
	for(int i=0; i<m_channel_config->axis_number; i++) {
		m_is_to_reset[i] = false;
	}
	if(m_s_velocity_planning == NULL) {
		return NC_INIT_ERR;
	}
	if(m_t_velocity_planning == NULL) {
		return NC_INIT_ERR;
	}
	SetSpeedProfileType(speed_profile_type);
	m_trajectory_index = m_channel_config->axis_number;
	return ERROR_NONE;
}
//设置速度规划类型
void InterpolationAlgorithm::SetSpeedProfileType(SpeedProfileType speed_profile_type) {
	switch(speed_profile_type) {
		case S_SPEED_PROFILE: {
			m_velocity_planning = m_s_velocity_planning;
		}
		break;
		case T_SPEED_PROFILE: {
			m_velocity_planning = m_t_velocity_planning;
		}
		break;
		default:
			break;
	}
}
//得到当前速度
double InterpolationAlgorithm::GetCurrentSpeed() {
	return m_dynamic_info[m_trajectory_index]->current_f;
}
//当前速度规划部分曲线是否已经插补完成
bool InterpolationAlgorithm::IsInterpolationFinished() {
	if(m_dynamic_info[m_trajectory_index]->current_step < m_dynamic_info[m_trajectory_index]->step_number) {
		return false;
	}
	return true;
}
//将当前终点数据保存，等待按下启动按钮时加工当前点数据
void InterpolationAlgorithm::SaveEndData(CircularBuffer<LineData>* buffer) {
	ComputeRemainDistance();
	//存储终点数据之前删除所有M指令，在按循环启动继续加工时M指令不再生效
	m_geometry->end_data->m_commands.Reset();
	buffer->InsertData(m_geometry->end_data, 1);
}
//判断是否整条曲线已经做速度规划，根据速度规划的终点距离le和曲线几何信息的终点距离做对比得出结论
bool InterpolationAlgorithm::HasReachedEnd() {
	if(m_geometry->end_data->axis_mov_data.dist -
			m_dynamic_info[m_trajectory_index]->current_l -
			m_dynamic_info[m_trajectory_index]->left_dist < ZERO_DOUBLE) {
		return true;
	}
	return false;
}
//根据进给倍率进行速度规划，进给倍率乘以终点速度和目标速度分别为实际的终点速度和目标速度
int32_t InterpolationAlgorithm::PlanVelocity(double target_feed_rate, double end_feed_rate, bool is_tapping_mode) {
	if(m_geometry->end_data->interpolation_type != G00) {
		double max_speed = m_channel_config->max_speed;
		m_dynamic_info[m_trajectory_index]->f = m_geometry->end_data->feed_info.calc_target_feed_speed * target_feed_rate;
		//对当前的目标速度进行校验，如果大于系统最大合成速度，则将速度降低到系统最大合成速度
		if (m_dynamic_info[m_trajectory_index]->f > max_speed) {
			m_dynamic_info[m_trajectory_index]->f = max_speed;
		}
		//检查F值是否超过刀具最大值
		uint16_t tool_no = m_realtime_state->tool_no;
		if(tool_no > 0 && tool_no <= m_channel_config->tool_magazine.max_tool_num) {
			//alg_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION, "tool[%d].max_f=%f", tool_no, m_channel_config->tool_magazine.tool[tool_no - 1].max_f);
			if (m_dynamic_info[m_trajectory_index]->f > m_channel_config->tool_magazine.tool[tool_no - 1].max_f) {
				m_dynamic_info[m_trajectory_index]->f = m_channel_config->tool_magazine.tool[tool_no - 1].max_f;
			}
		}
		m_dynamic_info[m_trajectory_index]->fe = m_geometry->end_data->feed_info.end_feed_speed * end_feed_rate;
//		//修改CNCC-428，改变倍率时前瞻末速度不合理问题.LKN,2017.03.02
//		//前瞻速度如果比调节倍率后的进给速度大，则降低前瞻速度，否则不改变前瞻速度
//		if(m_dynamic_info[m_trajectory_index]->f < m_geometry->end_data->feed_info.end_feed_speed){
//			m_dynamic_info[m_trajectory_index]->fe = m_dynamic_info[m_trajectory_index]->f;
//		}
//		else{
//			m_dynamic_info[m_trajectory_index]->fe = m_geometry->end_data->feed_info.end_feed_speed;
//		}
//		//End,LKN,2017.03.02

		//对当前的终点速度进行校验，如果大于系统最大合成速度，则将速度降低到系统最大合成速度
		if (m_dynamic_info[m_trajectory_index]->fe > max_speed) {
			m_dynamic_info[m_trajectory_index]->fe = max_speed;
		}
	}
	else {
		//如果是G00插补类型，则系统最大进给速度不会限制实际进给速度
		m_dynamic_info[m_trajectory_index]->f = m_geometry->end_data->feed_info.calc_target_feed_speed * target_feed_rate;
		m_dynamic_info[m_trajectory_index]->fe = m_geometry->end_data->feed_info.end_feed_speed * end_feed_rate;
	}

	if(m_dynamic_info[m_trajectory_index]->current_step >= m_dynamic_info[m_trajectory_index]->step_number) {
		//因为两条直线转接，由于夹角的原因，需要决定初始速度的大小
		double trans_time = m_dynamic_info[m_trajectory_index]->left_time;
		double left_trans_time = m_interpolation_cycle - trans_time;
		if(trans_time < left_trans_time) {
			trans_time = left_trans_time;
		}
		if(!is_tapping_mode) {
			m_dynamic_info[m_trajectory_index]->fs = m_dynamic_info[m_trajectory_index]->last_fe - trans_time * m_geometry->end_data->acc * 0.5;
		}
		else {
			m_dynamic_info[m_trajectory_index]->fs = m_dynamic_info[m_trajectory_index]->last_fe - trans_time * m_channel_config->tapping_max_stop_acc * 0.5;
		}
		if(m_dynamic_info[m_trajectory_index]->fs < 0.0) {
			m_dynamic_info[m_trajectory_index]->fs = 0.0;
		}
	}
	else {
		//如果是本条线段没有运行完毕，则起始速度为当前速度
		m_dynamic_info[m_trajectory_index]->fs = m_dynamic_info[m_trajectory_index]->current_f;
		m_dynamic_info[m_trajectory_index]->left_time = 0.0;
		m_dynamic_info[m_trajectory_index]->left_dist = 0.0;
	}

	m_dynamic_info[m_trajectory_index]->le = m_geometry->end_data->axis_mov_data.dist;
	m_dynamic_info[m_trajectory_index]->ls = m_dynamic_info[m_trajectory_index]->current_l;
	if(!is_tapping_mode) {
		m_dynamic_info[m_trajectory_index]->acceleration = m_geometry->end_data->acc;
		m_dynamic_info[m_trajectory_index]->deceleration = m_geometry->end_data->acc;
		m_dynamic_info[m_trajectory_index]->Ja = m_geometry->end_data->jerk;
		m_dynamic_info[m_trajectory_index]->Jd = m_geometry->end_data->jerk;
	}
	else {
		m_dynamic_info[m_trajectory_index]->acceleration = m_channel_config->tapping_max_acc;
		m_dynamic_info[m_trajectory_index]->deceleration = m_channel_config->tapping_max_stop_acc;
		m_dynamic_info[m_trajectory_index]->Ja = m_channel_config->tapping_max_jerk;
		m_dynamic_info[m_trajectory_index]->Jd = m_channel_config->tapping_max_jerk;
	}
	ValidateDynamic();
	//对曲线进行速度规划，计算速度规划参数，包括f1~f6，T1～T7，A，D等
	m_velocity_planning->PlanVelocity(m_dynamic_info[m_trajectory_index]);
//	g_log_trace->PrintTrace(TRACE_ERROR, CHANNEL_CONTROL_CT,
//				"%d",m_geometry->end_data->interpolation_type);
//	g_log_trace->PrintTrace(TRACE_ERROR, CHANNEL_CONTROL_CT,
//			"%f,%f,%f,%f,%d",m_dynamic_info[m_trajectory_index]->le,m_dynamic_info[m_trajectory_index]->f,m_dynamic_info[m_trajectory_index]->acceleration,m_dynamic_info[m_trajectory_index]->fs,m_dynamic_info[m_trajectory_index]->step_number);
	return m_dynamic_info[m_trajectory_index]->step_number;
}
//进行单步插补，调用一次向前插补一步
void InterpolationAlgorithm::Interpolate(LineData* data) {
	m_dynamic_info[m_trajectory_index]->current_time += m_interpolation_cycle;
	m_dynamic_info[m_trajectory_index]->current_step++;

	//得到当前时间点所走的距离
	m_dynamic_info[m_trajectory_index]->current_l = m_velocity_planning->GetDistance(m_dynamic_info[m_trajectory_index]);
	//上一条线段剩余的距离必须在一个插补周期内走完
	if(m_dynamic_info[m_trajectory_index]->current_l < 0.0) {
		m_dynamic_info[m_trajectory_index]->current_l = 0.0;
		//如果运动距离长度为零，表示当前点在起点位置
		for(int i=0; i<m_channel_config->axis_number; i++) {
			data->axis_mov_data.dest_pos[i] = m_geometry->start_point[i];
		}
	}
	else {
		if(m_dynamic_info[m_trajectory_index]->current_step == 1) {
			for(int i=0; i<m_channel_config->axis_number; i++) {
				if(data->axis_mov_data.CheckMask(i) == 0) {
					if(fabs(data->axis_mov_data.dest_pos[i] - m_geometry->start_point[i]) > 1e-10) {
						//如果第一个插补周期，轴的mask为零，将轴的位置置为起点位置
						data->axis_mov_data.dest_pos[i] = m_geometry->start_point[i];
						data->axis_mov_data.SetMask(i, 1);
					}
					if(m_dynamic_info[m_trajectory_index]->step_number > 1) {
						m_is_to_reset[i] = true;
					}
				}
				else {
					m_is_to_reset[i] = false;
				}
			}
		}
		else if(m_dynamic_info[m_trajectory_index]->current_step == 2) {
			for(int i=0; i<m_channel_config->axis_number; i++) {
				if(m_is_to_reset[i]) {
					//如果第一个插补周期，轴的mask为零，将轴的位置置为起点位置
					data->axis_mov_data.SetMask(i, 0);
				}
			}
		}
		//根据距离计算当前所在位置
		ComputePosition(m_dynamic_info[m_trajectory_index]->current_l, data);
//		alg_log_trace->PrintTrace(TRACE_ERROR, CHANNEL_CONTROL_CT, "%d,%f,%f,%f",
//				data->interpolation_type,
//				data->axis_mov_data.dest_pos[0],
//				data->axis_mov_data.dest_pos[1],
//				data->axis_mov_data.dest_pos[2]);
	}

	//计算当前合成速度
	m_dynamic_info[m_trajectory_index]->current_f = m_velocity_planning->GetSpeed(m_dynamic_info[m_trajectory_index]);
	data->feed_info.cur_speed = m_dynamic_info[m_trajectory_index]->current_f;
}

//设置通道号
void InterpolationAlgorithm::SetChannelIndex(int channel_index, NCCCTChannelConfig* channel_config) {
	m_channel_index = channel_index;
	m_channel_config = channel_config;
}
