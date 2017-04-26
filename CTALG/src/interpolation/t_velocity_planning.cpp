/**Copyright(C) 2012 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file: 	t_shape_velocity.h
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本源文件包含T型速度规划类的定义。
 */
#include "t_velocity_planning.h"
//根据指定时间计算当前速度
double TVelocityPlanning::GetSpeed(DynamicInfo* dynamic_info) {
    double relative_time;
    double speed = 0;
    if (dynamic_info->current_time < dynamic_info->t[0]) {
        relative_time = dynamic_info->current_time;
        speed = dynamic_info->fs + dynamic_info->acceleration * relative_time;
    }
    else if (dynamic_info->current_time < dynamic_info->t[1]) {
        speed = dynamic_info->f;
    }
    else if (dynamic_info->current_time < (dynamic_info->total_time - m_half_interpolation_cycle)) {
        relative_time = dynamic_info->current_time - dynamic_info->t[1];
        speed = dynamic_info->f - dynamic_info->deceleration * relative_time;
    }
    else {
    	speed = dynamic_info->fe;
    }
    return speed;
}
//计算当前时间点的距离
double TVelocityPlanning::GetDistance(DynamicInfo* dynamic_info) {
    double relative_time;
    double l = 0;
    //根据加速度的三个时间阶段（匀加速，匀速，匀减速）计算给定时间的距离
    if (dynamic_info->current_time < dynamic_info->t[0]) {
        relative_time = dynamic_info->current_time;
        l = dynamic_info->ls + dynamic_info->fs * relative_time + dynamic_info->acceleration * 0.5 * pow(relative_time, 2);
    }
    else if (dynamic_info->current_time < dynamic_info->t[1]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[0];
        l = dynamic_info->L[0] + dynamic_info->f * relative_time;
    }
    else if (dynamic_info->current_time < (dynamic_info->total_time - m_half_interpolation_cycle)) {
        relative_time = dynamic_info->current_time - dynamic_info->t[1];
        l = dynamic_info->L[1] + dynamic_info->f * relative_time - dynamic_info->deceleration * 0.5 * pow(relative_time, 2);
    }
    else {
    	return dynamic_info->le;
    }
    return l;
}
//计算速度规划的参数，确定速度规划结果
void TVelocityPlanning::ComputePlaningParam(DynamicInfo* dynamic_info) {
	////fs^2/(2*A)
	m_fs_limit_dist = pow(dynamic_info->fs, 2) / (2.0 * dynamic_info->acceleration);
	//fe^2/(2*D)
	m_fe_limit_dist = pow(dynamic_info->fe, 2) / (2.0 * dynamic_info->deceleration);
	//1/(1/2A+1/2D)
	m_recip_A_D = 2.0 * dynamic_info->acceleration * dynamic_info->deceleration / (dynamic_info->acceleration + dynamic_info->deceleration);
	//计算三个阶段每个阶段的时间长度
	ComputeTimeLength(dynamic_info);
    //计算每个阶段末的时间点
    ComputePhaseTime(dynamic_info);
	//将三个阶段的时间圆整
//	AdjustTimeToRound(dynamic_info);

	//计算每个阶段末的速度
	ComputePhaseSpeed(dynamic_info);
	//计算每个阶段末的距离
	ComputePhaseDistance(dynamic_info);
}
//确定加速度曲线形状
void TVelocityPlanning::GetCurveContour(DynamicInfo* dynamic_info) {
	dynamic_info->is_acc_positive = (dynamic_info->f > dynamic_info->fs) ? true : false;
	dynamic_info->is_dec_positive = (dynamic_info->f > dynamic_info->fe) ? true : false;

	double max_acc = dynamic_info->acceleration;
	double max_dec = dynamic_info->deceleration;
	//如果前三个阶段是减速，则加速度的值为负
	if(!dynamic_info->is_acc_positive) {
		dynamic_info->acceleration = -max_dec;
	}
	//如果后三个阶段是加速，则减速度的值为负
	if(!dynamic_info->is_dec_positive) {
		dynamic_info->deceleration = -max_acc;
	}
}
//计算三个阶段每个阶段的时间长度
void TVelocityPlanning::ComputeTimeLength(DynamicInfo* dynamic_info) {
    double uniform_displacement = ComputeUniformDistance(dynamic_info);  //得到匀速阶段的距离
    if (uniform_displacement < -ZERO_DOUBLE) { //匀速阶段距离小于零，说明匀速阶段不存在
    	if(fabs(dynamic_info->acceleration + dynamic_info->deceleration) < ZERO_DOUBLE) {
    		dynamic_info->f = dynamic_info->fe;
    	}
    	else {
    		//uniform_displacement=0 => f=[(le+fs^2/2A+fe^2/2D)/(1/2A+1/2D)]^0.5
        	dynamic_info->f = sqrt((dynamic_info->distance + m_fs_limit_dist + m_fe_limit_dist) * m_recip_A_D);
    	}
		uniform_displacement = 0.0;
    }
    //如果目标速度不等于零
    if(dynamic_info->f > ZERO_DOUBLE) {
    	dynamic_info->T[1] = uniform_displacement / dynamic_info->f;
    }
    else {
    	//如果目标速度为零，则需要修改规划的曲线长度以及终点距离。曲线将在中间的某一点停止
    	dynamic_info->T[1] = 0.0;
    	dynamic_info->le -= uniform_displacement;
    	dynamic_info->distance -= uniform_displacement;
    }
    dynamic_info->T[0] = (dynamic_info->f - dynamic_info->fs) / dynamic_info->acceleration;
    dynamic_info->T[2] = (dynamic_info->f - dynamic_info->fe) / dynamic_info->deceleration;
}
//计算每个阶段末的时间点
inline void TVelocityPlanning::ComputePhaseTime(DynamicInfo* dynamic_info) {
	dynamic_info->t[0] = dynamic_info->T[0];
	dynamic_info->t[1] = dynamic_info->t[0] + dynamic_info->T[1];
	dynamic_info->total_time = dynamic_info->t[1] + dynamic_info->T[2];
}
//计算每个阶段末的距离
inline void TVelocityPlanning::ComputePhaseDistance(DynamicInfo* dynamic_info) {
	dynamic_info->L[0] = dynamic_info->ls + dynamic_info->fs * dynamic_info->T[0] + dynamic_info->acceleration * 0.5 * pow(dynamic_info->T[0], 2);
	dynamic_info->L[1] = dynamic_info->L[0] + dynamic_info->f * dynamic_info->T[1];
}
//将各个阶段插补的时间调整为插补周期的整数倍，避免最后一步时间不为插补周期整数倍，造成震动的情况
void TVelocityPlanning::AdjustTimeToRound(DynamicInfo* dynamic_info) {
	//首先计算总时间长度
	dynamic_info->total_time = dynamic_info->T[0] + dynamic_info->T[1] + dynamic_info->T[2];
	if(dynamic_info->total_time > m_round_time_limit) {
		//如果速度规划总时长大于一个插补周期，则将最后一步不到一个插补周期的时间减去
		double round_total_time = floor(dynamic_info->total_time / m_interpolation_cycle) * m_interpolation_cycle;
		double left_time = dynamic_info->total_time - round_total_time;
		//按照每个速度规划阶段的时间长度比例，在每个阶段减去一定的时间，使得减去的总时间正好为最后一步不到一个插补周期的时间
		double ratio_time = left_time / dynamic_info->total_time;
		dynamic_info->T[0] -= ratio_time * dynamic_info->T[0];
		dynamic_info->T[1] -= ratio_time * dynamic_info->T[1];
		dynamic_info->T[2] -= ratio_time * dynamic_info->T[2];
	}
	else {
		//如果速度规划的总时长小于一个插补周期，则将插补周期补整
		double round_total_time = ceil(dynamic_info->total_time / m_interpolation_cycle) * m_interpolation_cycle;
		dynamic_info->T[1] += (round_total_time - dynamic_info->total_time);
	}

	ComputePhaseTime(dynamic_info);
	//根据调整后的时间段计算目标速度
	dynamic_info->f = (dynamic_info->distance*2.0 - dynamic_info->T[0]*dynamic_info->fs - dynamic_info->T[2]*dynamic_info->fe) / (dynamic_info->total_time + dynamic_info->T[1]);

	//根据重新调整的时间段以及目标速度求相应的加速度
	if(dynamic_info->T[0] > ZERO_DOUBLE) {
		dynamic_info->acceleration = (dynamic_info->f - dynamic_info->fs) /  dynamic_info->T[0];
	}

	//根据重新调整的时间段以及目标速度求相应的减速度
	if(dynamic_info->T[2] > ZERO_DOUBLE) {
		dynamic_info->deceleration = (dynamic_info->f - dynamic_info->fe) / dynamic_info->T[2];
	}
}
//获取最后一个速度规划阶段内指定时间所对应的距离
double TVelocityPlanning::GetLastPhaseDistance(DynamicInfo* dynamic_info) {
    double relative_time;
    double l = 0;
    //根据加速度的三个时间阶段（匀加速，匀速，匀减速）计算给定时间的距离
    if (dynamic_info->current_time < dynamic_info->t[0]) {
        relative_time = dynamic_info->current_time;
        l = dynamic_info->ls + dynamic_info->fs * relative_time + dynamic_info->acceleration * 0.5 * pow(relative_time, 2);
    }
    else if (dynamic_info->current_time < dynamic_info->t[1]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[0];
        l = dynamic_info->L[0] + dynamic_info->f * relative_time;
    }
    else {
        relative_time = dynamic_info->current_time - dynamic_info->t[1];
        l = dynamic_info->L[1] + dynamic_info->f * relative_time - dynamic_info->deceleration * 0.5 * pow(relative_time, 2);
    }
    return l;
}
//获取最后一个速度规划阶段内指定时间所对应的速度
double TVelocityPlanning::GetLastPhaseSpeed(DynamicInfo* dynamic_info) {
    double relative_time;
    double speed = 0;
    if (dynamic_info->current_time < dynamic_info->t[0]) {
        relative_time = dynamic_info->current_time;
        speed = dynamic_info->fs + dynamic_info->acceleration * relative_time;
    }
    else if (dynamic_info->current_time < dynamic_info->t[1]) {
        speed = dynamic_info->f;
    }
    else {
        relative_time = dynamic_info->current_time - dynamic_info->t[1];
        speed = dynamic_info->f - dynamic_info->deceleration * relative_time;
    }
    return speed;
}
