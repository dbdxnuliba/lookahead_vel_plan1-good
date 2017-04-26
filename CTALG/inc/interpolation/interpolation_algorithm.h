/**Copyright(C) 2013 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file:	interpolation_algorithm.h
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本头文件包含插补算法的声明。*/

#ifndef INTERPOLATION_ALGORITHM_H_
#define INTERPOLATION_ALGORITHM_H_

#include "data_definition.h"
#include "interpolation_data.h"
#include "velocity_planning.h"
#include "circular_buffer.h"

class VelocityPlanning;
class SVelocityPlanning;
class TVelocityPlanning;

/**
 *@brief 插补算法类
 */
class InterpolationAlgorithm {
public:
	/**
	*@brief 构造函数
	*@param   Geometry* geometry 几何信息对象指针
	*@param   DynamicInfo** dynamic_info 速度规划对象指针数组
	*@return  无
	 */
	InterpolationAlgorithm(Geometry* geometry,
			DynamicInfo** dynamic_info, int channel_index, NCCCTChannelConfig* channel_config,
			ChannelRealtimeState* realtime_state);
	/**
	 *@brief InterpolationAlgorithm的析构函数
	 *@param 无
	 *@return 无
	 */
	virtual ~InterpolationAlgorithm();
	/**
	 *@brief InterpolationAlgorithm的初始化函数
	 *@param SpeedProfileType speed_profile_type：速度规划类型
	 *@return 初始化返回结果，0表示成功初始化。其他代码表示相应的错误信息
	 */
	virtual int Init(SpeedProfileType speed_profile_type);
	/**
	 *@brief 设置速度规划类型
	 *@param SpeedProfileType speed_profile_type：速度规划类型
	 *@return 无
	 */
	void SetSpeedProfileType(SpeedProfileType speed_profile_type);
	/**
	 *@brief 得到当前速度
	 *@param 无
	 *@return 当前速度
	 */
	virtual double GetCurrentSpeed();
	/**
	 *@brief 已经做速度规划的曲线部分是否插补完成
	 *@param 无
	 *@return true：插补已经完成；false：插补没有完成
	 */
	virtual bool IsInterpolationFinished();
	/**
	 *@brief 根据输入数据得到曲线几何信息
	 *@param 无
	 *@return 无
	 */
	virtual void ComputeGeometry() = 0;
	/**
	 *@brief 将当前终点数据保存，等待按下启动按钮时加工当前点数据
	 *@param CircularBuffer<LineData>* buffer：当前数据保存的buffer
	 *@return 无
	 */
	void SaveEndData(CircularBuffer<LineData>* buffer);
	/**
	 *@brief 判断是否整条曲线已经做速度规划，根据速度规划的终点距离le和曲线几何信息的终点距离做对比得出结论
	 *@param 无
	 *@return 无
	 */
	virtual bool HasReachedEnd();
	/**
	 *@brief 根据进给倍率进行速度规划，进给倍率乘以终点速度和目标速度分别为实际的终点速度和目标速度
	 *@param double target_feed_rate：目标速度的进给倍率
	 *@param double end_feed_rate：终点速度的进给倍率
	 *@param bool is_tapping_mode：是否为刚性攻丝方式
	 *@return 速度规划的步数
	 */
	virtual int32_t PlanVelocity(double target_feed_rate, double end_feed_rate = 1.0, bool is_tapping_mode = false);
	/**
	 *@brief 进行单步插补，调用一次向前插补一步
	 *@param LineData* data：插补后的位置返回值
	 *@return 无
	 */
	virtual void Interpolate(LineData* data);
protected:
	Geometry* m_geometry;	//包含曲线几何信息的结构体
	//包含曲线的运动信息，在速度规划时更改此结构体中的数据，由上层模块传递指针
	DynamicInfo** m_dynamic_info;

	//速度规划类指针，根据系统参数配置为S型或者T型
	VelocityPlanning* m_velocity_planning;
	//S型速度规划
	SVelocityPlanning* m_s_velocity_planning;
	//T型速度规划
	TVelocityPlanning* m_t_velocity_planning;

	//插补周期，单位s
	double m_interpolation_cycle;

	bool* m_is_to_reset;
	uint8_t m_trajectory_index;				//表示G01/G02等轨迹规划的index，与轴独立的index区分开
private:
	/**
	*@brief 根据实际速度和加速度在每个轴上的分量不大于每个轴的最大允许速度和加速度的原则，计算合速度和加速度的值
	*@param 无
	*@return 无
	*/
	virtual void ValidateDynamic() = 0;
	/**
	 *@brief  根据指定距离计算当前所在位置，计算后得到的结果放在data中
	 *@param double current_l：当前速度规划所到达距离
	 *@param LineData* data：插补后的位置返回值
	 *@return 无
	 */
	virtual void ComputePosition(double current_l, LineData* data) = 0;
	/**
	 *@brief    在速度规划的一段曲线插补完成之后计算剩下的距离等信息
	 *@param    无
	 *@return   无
	 */
	virtual inline void ComputeRemainDistance() = 0;
	/*
	 * @brief 设置本模块的通道号
	 */
	void SetChannelIndex(int channel_index, NCCCTChannelConfig* channel_config);

    uint8_t m_channel_index;	//通道序号
    NCCCTChannelConfig* m_channel_config;//通道配置参数指针，指向全局配置数据结构
    ChannelRealtimeState* m_realtime_state;
};
#endif /* INTERPOLATION_ALGORITHM_H_ */
