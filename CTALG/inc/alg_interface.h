/**Copyright(C) 2012 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file: 	alg_interface.h
 * @author:	龚丽辉
 * @date：	2016-11-15
 * @brief: 	本头文件包含数控下位机算法库接口声明
 */

#ifndef ALG_INTERFACE_H_
#define ALG_INTERFACE_H_

#include "data_definition.h"
#include "look_ahead.h"
#include "interpolation.h"
#include "log_trace.h"
/*
 * @brief 算法接口类
 */
class AlgInterface {
public:
	AlgInterface(int channel_index, NCCCTChannelConfig* config);
	~AlgInterface();

	/*
	 * @brief 初始化
	 */
	int Init(int (*OutputData)(LineData* data, void* arg0),
			void (*SetPosInMachining)(uint8_t axis_index, double pos,
					void* arg0),
			void (*AlgPrintTrace)(TraceLevel trace_level, TraceModule module_id,
					char* trace_message),
			void (*AlgPrintLog)(LogLevel log_level, char* log_message),
			NCCCTChannelState* channel_state,
			ChannelRealtimeState* realtime_state, void* arg1);

	/*
	 * 插补
	 */
	int Interpolate();

	/*
	 * @brief 数据处理
	 */
	int Process(LineData* line_data);

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
	 *@brief 判断插补缓冲区是否已满，可供外部模块调用
	 *@param uint8_t mode：当前运动模式，自动，手动，MDA等
	 *@return true表示缓冲区已满
	 */
	bool IsIntpBufferFull(uint8_t mode);

	/**
	 *@brief 判断前瞻缓冲区是否已满，可供外部模块调用
	 *@return true表示缓冲区已满
	 */
	bool IsLABufferFull();

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
	int32_t GetCurLineData(LineData* data);
	/*
	 * @brief 设置插补器该轴当前位置
	 * @param uint16_t axis_index：设置位置的轴的轴号
	 * @param double pos：设置的轴的位置
	 * @return 无
	 */
	void SetIntpCurPos(uint16_t axis_index, double pos);
	/*
	 * @brief 设置算法库该轴当前位置
	 * @param uint16_t axis_index：设置位置的轴的轴号
	 * @param double pos：设置的轴的位置
	 * @return 无
	 */
	void SetAlgCurPos(uint16_t axis_index, double pos);
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
	 * @brief 获取插补自动缓冲区长度
	 */
	uint16_t GetBufLen();

private:
	int m_channel_index;
	NCCCTChannelConfig* m_channel_config;

	LookAhead* m_look_ahead;
	Interpolation* m_interpolator;
};
#endif /* ALG_INTERFACE_H_ */
