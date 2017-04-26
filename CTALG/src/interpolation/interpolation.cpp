/**Copyright(C) 2013 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file:	interpolation.cpp
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本源文件包含插补类的实现，插补类创建一个插补周期线程进行插补，并与其他模块通信。*/
#include "interpolation.h"
#include "interpolation_algorithm.h"
#include "quick_move_interpolation.h"
#include "line_interpolation.h"
#include "circle_interpolation.h"
const double Interpolation::kMaxPos = 1000.0; //指定一个轴不可能到达的位置

uint32_t Interpolation::m_count = 0;
double acc[MAX_AXIS_NUM] = {0.0, 0.0, 0.0, 0.0, 0.0};
double spd[MAX_AXIS_NUM] = {0.0, 0.0, 0.0, 0.0, 0.0};
double pos[MAX_AXIS_NUM] = {0.0, 0.0, 0.0, 0.0, 0.0};
double last_cycle_time = 0.0;
double cur_cycle_time = 0.0;
//插补类构造函数，插补完成后向multi_axis_processor输出数据
Interpolation::Interpolation(uint16_t channel_index,
		NCCCTChannelConfig* channel_config, NCCCTChannelState* channel_state,
		ChannelRealtimeState* realtime_state,
		int (*output_data)(LineData* data, void* arg0),
		void (*set_pos)(uint8_t axis_index, double pos, void* arg0), void* arg1) {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION, "-->Interpolation::Interpolation");
	OutputData = output_data;
	SetPosInMachining = set_pos;
	m_owner_ptr = arg1;
	SetChannelIndex(channel_index, channel_config);
	m_channel_state = channel_state;
	m_realtime_state = realtime_state;
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION, "<--Interpolation::Interpolation");
}
//插补析构函数
Interpolation::~Interpolation() {
//    g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION, "-->Interpolation::~Interpolation");
//	Timer_stop(m_timer_handle);
//	Timer_delete(&m_timer_handle);

	if (m_auto_buffer != NULL) {
		delete m_auto_buffer;
		m_auto_buffer = NULL;
	}
	if (m_non_auto_buffer != NULL) {
		delete m_non_auto_buffer;
		m_non_auto_buffer = NULL;
	}
	m_data_buffer = NULL;

	if (m_data != NULL) {
		delete m_data;
		m_data = NULL;
	}
	if (m_geometry != NULL) {
		delete m_geometry;
		m_geometry = NULL;
	}
	if(m_dynamic_info != NULL) {//TODO delete二维指针
		for (uint32_t i = 0; i <= m_channel_config->axis_number; i++) {
			if (m_dynamic_info[i] != NULL) {
				delete m_dynamic_info[i];
				m_dynamic_info[i] = NULL;
			}
		}
	}
	if(m_axis_manual_move_mod != NULL) {
		delete[] m_axis_manual_move_mod;
	}
	if (m_quick_move_interpolation != NULL) {
		delete m_quick_move_interpolation;
		m_quick_move_interpolation = NULL;
	}
	if (m_line_interpolation != NULL) {
		delete m_line_interpolation;
		m_line_interpolation = NULL;
	}
	if (m_circle_interpolation != NULL) {
		delete m_circle_interpolation;
		m_circle_interpolation = NULL;
	}
	if(m_last_step_mode != NULL) {
		delete[] m_last_step_mode;
		m_last_step_mode = NULL;
	}
#ifndef X86_BUILD
	//删除读写互斥量
	GateHwi_delete(&m_gate_hwi);
#endif
//    g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION, "<--Interpolation::~Interpolation");
}
//初始化插补数据，开启插补时钟线程
int32_t Interpolation::Init() {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION, "-->Interpolation::Init");
	int16_t result = ERROR_NONE;
#ifndef X86_BUILD
	//初始化读写互斥量
	GateHwi_Params gate_params;

	GateHwi_Params_init(&gate_params);
	m_gate_hwi = GateHwi_create(&gate_params, NULL);
	if (m_gate_hwi == NULL) {
//		g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION,
//				"Interpolation：创建读写互斥量失败！");
		return NC_INIT_ERR;
	}
#endif
	//初始化插补缓冲区
	m_auto_buffer = new CircularBuffer<LineData>(AUTO_BUFFER_SIZE);
	if (m_auto_buffer == NULL) {
//		g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION,
//				"Interpolation：为插补缓冲区分配内存失败！");
		return NC_INIT_ERR;
	}
	m_non_auto_buffer = new CircularBuffer<LineData>(NON_AUTO_BUFFER_SIZE);
	if (m_non_auto_buffer == NULL) {
//		g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION,
//				"Interpolation：为插补缓冲区分配内存失败！");
		return NC_INIT_ERR;
	}

	//初始化曲线信息结构体
	m_data = new LineData();

	m_geometry = new Geometry();
	if (m_geometry == NULL) {
//		g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION,
//				"Interpolation：插补器为变量分配内存失败！");
		return NC_INIT_ERR;
	}
	m_geometry->end_data = m_data;

	for (uint32_t i = 0; i < m_channel_config->axis_number; i++) {
		m_geometry->start_point[i] = m_realtime_state->cur_pos.pos[i];
		m_data->axis_mov_data.dest_pos[i] = m_realtime_state->cur_pos.pos[i];
	}

//	if(m_dynamic_info == NULL) {
		m_dynamic_info = new DynamicInfo*[m_channel_config->axis_number+1];
//	}
	for (uint32_t i = 0; i <= m_channel_config->axis_number; i++) {
		m_dynamic_info[i] = new DynamicInfo();
		if (m_dynamic_info[i] == NULL) {
//			g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION,
//					"Interpolation：插补器为变量分配内存失败！");
			return NC_INIT_ERR;
		}
	}

//	if(m_axis_manual_move_mod == NULL) {
		m_axis_manual_move_mod = new bool[m_channel_config->axis_number];
//	}
	if(m_axis_manual_move_mod == NULL) {
		return NC_INIT_ERR;
	}
	//实例化插补方法类
	//peitingbin 2017.04.06 CNCC-561 插补接口类构造函数需增加对ChannelRealtimeState指针的透传
	m_quick_move_interpolation = new QuickMoveInterpolation(m_geometry,
			m_dynamic_info, m_channel_index, m_channel_config, m_realtime_state);
	//peitingbin 2017.04.06
	if (m_quick_move_interpolation == NULL) {
//		g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION,
//				"Interpolation：为快速定位分配内存失败！");
		return NC_INIT_ERR;
	}
	result = m_quick_move_interpolation->Init(
			(SpeedProfileType) m_channel_config->speed_profile_type);
	if (result != ERROR_NONE) {
//		g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION,
//				"Interpolation：快速定位初始化失败！");
		return result;
	}
	//peitingbin 2017.04.06 CNCC-561 插补接口类构造函数需增加对ChannelRealtimeState指针的透传
	m_line_interpolation = new LineInterpolation(m_geometry, m_dynamic_info,
			m_channel_index, m_channel_config, m_realtime_state);
	//peitingbin 2017.04.06
	if (m_quick_move_interpolation == NULL) {
//		g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION,
//				"Interpolation：为直线插补分配内存失败！");
		return NC_INIT_ERR;
	}
	result = m_line_interpolation->Init(
			(SpeedProfileType) m_channel_config->speed_profile_type);
	if (result != ERROR_NONE) {
//		g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION,
//				"Interpolation：直线插补初始化失败！");
		return result;
	}
	//peitingbin 2017.04.06 CNCC-561 插补接口类构造函数需增加对ChannelRealtimeState指针的透传
	m_circle_interpolation = new CircleInterpolation(m_geometry,
			m_dynamic_info, m_channel_index, m_channel_config, m_realtime_state);
	//peitingbin 2017.04.06
	if (m_circle_interpolation == NULL) {
//		g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION,
//				"Interpolation：为圆弧插补分配内存失败！");
		return NC_INIT_ERR;
	}
	result = m_circle_interpolation->Init(
			(SpeedProfileType) m_channel_config->speed_profile_type);
	if (result != ERROR_NONE) {
//		g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION,
//				"Interpolation：圆弧插补初始化失败！");
		return result;
	}
	m_interpolation_algorithm = m_quick_move_interpolation;
	//初始化系统状态
	InitState();
	m_trajectory_index = m_channel_config->axis_number;
	m_cur_channel_mode = AUTO_MODE;
	m_next_channel_mode = AUTO_MODE;
	m_data_buffer = m_auto_buffer;
	m_heartbeat_err = false;
	m_system_ready = false;

	//初始化心跳设置
	m_heartbeat = 1;
	m_heartbeat_period = 500000 / m_channel_config->interpolation_cycle; //保证100ms内响应急停等安全机制
	m_machining_state = INTP_NOT_STARTED;

	m_intp_cycle_set_warning = false;
	m_intp_busy_count = 0;
	m_intp_busy_analyse_period = 1E6 / m_channel_config->interpolation_cycle; //1s
	m_interpolation_cycle_time = (double)m_channel_config->interpolation_cycle / 1000000.0;
	m_is_optional_stop = false;
	m_is_single_line_mode = false;
	m_last_step_mode = new bool[m_channel_config->axis_number];//20161110pang
	for(int i=0; i<m_channel_config->axis_number; i++) {
		m_last_step_mode[i] = false;		//手动模式，初始化为手动连续模式
	}
	//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION, "<--Interpolation::Init");
	return result;
}

