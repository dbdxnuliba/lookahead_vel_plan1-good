/**Copyright(C) 2012 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file: 	error_process.h
 * @author: 陈晓颖
 * @date: 	2013-1-10
 * @brief: 	本源文件包含系统日志和调试信息模块的类声明，该模块主要用来记录系统日志和调试信息，
 * 系统日志是提供给用户参考，调试信息提供给售后和开发人员调试使用。
 */
#include <stdarg.h>
#include <stdio.h>
#include "log_trace.h"

//日志处理类析构函数
ALGLogTrace::~ALGLogTrace() {
}

//日志处理类构造函数
ALGLogTrace::ALGLogTrace(
		void (*AlgPrintTrace)(TraceLevel trace_level, TraceModule module_id,
				char* trace_message),
		void (*AlgPrintLog)(LogLevel log_level, char* log_message)) {
	pPrintTrace = AlgPrintTrace;
	pPrintLog = AlgPrintLog;
}


//记录日志
void ALGLogTrace::PrintLog(LogLevel log_level, char* log_message, ...) {
	char buf[256];
	va_list arg_ptr; //可变长度参数指针，用于获得参数第一个指针
	memset(buf, 0x00, 256);
	//处理可变长度参数
	va_start(arg_ptr, log_message);
	vsprintf(buf, log_message, arg_ptr);
	va_end(arg_ptr);
	buf[MAX_MESSAGE_LENGTH - 1] = '\0';
	pPrintLog(log_level, buf);
}

//记录调试信息，根据调试信息设置以及输入参数，决定记录哪些调试信息
void ALGLogTrace::PrintTrace(TraceLevel trace_level, TraceModule module_id,
		char* trace_message, ...) {
	char buf[256];
	va_list arg_ptr; //可变长度参数指针，用于获得参数第一个指针
	//判断模块id为module_id是否需要输出当前调试信息
	memset(buf, 0x00, 256);
	//处理可变长度参数
	va_start(arg_ptr, trace_message);
	vsprintf(buf, trace_message, arg_ptr);
	va_end(arg_ptr);
	buf[MAX_MESSAGE_LENGTH - 1] = '\0';
	pPrintTrace(trace_level, module_id, buf);
}
