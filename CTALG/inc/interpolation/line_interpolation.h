/**Copyright(C) 2013 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file:	line_interpolation.h
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本头文件包含直线插补类声明。直线插补算法继承自父类InterpolationAlgorithm。*/
#ifndef LINE_INTERPOLATION_H_
#define LINE_INTERPOLATION_H_

#include "interpolation_algorithm.h"

/**
 *@brief 直线插补类
 */
class LineInterpolation: public InterpolationAlgorithm {
public:
	/**
	*@brief 构造函数
	*@param Geometry* geometry 几何信息对象
	*@param DynamicInfo* dynamic_info 速度规划对象指针数组
	*@return 无
	 */
	LineInterpolation(Geometry* geometry,
			DynamicInfo** dynamic_info, int channel_index, NCCCTChannelConfig* channel_config, ChannelRealtimeState* realtime_state) :
			InterpolationAlgorithm(geometry, dynamic_info, channel_index, channel_config, realtime_state) {
		SetChannelIndex(channel_index, channel_config);
	};
	/**
	*@brief 初始化函数
	*@param 无
	*@return 初始化结果，0表示成功，否则表示失败
	*/
	virtual int Init(SpeedProfileType speed_profile_type);
	/**
	*@brief 析构函数
	*@param 无
	*@return 无
	*/
	virtual ~LineInterpolation() {
		if(m_slope != NULL) {
			delete[] m_slope;
		}
	};
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
	 *@brief  根据指定距离计算当前所在位置，计算后得到的结果放在data中
	 *@param double current_l：当前速度规划所到达距离
	 *@param LineData* data：插补后的位置返回值
	 *@return 无
	 */
	virtual void ComputePosition(double current_l, LineData* data);
	/**
	 *@brief    在速度规划的一段曲线插补完成之后计算剩下的距离等信息
	 *@param    无
	 *@return   无
	 */
	virtual inline void ComputeRemainDistance();

	/*
	 * @brief 设置本模块的通道号
	 */
	void SetChannelIndex(int channel_index, NCCCTChannelConfig* channel_config);
	double* m_slope;			//直线各个轴的斜率
    uint8_t m_channel_index;	//通道序号
    NCCCTChannelConfig* m_channel_config;//通道配置参数指针，指向全局配置数据结构
};
//在速度规划的一段曲线插补完成之后计算剩下的距离等信息
inline void LineInterpolation::ComputeRemainDistance() {
	//将当前终点数据保存，作为一条新的数据。终点数据减去当前所加工的数据即为新的数据的参数
	m_geometry->end_data->axis_mov_data.dist -= m_dynamic_info[m_trajectory_index]->current_l;
}
#endif /* LINE_INTERPOLATION_H_ */