//查看前瞻发送到插补缓冲区数据是否已满，据此判断前瞻是否继续往插补缓冲区存放数据
bool Interpolation::IsBufferFull(uint8_t mode) const {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::IsBufferFull");
#ifndef X86_BUILD
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gate_hwi);
#endif
	bool is_buffer_full;
	//因为前瞻在一个通道控制周期内可能不止发送一个数据到插补模块，最大可能为100个，因此需要预留100个的数据
	//空间；一行编译数据有可能发送到插补模块为3个数据，因此还需要预留3个数据的空间；另外插补器在暂停和切换模
	//式时也需要保存当前数据，需要预留2个数据空间，刚性攻丝结束时可能会插入一个数据，一共需要预留107个的数据空间
	is_buffer_full = (m_auto_buffer->EmptyBufLen() <= 107);
#ifndef X86_BUILD
	GateHwi_leave(m_gate_hwi, gate_key);
#endif

//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::IsBufferFull");
	return is_buffer_full;
}

//插补类被其他模块调用用来插补的接口
int32_t Interpolation::InsertInterpolationData(LineData* data) {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::InsertInterpolationData");
	int16_t res = ERROR_NONE;
#ifndef X86_BUILD
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gate_hwi);
#endif
	//如果插补类型是G00，则其目标速度为系统配置的G00速度
	if (data->interpolation_type == G00) {
		for(int index = 0; index < m_channel_config->axis_number; index++) {
			data->axis_mov_data.cur_speed[index] = m_channel_config->g00_speed;
		}
		data->feed_info.calc_target_feed_speed = m_channel_config->g00_speed;
		data->feed_info.usr_target_feed_speed = m_channel_config->g00_speed;
		data->feed_info.end_feed_speed = 0.0;
	}
	//2015.12.1, GongLihui, 修复CNC-3092，此处不应该使用m_data_buffer，因为在加工过程中，插补可能会被切换
	//到手动模式，例如换刀时，这是m_data_buffer指向的是手动buffer，所以会导致自动代码插入手动buffer，
	//m_data_buffer->WriteData(data, 1);
	m_auto_buffer->WriteData(data,1);
#ifndef X86_BUILD
	GateHwi_leave(m_gate_hwi, gate_key);
#endif
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::InsertInterpolationData");
	return res;
}

//在缓冲区头添加插补数据
int32_t Interpolation::AddIntpData(LineData* data) {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::AddIntpData");
	int16_t res = ERROR_NONE;
#ifndef X86_BUILD
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gate_hwi);
#endif
	m_data_buffer->InsertData(data, 1);
#ifndef X86_BUILD
	GateHwi_leave(m_gate_hwi, gate_key);
#endif
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::AddIntpData");
	return res;
}

//得到当前插补数据
int32_t Interpolation::GetCurLineData(LineData* data) const {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::GetCurCompileData");
	memcpy(data, m_geometry->end_data, sizeof(LineData));
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::GetCurCompileData");
	return 0;
}

//设置单轴起始位置
void Interpolation::SetCurPos(uint16_t axis_index, double cur_pos) {
	m_data->axis_mov_data.dest_pos[axis_index] = cur_pos;
	m_geometry->start_point[axis_index] = cur_pos;
	m_dynamic_info[m_trajectory_index]->current_l = 0.0;
	pos[axis_index] = cur_pos;
}
//在按下暂停按钮后响应此函数
void Interpolation::Pause(bool is_emergency_stop) {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::Pause");
#ifndef X86_BUILD
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gate_hwi);
#endif
	if (is_emergency_stop) {
		SetStopState();
		UpdateStartCondition();
	} else {
		//暂停功能只有在自动模式加工状态下起作用
		if ((m_cur_channel_mode == AUTO_MODE)
				&& (m_run_state == INTP_MACHINING)) {
			CreateStopCmd();
		}
	}
	if(m_interpolation_algorithm == m_quick_move_interpolation) {
		//如果当前是G00插补，则需要设定轴的移动状态
		for(int i=0; i<m_channel_config->axis_number; i++) {
			if(m_dynamic_info[i]->current_f > ZERO_DOUBLE) {
				m_dynamic_info[i]->run_state = AXIS_STOPPING;
			}
			else {
				m_dynamic_info[i]->run_state = AXIS_STOPPED;
			}
		}
	}
	m_machining_state = INTP_PAUSED;
#ifndef X86_BUILD
	GateHwi_leave(m_gate_hwi, gate_key);
#endif
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::Pause");
}
//在暂停之后，又重新开始加工时响应此函数
void Interpolation::Continue() {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::Continue");
#ifndef X86_BUILD
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gate_hwi);
#endif
	m_machining_state = INTP_STARTED;
	m_is_machining = true;
	//只有在当前插补状态为停止时才相应循环启动按钮
	if ((m_cur_channel_mode == AUTO_MODE)
			&& (m_run_state == INTP_STOPPED || m_run_state == INTP_STOPPING)) {
		m_run_state = INTP_MACHINING;
		m_process_state = PRO_UPDATE_DATA;
	} else {
//		g_log_trace->PrintTrace(TRACE_WARNING, INTERPOLATION,
//				"当前状态不是插补停止状态，循环启动按钮无效！");
	}
#ifndef X86_BUILD
	GateHwi_leave(m_gate_hwi, gate_key);
#endif

//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::Continue");
}
//复位时相应此函数
void Interpolation::Reset() {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::Reset");
#ifndef X86_BUILD
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gate_hwi);
#endif
	InitState();
	//将当前的速度设置为零
	for (uint16_t i = 0; i < m_trajectory_index; i++) {
		m_data->axis_mov_data.cur_speed[i] = 0.0;
	}
	m_geometry->end_data = m_data;
	//程序从头开始，将当前点作为下一段曲线起始点保存
	UpdateStartCondition();
	memset(m_data, 0, sizeof(LineData));
	//2016.6.6,GLH,解决CNCB-189，如果第一行就编译出错，则NCC-SM还没有来得及将G500偏置发送下来，
	//若m_data的默认偏置为0的话会导致SetStopState时将偏置误修改成0
	memcpy(m_data->coord_info.wcs_offset_differ,
			m_realtime_state->wcs_offset_differ, sizeof(double) * MAX_AXIS_NUM);
	m_heartbeat_err = false;

	//更新速度规划类型
	m_quick_move_interpolation->SetSpeedProfileType(
			(SpeedProfileType) m_channel_config->speed_profile_type);
	m_line_interpolation->SetSpeedProfileType(
			(SpeedProfileType) m_channel_config->speed_profile_type);
	m_circle_interpolation->SetSpeedProfileType(
			(SpeedProfileType) m_channel_config->speed_profile_type);

	//2015.12.31, GLH, 复位时更新m_data_buffer，防止由于自动加工中切换插补模式导致缓冲区指针错误
	if(m_cur_channel_mode == AUTO_MODE) {
		m_data_buffer = m_auto_buffer;
	} else {
		m_data_buffer = m_non_auto_buffer;
	}
#ifndef X86_BUILD
	GateHwi_leave(m_gate_hwi, gate_key);
#endif

