/**Copyright(C) 2012 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file: 	velocity_planning.h
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本头文件包含速度规划父类的声明。此类为抽象类，声明了速度规划的公共接口，以及一些接口函数
 * 			的定义。
 */
#ifndef VELOCITY_PLANNING_H_
#define VELOCITY_PLANNING_H_

#include "data_definition.h"
#include "interpolation.h"
/**
 *@brief 加速度规划类，由其子类实现其纯虚函数
 */
class VelocityPlanning {
public:
	/**
	 *@brief VelocityPlanning的构造函数
	 *@param double interpolation_cycle 插补周期
	 *@return 无
	 */
	VelocityPlanning(double interpolation_cycle);
	/**
	 *@brief 根据指定时间计算当前速度
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 当前速度
	 */
	virtual double GetSpeed(DynamicInfo* dynamic_info) = 0;
	/**
	 *@brief 将给定的运动信息以及曲线做速度规划
	 *@param DynamicInfo* dynamic_info：要做速度规划的运动学信息
	 *@return 无
	 */
	void PlanVelocity(DynamicInfo* dynamic_info);
	/**
	 *@brief 计算当前时间点的距离
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 当前距离
	 */
	virtual double GetDistance(DynamicInfo* dynamic_info) = 0;
protected:
	/**
	 *@brief 计算速度规划的参数
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	virtual void ComputePlaningParam(DynamicInfo* dynamic_info) = 0;
	/**
	 *@brief 确定加速度曲线形状
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	virtual void GetCurveContour(DynamicInfo* dynamic_info) = 0;	//确定加速度曲线形状
	/**
	 *@brief 将各个阶段插补的时间调整为插补周期的整数倍，避免最后一步时间不为插补周期整数倍，造成震动的情况
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	virtual void AdjustTimeToRound(DynamicInfo* dynamic_info) = 0;
	/**
	 *@brief 获取最后一个速度规划阶段内指定时间所对应的距离
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	virtual double GetLastPhaseDistance(DynamicInfo* dynamic_info) = 0;
	/**
	 *@brief 获取最后一个速度规划阶段内指定时间所对应的速度
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	virtual double GetLastPhaseSpeed(DynamicInfo* dynamic_info) = 0;
	/**
	 *@brief 对终点速度进行裁剪和调整，使得规划的曲线长度上至少能用最大加速度（减速度）在终点处达到终点速度
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	void TrimEndSpeed(DynamicInfo* dynamic_info);
	double m_interpolation_cycle;
	//插补周期的一半
	double m_half_interpolation_cycle;
	//在线段运行的总时间大于m_round_time_limit时，才将最后不满一个插补周期的时间抹去；否则补全插补周期
	double m_round_time_limit;
};


#endif /* VELOCITY_PLANNING_H_ */
