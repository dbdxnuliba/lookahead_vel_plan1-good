/**Copyright(C) 2013 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file:	circle_interpolation.h
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本头文件包含圆弧插补类声明。圆弧插补算法继承自父类InterpolationAlgorithm。*/
#ifndef CIRCLE_INTERPOLATION_H_
#define CIRCLE_INTERPOLATION_H_

#include "interpolation_algorithm.h"
#include "data_definition.h"
#include "vector.h"
/**
 *@brief 圆弧插补类
 */
class CircleInterpolation : public InterpolationAlgorithm {
public:
	/**
	*@brief 构造函数
	*@param 无
	*@return 无
	 */
	CircleInterpolation(Geometry* geometry, DynamicInfo** dynamic_info,
			int channel_index, NCCCTChannelConfig* channel_config, ChannelRealtimeState* realtime_state) :
			InterpolationAlgorithm(geometry, dynamic_info, channel_index,
					channel_config, realtime_state), kMaxIterarionCount(30) {
		SetChannelIndex(channel_index, channel_config);
	}
	;
	/**
	*@brief  析构函数
	*@param 无
	*@return 无
	*/
	virtual ~CircleInterpolation();
	/**
	*@brief 初始化函数
	*@param 无
	*@return 初始化结果，0表示成功，否则表示失败
	*/
	virtual int Init(SpeedProfileType speed_profile_type);
	/**
	*@brief 根据输入数据得到曲线几何信息
	*@param LineData* data：插补指令数据
	*@return 无
	*/
	virtual void ComputeGeometry();
private:
	/**
	*@brief 根据实际速度和加速度在每个轴上的分量不大于每个轴的最大允许速度和加速度的原则，计算合速度和加速度的值
	*@param 无
	*@return 无
	*/
	virtual void ValidateDynamic();
	/**
	 *@brief 验证最大加速度或者减速度是否超限
	 *@param double max_acc：限定的最大加速度
	 *@param double& f：圆弧切线速度
	 *@param double& a_c：向心加速度
	 *@param double& a_t：切线加速度
	 *@return 无
	 */
	inline void ValidateAcc(double max_acc, double& f, double& a_c, double radius, double& a_t);
	/**
	 *@brief 根据指定距离计算当前所在位置，计算后得到的结果放在data中
	 *@param LineData* data：插补后的位置返回值
	 *@return 无
	 */
	void ComputePosition(double current_l, LineData* data);
	/**
	 *@brief 得到圆弧旋转所在平面的法向量
	 *@param 无
	 *@return 无
	 */
	void GetNormalVector();
	/**
	 *@brief 计算曲线其他参数信息，包括计算过程中间参数
	 *@param 无
	 *@return 无
	 */
	int32_t ComputeCurveParam();
	/**
	 *@brief 根据曲线长度计算对应的张角
	 *@param double distance 曲线长度
	 *@return 曲线长度对应的张角
	 */
	double ComputeAngle(double distance);
	/**
	 *@brief 在圆锥或者螺线插补中，当半径值小于界限值时，保持角速度不变，根据长度得到相应的张角
	 *@param double distance：当前插补到的曲线长度
	 *@return 曲线长度对应的张角
	 */
	double ComputeAngleBeyondLimit(double distance);
	/**
	 *@brief 根据给定参数u计算曲线长度
	 *@param double param_u 参数u
	 *@return 参数u对应的曲线长度
	 */
	double ComputeDistance(double param_u);
	/**
	*@brief 根据给定的张角，计算圆弧所在的位置
	*@param double theta：给定张角
	*@param double end_position[]：圆弧所在的位置
	*@return 处理的结果
	*/
	int32_t ComputeArcPosition(double theta, double end_position[]) const;
	/**
	*@brief 计算一个点，绕一个方向和过一点的轴旋转指定角度之后所在的位置
	*@param double theta：旋转角度
	*@param double end_point[]：旋转后的终点位置
	*@return 处理的结果
	*/
	int32_t ComputeRotaryPosition(double theta, double end_position[]) const;
	/**
	*@brief 已知平面法向量，计算平面内在指定轴上投影最大的向量
	*@param Vector& normal_vector：指定平面法向量，单位向量
	*@param Vector& projected_vector：指定轴，作为被投影的向量，单位向量
	*@param Vector& max_project_vector：投影的向量，所求单位向量
	*@return 是否存在使投影最大的向量，true表示存在，false表示不存在
	*/
	bool GetMaxProjectVector(Vector& normal_vector, Vector& projected_vector, Vector& max_project_vector);
	/**
	*@brief 按照指定的法向量旋转，从第一个向量旋转到第二个向量是否经过指定的中间向量
	*@param Vector& first_vector：第一个向量
	*@param Vector& second_vector：第二个向量
	*@param Vector& middle_vector：第二个向量
	*@param Vector& normal_vector：指定平面法向量，单位向量
	*@return 两个向量之间的旋转角度
	*/
	bool IsMiddleVector(Vector& first_vector, Vector& second_vector, Vector& middle_vector, Vector& normal_vector);
	/**
	 *@brief 在速度规划的一段曲线插补完成之后计算剩下的距离等信息
	 *@param 无
	 *@return 无
	 */
	virtual inline void ComputeRemainDistance();

	/*
	 * @brief 设置本模块的通道号
	 */
	void SetChannelIndex(int channel_index, NCCCTChannelConfig* channel_config);

	//螺线插补根据长度计算角度的数值解时最大迭代次数
	const int kMaxIterarionCount;
    uint8_t m_channel_index;	//通道序号
    NCCCTChannelConfig* m_channel_config;//通道配置参数指针，指向全局配置数据结构
	double m_normal_vector[3];		//圆弧所在平面的法向量
	double* m_slope;	//每个轴移动的距离在合成距离上的分量

	double m_pre_u;		//在圆锥或螺线曲线中，通过曲线长度迭代计算相应的螺旋角度时表达式中的参数
	double m_pre_l;		//
	double m_current_radius;
	double m_current_angle;
	double m_k;
	double m_k_square;
	double m_helix_const;	//求螺旋线长度时长度与螺旋线半径比的系数，为一常数
	double m_q;
	double m_C;
	double m_ratio_radius_l;		//在半径达到规定值时，保持角速度恒定，记下此时剩下的半径与长度比值
	bool m_is_reach_limit_radius;
	double m_min_radius;

	uint16_t m_line_mask;		//直线轴的mask
	uint16_t m_arc_mask;		//圆弧轴的mask
	uint8_t m_surface_flag;
};
//在速度规划的一段曲线插补完成之后计算剩下的距离等信息
inline void CircleInterpolation::ComputeRemainDistance() {
	//将当前终点数据保存，作为一条新的数据。终点数据减去当前所加工的数据即为新的数据的参数
	m_geometry->end_data->axis_mov_data.dist -= m_dynamic_info[m_trajectory_index]->current_l;
	m_geometry->end_data->extra_mov_data.extra_data[EX_R] = m_current_radius;
	m_geometry->end_data->extra_mov_data.extra_data[EX_AR] -= m_current_angle;
}
#endif /* CIRCLE_INTERPOLATION_H_ */