//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::Reset");
}
//设置进给倍率
void Interpolation::SetFeedRate(RatioType type, double feed_rate) {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::SetFeedRate");
	//进给倍率输入是百分号形式，将百分号形式转化为小数形式
	feed_rate *= 0.01;
#ifndef X86_BUILD
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gate_hwi);
#endif
	switch (type) {
	case AUTO_FEED_RATIO: {
		//在当前模式为自动模式下，进给倍率改变才需要重新规划速度
		if ((m_cur_channel_mode == AUTO_MODE) && (m_auto_rate != feed_rate)
				&& (m_process_state != PRO_IDLE_RUNNING)) {
			m_process_state = PRO_UPDATE_DATA;
		}
		m_auto_rate = feed_rate;
	}
		break;
	case G00_RATIO: { //改变自动模式下G00的进给倍率，只有在自动模式，G00，并且非自动返回参考点时才需要重新做速度规划
		if ((m_cur_channel_mode == AUTO_MODE)
				&& (m_data->interpolation_type == G00)
				&& (m_G00_rate != feed_rate)
				&& (m_process_state != PRO_IDLE_RUNNING)) {
			//在G00插补时，需要将正在运行的轴重新进行速度规划，在此将相应的标志置为true
			for (int i = 0; i < m_channel_config->axis_number; i++) {
				if (m_dynamic_info[i]->run_state != AXIS_STOPPED) {
					m_dynamic_info[i]->is_enabled = true;
				}
			}
			m_process_state = PRO_UPDATE_DATA;
		}
		m_G00_rate = feed_rate;
	}
		break;
	case MANUAL_FEED_RATIO: { //改变手动模式下的进给倍率
		if ((m_cur_channel_mode == MANUAL_MODE
				|| m_cur_channel_mode == RETURN_REF_MODE)
				&& (m_manual_rate != feed_rate)
				&& (m_process_state != PRO_IDLE_RUNNING)) {
			if (!m_channel_state->is_changing_tool
					&& !m_channel_state->servo_cutter_zero) {
				m_process_state = PRO_UPDATE_DATA;
				//改变进给倍率有效范围为所有正在运动的轴，根据位移的mask设置速度规划使能
				for (int i = 0; i < m_channel_config->axis_number; i++) {
					if (m_dynamic_info[i]->run_state != AXIS_STOPPED) {
						m_dynamic_info[i]->is_enabled = true;
					}
				}
			} else {
			}
		}
		m_manual_rate = feed_rate;
	}
		break;
	default:
		break;
	}
#ifndef X86_BUILD
	GateHwi_leave(m_gate_hwi, gate_key);
#endif
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::SetFeedRate");
}
//设置通道模式，自动或者手动等等
void Interpolation::SetMode(ChannelMode channel_mode) {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::SetMode");
#ifndef X86_BUILD
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gate_hwi);
#endif
	if (m_cur_channel_mode != channel_mode) {
		if (m_run_state == INTP_MACHINING) {
			CreateStopCmd();
		}
		m_next_channel_mode = channel_mode;
		m_is_channel_mode_changing = true;
	}
	if (channel_mode == AUTO_MODE) {
		m_next_data_buffer = m_auto_buffer;
	} else {
		m_next_data_buffer = m_non_auto_buffer;
	}
#ifndef X86_BUILD
	GateHwi_leave(m_gate_hwi, gate_key);
#endif

//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::SetMode");
}
//设置单段模式
void Interpolation::SetSingleLineMode(bool is_single_line_mode) {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::SetSingleLineMode");
#ifndef X86_BUILD
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gate_hwi);
#endif
	if (m_is_single_line_mode != is_single_line_mode) {
		m_is_single_line_mode = is_single_line_mode;
		//只有在自动模式加工运行状态下，才需要打断当前插补，更改末速度并重新规划速度.另外，G00在选择单段模式时
		//不需要重新进行速度规划，因为其终点末速度原本为零
		if ((m_cur_channel_mode == AUTO_MODE)
				&& (m_process_state == PRO_INTERPOLATING)
				&& (m_data->interpolation_type != G00)) {
			if (is_single_line_mode) {
				m_geometry->end_data->feed_info.end_feed_speed = 0.0;
				m_process_state = PRO_UPDATE_DATA;
			}
		}
	}
#ifndef X86_BUILD
	GateHwi_leave(m_gate_hwi, gate_key);
#endif
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::SetSingleLineMode");
}
//设置选停模式
void Interpolation::SetOptionalStopMode(bool is_optional_stop) {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::SetOptionalStopMode");
#ifndef X86_BUILD
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gate_hwi);
#endif
	if (m_is_optional_stop != is_optional_stop) {
		m_is_optional_stop = is_optional_stop;
		//只有在自动模式加工过程中按下选停模式，并且当前插补数据中含有M01指令时，才有必要打断当前插补暂停加工
		if ((m_cur_channel_mode == AUTO_MODE) && (m_run_state == INTP_MACHINING)
				&& is_optional_stop) {
			if (m_data->m_commands.HasCmd(M01)) {
				CreateStopCmd();
			}
		}
	}
#ifndef X86_BUILD
	GateHwi_leave(m_gate_hwi, gate_key);
