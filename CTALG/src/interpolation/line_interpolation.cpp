/**Copyright(C) 2013 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file:	line_interpolation.cpp
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本源文件包含直线插补类定义。直线插补算法继承自父类InterpolationAlgorithm。*/

#include "line_interpolation.h"
#include "s_velocity_planning.h"
#include "t_velocity_planning.h"
//初始化函数
int LineInterpolation::Init(SpeedProfileType speed_profile_type) {
	InterpolationAlgorithm::Init(speed_profile_type);
	if(m_slope == NULL) {
		m_slope = new double[m_channel_config->axis_number];
	}
	if(m_slope == NULL) {
		return NC_INIT_ERR;
	}
	return ERROR_NONE;
}
//根据输入数据得到曲线几何信息
void LineInterpolation::ComputeGeometry() {
	//对直线的几何信息进行计算，得出直线各轴的斜率
	for(int i=0; i<m_channel_config->axis_number; i++) {
		if((m_geometry->end_data->axis_mov_data.mask & ((uint64_t)1<<i)) != 0) {
			m_slope[i] = (m_geometry->end_data->axis_mov_data.dest_pos[i] - m_geometry->start_point[i]) / m_geometry->end_data->axis_mov_data.dist;
		}
		else {
			m_slope[i] = 0.0;
		}
	}
}
//根据实际速度和加速度在每个轴上的分量不大于每个轴的最大允许速度和加速度的原则，计算合速度和加速度的值
void LineInterpolation::ValidateDynamic() {
	double axis_speed;
	double axis_slope;
	for(int i=0; i<m_channel_config->axis_number-1; i++) {
		if((m_geometry->end_data->axis_mov_data.mask & ((uint64_t)1<<i)) != 0) {
			axis_slope = fabs(m_slope[i]);
			if(axis_slope > ZERO) {
				axis_speed = m_channel_config->channel_axis_config[i]->max_axis_speed / axis_slope;
				if(m_dynamic_info[m_trajectory_index]->f > axis_speed) {
					m_dynamic_info[m_trajectory_index]->f = axis_speed;
				}
			}
		}
	}
}
//根据指定距离计算当前所在位置，计算后得到的结果放在data中
void LineInterpolation::ComputePosition(double current_l, LineData* data) {
	for(int i=0; i<m_channel_config->axis_number; i++) {
		if((data->axis_mov_data.mask & ((uint64_t)1<<i)) != 0) {
			data->axis_mov_data.dest_pos[i] = m_geometry->start_point[i] + current_l * m_slope[i];
		}
	}
}
//设置通道号
void LineInterpolation::SetChannelIndex(int channel_index, NCCCTChannelConfig* channel_config) {
	m_channel_index = channel_index;
	m_channel_config = channel_config;
}
