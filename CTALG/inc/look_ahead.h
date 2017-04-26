/**Copyright(C) 2013 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file:	look_ahead.h
 * @author: 陈晓颖,吴承华
 * @date: 	2013-1-10
 * @brief: 	本头文件包含前瞻算法函数的声明*/

#ifndef LOOK_AHEAD_H_
#define LOOK_AHEAD_H_

#include "data_definition.h"
#include "circular_buffer.h"
#include "log_trace.h"
extern ALGLogTrace* alg_log_trace;

const int LOOK_AHEAD_BUF_SIZE = 100; // 前瞻缓冲区大小
const int POS_POWER = 1; // 坐标转换为米
const int SPEED_POWER = 1; // 毫米每秒转为米每秒
const double CYCLE_POWER = 0.000001; // 伺服周期转为秒
#define IS_ZERO(num) (fabs(num)<1E-8) // 判断数据是否为0
// 前瞻是否开启线程,暂未实现线程功能,如要实现只需挂接LookAheadThread函数即可
//#define LOOK_AHEAD_USE_THREAD

// 前瞻是否计算圆弧圆心等数据
//#define LOOK_AHEAD_COMPUTE_CIRCLE

// 前瞻是否计算距离
//#define LOOK_AHEAD_COMPUTE_DIST

// 当已经达到最大前瞻条数时,总长度仍不够当前点的前瞻条件,是否用总长度限制当前点的最大末速度
//#define LOOK_AHEAD_DISTANT_LIMIT

class Interpolation;
struct LineData;
/**
 * @brief:前瞻功能类。包含前瞻与上一个模块的数据输入接口以及其他的前瞻算法。
 */
class LookAhead {
public:
	/**
	 * @brief 	前瞻类构造函数
	 * @param 	pInterpolator 插补器类实例指针
	 * @param 	channel_index 通道号
	 * @return	无
	 */
	LookAhead(Interpolation* pInterpolator, uint16_t channel_index,
			NCCCTChannelConfig* channel_config,
			ChannelRealtimeState* realtime_state);
	/**
	 * @brief 	前瞻类析构函数
	 */
	~LookAhead();

	/**
	 * @brief 	前瞻初始化函数
	 * @param 	无
	 * @return 初始化是否有错
	 */
	int16_t Init();

	/*
	 * @brief 前瞻对外接口，将数据放入前瞻缓冲区中，并调用前瞻处理程序进行处理
	 * @param data 需要前瞻的数据指针
	 * @return 处理结果，0：成功；非0：错误码
	 */
	int16_t Process(LineData* data);

	/**
	 * @brief 	重启前瞻模块，初始化为初始状态
	 * @param 	无
	 * @return 无
	 */
	void Reset();

	/*
	 * @brief 设置该轴当前位置
	 * @param axis_index 轴序号
	 * @param pos 要设置的位置值
	 * @return 无
	 */
	void SetCurPos(uint16_t axis_index, double pos); //设置单轴起始位置

	/**
	 * @brief 判断前瞻缓冲区是否满
	 * @param 无
	 * @return 缓冲区是否满
	 */
	bool IsBufFull();

private:
	/*
	 * @brief 将前瞻处理后的数据发送给插补模块
	 * @param data 发送的数据指针
	 * @return 无
	 */
	void InsertDataToInterpolation(LineData* data);

	/*
	 * @brief 前瞻处理程序
	 * @param 无
	 * @return 无
	 */
	void LookAheadHandle();

	/*
	 * @brief 预处理数据，计算长度，最大夹角速度等信息
	 * @param pre_data 前一条线段
	 * @param ine_data 当前线段
	 * @return 无
	 */
	void PrepareProcess(LineData* pre_data, LineData* line_data);

	/*
	 * @brief 获得len个前瞻数据
	 * @param len 可获得前瞻数据的长度
	 * @param end G代码是否结束
	 * @return 无
	 */
	void GetLookAheadData(int16_t len, bool end);

	/*
	 * @brief 结束len之前数据的前瞻处理
	 * @param len 可完成前瞻的数据区长度
	 * @return 无
	 */
	void EndProcess(int16_t len);

	/*
	 * @brief 无论前瞻条件是否满足,强制进行第一条线段的前瞻处理
	 * @param 无
	 * @return 无
	 */
	void ForceOneProcess();

