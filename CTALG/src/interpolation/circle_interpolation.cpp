/**Copyright(C) 2013 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file:	circle_interpolation.cpp
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本源文件包含圆弧插补类定义。圆弧插补算法继承自父类InterpolationAlgorithm。*/

#include "circle_interpolation.h"
#include "s_velocity_planning.h"
#include "t_velocity_planning.h"
//析构函数
CircleInterpolation::~CircleInterpolation() {
	if(m_slope != NULL) {
		delete[] m_slope;
	}
}
//初始化函数
int CircleInterpolation::Init(SpeedProfileType speed_profile_type) {
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
void CircleInterpolation::ComputeGeometry() {
	//得到圆弧所在平面的法向量
	GetNormalVector();
	//得到平面标志
	m_surface_flag = m_geometry->end_data->coord_info.surface_flag;
	m_line_mask = m_geometry->end_data->axis_mov_data.mask;
	//根据圆弧的法向量判断圆弧轴是否移动，并置位相应的mask
	if(fabs(fabs(m_normal_vector[2]) - 1.0) < ZERO_DOUBLE) {
		//如果法向量与Z轴平行，则加工平面为XOY平面
		m_arc_mask = 0x03;
		m_surface_flag = XY;
	}
	else if(fabs(fabs(m_normal_vector[0]) - 1.0) < ZERO_DOUBLE) {
		//如果圆弧的法向量与X轴平行，则加工平面为YOZ平面
		m_arc_mask = 0x06;
		m_surface_flag = YZ;
	}
	else if(fabs(fabs(m_normal_vector[1]) - 1.0) < ZERO_DOUBLE) {
		//如果圆弧的法向量与Y轴平行，则加工平面为XOZ平面
		m_arc_mask = 0x05;
		m_surface_flag = ZX;
	}
	else {
		m_arc_mask = 0x07;
		m_surface_flag = THREE_DIMENSION_PLANE;
	}
	m_line_mask &= (~m_arc_mask);
	//当前半径没有小于规定界限值
	m_is_reach_limit_radius = false;

	//计算曲线其他参数信息，包括计算过程中间参数
	ComputeCurveParam();
}
//根据实际速度和加速度在每个轴上的分量不大于每个轴的最大允许速度和加速度的原则，计算合速度和加速度的值
void CircleInterpolation::ValidateDynamic() {
	m_min_radius = m_geometry->end_data->extra_mov_data.extra_data[EX_R];
	if(m_geometry->end_data->extra_mov_data.extra_data[EX_Q] < -ZERO_DOUBLE) {
		m_min_radius += (m_geometry->end_data->extra_mov_data.extra_data[EX_AR] / (TWO_PI)) *
				m_geometry->end_data->extra_mov_data.extra_data[EX_Q];
	}
	double min_radius = m_min_radius;
	if(m_min_radius < m_channel_config->limit_radius) {
		min_radius = m_channel_config->limit_radius;
	}
	//对直线轴的允许速度进行校验
	double permit_speed = m_dynamic_info[m_trajectory_index]->f;
	double slope;
	//首先校验各个轴上分得的速度是否超限
	for(int i=0; i<m_channel_config->axis_number; i++) {
		//对每个直线轴上的速度进行校验，是否超过轴允许最大速度
		if((m_line_mask & (1<<i)) != 0) {
			slope = fabs(m_slope[i]);
			if(slope > ZERO_DOUBLE) {
				permit_speed = m_channel_config->channel_axis_config[i]->max_axis_speed * (slope + min_radius) / slope;
			}
			if(permit_speed < m_dynamic_info[m_trajectory_index]->f) {
				m_dynamic_info[m_trajectory_index]->f = permit_speed;
			}
		}
	}
	//然后验证圆弧轴上分得的速度是否超限
	for(int i=0; i<3; i++) {
		if((m_arc_mask & (1<<i)) != 0) {
			if(m_channel_config->channel_axis_config[i]->max_axis_speed < m_dynamic_info[m_trajectory_index]->f) {
				m_dynamic_info[m_trajectory_index]->f = m_channel_config->channel_axis_config[i]->max_axis_speed;
			}
		}
	}
}
//验证最大加速度或者减速度是否超限
inline void CircleInterpolation::ValidateAcc(double max_acc, double& f, double& a_c, double radius, double& a_t) {
	//用近似的方法，切线加速度和向心加速度在每个轴上分得的加速度不做计算，直接将两者相加
	if(a_c + a_t > max_acc) {
		//因为max_acc > 2 * a_t，直接将a_c减小到max_acc - a_t
		a_c = max_acc - a_t;
		f = sqrt(a_c * radius);
	}
}
//根据指定距离计算当前所在位置，计算后得到的结果放在data中
void CircleInterpolation::ComputePosition(double current_l, LineData* data) {
	if((m_geometry->end_data->axis_mov_data.dist < ZERO_DOUBLE) || (m_geometry->end_data->extra_mov_data.extra_data[EX_R] < ZERO_DOUBLE)) {
		//如果圆弧的长度或者半径小于零，则直接返回终点值
		for(int i=0; i< m_channel_config->axis_number; i++) {
			if(m_geometry->end_data->axis_mov_data.CheckMask(i)) {
				data->axis_mov_data.dest_pos[i] = m_geometry->end_data->axis_mov_data.dest_pos[i];
			}
		}
	}
	//如果半径长度大于规定的界限值，或者曲线不是圆锥或螺线，则保持曲线轨迹速度恒定，根据长度计算张角
//	if ((m_current_radius < m_channel_config->limit_radius)
//			&& (fabs(m_geometry->end_data->extra_mov_data.extra_data[EX_Q])
//					> ZERO)) {
//		//根据角速度恒定的关系计算张角
//		m_current_angle = ComputeAngleBeyondLimit(current_l);
//	} else {
		m_current_angle = ComputeAngle(current_l);
//	}
    //除了做圆弧运动的轴之外，其他的直线轴与圆弧所到达弧长做线性耦合运动，计算这些直线轴的位置
    for (int i = 0; i < m_channel_config->axis_number; i++) {
        if (((1 << i) & m_line_mask) != 0) {
        	data->axis_mov_data.dest_pos[i] = m_geometry->start_point[i] + m_current_angle * m_slope[i];
        }
    }

    //单独计算做圆弧运动的轴的位置
    ComputeArcPosition(m_current_angle, data->axis_mov_data.dest_pos);
}
//圆弧插补类计算圆弧几何信息函数
void CircleInterpolation::GetNormalVector() {
	m_normal_vector[0] = m_geometry->end_data->extra_mov_data.extra_data[EX_I1];
	m_normal_vector[1] = m_geometry->end_data->extra_mov_data.extra_data[EX_J1];
	m_normal_vector[2] = m_geometry->end_data->extra_mov_data.extra_data[EX_K1];
}
//计算曲线其他参数信息，包括计算过程中间参数
int32_t CircleInterpolation::ComputeCurveParam() {
	double distance;
	m_k_square = 0.0;

	for (int i = 0; i < m_channel_config->axis_number; i++) {
		if (((1 << i) & m_line_mask) != 0) {
			distance = m_geometry->end_data->axis_mov_data.dest_pos[i] - m_geometry->start_point[i];
			m_k_square += pow(distance, 2);
			//除圆弧运动之外的直线轴和圆弧弧长做线性耦合运动，计算它们运动距离之间的比率
			m_slope[i] = distance / m_geometry->end_data->extra_mov_data.extra_data[EX_AR];
		}
	}

//	m_k_square *= pow(2 * PI / (m_geometry->end_data->extra_mov_data.extra_data[EX_Q] * m_geometry->end_data->extra_mov_data.extra_data[EX_AR])), 2;
	if(m_k_square > ZERO_DOUBLE) {
		m_helix_const = sqrt(pow(m_geometry->end_data->extra_mov_data.extra_data[EX_R], 2) +
				m_k_square / pow(m_geometry->end_data->extra_mov_data.extra_data[EX_AR], 2));
	}
	else {
		m_helix_const = m_geometry->end_data->extra_mov_data.extra_data[EX_R];
	}
	if(fabs(m_geometry->end_data->extra_mov_data.extra_data[EX_Q]) > ZERO) {
		m_k_square *= pow(TWO_PI / (m_geometry->end_data->extra_mov_data.extra_data[EX_Q] * m_geometry->end_data->extra_mov_data.extra_data[EX_AR]), 2);
		m_k_square += 1;
		m_k = sqrt(m_k_square);
		m_q = m_geometry->end_data->extra_mov_data.extra_data[EX_Q] * m_k_square / (4 * PI);
		m_pre_u = TWO_PI * m_geometry->end_data->extra_mov_data.extra_data[EX_R] / (m_k * m_geometry->end_data->extra_mov_data.extra_data[EX_Q]);
		double calc = sqrt(1 + pow(m_pre_u, 2));
		m_C = -m_q * ((m_pre_u * calc) + log(m_pre_u + calc));
	}

	m_current_radius = m_geometry->end_data->extra_mov_data.extra_data[EX_R];
	m_pre_l = 0;
	return 0;
}
//根据曲线长度计算对应的张角
double CircleInterpolation::ComputeAngle(double distance) {
    double theta;
    if (fabs(m_geometry->end_data->extra_mov_data.extra_data[EX_Q]) > ZERO_DOUBLE) {
        double current_u = m_pre_u + (distance - m_pre_l) / fabs((2 * m_q * sqrt(m_pre_u*m_pre_u + 1)));
        double current_l = ComputeDistance(current_u);

        double distance_error = current_l - distance;
        int iteration_count = 0;
        while ((fabs(distance_error) > ZERO) && (iteration_count < kMaxIterarionCount)) {
            current_u -= distance_error / fabs(2 * m_q * sqrt(pow(current_u, 2) + 1));
            current_l = ComputeDistance(current_u);
            distance_error = current_l - distance;
            iteration_count++;
        }
        m_pre_u = current_u;
        m_pre_l = current_l;
        m_current_radius = current_u * m_geometry->end_data->extra_mov_data.extra_data[EX_Q] * m_k / (TWO_PI);
        theta = (m_current_radius - m_geometry->end_data->extra_mov_data.extra_data[EX_R]) * TWO_PI / m_geometry->end_data->extra_mov_data.extra_data[EX_Q];
    }
    else {	//半径不随旋转角度变化而变化，通过简单计算得出对应的张角
    	theta = distance / m_helix_const;
    }

    return theta;
}
//在圆锥或者螺线插补中，当半径值小于界限值时，保持角速度不变，根据长度得到相应的张角
double CircleInterpolation::ComputeAngleBeyondLimit(double distance) {
	double angle;
	if(!m_is_reach_limit_radius) {
        m_ratio_radius_l = (m_min_radius - m_current_radius) / (m_dynamic_info[m_trajectory_index]->le - m_pre_l);
        m_is_reach_limit_radius = true;
	}
    m_current_radius = m_min_radius + (m_ratio_radius_l * (distance - m_dynamic_info[m_trajectory_index]->le));
    //根据半径增减值Q和当前半径值与初始半径值之差计算角度
    angle = (m_current_radius - m_geometry->end_data->extra_mov_data.extra_data[EX_R]) * TWO_PI / m_geometry->end_data->extra_mov_data.extra_data[EX_Q];
    return angle;
}
//根据给定参数u计算曲线长度
double CircleInterpolation::ComputeDistance(double param_u) {
    double calc = sqrt(1 + pow(param_u, 2));
    double l = fabs(m_q * (param_u * calc + log(param_u + calc)) + m_C);
    return l;
}
//根据指定张角计算圆弧的位置
int32_t CircleInterpolation::ComputeArcPosition(double theta, double end_position[]) const{
	//根据旋转轴m_normal_vector，旋转轴上的一点circle_center，旋转角度theta，以及要旋转的一点starting_position，计算旋转之后的位置
	ComputeRotaryPosition(theta, end_position);	//计算起点经过旋转张角之后的位置
	//计算旋转张角theta大小之后，半径变化倍率
    double current_radius_rate = m_current_radius / m_geometry->end_data->extra_mov_data.extra_data[EX_R];
    //在圆锥或者螺线插补时，需要计算半径变化之后旋转theta角，起点所在的实际位置
    switch (m_surface_flag) {
    case XY: {
        end_position[0] = end_position[0] * current_radius_rate
                + m_geometry->end_data->extra_mov_data.extra_data[EX_I] * (1 - current_radius_rate);
        end_position[1] = end_position[1] * current_radius_rate
                + m_geometry->end_data->extra_mov_data.extra_data[EX_J] * (1 - current_radius_rate);
    }
        break;
    case YZ: {
        end_position[1] = end_position[1] * current_radius_rate
                + m_geometry->end_data->extra_mov_data.extra_data[EX_J] * (1 - current_radius_rate);
        end_position[2] = end_position[2] * current_radius_rate
                + m_geometry->end_data->extra_mov_data.extra_data[EX_K] * (1 - current_radius_rate);
    }
        break;
    case ZX: {
        end_position[0] = end_position[0] * current_radius_rate
                + m_geometry->end_data->extra_mov_data.extra_data[EX_I] * (1 - current_radius_rate);
        end_position[2] = end_position[2] * current_radius_rate
                + m_geometry->end_data->extra_mov_data.extra_data[EX_K] * (1 - current_radius_rate);
    }
        break;
    default: {
    	double radius_rate = 1 - current_radius_rate;
        end_position[0] = end_position[0] * current_radius_rate
                + m_geometry->end_data->extra_mov_data.extra_data[EX_I] * radius_rate;
        end_position[1] = end_position[1] * current_radius_rate
                + m_geometry->end_data->extra_mov_data.extra_data[EX_J] * radius_rate;
        end_position[2] = end_position[2] * current_radius_rate
                + m_geometry->end_data->extra_mov_data.extra_data[EX_K] * radius_rate;
    }
        break;
    }
    return 0;
}
//计算一个点，绕一个方向和过一点的轴旋转指定角度之后所在的位置
int32_t CircleInterpolation::ComputeRotaryPosition(double theta, double end_point[]) const {
	double sin_theta = sin(theta);
    double cos_theta = cos(theta);

    double one_minus_cos_theta = 1 - cos_theta;

    switch (m_surface_flag) {
    case XY: {
        //xe = x*cos(theta)-y*w*sin(theta)+b*w*sin(theta)+a*(1-cos(theta))
        end_point[0] = m_geometry->start_point[0] * cos_theta -
        		m_geometry->start_point[1] * m_normal_vector[2]* sin_theta +
        		m_geometry->end_data->extra_mov_data.extra_data[EX_J] * m_normal_vector[2] * sin_theta +
        		m_geometry->end_data->extra_mov_data.extra_data[EX_I] * one_minus_cos_theta;
        //ye = x*w*sin(theta)+y*cos(theta)-w*a*sin(theta)+b*(1-cos(theta))
        end_point[1] = m_geometry->start_point[0] * m_normal_vector[2] * sin_theta +
        		m_geometry->start_point[1] * cos_theta -
        		m_geometry->end_data->extra_mov_data.extra_data[EX_I] * m_normal_vector[2] * sin_theta +
        		m_geometry->end_data->extra_mov_data.extra_data[EX_J] * one_minus_cos_theta;
    }
        break;
    case YZ: {
        //ye = y*cos(theta) - z*u*sin(theta) + c*u*sin(theta) + b*(1-cos(theta))
        end_point[1] = m_geometry->start_point[1] * cos_theta -
        		m_geometry->start_point[2] * m_normal_vector[0]* sin_theta +
        		m_geometry->end_data->extra_mov_data.extra_data[EX_K] * m_normal_vector[0] * sin_theta +
        		m_geometry->end_data->extra_mov_data.extra_data[EX_J] * one_minus_cos_theta;
        //ze = y*u*sin(theta) + z*cos(theta) - b*u*sin(theta) + c*(1-cos(theta))
        end_point[2] = m_geometry->start_point[1] * m_normal_vector[0] * sin_theta +
        		m_geometry->start_point[2] * cos_theta -
        		m_geometry->end_data->extra_mov_data.extra_data[EX_J] * m_normal_vector[0] * sin_theta +
        		m_geometry->end_data->extra_mov_data.extra_data[EX_K] * one_minus_cos_theta;
    }
        break;
    case ZX: {
        //xe = x*cos(theta) + z*v*sin(theta) -c*v*sin(theta) + a(1-cos_theta)
        end_point[0] = m_geometry->start_point[0] * cos_theta +
        		m_geometry->start_point[2] * m_normal_vector[1]* sin_theta -
        		m_geometry->end_data->extra_mov_data.extra_data[EX_K] * m_normal_vector[1] * sin_theta +
        		m_geometry->end_data->extra_mov_data.extra_data[EX_I] * one_minus_cos_theta;
        //            end_point[1] = m_geometry->start_point[1];
        end_point[2] = m_geometry->start_point[2] * cos_theta -
        		m_geometry->start_point[0] * m_normal_vector[1]* sin_theta +
        		m_geometry->end_data->extra_mov_data.extra_data[EX_I] * m_normal_vector[1] * sin_theta +
        		m_geometry->end_data->extra_mov_data.extra_data[EX_K] * one_minus_cos_theta;
    }
        break;
    default: { //三维任意平面
    	double normal_vector_pow_0 = pow(m_normal_vector[0], 2);
    	double normal_vector_pow_1 = pow(m_normal_vector[1], 2);
    	double normal_vector_pow_2 = pow(m_normal_vector[2], 2);
        end_point[0] = m_geometry->start_point[0] * (normal_vector_pow_0 + (normal_vector_pow_1
                + normal_vector_pow_2) * cos_theta) + m_geometry->start_point[1] * (m_normal_vector[0]
                * m_normal_vector[1] * one_minus_cos_theta - m_normal_vector[2] * sin_theta)
                + m_geometry->start_point[2] * (m_normal_vector[0] * m_normal_vector[2] * one_minus_cos_theta
                        + m_normal_vector[1] * sin_theta) + (m_geometry->end_data->extra_mov_data.extra_data[EX_I] * (normal_vector_pow_1
                + normal_vector_pow_2) - m_normal_vector[0]
                * (m_geometry->end_data->extra_mov_data.extra_data[EX_J] * m_normal_vector[1] + m_geometry->end_data->extra_mov_data.extra_data[EX_K] * m_normal_vector[2]))
                * one_minus_cos_theta + (m_geometry->end_data->extra_mov_data.extra_data[EX_J] * m_normal_vector[2] - m_geometry->end_data->extra_mov_data.extra_data[EX_K]
                * m_normal_vector[1]) * sin_theta;
        end_point[1] = m_geometry->start_point[0] * (m_normal_vector[0] * m_normal_vector[1]
                * one_minus_cos_theta + m_normal_vector[2] * sin_theta) + m_geometry->start_point[1] * (normal_vector_pow_1 + (normal_vector_pow_0 + normal_vector_pow_2)
                * cos_theta) + m_geometry->start_point[2] * (m_normal_vector[1] * m_normal_vector[2]
                * one_minus_cos_theta - m_normal_vector[0] * sin_theta) + (m_geometry->end_data->extra_mov_data.extra_data[EX_J] * (normal_vector_pow_0 + normal_vector_pow_2) - m_normal_vector[1]
                * (m_geometry->end_data->extra_mov_data.extra_data[EX_I] * m_normal_vector[0] + m_geometry->end_data->extra_mov_data.extra_data[EX_K] * m_normal_vector[2]))
                * one_minus_cos_theta + (m_geometry->end_data->extra_mov_data.extra_data[EX_K] * m_normal_vector[0] - m_geometry->end_data->extra_mov_data.extra_data[EX_I]
                * m_normal_vector[2]) * sin_theta;
        end_point[2] = m_geometry->start_point[0] * (m_normal_vector[0] * m_normal_vector[2]
                * one_minus_cos_theta - m_normal_vector[1] * sin_theta) + m_geometry->start_point[1]
                * (m_normal_vector[1] * m_normal_vector[2] * one_minus_cos_theta + m_normal_vector[0]
                        * sin_theta) + m_geometry->start_point[2] * (normal_vector_pow_2 + (normal_vector_pow_0 + normal_vector_pow_1) * cos_theta) + (m_geometry->end_data->extra_mov_data.extra_data[EX_K]
                * (normal_vector_pow_0 + normal_vector_pow_1) - m_normal_vector[2]
                * (m_geometry->end_data->extra_mov_data.extra_data[EX_I] * m_normal_vector[0] + m_geometry->end_data->extra_mov_data.extra_data[EX_J] * m_normal_vector[1]))
                * one_minus_cos_theta + (m_geometry->end_data->extra_mov_data.extra_data[EX_I] * m_normal_vector[1] - m_geometry->end_data->extra_mov_data.extra_data[EX_J]
                * m_normal_vector[0]) * sin_theta;
    }
        break;
    }

    return 0;
}
//已知平面法向量，计算平面内在指定轴上投影最大的向量
bool CircleInterpolation::GetMaxProjectVector(Vector& normal_vector, Vector& projected_vector, Vector& max_project_vector) {
	max_project_vector = projected_vector - normal_vector * (projected_vector * normal_vector);

	double length = max_project_vector.Norm();
	if(length > ZERO) {
		max_project_vector /= length;
	}
	return length;
}
//按照指定的法向量旋转，从第一个向量旋转到第二个向量是否经过指定的中间向量
bool CircleInterpolation::IsMiddleVector(Vector& first_vector, Vector& second_vector, Vector& middle_vector, Vector& normal_vector) {
	double cos_angle_1 = first_vector * middle_vector;
	double cos_angle_2 = first_vector * second_vector;
	Vector cross_product_1 = first_vector.Cross(middle_vector);
	Vector cross_product_2 = first_vector.Cross(second_vector);
	double sin_angle_1 = cross_product_1 * normal_vector;
	double sin_angle_2 = cross_product_2 * normal_vector;

	if(sin_angle_1 > ZERO) {
		if((sin_angle_2 > ZERO) && (cos_angle_1 < cos_angle_2)) {
			return false;
		}
		return true;
	}
	else {
		if((sin_angle_2 < ZERO) && (cos_angle_1 < cos_angle_2)) {
			return true;
		}
		return false;
	}
}
//设置通道号
void CircleInterpolation::SetChannelIndex(int channel_index, NCCCTChannelConfig* channel_config) {
	m_channel_index = channel_index;
	m_channel_config = channel_config;
}
