/**Copyright(C) 2013 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file:	quick_move_interpolation.cpp
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本源文件包含快速移动的插补算法定义。快速移动算法继承自父类InterpolationAlgorithm。快速移动
 * 			是针对几个轴同时开始移动但不要求同时到达的插补情况，各自以系统允许的最大速度为目标速度进行插补。*/
#include "quick_move_interpolation.h"

#include "s_velocity_planning.h"
#include "t_velocity_planning.h"
//初始化函数
int QuickMoveInterpolation::Init(SpeedProfileType speed_profile_type) {
	InterpolationAlgorithm::Init(speed_profile_type);
	if(m_axis_distance == NULL) {
		m_axis_distance = new double[m_channel_config->axis_number];
	}
	if(m_axis_distance == NULL) {
		return NC_INIT_ERR;
	}
	if(m_is_axis_positive == NULL) {
		m_is_axis_positive = new bool[m_channel_config->axis_number];
	}
	if(m_is_axis_positive == NULL) {
		return NC_INIT_ERR;
	}
	return ERROR_NONE;
}
//得到当前速度
double QuickMoveInterpolation::GetCurrentSpeed() {
	double max_axis_speed = 0.0;
	for(uint32_t i=0; i<m_channel_config->axis_number; i++) {
		if((m_geometry->end_data->axis_mov_data.mask & ((uint64_t)1<<i)) != 0) {
			if(max_axis_speed < m_dynamic_info[i]->current_f) {
				max_axis_speed = m_dynamic_info[i]->current_f;
			}
		}
	}
	return max_axis_speed;
}
//当前速度规划部分曲线是否已经插补完成
bool QuickMoveInterpolation::IsInterpolationFinished() {
	bool res = true;
	for(uint32_t i=0; i<m_channel_config->axis_number; i++) {
		if((m_geometry->end_data->axis_mov_data.mask & ((uint64_t)1<<i)) != 0) {
			if(m_dynamic_info[i]->current_step < m_dynamic_info[i]->step_number) {
				res = false;
			}else if(m_axis_distance[i]- (m_dynamic_info[i]->current_l + m_dynamic_info[i]->left_dist) < ZERO_DOUBLE) {
				//修改CNC-3158，当快速移动检查轴是否插补完成时，如果有些轴已经插补完成，则直接将这些轴的mask及相关信息清零；否则在其他轴没有停下来的
				//一段时间内再接收其他指令会发生错误
				m_dynamic_info[i]->run_state = AXIS_STOPPED;
				m_geometry->end_data->axis_mov_data.mask &= (~((uint64_t)1<<i));
				m_axis_distance[i] = 0.0;
			}
		}
	}
	return res;
}
//根据输入数据得到曲线几何信息
void QuickMoveInterpolation::ComputeGeometry() {
	double temp_dist;
	for(int i=0; i<m_channel_config->axis_number; i++) {
		if(m_dynamic_info[i]->is_enabled) {
			temp_dist = m_geometry->end_data->axis_mov_data.dest_pos[i] - m_geometry->start_point[i];
			if(temp_dist > ZERO_DOUBLE) {
				m_axis_distance[i] = temp_dist;
				m_is_axis_positive[i] = true;
			}
			else if(temp_dist < -ZERO_DOUBLE) {
				m_axis_distance[i] = -temp_dist;
				m_is_axis_positive[i] = false;
			}
			else {	//如果轴移动距离为零，则不对此轴做速度规划
				//在此轴上移动的距离为0，将此轴的mask也置为零，后续模块不用再处理此模块
				m_geometry->end_data->axis_mov_data.mask &= (~((uint64_t)1 << i));
			}
		}
	}
}
//判断是否整条曲线已经做速度规划，根据速度规划的终点距离le和曲线几何信息的终点距离做对比得出结论
bool QuickMoveInterpolation::HasReachedEnd() {
	bool res = true;
	for(int i=0; i<m_channel_config->axis_number; i++) {
		if((m_geometry->end_data->axis_mov_data.mask & ((uint64_t)1<<i)) != 0) {
			if(m_axis_distance[i]- (m_dynamic_info[i]->current_l + m_dynamic_info[i]->left_dist) > ZERO_DOUBLE) {
				res = false;
			}
			else {
				//修改CNC-3158，当快速移动检查轴是否插补完成时，如果有些轴已经插补完成，则直接将这些轴的mask及相关信息清零；否则在其他轴没有停下来的
				//一段时间内再接收其他指令会发生错误
				m_dynamic_info[i]->run_state = AXIS_STOPPED;
				m_geometry->end_data->axis_mov_data.mask &= (~((uint64_t)1<<i));
				m_axis_distance[i] = 0.0;
			}
		}
	}
	return res;
}
//根据进给倍率进行速度规划，进给倍率乘以终点速度和目标速度分别为实际的终点速度和目标速度
int32_t QuickMoveInterpolation::PlanVelocity(double target_feed_rate, double end_feed_rate, bool is_tapping_mode) {
	double step_num = 0;
	for(int i=0; i<m_channel_config->axis_number; i++) {
		if(m_dynamic_info[i]->is_enabled) {
			m_dynamic_info[i]->f = m_geometry->end_data->axis_mov_data.cur_speed[i] * target_feed_rate;
			//对当前的目标速度进行校验，如果大于轴最大速度，则将速度降低到轴最大速度
			if(m_dynamic_info[i]->f > m_channel_config->channel_axis_config[i]->max_axis_speed) {
				m_dynamic_info[i]->f = m_channel_config->channel_axis_config[i]->max_axis_speed;
			}
			m_dynamic_info[i]->fe = 0.0;
			m_dynamic_info[i]->fs = m_dynamic_info[i]->current_f;
			m_dynamic_info[i]->le = m_axis_distance[i];
			m_dynamic_info[i]->ls = m_dynamic_info[i]->current_l;
			m_dynamic_info[i]->acceleration = m_channel_config->channel_axis_config[i]->max_axis_acc;
			m_dynamic_info[i]->deceleration = m_channel_config->channel_axis_config[i]->max_G00_axis_acc;
			m_dynamic_info[i]->Ja = m_channel_config->channel_axis_config[i]->max_axis_jerk;
			m_dynamic_info[i]->Jd = m_channel_config->channel_axis_config[i]->max_axis_jerk;
			m_dynamic_info[i]->left_time = 0.0;
			m_dynamic_info[i]->left_dist = 0.0;
			//对曲线进行速度规划，计算速度规划参数
			m_velocity_planning->PlanVelocity(m_dynamic_info[i]);
			if(step_num < m_dynamic_info[i]->step_number) {
				step_num = m_dynamic_info[i]->step_number;
			}
			m_dynamic_info[i]->is_enabled = false;
		}
	}
	return step_num;
}
//进行单步插补，调用一次向前插补一步
void QuickMoveInterpolation::Interpolate(LineData* data) {
	double speed = 0.0;
	for(int i=0; i<m_channel_config->axis_number; i++) {
		if((m_geometry->end_data->axis_mov_data.mask & ((uint64_t)1<<i)) != 0) {
			if(m_dynamic_info[i]->current_step < m_dynamic_info[i]->step_number) {
				m_dynamic_info[i]->current_step++;
				m_dynamic_info[i]->current_time += m_interpolation_cycle;
				//得到当前时间点所走的距离
				m_dynamic_info[i]->current_l = m_velocity_planning->GetDistance(m_dynamic_info[i]);
				//上一条线段剩余的距离必须在一个插补周期内走完
				if(m_dynamic_info[i]->current_l < 0.0) {
					m_dynamic_info[i]->current_l = 0.0;
				}
				//根据距离计算当前所在位置
				ComputePosition(m_dynamic_info[i]->current_l, i, data);

				//计算当前合成速度
				m_dynamic_info[i]->current_f = m_velocity_planning->GetSpeed(m_dynamic_info[i]);
				data->axis_mov_data.cur_speed[i] = m_dynamic_info[i]->current_f;
				if(m_channel_config->channel_axis_config[i]->axis_type != SPINDLE_AXIS
				 	&& (speed < data->axis_mov_data.cur_speed[i])) {
					speed = data->axis_mov_data.cur_speed[i];//计算合成速度
				}
				if((m_dynamic_info[i]->current_step == m_dynamic_info[i]->step_number) &&
						(m_dynamic_info[i]->run_state == AXIS_STOPPING) &&
						m_dynamic_info[i]->current_f < ZERO_DOUBLE) {
					m_dynamic_info[i]->run_state = AXIS_STOPPED;
				}
			}
		}
	}
	data->feed_info.cur_speed = speed;//计算合成速度
}
//根据指定距离计算当前所在位置，计算后得到的结果放在data中
void QuickMoveInterpolation::ComputePosition(double current_l, LineData* data) {
	for(int i=0; i<m_channel_config->axis_number; i++) {
		if((m_geometry->end_data->axis_mov_data.mask & ((uint64_t)1<<i)) != 0) {
			//根据距离计算当前所在位置
			ComputePosition(current_l, i, data);
		}
	}
}
//根据指定距离计算当前所在位置，计算后得到的结果放在data中
void QuickMoveInterpolation::ComputePosition(double current_l, uint16_t axis_index, LineData* data) {
	if(m_is_axis_positive[axis_index]) {
		data->axis_mov_data.dest_pos[axis_index] = m_geometry->start_point[axis_index] + current_l;
	}
	else {
		data->axis_mov_data.dest_pos[axis_index] = m_geometry->start_point[axis_index] - current_l;
	}
}

//设置通道号
void QuickMoveInterpolation::SetChannelIndex(int channel_index, NCCCTChannelConfig* channel_config) {
	m_channel_index = channel_index;
	m_channel_config = channel_config;
}