	/*
	 * @brief 正常前瞻处理，条件满足时才进行计算,否则等待后继数据
	 * @param 无
	 * @return 处理结果，0未处理数据, 1已处理第一条数据
	 */
	int16_t NormalProcess();

	/**
	 * @brief 从多个输入速度中取出最小者
	 * @param 多个速度
	 * @return 最小速度
	 */
	double v_min(int num, ...);

	/**
	 * @brief 计算第一条线段的长度
	 * ＠param point: 第一条线段数据
	 * @return 线段长度
	 */
	double Distant(const LineData* point);

	/**
	 * @brief 根据输入两个点位置信息，计算出两点间的路线长度
	 * ＠param point1 起点数据
	 * ＠param point2 终点数据
	 * @return 两点间的路线长度
	 */
	double Distant(const LineData* point1, const LineData* point2);

	/**
	 * @brief 计算中点及中点与起点的偏移
	 * ＠param point1 起点数据
	 * ＠param point2 终点数据
	 * @param mid 中点坐标,是输出参数
	 * @param x 中点与起点的偏移,是输出参数
	 * @param y 中点与起点的偏移,是输出参数
	 * @return 是否成功
	 */
	void GetMidXY(const LineData* point1, const LineData* point2, double* mid,
			double* x, double* y);

	/**
	 * @brief 已经提供IJK值,计算圆弧半径(IJK值就是圆心)
	 * ＠param point1 起点数据
	 * ＠param point2 终点数据
	 * @return 是否成功
	 */
	int16_t GetRadiusFromIJK(const LineData* point1, LineData* point2);

	/**
	 * @brief 已经提供IJK值,计算圆弧角度
	 * ＠param point1 起点数据
	 * ＠param point2 终点数据
	 * @return int16_t 是否成功
	 */
	int16_t GetAngleFromIJK(const LineData* point1, LineData* point2);

	/**
	 * @brief 根据输入两个终点信息，根据半径计算圆心及圆弧角度
	 * ＠param point1 起点数据
	 * ＠param point2 终点数据
	 * @return int16_t 是否成功
	 */
	int16_t GetIJKAngleFromRadius(const LineData* point1, LineData* point2);

	/**
	 * @brief 根据输入两个终点信息，将圆数据填充完整,填充的数据有:半径,IJK值,圆弧角度
	 * ＠param point1 起点数据
	 * ＠param point2 终点数据
	 * @return int16_t 是否成功
	 */
	int16_t FillCircleData(const LineData* point1, LineData* point2);

	/**
	 * @brief 转换数据为需要的单位
	 * ＠param data 要转换的LineData
	 * @return 无
	 */
	void TransDataUnit(LineData* data);

	/**
	 * @brief 根据输入两个终点位置信息，圆弧，圆锥，螺线长度
	 * ＠param point1 起点数据
	 * ＠param point2 终点数据
	 * @return 计算圆弧，圆锥，螺线长度
	 */
	double DistantCircle(const LineData* point1, const LineData* point2);

	/**
	 * @brief 计算由系统最大速度，用户指定速度，最大弓高误差，最大向心加速度下的圆弧段加工目标速度
	 * @param data 圆弧插补段数据
	 * @return 加工目标速度
	 */
	double CalcSpeed(LineData* data);

	/**
	 * @brief 向量归一化
	 * ＠param vector 要归一化的向量
	 * @return 是否归一化成功
	 */
	bool VectorNormal(double* vector);

	/**
	 * @brief 计算圆弧切向量
	 * @param type 圆类型 G02,G03
	 * @param surface 平面类型
	 * @param h 螺旋线高度
	 * ＠param center 圆心
	 * ＠param point 要求切向量的点
	 * @param vector 输出参数,计算的切向量存入该参数中
	 * @return 无
	 */
	void GetArcVector(uint16_t type, uint8_t surface, double h,
			const double* center, const double* point, double* vector);

	/**
	 * @brief 计算螺旋线相对于半径的高度,以便计算螺旋线切向量
	 * ＠param point1 起点数据
	 * ＠param point2 末点数据
	 * @return 螺旋线相对于半径的高度
	 */
	double GetArcHeight(const LineData* point1, const LineData* point2);

