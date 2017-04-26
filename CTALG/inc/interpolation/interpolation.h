/**Copyright(C) 2013 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file:	interpolation.h
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief 本头文件包含插补算法的声明*/

#ifndef INTERPOLATION_H_
#define INTERPOLATION_H_

#include "interpolation_data.h"
#include "data_definition.h"
#include "circular_buffer.h"
#include "log_trace.h"
extern ALGLogTrace* alg_log_trace;

class QuickMoveInterpolation;
class LineInterpolation;
class CircleInterpolation;
class InterpolationAlgorithm;

/**
 *@brief 插补类，与其他模块进行通讯
 */
class Interpolation {
public:
	/**
	 * @brief 插补类构造函数，插补完成后向multi_axis_processor输出数据
	 * @param Multi_Axis_Process* multi_axis_processor：多轴处理器实例指针
	 * @return	无
	 */
	Interpolation(uint16_t channel_index, NCCCTChannelConfig* channel_config,
			NCCCTChannelState* channel_state,
			ChannelRealtimeState* realtime_state,
			int (*OutputData)(LineData* data, void* arg0),
			void (*SetPosInMachining)(uint8_t axis_index, double pos,
					void* arg0), void* arg1);
	/**
	 *@brief Interpolation析构函数，用来释放内存，销毁插补线程
	 *@param 无
	 *@return 无
	 */
	~Interpolation();
	/**
	 * @brief 插补初始化函数
	 * @param 无
	 * @return 无
	 */
	int32_t Init();

	/*
	 * 插补线程入口函数
	 */
	int32_t Interpolate();

	/**
	 *@brief 判断插补缓冲区是否已满，可供外部模块调用
	 *@param uint8_t mode：当前运动模式，自动，手动，MDA等
	 *@return true表示缓冲区已满
	 */
	bool IsBufferFull(uint8_t mode) const;
	/**
	 * @brief 插补类被其他模块调用用来插补的接口
	 * @param CompileData* data：前瞻处理后的数据，插入插补器缓冲区
	 * @return: 处理结果
	 */
	int32_t InsertInterpolationData(LineData* data);
	/**
	 * @brief 插补数据到缓冲区头
	 * @param data：前瞻处理后的数据，插入插补器缓冲区头部
	 * @return: 处理结果
	 */
	int32_t AddIntpData(LineData* data);
	/**
	 *@brief 得到当前的原始指令数据，向通道控制提供此数据
	 *@param CompileData* compile_data：用来存放指令数据
	 *@return 处理结果
	 */
	int32_t GetCurLineData(LineData* data) const;
	/*
	 * @brief 设置该轴当前位置
	 * @param uint16_t axis_index：设置位置的轴的轴号
	 * @param double pos：设置的轴的位置
	 * @return 无
	 */
	void SetCurPos(uint16_t axis_index, double pos);
	/**
	 *@brief 停止指令，被通道控制调用，用来停止插补
	 *@param bool is_emergency_pause：是否急停模式。停止模式有两种：一种是正常停止，即先减速到速度为零然后停止；另外一种是急停
	 *@return 无
	 */
	void Pause(bool is_emergency_stop);
	/**
	 *@brief 继续开始插补，在停止之后调用此函数从当前位置继续插补。被通道控制调用
	 *@param 无
	 *@return 无
	 */
	void Continue();
	/**
	 *@brief 复位函数，用来停止插补，并清除插补状态，数据等。由通道控制调用
	 *@param 无
	 *@return 无
	 */
	void Reset();
	/**
	 *@brief 设置进给倍率
	 *@param RatioType type：运行模式，参考RatioType结构体
	 *@param double feedrate：进给倍率值
	 *@return 无
	 */
	void SetFeedRate(RatioType type, double feed_rate);
	/**
	 *@brief 设置系统通道模式
	 *@param uint8_t channel_mode：系统通道模式
	 *@return 无
	 */
	void SetMode(ChannelMode channel_mode);
	/**
	 *@brief 设置单段模式，供通道控制调用
	 *@param bool single_line_state：是否单段模式
	 *@return 无
	 */
	void SetSingleLineMode(bool is_single_line_mode);
	/**
	 *@brief 设置选停模式，遇到M01或者没有插补指令的指令，程序停止。供通道控制调用
	 *@param bool optional_stop_state：是否单段模式
	 *@return 无
	 */
	void SetOptionalStopMode(bool is_optional_stop);
	/**
	 *@brief 设置手动移动指令，正向，负向还是手动停止，指令都是对单个轴而言
	 *@param uint32_t move_cmd：手动移动指令，表明是正向移动，负向移动还是暂停移动
	 *@param uint16_t axis_index：表示当前指令对哪个轴起作用
	 *@param bool step_mode,是否为单步模式
	 *@param double speed：指定轴移动的速度
	 *@param double step_number：步长，在手轮位移模式下，手轮摇动时发送相当与单步的步长个数，来指定指定轴的位移
	 *@param bool is_accumulative：是否将当前指定的距离累积，如果需要累积，则之前指定的位移加上指定的位移；如果不需要累积，则用当前轴的位置
	 *@param 加上指定的距离
	 *@return 无
	 */
	void SetAxisMoveCmd(NCCCmdNumber move_cmd, uint16_t axis_index,
			bool step_mode = true, double speed = 0.0, double distance = 0.0,
			bool is_accumulative = false);
	/**
	 *@brief	  设置回参考点的状态
	 *@param bool returning_ref_pos
	 *@return 无
	 */
	void SetRetRefPosState(bool returning_ref_pos, uint8_t cur_mode);
	/**
	 *@brief 查询插补器是否处于暂停状态
	 *@param 无
	 *@return 插补器是否处于暂停状态
	 */
	bool IsStopped();
	/**
	 *@brief 设置与通道控制之间的心跳
	 *@param bool system_ready
	 *@return 无
	 */
	void SetHeartbeat(bool system_ready = 0);
	/**
	 *@brief 获取当前模式
	 *@param 无
	 *@return 当前模式
	 */
	ChannelMode GetCurMode();
	/**
	 *@brief 判断指定轴是否插补停止
	 *@param int axis_index：指定轴的轴号
	 *@return true表示轴已经停止，false表示轴正在运动
	 */
	bool IsPaused(int axis_index);

