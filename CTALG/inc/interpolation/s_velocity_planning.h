/**Copyright(C) 2012 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file: 	s_velocity_planning.h
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本头文件包含S型速度规划类的声明。
 */
#ifndef S_SHAPE_VELOCITY_H_
#define S_SHAPE_VELOCITY_H_

#include "velocity_planning.h"
#include "interpolation.h"
/**
 *@brief S型曲线加速度规划类
 *具体实现算法参考：CNC系统S型曲线加减速算法的设计与实现，黄艳，李家霁，于冬，彭健均，2004
 */
class SVelocityPlanning: public VelocityPlanning {
public:
	/**
	 *@brief S型速度规划构造函数
	 *@param double interpolation_cycle 插补周期
	 *@return 无
	 */
	SVelocityPlanning(double interpolation_cycle) : VelocityPlanning(interpolation_cycle) {};
	/**
	 *@brief 根据指定时间计算当前速度
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 当前速度
	 */
	virtual double GetSpeed(DynamicInfo* dynamic_info);
	/**
	 *@brief 计算当前时间点的距离
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 当前的距离
	 */
	virtual double GetDistance(DynamicInfo* dynamic_info);
private:
	/**
	 *@brief 计算速度规划的参数
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	virtual void ComputePlaningParam(DynamicInfo* dynamic_info);
	/**
	 *@brief 确定加速度曲线形状
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	void GetCurveContour(DynamicInfo* dynamic_info);
	/**
	 *@brief 在目标速度变化时，相应调整加速度的值。其中A = min(max_acc, sign(A)*(f-fs)^0.5);
	            D = min(max_stop_acc, sign(D)*(f-fe)^0.5)
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	void AdjustAcceleration(DynamicInfo* dynamic_info);	//在目标速度变化时，相应调整加速度的值
	/**
	 *@brief 计算七个阶段每个阶段的时间长度
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	void ComputeTimeLength(DynamicInfo* dynamic_info);
	/**
	 *@brief 计算匀速阶段的距离
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@param double speed 目标速度
	 *@return 无
	 */
	double ComputeUniformDistance(DynamicInfo* dynamic_info, double speed);
	/**
	 *@brief 计算七个阶段每个阶段的时间点
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	void ComputePhaseTime(DynamicInfo* dynamic_info);
	/**
	 *@brief 计算七个阶段每个阶段末的速度
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	void ComputePhaseSpeed(DynamicInfo* dynamic_info);
	/**
	 *@brief 计算七个阶段每个阶段末的距离
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	virtual void ComputePhaseDistance(DynamicInfo* dynamic_info);
	/**
	 *@brief 将各个阶段插补的时间调整为插补周期的整数倍，避免最后一步时间不为插补周期整数倍，造成震动的情况
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	virtual void AdjustTimeToRound(DynamicInfo* dynamic_info);
	/**
	 *@brief 获取最后一个速度规划阶段内指定时间所对应的距离
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	virtual double GetLastPhaseDistance(DynamicInfo* dynamic_info);
	/**
	 *@brief 获取最后一个速度规划阶段内指定时间所对应的距离
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	virtual double GetLastPhaseSpeed(DynamicInfo* dynamic_info);
};

#endif /* S_SHAPE_VELOCITY_H_ */