	/**
	 * @brief 计算线段夹角速度,同时计算方向向量和每轴最大速度
	 * ＠param point1 起点数据
	 * ＠param point2 末点数据
	 * @return 最大夹角速度
	 */
	double AngleSpeed(const LineData* point1, LineData* point2);

	/**
	 * @brief 计算用户指定速度
	 * @param feed,进给速度
	 * @return 用户指定速度，单位为米每秒
	 */
	double GetUserFeed(FeedInfo* feed);

	/**
	 * @brief 用当前坐标填充LineData
	 * ＠param data 要填充的数据
	 * @return 无
	 */
	void FillLineDataByCurPos(LineData* data);

	/**
	 * @brief 用上一条指令坐标填充LineData
	 * ＠param data 要填充的数据
	 * @return 无
	 */
	void FillLineDataByLastPos(LineData* data);

	/**
	 * @brief 获得三维圆弧的起点和终点切向量
	 * ＠param point1 起点坐标
	 * ＠param point2 终点坐标
	 * ＠param center 圆心坐标
	 * ＠param start_v 起点切向量,是输出参数
	 * ＠param end_v 终点切向量,是输出参数
	 * @return 无
	 */
	void Get3DArcVector(const double* point1, const double* point2,
			const double* center, const double* norm_v, double* start_v,
			double* end_v);

	/*
	 * @brief 设置线段末速度
	 * @param data 要设置的线段
	 * @param speed 要设置的速度
	 * @return 无
	 */
	void SetEndSpeed(LineData* data, double speed);

	/**
	 * @brief 判断是否是圆弧
	 * @param type 指令类型
	 * @return 是否圆弧
	 */
	bool DataIsArc(uint16_t type);

	/**
	 * @brief 判断是否顺时针圆弧
	 * @param type 指令类型
	 * @return 是否顺时针圆弧
	 */
	bool DataIsClockWise(uint16_t type);

	/**
	 * @brief 前瞻线程函数，执行前瞻处理
	 * @param args 前瞻对象指针
	 * @return 无
	 */
	static void LookAheadThread(void* args);

	/**
	 * @brief 根据轴加速度的大小和直线的几何参数计算圆弧的合成加速度
	 * @param data 直线插补数据
	 * @param start_point[] 直线起点坐标
	 * @return 无
	 */
	void CalculateLineAcc(LineData* data, double start_point[]);

	/**
	 * @brief 根据轴加速度的大小和直线的几何参数计算圆弧的合成加速度
	 * @param data 直线插补数据
	 * @param start_point[] 直线起点坐标
	 * @return 无
	 */

	void CalculateArcAcc(LineData* data);

	/*
	 * @brief 计算缓冲区中指定index数据减速到零的距离
	 */
	double CalculateStopDist(int buf_index);

	/*
	 * @brief 设置前瞻段数
	 */
	void SetLookaheadNum(uint16_t num);
private:
	/*
	 * @brief 设置本模块的通道号
	 */
	void SetChannelIndex(int channel_index, NCCCTChannelConfig* channel_config);

	Interpolation* m_interpolator;
	CircularBuffer<LineData>* m_data_buffer; //前瞻缓冲区

	uint16_t m_lookahead_count; // 指定当有多少条代码时强制进行前瞻计算
	uint8_t m_channel_index; //通道序号
	NCCCTChannelConfig* m_channel_config; //通道配置参数指针，指向全局配置数据结构
	ChannelRealtimeState* m_realtime_state;
	double m_last_speed; // 最后线段的速度
	double m_dist_len; // 线段总长度
	double m_min_len; // 第一条线段能进行前瞻时的最小长度
	bool m_has_position; //是否保存了轴坐标
	AxisMovData m_last_position; //轴最后停的位置
	bool m_has_vector; //是否有上一条线段的方向向量
	double* m_vector; // 保存上一条线段的方向向量，以便计算夹角
	int16_t m_prepare_count; // 已预处理数据的个数

	double* m_start_point;
	LineData* m_pre_data;
	double m_min_acc_for_geo_axis; //几何轴中最小的加速度值

	uint8_t m_tool_change_axis_move; //表示换刀过程中有没有轴的移动，bit 0~5表示每个轴是否移动，0表示没有移动，1表示有移动
};

#endif /* LOOK_AHEAD_H_ */