	/*
	 * @brief 获取自动缓冲区长度
	 */
	uint16_t GetBufLen();

private:
	/**
	 *@brief 初始化系统的状态数据
	 *@param 无
	 *@return 无
	 */
	inline void InitState();

	/**
	 * @brief 管理插补流程函数。此函数在插补线程中运行
	 * @param 无
	 * @return 无
	 */
	int32_t ManageInterpolation();
	/**
	 *@brief 从插补缓冲区获取加工数据，并将数据的指针存放在曲线终点数据中
	 *@param 无
	 *@return 处理结果
	 */
	int32_t GetMachiningData();
	/**
	 *@brief 根据插补类型配置进给倍率的类型
	 *@param GCode interpolation_type 插补类型
	 *@return 无
	 */
	void ConfigFeedRateType(GCode interpolation_type);
	/**
	 *@brief 在选停，单段等模式下处理G代码中相关的指令
	 *@param LineData* data G代码数据包
	 *@return 无
	 */
	inline void ProcessCmd(LineData* data);
	/**
	 *@brief 在加工停止时将插补流程状态设置为停止
	 *@param 无
	 *@return 无
	 */
	void SetStopState();
	/**
	 *@brief 改变加工模式时，设置相应的状态和流程
	 *@param 无
	 *@return 无
	 */
	void ChangeChannelMode();
	/**
	 *@brief 更新起点数据
	 *@param 无
	 *@return 无
	 */
	void UpdateStartCondition();
	/**
	 *@brief 设置插补状态，以及目标速度和终点速度，使得插补进入暂停状态
	 *@param 无
	 *@return 无
	 */
	void CreateStopCmd();
	/**
	 *@brief 将G00数据转化为G01数据，进行直线插补
	 *@param LineData* data
	 *@return 无
	 */
	void TransferToLineData(Geometry* geometry);
	/**
	 *@brief 根据轴的位移mask设置速度规划使能
	 *@param 无
	 *@return 无
	 */
	inline void SetAxisDynamicMask();
	/**
	 *@brief 将指定数据包中除了终点坐标外的信息拷贝到目标数据包中
	 *@param LineData* dest_data：目标数据包
	 *@param LineData* src_data：源数据包
	 *@return 无
	 */
	inline void CopyNonMoveInfo(LineData* dest_data, LineData* src_data);
	/**
	 *@brief 处理旋转轴就近定位
	 *@param LineData* data
	 *@return 无
	 */
	void ProcessNearbyLocate(LineData* data);
	/*
	 * @brief 设置本模块的通道号
	 */
	void SetChannelIndex(int channel_index, NCCCTChannelConfig* channel_config);

	/*
	 * @brief 输出插补后数据
	 */
	int (*OutputData)(LineData* data, void* arg0);

	/*
	 * @brief 更新除前瞻模块外的所有模块的起始位置
	 */
	void (*SetPosInMachining)(uint8_t axis_index, double pos, void* arg0);

	void* m_owner_ptr;
	uint8_t m_channel_index; //通道序号
	NCCCTChannelConfig* m_channel_config; //通道配置参数指针，指向全局配置数据结构
	NCCCTChannelState* m_channel_state;
	ChannelRealtimeState* m_realtime_state;
#ifndef X86_BUILD
	GateHwi_Handle m_gate_hwi; //读写互斥量
#endif

	ChannelMode m_cur_channel_mode; //通道的插补模式
	ChannelMode m_next_channel_mode; //切换模式时，在当前的模式没有停下来时模式不能马上切换，此变量用来保存需要切换的模式，等到插补停止时进行切换
	bool m_is_channel_mode_changing;

