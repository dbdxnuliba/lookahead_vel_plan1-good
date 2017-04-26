/**Copyright(C) 2012 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file: 	velocity_planning.cpp
 * @author: 陈晓颖
 * @date: 	2013-1-21s
 * @brief: 	本源文件包含速度规划父类的声明。此类为抽象类，声明了速度规划的公共接口，以及一些接口函数
 * 			的定义。
 */
#include "velocity_planning.h"
#include "interpolation_data.h"
#include <math.h>
//构造函数
VelocityPlanning::VelocityPlanning(double interpolation_cycle) {
	m_interpolation_cycle = interpolation_cycle;
	//在线段运行的总时间大于10个插补周期时，才将最后不满一个插补周期的时间抹去；否则补全插补周期
	m_round_time_limit = 10 * m_interpolation_cycle;
	m_half_interpolation_cycle = m_interpolation_cycle * 0.5;
}
//将给定的运动信息以及曲线做速度规划
void VelocityPlanning::PlanVelocity(DynamicInfo* dynamic_info) {
	dynamic_info->distance = dynamic_info->le - dynamic_info->ls;
	//首先对终点速度进行裁剪和调整，使得规划的曲线长度上至少能用最大加速度（减速度）在终点处达到终点速度
	TrimEndSpeed(dynamic_info);
	//确定曲线规划的轮廓
	GetCurveContour(dynamic_info);
	//将运动数据进行速度规划
	ComputePlaningParam(dynamic_info);

	dynamic_info->last_fe = dynamic_info->fe;
	double last_left_time = dynamic_info->left_time;
    //将插补周期时间取整
	dynamic_info->total_time += dynamic_info->left_time;
    dynamic_info->step_number = (int)(dynamic_info->total_time / m_interpolation_cycle);
    double init_total_time = dynamic_info->total_time;
    double round_time = dynamic_info->step_number * m_interpolation_cycle;
    double left_time = init_total_time - round_time;
    if((left_time > ZERO_DOUBLE) && (dynamic_info->fe > ZERO_DOUBLE) &&
    		(dynamic_info->step_number > 0)) {	//如果当前不满一个插补周期的步长，则需要增加至一个插补周期
    	//在终点速度不为零，并且最后一步不为一整个插补周期时，需要将剩余的距离放在下一段线段中运行
    	dynamic_info->current_time = round_time - dynamic_info->left_time;
    	double init_le = dynamic_info->le;
    	dynamic_info->le = GetLastPhaseDistance(dynamic_info);
    	dynamic_info->fe = GetLastPhaseSpeed(dynamic_info);
    	dynamic_info->left_time = left_time;
    	dynamic_info->left_dist = init_le - dynamic_info->le;
    	dynamic_info->total_time = round_time;
    }
    else {
		if((init_total_time - round_time > m_half_interpolation_cycle) || (dynamic_info->fe < ZERO_DOUBLE)) {
			//如果最后一步接近一整个插补周期，或者终点速度接近零时，直接将插补周期补整，终点为指令终点精确位置
    		dynamic_info->step_number++;
		}

    	dynamic_info->total_time = round_time + m_interpolation_cycle;
    	dynamic_info->left_time = 0.0;
    	dynamic_info->left_dist = 0.0;
    }
    dynamic_info->total_time -= last_left_time;
	//初始化迭代变量
	dynamic_info->current_step = 0;
	dynamic_info->current_time = -last_left_time;
	dynamic_info->current_l = dynamic_info->ls;
}
//对终点速度进行裁剪和调整，使得规划的曲线长度上至少能用最大加速度（减速度）在终点处达到终点速度
void VelocityPlanning::TrimEndSpeed(DynamicInfo* dynamic_info) {
	double pow_end_speed = dynamic_info->fe * dynamic_info->fe;
	double pow_limit_speed;
	if(dynamic_info->fs > dynamic_info->fe) {
		double pow_fs = dynamic_info->fs * dynamic_info->fs;
		pow_limit_speed = pow_fs - 2.0 * dynamic_info->deceleration * dynamic_info->distance;
		//如果从起点速度用最大减速度减速得到的速度大于终点速度，将终点速度裁剪到正好能达到
		if(pow_limit_speed - pow_end_speed > 0.0) {
			double modify_fe = sqrt(pow_limit_speed);
			//如果终点速度为零，为特殊情况，因为需要考虑暂停时速度必须为零的情况，如果再增加一个周期内能将速度减为零，在此不再对终点速度做裁剪
			if(dynamic_info->fe < ZERO_DOUBLE && ((modify_fe - dynamic_info->fe) < dynamic_info->deceleration * m_interpolation_cycle)) {
				dynamic_info->deceleration = fabs(pow_fs - pow_end_speed) / (2.0 * dynamic_info->distance);
				dynamic_info->acceleration = dynamic_info->deceleration;
				dynamic_info->f = dynamic_info->fe;
			}
			else {
				dynamic_info->fe = modify_fe;
				dynamic_info->f = dynamic_info->fe;
			}
		}
	}
	else {
		pow_limit_speed = dynamic_info->fs * dynamic_info->fs + 2.0 * dynamic_info->acceleration * dynamic_info->distance;
		//如果从起点速度用最大加速度加速得到的速度小于终点速度，将终点速度裁剪到正好能达到
		if(pow_end_speed - pow_limit_speed > 0.0) {
			dynamic_info->fe = sqrt(pow_limit_speed);
			dynamic_info->f = dynamic_info->fe;
		}
	}
}
