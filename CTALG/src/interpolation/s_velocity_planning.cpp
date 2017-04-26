/**Copyright(C) 2012 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file: 	s_shape_velocity.cpp
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本源文件包含S型速度规划类的定义。
 */
#include "s_velocity_planning.h"
#include <math.h>

const double SIX_DEVIDE_ONE = 0.16666666667;    //1/6=0.16666666667
//此比率用来在S型速度规划时计算目标速度时，曲线距离与原始曲线
//距离的误差之比。比率越大，误差越大，迭代次数少；反之，则否。不影响曲线轮廓精度
const double UNIFORM_DIS_RATIO = 0.01;
//根据指定时间计算当前速度
double SVelocityPlanning::GetSpeed(DynamicInfo* dynamic_info) {
    double relative_time;
    double speed = 0;
    //根据七个加速阶段分段计算相应时间点对应的速度
    if (dynamic_info->current_time < dynamic_info->t[0]) {
        relative_time = dynamic_info->current_time;
        speed = dynamic_info->fs + 0.5 * dynamic_info->Ja * pow(relative_time, 2);
    } else if (dynamic_info->current_time < dynamic_info->t[1]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[0];
        speed = dynamic_info->F[0] + dynamic_info->acceleration * relative_time;
    } else if (dynamic_info->current_time < dynamic_info->t[2]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[1];
        speed = dynamic_info->F[1] + dynamic_info->acceleration * relative_time - 0.5 * dynamic_info->Ja * pow(relative_time, 2);
    } else if (dynamic_info->current_time < dynamic_info->t[3]) {
        speed = dynamic_info->f;
    } else if (dynamic_info->current_time < dynamic_info->t[4]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[3];
        speed = dynamic_info->f - 0.5 * dynamic_info->Jd * pow(relative_time, 2);
    } else if (dynamic_info->current_time < dynamic_info->t[5]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[4];
        speed = dynamic_info->F[4] - dynamic_info->deceleration * relative_time;
    } else if(dynamic_info->current_time < dynamic_info->total_time - m_half_interpolation_cycle) {
        relative_time = dynamic_info->current_time - dynamic_info->t[5];
        speed = dynamic_info->F[5] - dynamic_info->deceleration * relative_time + 0.5 * dynamic_info->Jd * pow(relative_time, 2);
    }
    else {
    	speed = dynamic_info->fe;
    }
    return speed;
}
//计算当前时间点的距离
double SVelocityPlanning::GetDistance(DynamicInfo* dynamic_info) {
    double relative_time;
    double l = 0;
    //根据七个加速阶段计算相应时间点对应的距离
    if (dynamic_info->current_time < dynamic_info->t[0]) {
        relative_time = dynamic_info->current_time;
        l = dynamic_info->ls + dynamic_info->fs * relative_time + dynamic_info->Ja * pow(relative_time, 3) * SIX_DEVIDE_ONE;
    } else if (dynamic_info->current_time < dynamic_info->t[1]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[0];
        l = dynamic_info->L[0] + dynamic_info->F[0] * relative_time + 0.5 * dynamic_info->acceleration * pow(relative_time, 2);
    } else if (dynamic_info->current_time < dynamic_info->t[2]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[1];
        l = dynamic_info->L[1] + dynamic_info->F[1] * relative_time + 0.5 * dynamic_info->acceleration * pow(relative_time, 2) - dynamic_info->Ja * pow(
                relative_time, 3) * SIX_DEVIDE_ONE;
    } else if (dynamic_info->current_time < dynamic_info->t[3]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[2];
        l = dynamic_info->L[2] + dynamic_info->F[2] * relative_time;
    } else if (dynamic_info->current_time < dynamic_info->t[4]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[3];
        l = dynamic_info->L[3] + dynamic_info->F[3] * relative_time - dynamic_info->Jd * pow(relative_time, 3) * SIX_DEVIDE_ONE;
    } else if (dynamic_info->current_time < dynamic_info->t[5]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[4];
        l = dynamic_info->L[4] + dynamic_info->F[4] * relative_time - 0.5 * dynamic_info->deceleration * pow(relative_time, 2);
    } else if(dynamic_info->current_time < dynamic_info->total_time - m_half_interpolation_cycle) {
        relative_time = dynamic_info->current_time - dynamic_info->t[5];
        l = dynamic_info->L[5] + dynamic_info->F[5] * relative_time - 0.5 * dynamic_info->deceleration * pow(relative_time, 2) + dynamic_info->Jd * pow(
                relative_time, 3) * SIX_DEVIDE_ONE;
    }
    else {
    	return dynamic_info->le;
    }
    return l;
}
//计算速度规划的参数，确定速度规划结果
void SVelocityPlanning::ComputePlaningParam(DynamicInfo* dynamic_info) {
	//在曲线距离较小，不能做完整S型曲线规划的情况下，需要重新调整目标速度
	AdjustAcceleration(dynamic_info);
	//计算七个阶段每个阶段的时间长度
	ComputeTimeLength(dynamic_info);
	//计算分段时间段的长度
	ComputePhaseTime(dynamic_info);
	//计算七个阶段每个阶段的时间点
//	AdjustTimeToRound(dynamic_info);

	//计算每个阶段末的速度
	ComputePhaseSpeed(dynamic_info);
	//计算每个阶段末的距离
	ComputePhaseDistance(dynamic_info);
}
//确定加速度曲线形状
void SVelocityPlanning::GetCurveContour(DynamicInfo* dynamic_info) {
	dynamic_info->is_acc_positive = (dynamic_info->f > dynamic_info->fs) ? true : false;
	dynamic_info->is_dec_positive = (dynamic_info->f > dynamic_info->fe) ? true : false;

	double max_acc = dynamic_info->acceleration;
	double max_dec = dynamic_info->deceleration;
	//如果前三个阶段是减速，则加速度的值为负
	if(!dynamic_info->is_acc_positive) {
		dynamic_info->acceleration = -max_dec;
		dynamic_info->Ja = -dynamic_info->Ja;
	}
	//如果后三个阶段是加速，则减速度的值为负
	if(!dynamic_info->is_dec_positive) {
		dynamic_info->deceleration = -max_acc;
		dynamic_info->Jd = -dynamic_info->Jd;
	}
}
//在目标速度变化时，相应调整加速度的值
void SVelocityPlanning::AdjustAcceleration(DynamicInfo* dynamic_info) {
    dynamic_info->T[1] = (dynamic_info->f - dynamic_info->fs) / dynamic_info->acceleration - dynamic_info->acceleration / dynamic_info->Ja;
    dynamic_info->T[5] = (dynamic_info->f - dynamic_info->fe) / dynamic_info->deceleration - dynamic_info->deceleration / dynamic_info->Jd;

    //如果dynamic_info->t2<0，说明匀加速阶段不存在，令dynamic_info->T2=0，然后重新计算加速度的值
    if (dynamic_info->T[1] < 0) {
        dynamic_info->T[1] = 0;
        dynamic_info->acceleration = dynamic_info->is_acc_positive ? sqrt(dynamic_info->Ja * (dynamic_info->f - dynamic_info->fs)) : (-sqrt(dynamic_info->Ja
                * (dynamic_info->f - dynamic_info->fs)));
    }
    //如果dynamic_info->t6<0，说明匀减速阶段不存在，令dynamic_info->T6=0，然后重新计算减速度的值
    if (dynamic_info->T[5] < 0) {
        dynamic_info->T[5] = 0;
        dynamic_info->deceleration = dynamic_info->is_dec_positive ? sqrt(dynamic_info->Jd * (dynamic_info->f - dynamic_info->fe)) : (-sqrt(dynamic_info->Jd * (dynamic_info->f
                - dynamic_info->fe)));
    }
}
//计算七个阶段每个阶段的时间长度
void SVelocityPlanning::ComputeTimeLength(DynamicInfo* dynamic_info) {
	double *fs = &(dynamic_info->fs);
	double *fe = &(dynamic_info->fe);
	double *f = &(dynamic_info->f);
	double *acceleration = &(dynamic_info->acceleration);
	double *deceleration = &(dynamic_info->deceleration);

    //计算匀速阶段的距离
    double uniform_displacement = ComputeUniformDistance(dynamic_info, *f);
	//如果匀速阶段距离小于零，说明不存在匀速阶段，此时需要调整相应的目标速度，以便实现有匀速阶段或者匀速阶段为零的S型曲线规划
	if (uniform_displacement < 0) {
		double l_critical;  //直接由fs用S型（加速度连续）加速/减速到fe所用的距离
		//f=fs时，计算单边S型的最大加/减速度
		double single_acc = sqrt(fabs(dynamic_info->Jd * (*fs - *fe)));
		if (fabs(*f - *fs) < fabs(*f - *fe)) {
			//取单边S型减速度与原来减速度中的绝对值较小值
			if(single_acc > fabs(*deceleration)) {
				single_acc = *deceleration;
			}
			else if(!dynamic_info->is_dec_positive) {
				single_acc = -single_acc;
			}
			if(fabs(single_acc) < ZERO_DOUBLE) {
				l_critical = dynamic_info->distance;
			}
			else {
				l_critical = dynamic_info->distance - ((pow(*fs, 2) - pow(*fe, 2)) / (single_acc)
						+ (single_acc) * (*fs + *fe) / dynamic_info->Jd) * 0.5;	//f=fs
			}
		} else {
			//取单边S型加速度与原来加速度中的绝对值较小值
			if(single_acc > fabs(*acceleration)) {
				single_acc = *acceleration;
			}
			else if(!dynamic_info->is_acc_positive) {
				single_acc = -single_acc;
			}
			if(fabs(single_acc) < ZERO_DOUBLE) {
				l_critical = dynamic_info->distance;
			}
			else {
				l_critical = dynamic_info->distance - ((pow(*fe, 2) - pow(*fs, 2)) / (single_acc)
						+ (single_acc) * (*fe + *fs) / dynamic_info->Ja) * 0.5; //f=fe
			}
		}
		if (l_critical > 0) { //至少可以用S型规划从fs加速/减速到fe
			double left_point, right_point;
			//如果fs->f的加速度和f->fe阶段的减速度符号相同，表示f>fs，并且f>fe，或者f<fs,并且f<fe，需要搜索合适的目标速度，满足匀速阶段时间正好为零
			if (!(dynamic_info->is_acc_positive ^ dynamic_info->is_dec_positive)) {
				left_point = (fabs(*f - *fs) < fabs(*f - *fe)) ? *fs : *fe;
				right_point = *f;
				*f = (left_point + right_point) * 0.5;
				AdjustAcceleration(dynamic_info);
				uniform_displacement = ComputeUniformDistance(dynamic_info, *f);
				//二分法搜索
				while (uniform_displacement < 0 || uniform_displacement > dynamic_info->distance * UNIFORM_DIS_RATIO) {
					if (uniform_displacement * ComputeUniformDistance(dynamic_info, right_point) > 0) {
						right_point = *f;
					} else {
						left_point = *f;
					}
					*f = (left_point + right_point) * 0.5;
					AdjustAcceleration(dynamic_info);
					uniform_displacement = ComputeUniformDistance(dynamic_info, *f);
				}
			}
			else {//这种情况下目标速度f在fs和fe中间，令f=fe，直接找出匀速阶段的时间
				*f = *fe;
				AdjustAcceleration(dynamic_info);
				uniform_displacement = ComputeUniformDistance(dynamic_info, *f);
			}
			//计算T1到T7的值
			dynamic_info->T[0] = dynamic_info->T[2] = *acceleration / dynamic_info->Ja;
			dynamic_info->T[4] = dynamic_info->T[6] = *deceleration / dynamic_info->Jd;
		}
		else { //S型曲线规划退化为匀加速过程
			if (*fs > *fe) {
				*acceleration = 0;
				*deceleration = (pow(*fs, 2) - pow(*fe, 2)) / (2.0 * dynamic_info->distance);
				dynamic_info->Jd = fabs(dynamic_info->Jd);
				dynamic_info->is_deceleration_positive = true;
				*f = *fs;
				dynamic_info->T[0] = dynamic_info->T[1] = dynamic_info->T[2] = dynamic_info->T[3] = dynamic_info->T[4] = dynamic_info->T[6] = 0;
				dynamic_info->T[5] = (*fs - *fe) / (*deceleration);
			} else {
				*deceleration = 0;
				*acceleration = (pow(*fe, 2) - pow(*fs, 2)) / (2.0 * dynamic_info->distance);
				dynamic_info->Ja = fabs(dynamic_info->Ja);
				dynamic_info->is_acceleration_positive = true;
				*f = *fe;
				dynamic_info->T[0] = dynamic_info->T[2] = dynamic_info->T[3] = dynamic_info->T[4] = dynamic_info->T[5] = dynamic_info->T[6] = 0;
				dynamic_info->T[1] = (*fe - *fs) / (*acceleration);
			}
			uniform_displacement = 0.0;
		}
	}
	else { //计算曲线距离足够大的情况下，S型曲线规划的系数
		dynamic_info->T[0] = dynamic_info->T[2] = *acceleration / dynamic_info->Ja;
		dynamic_info->T[4] = dynamic_info->T[6] = *deceleration / dynamic_info->Jd;
	}
	//如果目标速度为零，则匀加速阶段时间为零，需要重新调整曲线的长度
	if(*f < ZERO_DOUBLE) {
		dynamic_info->T[3] = 0.0;
		dynamic_info->le -= uniform_displacement;
		dynamic_info->distance -= uniform_displacement;
	}
	else {
		dynamic_info->T[3] = uniform_displacement / (*f);
	}
}
//计算匀速阶段的距离
double SVelocityPlanning::ComputeUniformDistance(DynamicInfo* dynamic_info, double speed) {
    double distance_for_A; //加速阶段所走的距离，包含加加速，匀加速，减加速
    double distance_for_D; //减速阶段所走的距离，包含加减速，匀减速，减减速

    if (fabs(dynamic_info->acceleration) > ZERO) {
        distance_for_A = (pow(speed, 2) - pow(dynamic_info->fs, 2)) / dynamic_info->acceleration + (speed + dynamic_info->fs) * dynamic_info->acceleration / dynamic_info->Ja;
    } else {
        //如果A=0，因为A=sgn(A)*(J*(f-fs))^0.5=0，得到f=fs.又因为distance_for_A = 1/(2*A)*(f^2-fs^2)+A/(2*Ja)*
        //(f+fs)，代入可得distance_for_A=0；
        distance_for_A = 0;
    }
    if (fabs(dynamic_info->deceleration) > ZERO) {
        distance_for_D = (pow(speed, 2) - pow(dynamic_info->fe, 2)) / dynamic_info->deceleration + (speed + dynamic_info->fe) * dynamic_info->deceleration / dynamic_info->Jd;
    } else {
        distance_for_D = 0;
    }
    return dynamic_info->distance - (distance_for_A + distance_for_D) * 0.5;
}
//计算七个阶段每个阶段的时间点
void SVelocityPlanning::ComputePhaseTime(DynamicInfo* dynamic_info) {
    dynamic_info->t[0] = dynamic_info->T[0];
    dynamic_info->t[1] = dynamic_info->t[0] + dynamic_info->T[1];
    dynamic_info->t[2] = dynamic_info->t[1] + dynamic_info->T[2];
    dynamic_info->t[3] = dynamic_info->t[2] + dynamic_info->T[3];
    dynamic_info->t[4] = dynamic_info->t[3] + dynamic_info->T[4];
    dynamic_info->t[5] = dynamic_info->t[4] + dynamic_info->T[5];
    dynamic_info->total_time = dynamic_info->t[5] + dynamic_info->T[6];
}
//计算七个阶段每个阶段末的速度
void SVelocityPlanning::ComputePhaseSpeed(DynamicInfo* dynamic_info) {
    dynamic_info->F[0] = dynamic_info->fs + 0.5 * dynamic_info->Ja * pow(dynamic_info->T[0], 2);
    dynamic_info->F[1] = dynamic_info->F[0] + dynamic_info->acceleration * dynamic_info->T[1];
    dynamic_info->F[2] = dynamic_info->f;
    dynamic_info->F[3] = dynamic_info->f;
    dynamic_info->F[4] = dynamic_info->F[3] - 0.5 * dynamic_info->Jd * pow(dynamic_info->T[4], 2);
    dynamic_info->F[5] = dynamic_info->F[4] - dynamic_info->deceleration * dynamic_info->T[5];
}
//计算七个阶段每个阶段末的距离
void SVelocityPlanning::ComputePhaseDistance(DynamicInfo* dynamic_info) {
    dynamic_info->L[0] = dynamic_info->ls + dynamic_info->fs * dynamic_info->T[0] + dynamic_info->Ja * pow(dynamic_info->T[0], 3) * SIX_DEVIDE_ONE;
    dynamic_info->L[1] = dynamic_info->L[0] + dynamic_info->F[0] * dynamic_info->T[1] + 0.5 * dynamic_info->acceleration * pow(dynamic_info->T[1], 2);
    dynamic_info->L[2] = dynamic_info->L[1] + dynamic_info->F[1] * dynamic_info->T[2] + 0.5 * dynamic_info->acceleration * pow(dynamic_info->T[2], 2) - dynamic_info->Ja * pow(dynamic_info->T[2], 3) * SIX_DEVIDE_ONE;
    dynamic_info->L[3] = dynamic_info->L[2] + dynamic_info->F[2] * dynamic_info->T[3];
    dynamic_info->L[4] = dynamic_info->L[3] + dynamic_info->F[3] * dynamic_info->T[4] - dynamic_info->Jd * pow(dynamic_info->T[4], 3) * SIX_DEVIDE_ONE;
    dynamic_info->L[5] = dynamic_info->L[4] + dynamic_info->F[4] * dynamic_info->T[5] - 0.5 * dynamic_info->deceleration * pow(dynamic_info->T[5], 2);
}
//将各个阶段插补的时间调整为插补周期的整数倍，避免最后一步时间不为插补周期整数倍，造成震动的情况
void SVelocityPlanning::AdjustTimeToRound(DynamicInfo* dynamic_info) {
	//首先计算总时间长度
	dynamic_info->total_time = dynamic_info->T[0] + dynamic_info->T[1] + dynamic_info->T[2] + dynamic_info->T[3] + dynamic_info->T[4] + dynamic_info->T[5] +
			dynamic_info->T[6];
	if(dynamic_info->total_time > m_round_time_limit) {
		//如果插补的总时长大于一个插补周期，则从总时间中减去最后一步剩余的不到一个插补周期的时间
		double round_total_time = floor(dynamic_info->total_time / m_interpolation_cycle) * m_interpolation_cycle;
		double left_time = dynamic_info->total_time - round_total_time;
		//按照每个速度规划阶段的时间长度比例，在每个阶段减去一定的时间，使得减去的总时间正好为最后一步不到一个插补周期的时间
		double ratio_time = left_time / dynamic_info->total_time;
		//记录第一个时间阶段需要圆整的时间，第三个时间阶段需要圆整的时间与此相同，因为两者的时间长度相等
		double round_time = ratio_time * dynamic_info->T[0];
		dynamic_info->T[0] -= round_time;
		dynamic_info->T[1] -= ratio_time * dynamic_info->T[1];
		dynamic_info->T[2] -= round_time;
		dynamic_info->T[3] -= ratio_time * dynamic_info->T[3];
		round_time = ratio_time * dynamic_info->T[4];
		dynamic_info->T[4] -= round_time;
		dynamic_info->T[5] -= ratio_time * dynamic_info->T[5];
		dynamic_info->T[6] -= round_time;
	}
	else {
		//如果速度规划的总时长小于一个插补周期，则将插补周期补整
		double round_total_time = ceil(dynamic_info->total_time / m_interpolation_cycle) * m_interpolation_cycle;
		dynamic_info->T[3] += (round_total_time - dynamic_info->total_time);
	}
	//重新计算时间点
	ComputePhaseTime(dynamic_info);
	//根据调整后的时间段计算加速度，加加速度
	dynamic_info->f = (2.0 * dynamic_info->distance - dynamic_info->t[2]*dynamic_info->fs - (dynamic_info->total_time -dynamic_info->t[3])*dynamic_info->fe) /
			(dynamic_info->total_time+dynamic_info->T[3]);

	//根据重新调整的时间段以及目标速度求相应的加速度和加加速度
	double time = dynamic_info->T[0] + dynamic_info->T[1];
	if(time != 0) {
		dynamic_info->acceleration = (dynamic_info->f - dynamic_info->fs) / time;
		if(dynamic_info->T[0] != 0) {
			dynamic_info->Ja = dynamic_info->acceleration/dynamic_info->T[0];
		}
	}

	//根据重新调整的时间段以及目标速度求相应的减速度以及加减速度
	time = dynamic_info->T[4] + dynamic_info->T[5];
	if(time != 0) {
		dynamic_info->deceleration = (dynamic_info->f - dynamic_info->fe) / time;
		if(dynamic_info->T[4] != 0) {
			dynamic_info->Jd = dynamic_info->deceleration / dynamic_info->T[4];
		}
	}
}
//获取最后一个速度规划阶段内指定时间所对应的距离
double SVelocityPlanning::GetLastPhaseDistance(DynamicInfo* dynamic_info) {
    double relative_time;
    double l = 0;
    //根据七个加速阶段计算相应时间点对应的距离
    if (dynamic_info->current_time < dynamic_info->t[0]) {
        relative_time = dynamic_info->current_time;
        l = dynamic_info->ls + dynamic_info->fs * relative_time + dynamic_info->Ja * pow(relative_time, 3) * SIX_DEVIDE_ONE;
    } else if (dynamic_info->current_time < dynamic_info->t[1]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[0];
        l = dynamic_info->L[0] + dynamic_info->F[0] * relative_time + 0.5 * dynamic_info->acceleration * pow(relative_time, 2);
    } else if (dynamic_info->current_time < dynamic_info->t[2]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[1];
        l = dynamic_info->L[1] + dynamic_info->F[1] * relative_time + 0.5 * dynamic_info->acceleration * pow(relative_time, 2) - dynamic_info->Ja * pow(
                relative_time, 3) * SIX_DEVIDE_ONE;
    } else if (dynamic_info->current_time < dynamic_info->t[3]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[2];
        l = dynamic_info->L[2] + dynamic_info->F[2] * relative_time;
    } else if (dynamic_info->current_time < dynamic_info->t[4]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[3];
        l = dynamic_info->L[3] + dynamic_info->F[3] * relative_time - dynamic_info->Jd * pow(relative_time, 3) * SIX_DEVIDE_ONE;
    } else if (dynamic_info->current_time < dynamic_info->t[5]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[4];
        l = dynamic_info->L[4] + dynamic_info->F[4] * relative_time - 0.5 * dynamic_info->deceleration * pow(relative_time, 2);
    } else {
        relative_time = dynamic_info->current_time - dynamic_info->t[5];
        l = dynamic_info->L[5] + dynamic_info->F[5] * relative_time - 0.5 * dynamic_info->deceleration * pow(relative_time, 2) + dynamic_info->Jd * pow(
                relative_time, 3) * SIX_DEVIDE_ONE;
    }
    return l;
}
//获取最后一个速度规划阶段内指定时间所对应的速度
double SVelocityPlanning::GetLastPhaseSpeed(DynamicInfo* dynamic_info) {
    double relative_time;
    double speed = 0;

    //根据七个加速阶段分段计算相应时间点对应的速度
    if (dynamic_info->current_time < dynamic_info->t[0]) {
        relative_time = dynamic_info->current_time;
        speed = dynamic_info->fs + 0.5 * dynamic_info->Ja * pow(relative_time, 2);
    } else if (dynamic_info->current_time < dynamic_info->t[1]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[0];
        speed = dynamic_info->F[0] + dynamic_info->acceleration * relative_time;
    } else if (dynamic_info->current_time < dynamic_info->t[2]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[1];
        speed = dynamic_info->F[1] + dynamic_info->acceleration * relative_time - 0.5 * dynamic_info->Ja * pow(relative_time, 2);
    } else if (dynamic_info->current_time < dynamic_info->t[3]) {
        speed = dynamic_info->f;
    } else if (dynamic_info->current_time < dynamic_info->t[4]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[3];
        speed = dynamic_info->f - 0.5 * dynamic_info->Jd * pow(relative_time, 2);
    } else if (dynamic_info->current_time < dynamic_info->t[5]) {
        relative_time = dynamic_info->current_time - dynamic_info->t[4];
        speed = dynamic_info->F[4] - dynamic_info->deceleration * relative_time;
    } else {
        relative_time = dynamic_info->current_time - dynamic_info->t[5];
        speed = dynamic_info->F[5] - dynamic_info->deceleration * relative_time + 0.5 * dynamic_info->Jd * pow(relative_time, 2);
    }
    return speed;
}