	//插补buffer，其他模式向自动模式切换时，由于要回到切换之前自动模式下的位置，需要保存自动模式缓冲区数据，因此自动缓冲区和其他缓冲区分开保存
	CircularBuffer<LineData>* m_data_buffer; //插补缓冲区指针，指向自动模式或者其他模式插补缓冲区。这个变量仅为指针，不分配内存空间
	//在切换模式时应该切换至相应模式下的缓冲区，在当前模式暂停之前，缓冲区不能马上切换，用此指针存下带切换的缓冲区指针
	CircularBuffer<LineData>* m_next_data_buffer;
	CircularBuffer<LineData>* m_auto_buffer; //自动模式插补缓冲区，在自动模式下用此缓冲区
	CircularBuffer<LineData>* m_non_auto_buffer; //其他模式下公用的缓冲区，用来在非自动模式下的缓冲区

	double* m_feed_rate; //进给速度指针，在不同的加工模式下指向对应的进给倍率
	double m_auto_rate; //自动模式加工时的进给倍率
	double m_G00_rate; //使用G00时的进给倍率
	double m_manual_rate; //手动模式进给倍率

	LineData* m_data; //从插补缓冲区得到数据，用来进行插补和传递给下一个模块
	Geometry* m_geometry; //包含曲线几何信息的结构体，指针传递给插补算法使用。
	DynamicInfo** m_dynamic_info; //包含曲线的运动信息，在速度规划时更改此结构体中的数据

	//插补算法指针。对不同的曲线类型进行不同的插补
	InterpolationAlgorithm* m_interpolation_algorithm; //指向插补算法的指针，此指针不分配实际内存
	QuickMoveInterpolation* m_quick_move_interpolation; //快速移动算法指针
	LineInterpolation* m_line_interpolation; //直线插补算法指针
	CircleInterpolation* m_circle_interpolation; //圆弧插补算法指针，也包含螺旋线插补类型

	RunState m_run_state; //插补运行的状态
	ProcessState m_process_state; //流程处理的状态
	bool m_need_get_new_data; //表示是否需要从buffer中读取新的数据
	int32_t m_get_data_result;

	bool m_is_single_line_mode; //是否单段模式
	bool m_is_optional_stop; //是否选停模式
	bool m_is_reach_end; //是否已经到达终点

	static const double kMaxPos; //指定一个轴不可能到达的位置
	uint8_t m_heartbeat; //与通道控制之间的心跳标志
	static uint32_t m_count; //用于控制循环计数
	uint32_t m_heartbeat_period; //检查心跳周期，单位：插补周期
	uint8_t m_machining_state; //0:尚未开始加工；1：加工中；2：暂停
	bool m_heartbeat_err; //是否有心跳异常
	bool m_system_ready; //系统是否准备好
	bool m_intp_cycle_set_warning; //插补周期设置告警
	uint32_t m_intp_busy_count; //插补周期超负荷计数
	uint32_t m_intp_busy_analyse_period; //插补超负荷计数统计周期
	Position m_origin_line_pos;
	NCCCmd m_output_cmd;

	bool m_is_machining; //是否在加工状态
	bool m_is_tapping_mode; //是否为刚性攻丝模式
	bool* m_axis_manual_move_mod;
	//修复CNC-3159，在手动连续向手动单步切换时，如果是累计模式，在轴没有停止之前，会将上一次手动连续的终点位置
	//作为本次指令的起点。这样手动单步会得到一个很长的运动距离，导致轴跑飞的现象
	bool* m_last_step_mode;
	double m_interpolation_cycle_time;
	uint8_t m_trajectory_index; //表示G01/G02等轨迹规划的index，与轴独立的index区分开
};
//根据轴的位移mask设置速度规划使能
inline void Interpolation::SetAxisDynamicMask() {
	for (uint32_t i = 0; i < m_channel_config->axis_number; i++) {
		if ((m_geometry->end_data->axis_mov_data.mask & ((uint64_t) 1 << i))
				!= 0) {
			m_dynamic_info[i]->is_enabled = true;
			m_dynamic_info[i]->run_state = AXIS_RUNNING;
		} else {
			m_dynamic_info[i]->is_enabled = false;
		}
	}
}
//将指定数据包中除了终点坐标外的信息拷贝到目标数据包中
inline void Interpolation::CopyNonMoveInfo(LineData* dest_data,
		LineData* src_data) {
	double dest_pos[MAX_AXIS_NUM];
	//保存目标数据包中的终点位置
	for (uint16_t i = 0; i < m_channel_config->axis_number; i++) {
		dest_pos[i] = dest_data->axis_mov_data.dest_pos[i];
	}
	//拷贝源数据包的信息到目标数据包
	memcpy(dest_data, src_data, sizeof(LineData));
	//将目标数据包的终点位置还原
	for (uint16_t i = 0; i < m_channel_config->axis_number; i++) {
		dest_data->axis_mov_data.dest_pos[i] = dest_pos[i];
	}
	dest_data->axis_mov_data.dist = 0.0;
}
#endif /* INTERPOLATION_H_ */
