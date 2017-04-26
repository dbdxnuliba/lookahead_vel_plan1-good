/**Copyright(C) 2013 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file:	quick_move_interpolation.h
 * @author: 陈晓颖
 * @date: 	2013-1-21
 * @brief: 	本头文件包含快速移动的插补算法声明。快速移动算法继承自父类InterpolationAlgorithm。快速移动
 * 			是针对几个轴同时开始移动但不要求同时到达的插补情况，各自以系统允许的最大速度为目标速度进行插补。*/

#ifndef QUICK_MOVE_INTERPOLATION_H_
#define QUICK_MOVE_INTERPOLATION_H_

#include "interpolation_algorithm.h"

class AccelerationAlgorithm;
/**
 *@brief 快速移动类
 */
class QuickMoveInterpolation: public InterpolationAlgorithm {
public:
	/**
	*@brief 构造函数
	*@param   Geometry* geometry 包含几何信息结构体
	*@param   DynamicInfo* dynamic_info 速度规划对象指针数组
	*@return  无
	 */
	QuickMoveInterpolation(Geometry* geometry,
			DynamicInfo** dynamic_info, int channel_index, NCCCTChannelConfig* channel_config, ChannelRealtimeState* realtime_state) :
			InterpolationAlgorithm(geometry, dynamic_info, channel_index, channel_config, realtime_state) {
		SetChannelIndex(channel_index, channel_config);
	};
	/**
	*@brief 析构函数
	*@param   无
	*@return  无
	*/
	virtual ~QuickMoveInterpolation() {
		if(m_axis_distance != NULL) {
			delete[] m_axis_distance;
		}
		if(m_is_axis_positive != NULL) {
			delete[] m_is_axis_positive;
		}
	};
	/**
	*@brief 初始化函数
	*@param 无
	*@return 初始化结果，0表示成功，否则表示失败
	*/
	virtual int Init(SpeedProfileType speed_profile_type);
	/**
	 *@brief 得到当前速度，返回各轴最大的速度
	 *@param 无
	 *@return 无
	 */
	virtual double GetCurrentSpeed();
	/**
	 *@brief 已经做速度规划的曲线部分是否插补完成。每个轴都完成时才返回true
	 *@param 无
	 *@return true：插补已经完成；false：插补没有完成
	 */
	virtual bool IsInterpolationFinished();
	/**
	*@brief 根据输入数据得到曲线几何信息
	*@param   LineData* data：插补指令数据
	*@return  无
	*/
	virtual void ComputeGeometry();
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
	 *@return 各轴速度规划步数中最大的一个
	 */
	virtual int32_t PlanVelocity(double target_feed_rate, double end_feed_rate = 1.0, bool is_tapping_mode = false);
	/**
	 *@brief 进行单步插补，调用一次向前插补一步
	 *@param LineData* data：插补后的位置返回值
	 *@return 无
	 */
	virtual void Interpolate(LineData* data);
private:
	/**
	 *@brief 根据指定距离计算当前所在位置，计算后得到的结果放在data中
	 *@param LineData* data：插补后的位置返回值
	 *@return 无
	 */
	virtual void ComputePosition(double current_l, LineData* data);
	/**
	 *@brief 根据指定距离计算当前所在位置，计算后得到的结果放在data中
	 *@param LineData* data：插补后的位置返回值
	 *@return 无
	 */
	void ComputePosition(double current_l, uint16_t axis_index, LineData* data);
	/**
	 *@brief 在速度规划的一段曲线插补完成之后计算剩下的距离等信息
	 *@param 无
	 *@return 无
	 */
	virtual inline void ComputeRemainDistance() {};
	/**
	*@brief 根据实际速度和加速度在每个轴上的分量不大于每个轴的最大允许速度和加速度的原则，计算合速度和加速度的值
	*@param 无
	*@return 无
	*/
	virtual void ValidateDynamic() {};

	/*
	 * @brief 设置本模块的通道号
	 */
	void SetChannelIndex(int channel_index, NCCCTChannelConfig* channel_config);

    uint8_t m_channel_index;	//通道序号
    NCCCTChannelConfig* m_channel_config;//通道配置参数指针，指向全局配置数据结构
	double* m_axis_distance;		//每个轴移动的距离
	bool* m_is_axis_positive;		//表示轴移动为正向还是负向
};
#endif /* QUICK_MOVE_INTERPOLATION_H_ */
