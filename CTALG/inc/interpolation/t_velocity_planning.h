/**Copyright(C) 2012 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file: 	t_velocity_planning.h
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本头文件包含T型速度规划类的声明。
 */

#ifndef T_SHAPE_VELOCITY_H_
#define T_SHAPE_VELOCITY_H_

#include "velocity_planning.h"
#include "interpolation.h"
#include "math.h"
/**
 *@brief T型曲线加速度规划类
 */
class TVelocityPlanning: public VelocityPlanning {
public:
	/**
	 *@brief 构造函数
	 *@param double interpolation_cycle 插补周期
	 *@return 无
	 */
	TVelocityPlanning(double interpolation_cycle) : VelocityPlanning(interpolation_cycle) {};
	/**
	 *@brief 根据指定时间计算当前速度
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 当前速度
	 */
	virtual double GetSpeed(DynamicInfo* dynamic_info);
	/**
	 *@brief 计算当前时间点的距离
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 当前距离
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
	 *@brief 计算三个阶段每个阶段的时间长度
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	void ComputeTimeLength(DynamicInfo* dynamic_info);
	/**
	 *@brief 计算三个阶段每个阶段末的距离
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	void ComputePhaseTime(DynamicInfo* dynamic_info);
	/**
	 *@brief 计算匀速阶段的距离
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@param double speed：目标速度
	 *@return 匀速阶段的距离
	 */
	inline double ComputeUniformDistance(DynamicInfo* dynamic_info);
	/**
	 *@brief 计算每个阶段末的速度
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	void ComputePhaseSpeed(DynamicInfo* dynamic_info) {};
	/**
	 *@brief 计算每个阶段末的距离
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	void ComputePhaseDistance(DynamicInfo* dynamic_info);
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
	 *@brief 获取最后一个速度规划阶段内指定时间所对应的速度
	 *@param DynamicInfo* dynamic_info 包含速度规划信息对象
	 *@return 无
	 */
	virtual double GetLastPhaseSpeed(DynamicInfo* dynamic_info);

	double m_fs_limit_dist;	//fs^2/(2*A)
	double m_fe_limit_dist;	//fe^2/(2*D)
	double m_recip_A_D;		//1/(1/2A+1/2D)
};
/**
 *@brief 计算匀速阶段的距离
 *@param double speed：目标速度
 *@return   无
 */
inline double TVelocityPlanning::ComputeUniformDistance(DynamicInfo* dynamic_info) {
	//uniform_displacement=f3*T3 = le-(1/2A+1/2D)*f^2+fs^2/2A+fe^2/2D
    double uniform_displacement = dynamic_info->distance - pow(dynamic_info->f, 2) * 0.5 * (1.0 / dynamic_info->acceleration + 1.0 / dynamic_info->deceleration) + m_fs_limit_dist + m_fe_limit_dist;
    return uniform_displacement;
}
#endif /* T_SHAPE_VELOCITY_H_ */