#endif
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::SetOptionalStopMode");
}
//设置手动移动指令，正向，负向还是手动停止，指令是对单个轴或某几个轴而言
void Interpolation::SetAxisMoveCmd(NCCCmdNumber move_cmd, uint16_t axis_index,
		bool step_mode, double speed, double distance, bool is_accumulative) {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::SetManualMoveCmd");
	double resolution = 0;
	//如果单步模式下移动距离为0，则不处理
	if(move_cmd != MANUAL_MOVE_STOP && step_mode && fabs(distance) < ZERO_DOUBLE) {
		goto END;
	}

	resolution = m_channel_config->channel_axis_config[axis_index]->axis_cmd_res;

	//判断当前哪个软件限位生效
	double negative_soft_limit; //负向软件限位
	double positive_soft_limit; //正向软件限位

	if (m_realtime_state->second_soft_limit_p_valid & (0x1 << axis_index)) {
		positive_soft_limit =
				m_channel_config->channel_axis_config[axis_index]->positive_soft_limit2;
	} else {
		positive_soft_limit =
				m_channel_config->channel_axis_config[axis_index]->positive_soft_limit1;
	}
	if (m_realtime_state->second_soft_limit_n_valid & (0x1 << axis_index)) {
		negative_soft_limit =
				m_channel_config->channel_axis_config[axis_index]->negative_soft_limit2;
	} else {
		negative_soft_limit =
				m_channel_config->channel_axis_config[axis_index]->negative_soft_limit1;
	}
	
	//判断如果已经超出软件限位，则直接退出
	if (move_cmd == MANUAL_MOVE_POSITIVE && (!step_mode || (step_mode && distance > 0.0))) {
		if (m_channel_state->returned_to_ref_point.CheckMask(axis_index)) {
			if (m_realtime_state->cur_pos.pos[axis_index]
					>= positive_soft_limit + resolution
							- ZERO_DOUBLE) {
				goto END;
			}

		}
	} else if (move_cmd == MANUAL_MOVE_NEGATIVE && (!step_mode || (step_mode && distance < 0.0))) {
		if (m_channel_state->returned_to_ref_point.CheckMask(axis_index)) {
			if (m_realtime_state->cur_pos.pos[axis_index]
					<= negative_soft_limit - resolution
							+ ZERO_DOUBLE) {
				goto END;
			}

		}
	}
#ifndef X86_BUILD
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gate_hwi);
#endif
DEAL_MANUAL_STOP:
	//只有在手动模式下，正向，负向或暂停手动指令才有效
	if (move_cmd == MANUAL_MOVE_STOP) {
		//如果速度不为零，需要打断插补用最大减速度停止当前轴的运动
		if (!IS_ZERO(m_dynamic_info[axis_index]->current_f)) {
			m_geometry->end_data->axis_mov_data.cur_speed[axis_index] = 0.0;
			m_geometry->end_data->feed_info.calc_target_feed_speed = 0.0;
			m_process_state = PRO_UPDATE_DATA;
			m_geometry->end_data->interpolation_stop_flag = 0;
			m_dynamic_info[axis_index]->run_state = AXIS_STOPPING;
		} else {
			//如果此轴已经停止运动，直接将当前位移置为规划终点长度，并将其插补的mask置为零
			m_geometry->end_data->axis_mov_data.mask &= (~((uint64_t)1 << axis_index));
			m_dynamic_info[axis_index]->le =
					m_dynamic_info[axis_index]->current_l;
			m_geometry->end_data->interpolation_stop_flag = 0;
			m_dynamic_info[axis_index]->step_number = 0;
			m_dynamic_info[axis_index]->current_step = 0;
			m_dynamic_info[axis_index]->run_state = AXIS_STOPPED;
#ifndef X86_BUILD
			GateHwi_leave(m_gate_hwi, gate_key);
#endif
			goto END;
		}
	} else {
		m_dynamic_info[axis_index]->run_state = AXIS_RUNNING;
		m_axis_manual_move_mod[axis_index] = step_mode;
		//更新当前轴上的初始速度规划状态
		m_geometry->start_point[axis_index] =
				m_data->axis_mov_data.dest_pos[axis_index];
		m_dynamic_info[axis_index]->current_l = 0.0;

		//将当前buffer清空，保证buffer中只有一个数据，当前数据写入到第一个数据中
		m_data_buffer->ClearBuf();
		m_data_buffer->WriteData(m_geometry->end_data, 1);

		//终点数据指向buffer中的第一个数据
		m_geometry->end_data = m_data_buffer->ReadDataPtr(0);
		LineData* data = m_geometry->end_data;
		data->over_flag = 0; //2013.10.17,GLH

		//手动连续模式
		if (!step_mode) {
			//20131115, GongLihui, 若该轴尚未回参考点，则终点位置使用MAX_POSITIVE_POS或MAX_NEGATIVE_POS
			if (move_cmd == MANUAL_MOVE_POSITIVE) {
				if (m_channel_state->returned_to_ref_point.CheckMask(
						axis_index)) {
					data->axis_mov_data.dest_pos[axis_index] =
							positive_soft_limit + resolution;
				} else {
					data->axis_mov_data.dest_pos[axis_index] = MAX_POSITIVE_POS;
				}
			} else {
				if (m_channel_state->returned_to_ref_point.CheckMask(
						axis_index)) {
					data->axis_mov_data.dest_pos[axis_index] =
							negative_soft_limit - resolution;
				} else {
					data->axis_mov_data.dest_pos[axis_index] = MAX_NEGATIVE_POS;
				}
			}
		} else { //手动单步模式
			double position;
			//在累计模式下，累计发送单步命令；但是如果当前轴已经停止（速度为零），则不再累计之前的命令步长
			if (is_accumulative
					&& (m_dynamic_info[axis_index]->current_step
							< m_dynamic_info[axis_index]->step_number)) {
			    //修复CNC-3159，在手动连续向手动单步切换时，如果是累计模式，在轴没有停止之前，会将上一次手动连续的终点位置
			    //作为本次指令的起点。这样手动单步会得到一个很长的运动距离，导致轴跑飞的现象
				if(m_last_step_mode[axis_index]) {
					//上次指令是手动单步模式
					position = m_geometry->end_data->axis_mov_data.dest_pos[axis_index];
				}
				else {
					//修复CNC-3159，上次指令是手动连续模式，并且手动连续还没有停止，则本次不响应单步移动指令，而是先使手动连续运动停止
					move_cmd = MANUAL_MOVE_STOP;
					goto DEAL_MANUAL_STOP;
				}
			} else { //在非累计模式下或者当前轴已经停止的情况下，不再累计步长，直接从当前位置累加
				position = m_data->axis_mov_data.dest_pos[axis_index];
			}
			if (move_cmd == MANUAL_MOVE_POSITIVE) {
				data->axis_mov_data.dest_pos[axis_index] = position + distance;
				//手轮模式或者单步模式增加对软限位的判断，如果超出软限位，则将软限位置为目标点，解决CNC-495的bug
				if ((m_channel_state->returned_to_ref_point.CheckMask(axis_index))
						&& data->axis_mov_data.dest_pos[axis_index]
								> positive_soft_limit + resolution) {
					data->axis_mov_data.dest_pos[axis_index] =
							positive_soft_limit + resolution;
				}
			} else {
				data->axis_mov_data.dest_pos[axis_index] = position - distance;
				//手轮模式或者单步模式增加对软限位的判断，如果超出软限位，则将软限位置为目标点，解决CNC-495的bug
				if ((m_channel_state->returned_to_ref_point.CheckMask(axis_index))
						&& data->axis_mov_data.dest_pos[axis_index]
								< negative_soft_limit - resolution) {
					data->axis_mov_data.dest_pos[axis_index] =
							negative_soft_limit - resolution;
				}
			}
		}
		m_last_step_mode[axis_index] = step_mode;
		//在设置单个轴的目标速度时，同时设定合成目标速度，以便在检查目标速度，起点速度和终点速度是否同时为零时用
		//2016.2.23,GLH,主轴插补时不设置usr_target_feed_speed，否则会造成自动模式下轴移动时显示主轴插补速度（例如换刀时CNC3311）
		if(m_channel_config->channel_axis_config[axis_index]->axis_type != SPINDLE_AXIS) {
			data->feed_info.usr_target_feed_speed = speed;
		}
		data->feed_info.calc_target_feed_speed = speed;
		data->axis_mov_data.cur_speed[axis_index] = speed;
		data->interpolation_stop_flag = 0;
		data->axis_mov_data.dist = 1.0;
		data->interpolation_flag = 1;
		data->has_tool_compensated = false;

		//设置data的其他数据信息
//		for(uint32_t i=0; i<MAX_AXIS_NUM; i++) {
//			//如果一个轴的速度为零并且已经运行到速度规划终点，将对应的mask置为0，在插补时不再计算此轴的坐标
//			if((IS_ZERO(m_dynamic_info[i]->current_f)) && (m_dynamic_info[i]->le - m_dynamic_info[i]->current_l < ZERO_DOUBLE)) {
//				data->axis_mov_data.mask &= (~(1<<i));
//			}
//		}
		//将指令中的mask设置为1，在插补时对此轴进行坐标计算
		data->axis_mov_data.mask |= ((uint64_t)1 << axis_index);

		//调整插补流程和状态
		m_run_state = INTP_MACHINING;
		m_process_state = PRO_UPDATE_DATA;
		m_need_get_new_data = true;
	}
	//发出指令只对指定轴有效，其他轴速度规划为失效状态。删去，为了实现通道控制能一次控制多个轴的功能，2013-12-16，陈晓颖
//	for(uint32_t i=0; i<MAX_AXIS_NUM; i++) {
//		m_dynamic_info[i]->is_enabled = false;
//	}
	//将此轴的速度规划使能
	m_dynamic_info[axis_index]->is_enabled = true;
#ifndef X86_BUILD
	GateHwi_leave(m_gate_hwi, gate_key);
#endif

END:
//g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::SetManualMoveCmd");
	return;
}
//设置回参考点的状态
void Interpolation::SetRetRefPosState(bool returning_ref_pos,
		uint8_t cur_mode) {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::SetRetRefPosState");
#ifndef X86_BUILD
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gate_hwi);
#endif
	if (returning_ref_pos) {
		//SetMode(RETURN_REF_MODE);
		m_next_channel_mode = RETURN_REF_MODE;
		m_next_data_buffer = m_non_auto_buffer;
		ChangeChannelMode();

		//Fix CNC-1483的bug，如果在回参考点模式，则使用T型速度规划
		m_quick_move_interpolation->SetSpeedProfileType(T_SPEED_PROFILE);
		m_line_interpolation->SetSpeedProfileType(T_SPEED_PROFILE);
		m_circle_interpolation->SetSpeedProfileType(T_SPEED_PROFILE);
	} else {
		//此处会有死锁，在调用SetMode之前释放m_gate_hwi
#ifndef X86_BUILD
		GateHwi_leave(m_gate_hwi, gate_key);
#endif
		SetMode((ChannelMode) cur_mode);
#ifndef X86_BUILD
		gate_key = GateHwi_enter(m_gate_hwi);
#endif
		if (cur_mode == AUTO_MODE) {
			m_auto_buffer->ClearBuf();
		} else {
			m_non_auto_buffer->ClearBuf();
		}
		//Fix CNC-1483的bug，如果已经回到参考点，则将速度规划模式设置为之前的速度规划模式
		m_quick_move_interpolation->SetSpeedProfileType(
				(SpeedProfileType) m_channel_config->speed_profile_type);
		m_line_interpolation->SetSpeedProfileType(
				(SpeedProfileType) m_channel_config->speed_profile_type);
		m_circle_interpolation->SetSpeedProfileType(
				(SpeedProfileType) m_channel_config->speed_profile_type);
	}
#ifndef X86_BUILD
	GateHwi_leave(m_gate_hwi, gate_key);
