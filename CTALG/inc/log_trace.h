/**Copyright(C) 2012 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file: 	error_process.h
 * @author: 陈晓颖
 * @date: 	2013-1-10
 * @brief: 	本头文件包含系统日志和调试信息模块的类声明，该模块主要用来记录系统日志和调试信息，
 * 系统日志是提供给用户参考，调试信息提供给售后和开发人员调试使用。
 */

#ifndef ALG_LOG_TRACE_H_
#define ALG_LOG_TRACE_H_

#include "data_definition.h"


class ALGLogTrace {
public:
	/**
	 * @brief 	日志处理类构造函数
	 * @param 	无
	 * @return  无
	 */
	ALGLogTrace(
			void (*AlgPrintTrace)(TraceLevel trace_level, TraceModule module_id,
					char* trace_message),
			void (*AlgPrintLog)(LogLevel log_level, char* log_message));
	/**
	 * @brief 	日志处理类析构函数
	 * @param 	无
	 * @return  无
	 */
	~ALGLogTrace();

	/**
	 * @brief 	记录日志
	 * @param 	log_type 日志类型
	 * @param	log_message 日志内容
	 * @return  无
	 */
	void PrintLog(LogLevel log_level, char* log_message, ...);

	/**
	 * @brief 	记录调试信息，根据调试信息设置以及输入参数，决定记录哪些调试信息
	 * @param 	trace_level 调试信息记录级别
	 * @param	module_id 调试信息所在模块
	 * @param	trace_message 调试信息内容
	 * @return  无
	 */
	void PrintTrace(TraceLevel trace_level, TraceModule module_id,
			char* trace_message, ...);

private:
	/**
	 * @brief 	记录日志
	 * @param 	log_type 日志类型
	 * @param	log_message 日志内容
	 * @return  无
	 */
	void (*pPrintLog)(LogLevel log_level, char* log_message);

	/**
	 * @brief 	记录调试信息，根据调试信息设置以及输入参数，决定记录哪些调试信息
	 * @param 	trace_level 调试信息记录级别
	 * @param	module_id 调试信息所在模块
	 * @param	trace_message 调试信息内容
	 * @return  无
	 */
	void (*pPrintTrace)(TraceLevel trace_level, TraceModule module_id,
			char* trace_message);
};



#endif /* LOG_TRACE_H_ */
