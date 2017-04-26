/**Copyright(C) 2013 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file:	interpolation_include.h
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本头文件包含插补算法文件用到的公共结构体和变量声明*/

#ifndef INTERPOLATION_INCLUDE_H_
#define INTERPOLATION_INCLUDE_H_

#include "data_definition.h"

#define ZERO_DOUBLE (1.0E-8)        //#define ZERO_DOUBLE 0.00000001
#define SQUARE_ZERO_DOUBLE (1.0E-16)
#define CYCLE_UNIT_TRANS 0.000001	//插补周期单位转换，从us转换到s
#define SPINDLE_POS_BIAS 1			//主轴角度偏移，单位：度

#define AUTO_BUFFER_SIZE 200		//自动模式插补buffer的长度
#define NON_AUTO_BUFFER_SIZE 50	//手动模式插补buffer的长度

//在进行速度规划时，对于G01/G02/G03等指令，直接规划合成轨迹的速度，对于G00，则对单个轴进行规划。这些速度规划的信息都放在一个
//DynamicInfo的数组中，对于单个轴的速度规划或者合成轨迹的速度规划的DynamicInfo都在这个数组中有对应的
//Index，TRAJECTORY_INDEX表示合成规划速度规划的Index
//#define TRAJECTORY_INDEX MAX_AXIS_NUM
//#define DYNAMIC_INFO_NUMBER 5	//存储速度规划的结构体个数
/**
 * @brief 加工运行的状态
 */
enum RunState {
	INTP_MACHINING,			//正在加工状态
	INTP_STOPPING,			//正在暂停的状态
	INTP_STOPPED			//加工或者运行已经停止的状态
};
/**
 * @brief 从插补缓冲区得到数据的情况
 */
enum GetDataResult {
	GET_NO_DATA,
	GET_INTP_DATA,
	GET_NON_INTP_DATA
};
/**
 * @brief 流程状态
 */
enum ProcessState {
	PRO_UPDATE_DATA,		//插补曲线终点数据需要更新
	PRO_INTERPOLATING,		//插补正在进行中
	PRO_IDLE_RUNNING		//空运转
};

/*
 * @brief 插补加工流程状态
 */
enum IntpMachiningState {
	INTP_NOT_STARTED = 0,		//尚未开始加工
	INTP_STARTED,				//加工中
	INTP_PAUSED					//暂停
};
/**
 * @brief 曲线几何信息。包含曲线类型，起点，终点。对于直线来说，还曲线斜率；对于圆弧曲线，还包含圆心，半径，张角
 */
struct Geometry {
	double start_point[MAX_AXIS_NUM];	//起点坐标
	LineData* end_data;					//终点数据，包含终点坐标，曲线类型，圆弧等信息
};
/**
 * @brief 表示轴运动时的状态
 */
enum AxisRunState {
	AXIS_RUNNING,			//轴正在运行的状态
	AXIS_STOPPING,			//轴正在以最大减速读停止的状态
	AXIS_STOPPED			//轴已经停止的状态
};
/**
 * @brief 一条曲线的运动信息，包括速度，加速度，运动距离等
 */
struct DynamicInfo {
	double fs;		//起点速度
	double fe;		//终点速速
	double f;		//目标速度
	double ls;		//起始距离
	double le;		//终点距离
	double distance;		//需要规划的曲线长度
	double acceleration;	//加速度
	double deceleration;	//减速度
	bool is_acc_positive;		//表示加速阶段加速度为正
	bool is_dec_positive;		//表示减速阶段减速读为正

	double T[7];			//S型或者T型速度规划分段规划的时间段长度。S型为7个元素，T型只用3个元素
	double t[6];			//S型或者T型速度规划分段规划的时间点。S型为6个元素，T型只用2个元素
	double total_time;		//S型或者T型速度规划的总时间长度
	double current_time;	//当前运行的时间长度
	double F[6];			//S型或者T型速度规划每个阶段的时间点的速度。S型为6个元素，T型只用2个元素
	double L[6];			//在S型或者T型规划每个阶段的时间点运行的距离。S型为6个元素，T型只用2个元素
	double Ja;				//只在S型规划中有此变量，加加速度，其绝对值为系统参数Jerk，根据其从初速度向目标速度的加速或负加速（减速）情况为正或为负
	double Jd;				//只在S型规划中有此变量，加减速度，其绝对值为系统参数Jerk，根据其从目标速度向终点速度的减速度或负减速（加速）情况为正或为负
	double is_acceleration_positive;	//只在S型规划中有此变量，表示初速度到目标速度是加速还是减速过程，如果减速，加速度为负
	double is_deceleration_positive;	//只在T型规划中有此变量，表示目标速度到终点速度是减速还是加速过程，如果加速，减速度为负
	double current_f;					//当前运动的速度
	double current_l;					//当前运动的距离

	uint32_t step_number;				//速度规划之后曲线的总步数
	uint32_t current_step;				//当前运动的步数

	double left_time;				//在进行时间圆整时用，表示当前线段规划完最后不满一个插补周期的时间
	double left_dist;				//在进行时间圆整时用，表示当前线段规划完最后不满一个插补周期的距离
	double last_fe;		//表示本线段由于夹角限制的起点速度

	bool is_enabled;					//表示当前速度规划是否使能，或者需要速度规划
	int run_state;				//表示当前的速度规划是否需要停止
};
#endif /* INTERPOLATION_INCLUDE_H_ */