#endif
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::SetRetRefPosState");
}
//初始化系统的状态数据
inline void Interpolation::InitState() {
	//清除buffer中所有数据
	m_auto_buffer->ClearBuf();
	m_non_auto_buffer->ClearBuf();
	m_is_channel_mode_changing = false;
	m_run_state = INTP_STOPPED;
	m_process_state = PRO_IDLE_RUNNING;
	m_need_get_new_data = true;
	m_get_data_result = GET_NO_DATA;
	m_machining_state = INTP_NOT_STARTED;
	m_is_reach_end = false;
	m_is_machining = false;
	m_is_tapping_mode = false;

	for (uint32_t i = 0; i <= m_channel_config->axis_number; i++) {
		m_dynamic_info[i]->step_number = 0;
		m_dynamic_info[i]->current_step = 0;
		m_dynamic_info[i]->current_f = 0.0;
		m_dynamic_info[i]->left_time = 0.0;
		m_dynamic_info[i]->left_dist = 0.0;
		m_dynamic_info[i]->le = 0.0;
		m_dynamic_info[i]->ls = 0.0;
		m_dynamic_info[i]->step_number = 0;
		m_dynamic_info[i]->current_step = 0;
		m_dynamic_info[i]->is_enabled = false;
		m_dynamic_info[i]->run_state = AXIS_STOPPED;
	}
}
//插补线程调用函数，每个插补周期调用此函数一次
double g_count = 0;
int32_t Interpolation::Interpolate() {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->::Interpolate");
//	cur_cycle_time += interpolation->m_interpolation_cycle_time;
	//uint32_t time_start = 0, time_end = 0;
	//time_start = Timer_getCount(m_timer_handle);

	m_count++;
	g_count++;
	//检查与通道控制之间的心跳
	if (m_system_ready && m_machining_state
			&& (m_count % m_heartbeat_period == 0)) {
		if (m_heartbeat) {
			m_heartbeat = 0;
		} else if (!m_heartbeat_err) {
			//若无心跳，则紧急停止插补，并告警
			Pause(true);
			//CreateErrorInfo(INTERPOLATION_HEARTBEAT_LOST, FATAL_LEVEL,
			//		CLEAR_BY_MCP_RESET);
			//g_log_trace->PrintLog(TRACE_INFORMATION, "INTP heartbeat lost,cpu loading:%d",Load_getCPULoad());
			m_heartbeat_err = true;
			return INTERPOLATION_HEARTBEAT_LOST;
		}
	}

	ManageInterpolation();
	//如果该插补周期没有向通道控制发送数据，则调用m_multi_axis_processor->Process(void)，方便其他模块在每个插补周期都能得到触发
	if (m_machining_state == INTP_STARTED
			&& m_get_data_result != GET_NO_DATA
			&& m_process_state == PRO_IDLE_RUNNING) {
		OutputData(NULL, m_owner_ptr);
	}
	//time_end = Timer_getCount(m_timer_handle);
	//插补周期设置过短，导致一个插补周期内无法完成插补任务，判断依据：一段时间内超过25%的插补周期超时，则认为插补周期设置不合适
//	if (time_start > time_end) {
//		m_intp_busy_count++;
//		if (m_intp_busy_count
//				> (m_intp_busy_analyse_period >> 2)
//				&& !m_intp_cycle_set_warning) {
//			//CreateErrorInfo(INTP_CYCLE_TOO_SHORT, WARNING_LEVEL,
//			//		CLEAR_BY_RESET_POWER);
//			m_intp_cycle_set_warning = true;
//			return INTP_CYCLE_TOO_SHORT;
//		}
//	}
	//每隔一个统计周期清0
//	if (m_count % m_intp_busy_analyse_period
//			== 0) {
//		m_intp_busy_count = 0;
//	}

	//g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
	//		"<--::Interpolate");
	//last_cycle_time = cur_cycle_time;
	return ERROR_NONE;
}

