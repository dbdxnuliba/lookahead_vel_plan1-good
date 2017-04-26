/**Copyright(C) 2012 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file: 	alg_interface.cpp
 * @author:	龚丽辉
 * @date：	2016-11-15
 * @brief: 	本头文件包含数控下位机算法库接口定义
 */

#include "alg_interface.h"
ALGLogTrace* alg_log_trace = NULL;

//算法接口类
AlgInterface::AlgInterface(int channel_index, NCCCTChannelConfig* config) {
	m_channel_index = channel_index;
	m_channel_config = config;
}

AlgInterface::~AlgInterface() {

}

//初始化
int AlgInterface::Init(int (*OutputData)(LineData* data, void* arg0),
		void (*SetPosInMachining)(uint8_t axis_index, double pos,
				void* arg0),
		void (*AlgPrintTrace)(TraceLevel trace_level, TraceModule module_id,
				char* trace_message),
		void (*AlgPrintLog)(LogLevel log_level, char* log_message),
		NCCCTChannelState* channel_state,
		ChannelRealtimeState* realtime_state, void* arg1) {
	int res = ERROR_NONE;
	if (alg_log_trace == NULL) {
		alg_log_trace = new ALGLogTrace(AlgPrintTrace, AlgPrintLog);
		if (alg_log_trace == NULL) {
			res = NC_INIT_ERR;
			return res;
		}
	}
	alg_log_trace->PrintTrace(TRACE_ERROR, CHANNEL_CONTROL_CT, "Greetings!!!@0x%x",alg_log_trace);
	m_interpolator = new Interpolation(m_channel_index, m_channel_config,
			channel_state, realtime_state, OutputData, SetPosInMachining, arg1);
	if (m_interpolator == NULL) {
		res = NC_INIT_ERR;
		return res;
	}
	res = m_interpolator->Init();
	if (res != ERROR_NONE) {
		return res;
	}

	m_look_ahead = new LookAhead(m_interpolator, m_channel_index,
			m_channel_config, realtime_state);
	if (m_look_ahead == NULL) {
		res = NC_INIT_ERR;
		return res;
	}
	res = m_look_ahead->Init();
	if (res != ERROR_NONE) {
		return res;
	}
	return res;
}

//插补
int AlgInterface::Interpolate(){
	m_interpolator->Interpolate();
}

//数据处理
int AlgInterface::Process(LineData* line_data) {
	return m_look_ahead->Process(line_data);
}

//设置手动移动指令，正向，负向还是手动停止，指令都是对单个轴而言
void AlgInterface::SetAxisMoveCmd(NCCCmdNumber move_cmd, uint16_t axis_index,
		bool step_mode, double speed, double distance, bool is_accumulative) {
	m_interpolator->SetAxisMoveCmd(move_cmd, axis_index, step_mode, speed,
			distance, is_accumulative);
}

//判断插补缓冲区是否已满，可供外部模块调用
bool AlgInterface::IsIntpBufferFull(uint8_t mode) {
	return m_interpolator->IsBufferFull(mode);
}

//判断前瞻缓冲区是否已满，可供外部模块调用
bool AlgInterface::IsLABufferFull() {
	return m_look_ahead->IsBufFull();
}
//插补类被其他模块调用用来插补的接口
int32_t AlgInterface::InsertInterpolationData(LineData* data) {
	return m_interpolator->InsertInterpolationData(data);
}
//插补数据到缓冲区头
int32_t AlgInterface::AddIntpData(LineData* data) {
	return m_interpolator->AddIntpData(data);
}
//得到当前的原始指令数据，向通道控制提供此数据
int32_t AlgInterface::GetCurLineData(LineData* data) {
	return m_interpolator->GetCurLineData(data);
}
//设置插补器该轴当前位置
void AlgInterface::SetIntpCurPos(uint16_t axis_index, double pos) {
	m_interpolator->SetCurPos(axis_index, pos);
	return;
}

//设置算法库该轴当前位置
void AlgInterface::SetAlgCurPos(uint16_t axis_index, double pos) {
	m_look_ahead->SetCurPos(axis_index, pos);
	m_interpolator->SetCurPos(axis_index, pos);
	return;
}
//停止指令，被通道控制调用，用来停止插补
void AlgInterface::Pause(bool is_emergency_stop) {
	m_look_ahead->Reset();//CNCC-501,LKN,2017.03.10
	m_interpolator->Pause(is_emergency_stop);
	return;
}
//继续开始插补，在停止之后调用此函数从当前位置继续插补。被通道控制调用
void AlgInterface::Continue() {
	m_interpolator->Continue();
	return;
}
//复位函数，用来停止插补，并清除插补状态，数据等。由通道控制调用
void AlgInterface::Reset() {
	m_look_ahead->Reset();//CNCC-501,LKN,2017.03.10
	m_interpolator->Reset();
	return;
}
//设置进给倍率
void AlgInterface::SetFeedRate(RatioType type, double feed_rate) {;
	m_interpolator->SetFeedRate(type, feed_rate);
	return;
}
//设置系统通道模式
void AlgInterface::SetMode(ChannelMode channel_mode) {
	m_interpolator->SetMode(channel_mode);
	return;
}
//设置单段模式，供通道控制调用
void AlgInterface::SetSingleLineMode(bool is_single_line_mode) {
	m_interpolator->SetSingleLineMode(is_single_line_mode);
	return;
}
//设置选停模式，遇到M01或者没有插补指令的指令，程序停止。供通道控制调用
void AlgInterface::SetOptionalStopMode(bool is_optional_stop) {
	m_interpolator->SetOptionalStopMode(is_optional_stop);
	return;
}

//设置回参考点的状态
void AlgInterface::SetRetRefPosState(bool returning_ref_pos, uint8_t cur_mode) {
	m_interpolator->SetRetRefPosState(returning_ref_pos, cur_mode);
	return;
}
//查询插补器是否处于暂停状态
bool AlgInterface::IsStopped() {
	return m_interpolator->IsStopped();
}
//设置与通道控制之间的心跳
void AlgInterface::SetHeartbeat(bool system_ready) {
	m_interpolator->SetHeartbeat(system_ready);
	return;
}
//获取当前模式
ChannelMode AlgInterface::GetCurMode() {
	return m_interpolator->GetCurMode();
}
//判断指定轴是否插补停止
bool AlgInterface::IsPaused(int axis_index) {
	return m_interpolator->IsPaused(axis_index);
}

//获取自动缓冲区长度
uint16_t AlgInterface::GetBufLen() {
	return m_interpolator->GetBufLen();
}