//管理插补流程函数。此函数在插补线程中运行
int32_t Interpolation::ManageInterpolation() {
	int32_t res = ERROR_NONE;
	if (m_process_state == PRO_UPDATE_DATA) {
		//从插补缓冲区读取数据，更新现有数据
		if (m_need_get_new_data) {
			m_get_data_result = GetMachiningData();
			if (m_get_data_result == GET_INTP_DATA) {
				m_interpolation_algorithm->ComputeGeometry();
				m_need_get_new_data = false;
				//将end_data中的信息拷贝到m_data中，以便在插补过程中保证m_data中的其他数据信息与end_data保持相同
				CopyNonMoveInfo(m_data, m_geometry->end_data);
			} else {
				//没有从插补缓冲区读到数据，返回
				goto DEAL_RUN_STATE;
			}
		}
		if(m_interpolation_algorithm == m_quick_move_interpolation) {
			//在自动模式下是否需要对单个轴进行速度规划取决于插补数据包LineData中轴的mask
			if (m_cur_channel_mode == AUTO_MODE) {
				SetAxisDynamicMask();
			}
		}
		if ((m_run_state == INTP_STOPPING) || (*m_feed_rate < ZERO_DOUBLE)) {
			//如果当前正在暂停状态，则输入进给倍率为零，这样目标速度和终点速度都为为零，即为进行暂停的速度规划
			m_interpolation_algorithm->PlanVelocity(0.0, 0.0,
					m_is_tapping_mode);
		} else {
			//判断进给倍率是否大于100%，如果超过100%，终点速度保持不变，防止在终点不能停下来的情况；否则将终点速度调低
			//这个修改是为了解决CNC-741的bug
			if (*m_feed_rate < 1.0) {
				m_interpolation_algorithm->PlanVelocity(*m_feed_rate,
						*m_feed_rate, m_is_tapping_mode);
			} else {
				m_interpolation_algorithm->PlanVelocity(*m_feed_rate, 1.0,
						m_is_tapping_mode);
			}
		}
//		if(m_geometry->end_data->line_no > 49 && m_geometry->end_data->line_no < 56) {
//			g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION, "%f,%f,%f,%f,%f",
//					m_dynamic_info[TRAJECTORY_INDEX]->fe * 1000,
//					m_dynamic_info[TRAJECTORY_INDEX]->fs * 1000,
//					m_dynamic_info[TRAJECTORY_INDEX]->f,
//					m_dynamic_info[TRAJECTORY_INDEX]->T[0],
//					m_dynamic_info[TRAJECTORY_INDEX]->T[1]);
//		}
		m_process_state = PRO_INTERPOLATING;
	}

	//已经做好速度规划的数据进行单步插补
	if (m_process_state == PRO_INTERPOLATING) {
		if (!m_interpolation_algorithm->IsInterpolationFinished()) {
			m_interpolation_algorithm->Interpolate(m_data);
			for (int i = 0; i < m_channel_config->axis_number; i++) {
				//判断插补得出的坐标位置是否有效，即对数据是否为NaN做检查。如果为NaN，立即停止插补并报警
				if (__isnan(m_data->axis_mov_data.dest_pos[i])
						|| __isinf(m_data->axis_mov_data.dest_pos[i])) {
					//插补数据计算出错，将插补点改为起点值
					m_data->axis_mov_data.dest_pos[i] =
							m_geometry->start_point[i];
//					g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION,
//							"系统内部错误！");
					SetStopState();
					res = INTERPOLATION_DATA_ERROR;
					goto END;
//					CreateErrorInfo(INTERPOLATION_DATA_ERROR, ERROR_LEVEL,
//							CLEAR_BY_MCP_RESET, i);
				}
				double last_spd = spd[i];
				spd[i] = (m_data->axis_mov_data.dest_pos[i] - pos[i]) / (cur_cycle_time - last_cycle_time);
				acc[i] = (spd[i] - last_spd)/ (cur_cycle_time - last_cycle_time);
				pos[i] = m_data->axis_mov_data.dest_pos[i];
//				if(i < 3) {
//					if(m_geometry->end_data->interpolation_type != G00) {
//						if(acc[i] > (g_config.max_axis_acc[i] + 0.0001)) {
//							g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION, "excd:%d,%d,%d,%f,%f",
//									i,
//									m_data->line_no,
//									m_dynamic_info[m_trajectory_index]->current_step,
//									spd[i],
//									acc[i]);
//						}
//					}
//					else {
//						if(acc[i] > (g_config.max_G00_axis_acc[i] + 0.0001)) {
//							g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION, "G00:%d,%d,%d,%f,%f",
//									i,
//									m_data->line_no,
//									m_dynamic_info[m_trajectory_index]->current_step,
//									spd[i],
//									acc[i]);
//						}
//					}
//				}
			}
//			if(m_geometry->end_data->line_no > 49 && m_geometry->end_data->line_no < 56) {
//				if(m_dynamic_info[m_trajectory_index]->step_number - m_dynamic_info[m_trajectory_index]->current_step < 5 ||
//						 m_dynamic_info[m_trajectory_index]->current_step < 4) {
//					g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION, "%d,%d,%f,%f,%f",
//							m_dynamic_info[m_trajectory_index]->current_step,
//							m_dynamic_info[m_trajectory_index]->step_number,
//							m_dynamic_info[m_trajectory_index]->current_l * 1000,
//							m_data->axis_mov_data.dest_pos[0],
//							m_dynamic_info[m_trajectory_index]->current_f * 1000);
//				}
//			}
//			if(m_data->axis_mov_data.dest_pos[4] > 1000000)
//			g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION, "1:%f",m_data->axis_mov_data.dest_pos[4]);
//			g_log_trace->PrintTrace(TRACE_ERROR, INTERPOLATION, "1:%f,%f,%f",m_data->axis_mov_data.dest_pos[0],m_data->axis_mov_data.dest_pos[1],m_data->axis_mov_data.dest_pos[2]);
			res = OutputData(m_data, m_owner_ptr);
			if(res != ERROR_NONE) {
				goto END;
			}
			//m_multi_axis_processor->Process(m_data);
			//插补一步之后再检查是否插补完成，解决CNC-1100的bug
			if (!m_interpolation_algorithm->IsInterpolationFinished()) {
				m_is_reach_end = false;
				goto END;
			} else {
				//自动模式下如果没有到达终点，将终点数据保存，等到下次启动时继续插补
				if (!m_interpolation_algorithm->HasReachedEnd()) {
					m_interpolation_algorithm->SaveEndData(m_data_buffer);
					//以当前位置更新为起点位置
					UpdateStartCondition();
					m_is_reach_end = false;
				} else {
					for (uint32_t i = 0; i < m_channel_config->axis_number; i++) {
						if(m_geometry->end_data->axis_mov_data.CheckMask(i) == 1) {
							//已经到达终点，用当前的线段终点更新为下一段的起点
							m_geometry->start_point[i] = m_geometry->end_data->axis_mov_data.dest_pos[i];
						}
						else {
							m_geometry->start_point[i] = m_data->axis_mov_data.dest_pos[i];
						}
						m_dynamic_info[i]->current_l = 0.0;
					}
					m_dynamic_info[m_trajectory_index]->current_l = 0.0;
					m_is_reach_end = true;
				}
				//曲线插补完成之后，在开始新的插补之前需要读取新的数据
				m_need_get_new_data = true;
			}
		}
	}
	DEAL_RUN_STATE:
	//根据当前状态决定下一个插补周期的状态和流程
	switch (m_run_state) {
	case INTP_MACHINING: {
		if ((m_is_single_line_mode && m_data->has_special_cmd != 1)
				|| (m_data->feed_info.speed_ctrl_mode == TAPPING_MODE && m_data->interpolation_flag)) {
			//当前速度为零，并且从插补缓冲区中得到数据时，处理当前状态为暂停
			if (IS_ZERO(m_interpolation_algorithm->GetCurrentSpeed())) {
				//为了实现单段时进给倍率跳到零，在进给倍率调大之后能继续运行的功能。2013-12-16，陈晓颖
				if (m_is_reach_end && (m_get_data_result != GET_NO_DATA)) {
					//如果在单段模式下，当前速度为零，表示当前曲线已经加工完成，将当前状态置为STOPPED状态
					SetStopState();
					m_is_reach_end = false;
				} else {
					m_process_state = PRO_UPDATE_DATA;
				}
			} else if (m_is_single_line_mode
					&& !IS_ZERO(m_interpolation_algorithm->GetCurrentSpeed())) {
				//如果是单段模式并且速度没有停下来，那么需要继续插补直到速度停下来。修改CNC-732的bug
				m_process_state = PRO_UPDATE_DATA;
			}
		} else {
			m_process_state = PRO_UPDATE_DATA;
		}
	}
		break;
	case INTP_STOPPING: {
		if (IS_ZERO(m_interpolation_algorithm->GetCurrentSpeed())) {
			//如果需要改变加工模式
			if (m_is_channel_mode_changing) {
				ChangeChannelMode();
				m_is_channel_mode_changing = false;
			}
			//SetStopState需要放在切换模式之后，解决CNC-1263
			//在暂停状态下如果加工停止，设置当前状态为STOPPED状态
			SetStopState();
		} else {
			//如果当前这段曲线已经插补完成，但是速度没有降到零，将流程状态置为更新数据，继续读取下一段曲线进行插补
			m_process_state = PRO_UPDATE_DATA;
		}
	}
		break;
	case INTP_STOPPED: {
		//如果需要改变加工模式
		if (m_is_channel_mode_changing) {
			ChangeChannelMode();
			m_is_channel_mode_changing = false;
		}
	}
		break;
	default:
		break;
	}
END:
	return res;
}
//从插补缓冲区中得到加工数据
int32_t Interpolation::GetMachiningData() {
	int get_data_time = 0;
	int32_t get_data_result = GET_NO_DATA;
	while((get_data_result != GET_INTP_DATA) && ((get_data_time++) < 10)) {
		if((m_dynamic_info[m_trajectory_index]->current_f < ZERO_DOUBLE) && (get_data_time > 1)) {
			return get_data_result;
		}
		if (m_data_buffer->BufLen() > 0) {
			//获取上一个数据前瞻的终点速度
			double last_fe = m_geometry->end_data->feed_info.end_feed_speed;
			//除G00之外，其他的插补类型，最小步长。如果线段的长度小于此最小步长，则需要读下一段线段
			double min_step_time = m_interpolation_cycle_time - m_dynamic_info[m_trajectory_index]->left_time;
			m_geometry->end_data = m_data_buffer->ReadDataPtr(0);
			//换刀之后更新刀库轴的位置
			if (m_channel_state->servo_tool_magazine) {
				if(m_geometry->end_data->axis_mov_data.CheckMask(m_channel_state->servo_tool_magazine_axis) == 0) {
					m_geometry->end_data->axis_mov_data.dest_pos[m_channel_state->servo_tool_magazine_axis] =
							m_realtime_state->cur_pos.pos[m_channel_state->servo_tool_magazine_axis];
				}
			}
			//根据当前的加工模式和指令数据，判定所使用的进给倍率类型
			ConfigFeedRateType((GCode) m_geometry->end_data->interpolation_type);
			//处理旋转轴就近定位
			ProcessNearbyLocate(m_geometry->end_data);

			//对除了X，Y，Z几何轴之外的轴的移动距离进行处理，计入axis_mov_data.dist中,不考虑主轴
			if (!m_geometry->end_data->axis_mov_data.dist_processed
					&& (m_geometry->end_data->axis_mov_data.mask
							& (~(uint64_t) 0x07)) != 0) {
				m_geometry->end_data->axis_mov_data.dist *=
						m_geometry->end_data->axis_mov_data.dist;

				//在计算剩余轴的距离时不计入主轴的移动距离。TODO：之后同步轴的处理可以按照距离和速度的对应关系进行处理
				for (int i = 3; i < m_channel_config->axis_number - 1; i++) {
					if (m_geometry->end_data->axis_mov_data.mask & ((uint64_t)0x1 << i)) {
						m_geometry->end_data->axis_mov_data.dist += pow(
								m_geometry->end_data->axis_mov_data.dest_pos[i]
										- m_geometry->start_point[i], 2);
					}
				}
				m_geometry->end_data->axis_mov_data.dist = sqrt(
						m_geometry->end_data->axis_mov_data.dist);
				m_geometry->end_data->axis_mov_data.dist_processed = 1;	//标识非几何轴距离已经计算，防止重复计算导致dist出错
			}
			if ((m_geometry->end_data->interpolation_flag != 0)
					&& (m_geometry->end_data->axis_mov_data.dist > ZERO_DOUBLE)) {
				//处理数据中的特殊指令，如M指令
				ProcessCmd(m_geometry->end_data);
				//进行插补时，起点速度，终点速度，和目标速度不能同时为零
				if ((IS_ZERO(*m_feed_rate) && IS_ZERO(m_interpolation_algorithm->GetCurrentSpeed()))
						|| (IS_ZERO(m_geometry->end_data->feed_info.calc_target_feed_speed)
								&& IS_ZERO(m_interpolation_algorithm->GetCurrentSpeed())
								&& IS_ZERO(m_geometry->end_data->feed_info.end_feed_speed))) {
					get_data_result = GET_NO_DATA; //表示没有得到数据
					return get_data_result;
				}
				if(m_geometry->end_data->interpolation_type != G00) {
					last_fe *= (*m_feed_rate);
					double sum_speed = last_fe + m_geometry->end_data->feed_info.end_feed_speed;
					if(sum_speed > ZERO_DOUBLE) {
						double step_time = 2.0 * m_geometry->end_data->axis_mov_data.dist / sum_speed;
						//非G00的情况下，需要检查线段长度
						if(min_step_time > step_time) {
							//如果线段长度太小，则需要继续读下一段线段
							m_dynamic_info[m_trajectory_index]->left_time += step_time;
							for(int i=0; i<m_channel_config->axis_number; i++) {
								if(m_geometry->end_data->axis_mov_data.CheckMask(i)) {
									m_geometry->start_point[i] = m_geometry->end_data->axis_mov_data.dest_pos[i];
								}
							}
							m_geometry->end_data->interpolation_flag = 0;
							goto TRANSFER_DATA;
						}
					}
				}
				//根据插补类型配置相应的插补算法
				switch (m_geometry->end_data->interpolation_type) {
				case G00: {
					//如果之前的插补类型不为G00，则其速度为合成速度，在切换至G00之前速度已经降到0，其各个轴上分得的速度也为零
					if (m_data->interpolation_type != G00) {
						for (uint32_t i = 0; i < m_channel_config->axis_number; i++) {
							m_dynamic_info[i]->current_f = 0.0;
						}
						//非G00插补类型的下一个插补数据如果是G00，则其终点速度为零。
						//TODO：在前瞻模块确保其末速度为零
						m_dynamic_info[m_trajectory_index]->current_f = 0.0;
					}
					//如果配置的快速移动类型为直线型，并且当前为自动模式，则直线型快速移动生效，用G01算法进行插补
					if ((m_channel_config->quick_move_mode == LINE_MOVE)
							&& (m_cur_channel_mode == AUTO_MODE)) {
						//将G00数据转化为G01数据，进行直线插补
						TransferToLineData(m_geometry);
						//判断G00数据转化为G01后，曲线距离是否为零，如果为零，不需要进行插补
						if (m_geometry->end_data->axis_mov_data.dist < ZERO_DOUBLE) {
							goto TRANSFER_DATA;
						}
						m_interpolation_algorithm = m_line_interpolation;
					} else {
						//在自动模式下是否需要对单个轴进行速度规划取决于插补数据包LineData中轴的mask
						if (m_cur_channel_mode == AUTO_MODE) {
							SetAxisDynamicMask();
						}
						//判断G00各个轴上的最大的位移是否为零，如果为零，不需要进行插补
						double max_axis_distance = 0.0;
						double axis_distance;
						for (uint32_t i = 0; i < m_channel_config->axis_number; i++) {
							if(m_geometry->end_data->axis_mov_data.CheckMask(i)) {
								axis_distance = fabs(
										m_geometry->end_data->axis_mov_data.dest_pos[i]
												- m_geometry->start_point[i]);
								if (max_axis_distance < axis_distance) {
									max_axis_distance = axis_distance;
								}
							}
						}
						if (max_axis_distance < ZERO_DOUBLE) {
							goto TRANSFER_DATA;
						}
						m_interpolation_algorithm = m_quick_move_interpolation;
					}
				}
					break;
				case G01: {
					m_interpolation_algorithm = m_line_interpolation;
				}
					break;
				case G02:
				case G02_4:
				case G03: {
					m_interpolation_algorithm = m_circle_interpolation;
				}
					break;
				default:
					//如果不可处理数据，则将flag置为零，不进行插补
					m_geometry->end_data->interpolation_flag = 0;
					goto TRANSFER_DATA;
				}
				//如果进给倍率不为零，将缓冲区数据读出
				m_data_buffer->Next();
				get_data_result = GET_INTP_DATA;
				continue;
			}
			else {
				//进行插补时，起点速度，终点速度，和目标速度不能同时为零
				if (m_is_single_line_mode && IS_ZERO(*m_feed_rate) && IS_ZERO(m_interpolation_algorithm->GetCurrentSpeed())) {
					get_data_result = GET_NO_DATA; //表示没有得到数据
					return get_data_result;
				}else{
					//处理数据中的特殊指令，如M指令
					ProcessCmd(m_geometry->end_data);
				}
			}
			TRANSFER_DATA:
			//如果进给倍率不为零，将缓冲区数据读出
			m_data_buffer->Next();
			m_geometry->end_data->feed_info.cur_speed = 0;
			memset((char*) m_geometry->end_data->axis_mov_data.cur_speed, 0,
					sizeof(double) * m_channel_config->axis_number);
			//将终点数据包中的数据除了终点坐标位置以外，拷贝到当前插补坐标点m_data中
			CopyNonMoveInfo(m_data, m_geometry->end_data);
			m_is_reach_end = true;
			//没有得到可以插补的数据，直接将数据传递给下个模块
			OutputData(m_geometry->end_data, m_owner_ptr);
			//m_multi_axis_processor->Process(m_geometry->end_data);
			get_data_result = GET_NON_INTP_DATA; //表示从缓冲区得到数据，但是数据不需要进行插补
			continue;
		}
		get_data_result = GET_NO_DATA;
	}
	return get_data_result;
}
//根据插补类型配置进给倍率的类型
void Interpolation::ConfigFeedRateType(GCode interpolation_type) {
	switch (m_cur_channel_mode) {
	case AUTO_MODE: {
		if (interpolation_type == G00) {
			m_feed_rate = &m_G00_rate;
		} else {
			m_feed_rate = &m_auto_rate;
		}
	}
		break;
	case MANUAL_MODE: {
		m_feed_rate = &m_manual_rate;
	}
		break;
	case RETURN_REF_MODE: {
		m_feed_rate = &m_manual_rate;
	}
		break;
	default:
		break;
	}
}
//在选停，单段等模式下处理G代码中相关的指令
inline void Interpolation::ProcessCmd(LineData* data) {
	//单段模式下，每行的末速度为0。由于G00的末速度本来为零，所以在此只需要设置合成速度规划的末速度即可
	if (m_is_single_line_mode && (m_cur_channel_mode == AUTO_MODE)) {
		data->feed_info.end_feed_speed = 0.0;
	}

	//Fix CNC-1484的bug，如果为刚性攻丝模式，则使用S型速度规划
	if (data->m_commands.HasCmd(M502)) {
		//更新速度规划类型
		m_quick_move_interpolation->SetSpeedProfileType(S_SPEED_PROFILE);
		m_line_interpolation->SetSpeedProfileType(S_SPEED_PROFILE);
		m_circle_interpolation->SetSpeedProfileType(S_SPEED_PROFILE);
		m_is_tapping_mode = true;
	} else if (data->m_commands.HasCmd(M503)) {
		//如果刚性攻丝结束，则将速度规划改为刚性攻丝之前的速度规划类型
		m_quick_move_interpolation->SetSpeedProfileType(
				(SpeedProfileType) m_channel_config->speed_profile_type);
		m_line_interpolation->SetSpeedProfileType(
				(SpeedProfileType) m_channel_config->speed_profile_type);
		m_circle_interpolation->SetSpeedProfileType(
				(SpeedProfileType) m_channel_config->speed_profile_type);
		m_is_tapping_mode = false;
	}

	//需要在当前行暂停的情况：
	//1.选停模式下，新的CompileData中含有M01，则此行结束时插补器暂停，且将interpolation_stop_flag置1。
	//2.如果本行指令中有形成检测超限的标志，需要在本行停下
	if ((m_is_optional_stop && (data->m_commands.HasCmd(M01)))
			|| data->NeedToStop()) {
		CreateStopCmd();
	}
}
//在加工停止时将插补流程状态设置为停止
void Interpolation::SetStopState() {
	m_run_state = INTP_STOPPED;
	m_process_state = PRO_IDLE_RUNNING;
	CopyNonMoveInfo(m_data, m_geometry->end_data);
	//2015.9.18, GLH, 解决CNC-2940，回参考点的主轴定向时取消回参考点，界面上显示的F设定值为主轴定向速度(转换为mm/min)
	if(m_channel_state->machining_state == READY) {
		m_data->feed_info.usr_target_feed_speed = 0.0;
	}
	m_data->interpolation_stop_flag = 1;
	m_data->has_special_cmd = 0; //此处需要将has_special_cmd置为0，否则该行会执行两遍
	m_data->para_entry.para_entry_values_mask = 0;//此处需要将G10标记清零，否则会造成G10执行多次
	//m_multi_axis_processor->Process(m_data);
	OutputData(m_data, m_owner_ptr);
	m_data->interpolation_stop_flag = 0;
}
//改变加工模式时，设置相应的状态和流程
void Interpolation::ChangeChannelMode() {
	uint32_t index = 0;
	//如果当前是自动加工模式，需要保留当前点，当再次切换到自动加工模式时，直接返回当前点继续加工
	if (m_cur_channel_mode == AUTO_MODE) {
		m_data->interpolation_type = G00;
		m_data->interpolation_flag = 1;
		m_data->axis_mov_data.mask = ~0;
		m_data->axis_mov_data.dist = 1.0;
		//取所有轴中最小的加速度和加加速度
		double min_acc = m_channel_config->channel_axis_config[0]->max_G00_axis_acc;
		double min_jerk = m_channel_config->channel_axis_config[0]->max_axis_jerk;
		for(int i=1; i<m_channel_config->axis_number-1; i++) {
			if(min_acc > m_channel_config->channel_axis_config[0]->max_G00_axis_acc) {
				min_acc = m_channel_config->channel_axis_config[0]->max_G00_axis_acc;
			}
			if(min_jerk > m_channel_config->channel_axis_config[0]->max_axis_jerk) {
				min_jerk = m_channel_config->channel_axis_config[0]->max_axis_jerk;
			}
		}
		m_data->acc = min_acc;
		m_data->jerk = min_jerk;
		for (uint32_t i = 0; i < m_channel_config->axis_number; i++) {
			m_data->axis_mov_data.cur_speed[i] = m_channel_config->g00_speed;
		}
		m_data->feed_info.calc_target_feed_speed = m_channel_config->g00_speed;
		m_data->feed_info.end_feed_speed = 0.0;
		m_data->m_commands.Reset();

		//在复位或者刚上电时不需要保存当前数据，只有在自动模式下暂停或者停止状态需要保存数据；换刀/主轴定向/刀具检测时有切换模式，也不需要保存
		if (m_is_machining && !m_channel_state->is_changing_tool
				&& !m_channel_state->is_spindle_orientation
				&& !m_channel_state->tool_broken_detect
				&& !m_channel_state->tool_broken_detect_setting) {
			//主轴位置不需要保存
			m_data->axis_mov_data.mask &= ~(((uint64_t)1 << m_channel_config->spindle_index));
			m_data_buffer->InsertData(m_data, 1);
			if (m_channel_state->servo_tool_magazine) { //如果是伺服电机带动刀库，则不记录自动插补之前的位置
				m_data->axis_mov_data.mask &= (~0x08);
			}
		}

		for (index = 0; index < m_channel_config->axis_number; index++) {
			m_data->axis_mov_data.cur_speed[index] = 0;
		}
		//切换到其他模式时终点数据初始为当前数据
		m_geometry->end_data = m_data;
	}
	//转入非自动加工模式清除之前的数据
	if (m_next_channel_mode != AUTO_MODE) {
		m_geometry->end_data->axis_mov_data.mask = 0x0;
		m_geometry->end_data->has_special_cmd = 0;
		m_geometry->end_data->interpolation_type = G00;
		m_next_data_buffer->ClearBuf();
	}

	//切换到手动模式时，安全区域保护标志清除，以便在超出安全区域时，可以在手动模式移到安全区域之内
	if (m_next_channel_mode == MANUAL_MODE) {
		m_data->protection_zone_alarm_flag = 0;
	}
	m_cur_channel_mode = m_next_channel_mode;
	m_data_buffer = m_next_data_buffer;
}
//更新起点数据
void Interpolation::UpdateStartCondition() {
	for (uint32_t i = 0; i < m_channel_config->axis_number; i++) {
		m_geometry->start_point[i] = m_data->axis_mov_data.dest_pos[i];
		m_dynamic_info[i]->current_l = 0.0;
	}
	m_dynamic_info[m_trajectory_index]->current_l = 0.0;
}
//设置插补状态，以及目标速度和终点速度，使得插补进入暂停状态
void Interpolation::CreateStopCmd() {
	m_run_state = INTP_STOPPING;
	m_process_state = PRO_UPDATE_DATA;
	//20131104, GongLihui, 此处将m_machining_state置为2，即停止状态，否则在攻丝时，
	//如果软限位超限，此时插补暂停，但插补还是会继续调用多轴处理模块，导致生成多个报警
	m_machining_state = INTP_PAUSED;
}
//将G00数据转化为G01数据，进行直线插补
void Interpolation::TransferToLineData(Geometry* geometry) {
	//计算G00的距离
	geometry->end_data->axis_mov_data.dist = 0.0;
	//重新计算G00的目标速度大小。因为G00数据中的目标速度是单个轴的目标速度，转化为G01数据之后，其目标速度为所有运动的轴的合成速度，
	//在此需要对合成速度进行计算
	double max_axis_distance = 0.0; //各个轴上移动距离最大的值
	double axis_distance;
	//解决CNC-532的bug，主轴不参与合成运动的计算，包括位移以及速度
	for (uint32_t i = 0; i < m_channel_config->axis_number - 1; i++) {
		if ((geometry->end_data->axis_mov_data.mask & ((uint64_t)1 << i)) != 0) {
			axis_distance = fabs(
					geometry->end_data->axis_mov_data.dest_pos[i]
							- geometry->start_point[i]);
			geometry->end_data->axis_mov_data.dist += pow(axis_distance, 2);
			if (axis_distance > max_axis_distance) {
				max_axis_distance = axis_distance;
			}
		}
	}
	geometry->end_data->axis_mov_data.dist = sqrt(
			geometry->end_data->axis_mov_data.dist);
	if (max_axis_distance > ZERO_DOUBLE) {
		geometry->end_data->feed_info.calc_target_feed_speed = m_channel_config->g00_speed *
				(geometry->end_data->axis_mov_data.dist / max_axis_distance);
		geometry->end_data->feed_info.usr_target_feed_speed = geometry->end_data->feed_info.calc_target_feed_speed;
	}
}
//处理旋转轴就近定位
void Interpolation::ProcessNearbyLocate(LineData* data) {
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"-->Interpolation::ProcessNearbyLocate");
	if (!data->interpolation_flag || m_cur_channel_mode == RETURN_REF_MODE) {
		return;
	}
	double dist;
	Position start_pos;
	//获取当前设置的起始点位置
	for (int i = 0; i < m_channel_config->axis_number; i++) {
		start_pos.pos[i] = m_geometry->start_point[i];
	}

	for (int index = 0; index < m_channel_config->axis_number; index++) {
		if ((m_channel_config->channel_axis_config[index]->axis_type == ROTARY_AXIS
				|| m_channel_config->channel_axis_config[index]->axis_type == TOOL_MAGAZINE_AXIS)
				&& m_channel_config->channel_axis_config[index]->nearby_locate
				&& !(m_cur_channel_mode == MANUAL_MODE
						&& !m_axis_manual_move_mod[index])) {
			if (data->interpolation_type == G00) {	
				//如果该轴打开了就近定位功能，则计算最近的路径
				dist = fmod(
						data->axis_mov_data.dest_pos[index] - start_pos.pos[index],
						ROTARY_AXIS_DIS_PER_R);
				if (dist > ROTARY_AXIS_DIS_PER_R / 2.0) {
					dist -= ROTARY_AXIS_DIS_PER_R;
				} else if (dist < -ROTARY_AXIS_DIS_PER_R / 2.0) {
					dist += ROTARY_AXIS_DIS_PER_R;
				}
				//更新除前瞻模块外的所有模块的起始位置
				SetPosInMachining(index, data->axis_mov_data.dest_pos[index] - dist, m_owner_ptr);
			}
		}
	}
//	g_log_trace->PrintTrace(TRACE_INFO, INTERPOLATION,
//			"<--Interpolation::ProcessNearbyLocate");
}
bool Interpolation::IsStopped() {
	//判断当前的速度是否为零，如果为零，直接进入停止状态
	if (INTP_STOPPED == m_run_state) {
		return true;
	} else {
		return false;
	}
}
//设置与通道控制之间的心跳
void Interpolation::SetHeartbeat(bool system_ready) {
	if (system_ready) {
		m_system_ready = true;
	}
	m_heartbeat = 1;
}
//获取当前模式
ChannelMode Interpolation::GetCurMode() {
	return m_cur_channel_mode;
}
//判断指定轴是否插补停止
bool Interpolation::IsPaused(int axis_index) {
	if (m_interpolation_algorithm != m_quick_move_interpolation) {
		if (m_interpolation_algorithm->GetCurrentSpeed() > ZERO_DOUBLE) {
			return false;
		}
	} else {
		if (m_dynamic_info[axis_index]->current_f > ZERO_DOUBLE) {
			return false;
		}
	}
	//在自动模式下，轴是否停止由合成速度插补信息中的current_step和总步数step_num决定；
	//手动模式下，轴是否停止由这个轴的插补信息中的current_step和总步数step_num决定
	if (m_dynamic_info[m_trajectory_index]->current_step
			< m_dynamic_info[m_trajectory_index]->step_number) {
		return false;
	}
	if (m_dynamic_info[axis_index]->current_step
			< m_dynamic_info[axis_index]->step_number) {
		return false;
	}
	return true;
}

//获取自动缓冲区长度
uint16_t Interpolation::GetBufLen() {
	return m_auto_buffer->BufLen();
}

//设置通道号
void Interpolation::SetChannelIndex(int channel_index, NCCCTChannelConfig* channel_config) {
	m_channel_index = channel_index;
	m_channel_config = channel_config;
}

