/**Copyright(C) 2012 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file circular_buffer.h
 * @author 龚丽辉
 * @date 2012-1-13
 * @brief 本头文件包含循环缓冲区类声明。
 */

#ifndef AE8100_INCLUDE_CIRCULAR_BUFFER_H_
#define AE8100_INCLUDE_CIRCULAR_BUFFER_H_
#ifndef X86_BUILD
#include "/usr/local/ezsdk/component-sources/bios_6_32_01_38/packages/ti/sysbios/gates/GateHwi.h"
#endif
#include <assert.h>
/**
 * @brief 循环缓冲区类
 * 此类中所有长度均指T的个数，并不是字节数！！！
 */
template<class T>
class CircularBuffer {
public:
	CircularBuffer(int buffer_length);
	~CircularBuffer();
	int WriteData(const T* data, int data_length); //写数据
	int InsertData(const T* data, int data_length); //插入数据到队列头
	int ReadData(T* data, int data_length);  //读数据
	int EmptyBufLen(); //获取当前空闲缓冲区长度
	int BufLen(); //获取数据长度
	void ClearBuf();	//清空数据
	int ReadDataInPlace(T* data, int data_length);

	T* ReadDataPtr(int16_t pos); //读数据，返回数据指针
	void Next(); //读指针前移

private:
	T* m_buffer; //数据缓冲区指针
	int m_buffer_total_length;  //缓冲区总大小
	int m_buffer_cur_length;    //当前数据大小
	T* m_write_pointer;      //当前写指针
	T* m_read_pointer;       //当前读指针
#ifndef X86_BUILD
	GateHwi_Handle m_gateHwi;	//读写互斥量
#endif
};

template<class T>
CircularBuffer<T>::CircularBuffer(int buffer_length) {
	m_buffer = new T[buffer_length];
	if (m_buffer == NULL) {
		//System_abort("CircularBuffer创建失败！");
	}
	memset(m_buffer, 0, sizeof(T)*buffer_length);	//初始化为0
	m_buffer_total_length = buffer_length;
	m_buffer_cur_length = 0;
	m_write_pointer = m_buffer;
	m_read_pointer = m_buffer;
	//创建读写互斥量
#ifndef X86_BUILD
	GateHwi_Params prms;
#endif
	//Error_Block eb;
	//Error_init(&eb);
#ifndef X86_BUILD
	GateHwi_Params_init(&prms);
	m_gateHwi = GateHwi_create(&prms, NULL);
	if (m_gateHwi == NULL) {
		//System_abort("CircularBuffer创建读写互斥量失败！");
	}
#endif
}

template<class T>
CircularBuffer<T>::~CircularBuffer() {
	if (m_buffer != NULL) {
		delete[] m_buffer;
	}
#ifndef X86_BUILD
	GateHwi_delete(&m_gateHwi);			//删除读写互斥量
#endif
}

/**
 * @brief 写入数据到循环缓冲区
 * @param char* data, 写入数据指针
 * @param int data_length，写入数据长度
 * @return 最终写入长度
 */
template<class T>
int CircularBuffer<T>::WriteData(const T* data, int data_length) {
#ifndef X86_BUILD
	uint32_t gate_key;
	//使用读写互斥量，防止线程冲突
	gate_key = GateHwi_enter(m_gateHwi);
#endif
	assert(data != NULL);
	int res = ERROR_NONE;
	int write_length = 0;
	if (data_length == 0 || m_buffer == NULL) {
		goto END;
	}

	if (data_length < m_buffer_total_length - m_buffer_cur_length) {
		write_length = data_length;
	} else {
		write_length = m_buffer_total_length - m_buffer_cur_length;
	}

	//     W|                          R|
	//------------------------------------------读指针在后，写指针在前，不包含读写指针重合情况
	//WR|
	//------------------------------------------初始时，读写指针均为0
	if (m_write_pointer < m_read_pointer) {
		memcpy(m_write_pointer, data, sizeof(T) * write_length); //复制数据
		m_write_pointer += write_length; //写入数据指针后移
	}
	//      R|     W|
	//------------------------------------------写指针在后，读指针在前，或重合，且写指针之后剩余空间足够写入所有数据
	else if (m_write_pointer - m_buffer + write_length
			<= m_buffer_total_length) {
		memcpy(m_write_pointer, data, sizeof(T) * write_length); //复制数据
		m_write_pointer += write_length; //写入数据指针后移
	}
	//      R|                            W|
	//------------------------------------------写指针在后，读指针在前，且写指针之后剩余空间不够写入所有数据
	else {
		int split_length = m_buffer_total_length - (m_write_pointer - m_buffer);
		memcpy(m_write_pointer, data, sizeof(T) * split_length);
		memcpy(m_buffer, data + split_length,
				sizeof(T) * (write_length - split_length));
		m_write_pointer = m_buffer + write_length - split_length;
	}
	if (m_write_pointer >= m_buffer + m_buffer_total_length) {
		m_write_pointer -= m_buffer_total_length;
	}
	m_buffer_cur_length += write_length; //当前数据长度加上此次写入长度
	res = write_length;
	END:
#ifndef X86_BUILD
	GateHwi_leave(m_gateHwi, gate_key);
#endif
	return res;
}

/**
 * @brief 插入数据到循环缓冲区头部
 * @param char* data, 写入数据指针
 * @param int data_length，写入数据长度
 * @return 最终写入长度
 */
template<class T>
int CircularBuffer<T>::InsertData(const T* data, int data_length) {
#ifndef X86_BUILD
	uint32_t gate_key;
	//使用读写互斥量，防止线程冲突
	gate_key = GateHwi_enter(m_gateHwi);
#endif
	assert(data != NULL);
	int res = ERROR_NONE;
	int write_length = 0;
	if (data_length == 0 || m_buffer == NULL) {
		goto END;
	}

	if (data_length < m_buffer_total_length - m_buffer_cur_length) {
		write_length = data_length;
	} else {
		write_length = m_buffer_total_length - m_buffer_cur_length;
	}

	//     W|                          R|
	//------------------------------------------读指针在后，写指针在前，不包含读写指针重合情况
	//WR|
	//------------------------------------------初始时，读写指针均为0
	if (m_write_pointer < m_read_pointer) {
		m_read_pointer -= write_length; //写入数据指针后移
		memcpy(m_read_pointer, data, sizeof(T) * write_length); //复制数据
	}
	//      R|     W|
	//------------------------------------------写指针在后，读指针在前，或重合，且读指针之前剩余空间足够写入所有数据
	else if (m_read_pointer - m_buffer >= write_length) {
		m_read_pointer -= write_length;
		memcpy(m_read_pointer, data, sizeof(T) * write_length); //复制数据
	}
	//      R|                            W|
	//------------------------------------------写指针在后，读指针在前，且读指针之前剩余空间不够写入所有数据
	else {
		int split_length = write_length - (m_read_pointer - m_buffer);
		m_read_pointer = m_buffer + m_buffer_total_length - split_length;
		memcpy(m_read_pointer, data, sizeof(T) * split_length);
		memcpy(m_buffer, data + split_length,
				sizeof(T) * (write_length - split_length));
	}
	if (m_write_pointer >= m_buffer + m_buffer_total_length) {
		m_write_pointer -= m_buffer_total_length;
	}
	m_buffer_cur_length += write_length; //当前数据长度加上此次写入长度
	res = write_length;
	END:
#ifndef X86_BUILD
	GateHwi_leave(m_gateHwi, gate_key);
#endif
	return res;
}

/**
 * @brief 从循环缓冲区读取数据
 * @param char* data, 读取的数据存放缓冲区指针
 * @param int data_length，需要读取的数据长度
 * @return 最终读取数据长度
 */
template<class T>
int CircularBuffer<T>::ReadData(T* data, int data_length) {
#ifndef X86_BUILD
	uint32_t gate_key;
	//使用读写互斥量，防止线程冲突
	gate_key = GateHwi_enter(m_gateHwi);
#endif
	assert(data != NULL);
	int res = ERROR_NONE;
	int read_length = 0;
	if (data_length == 0 || m_buffer == NULL) {
		goto END;
	}

	if (data_length < m_buffer_cur_length) {
		read_length = data_length;
	} else {
		read_length = m_buffer_cur_length;
	}

	//      R|                       W|
	//------------------------------------------写指针在后，读指针在前，不包含读写指针重合情况
	if (m_write_pointer > m_read_pointer) {
		memcpy(data, m_read_pointer, sizeof(T) * read_length); //复制数据
		m_read_pointer += read_length; //读数据指针后移
	}
	//      W|          R|
	//------------------------------------------写指针在前，读指针在后，且读指针之后的数据足够此次读取
	else if (m_buffer_total_length - (m_read_pointer - m_buffer)
			>= read_length) {
		memcpy(data, m_read_pointer, sizeof(T) * read_length); //复制数据
		m_read_pointer += read_length; //读数据指针后移
		if (m_read_pointer >= m_buffer + m_buffer_total_length) {
			m_read_pointer -= m_buffer_total_length;
		}
	}
	//      W|                             R|
	//------------------------------------------写指针在前，读指针在后，且读指针之后的数据不够此次读取
	else {
		int split_length = m_buffer_total_length - (m_read_pointer - m_buffer);
		memcpy(data, m_read_pointer, sizeof(T) * split_length);
		memcpy(data + split_length, m_buffer,
				sizeof(T) * (read_length - split_length));
		m_read_pointer = m_buffer + read_length - split_length;
	}
	m_buffer_cur_length -= read_length; //当前数据长度减去此次读取长度
	res = read_length;

	END:
#ifndef X86_BUILD
	GateHwi_leave(m_gateHwi, gate_key);
#endif
	return res;
}

/**
 * @brief 从循环缓冲区读取数据
 * @param char* data, 读取的数据存放缓冲区指针
 * @param int data_length，需要读取的数据长度
 * @return 最终读取数据长度
 */
template<class T>
int CircularBuffer<T>::ReadDataInPlace(T* data, int data_length) {
#ifndef X86_BUILD
	uint32_t gate_key;
	//使用读写互斥量，防止线程冲突
	gate_key = GateHwi_enter(m_gateHwi);
#endif
	assert(data != NULL);
	int res = ERROR_NONE;
	int read_length = 0;
	if (data_length == 0 || m_buffer == NULL) {
		goto END;
	}

	if (data_length < m_buffer_cur_length) {
		read_length = data_length;
	} else {
		read_length = m_buffer_cur_length;
	}

	//      R|                       W|
	//------------------------------------------写指针在后，读指针在前，不包含读写指针重合情况
	if (m_write_pointer > m_read_pointer) {
		memcpy(data, m_read_pointer, sizeof(T) * read_length); //复制数据
		//m_read_pointer += read_length; //读数据指针后移
	}
	//      W|          R|
	//------------------------------------------写指针在前，读指针在后，且读指针之后的数据足够此次读取
	else if (m_buffer_total_length - (m_read_pointer - m_buffer)
			>= read_length) {
		memcpy(data, m_read_pointer, sizeof(T) * read_length); //复制数据
		//m_read_pointer += read_length; //读数据指针后移
		//if (m_read_pointer >= m_buffer + m_buffer_total_length) {
		//	m_read_pointer -= m_buffer_total_length;
		//}
	}
	//      W|                             R|
	//------------------------------------------写指针在前，读指针在后，且读指针之后的数据不够此次读取
	else {
		int split_length = m_buffer_total_length - (m_read_pointer - m_buffer);
		memcpy(data, m_read_pointer, sizeof(T) * split_length);
		memcpy(data + split_length, m_buffer,
				sizeof(T) * (read_length - split_length));
		//m_read_pointer = m_buffer + read_length - split_length;
	}
	//m_buffer_cur_length -= read_length; //当前数据长度减去此次读取长度
	res = read_length;

	END:
#ifndef X86_BUILD
	GateHwi_leave(m_gateHwi, gate_key);
#endif
	return res;
}

/**
 * @brief 从循环缓冲区读取数据指针
 * @param int pos，需要读取数据的位置
 * @return 读取的数据指针，没读到数据则返回null
 */
template<class T>
T* CircularBuffer<T>::ReadDataPtr(int16_t pos) {
#ifndef X86_BUILD
	//使用读写互斥量，防止线程冲突
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gateHwi);
#endif
	T* pointer = NULL;

	if (pos >= 0 && pos < m_buffer_cur_length) {
		pointer = m_read_pointer + pos;
		if (pointer >= m_buffer + m_buffer_total_length) {
			pointer -= m_buffer_total_length;
		}
	}
#ifndef X86_BUILD
	GateHwi_leave(m_gateHwi, gate_key);
#endif
	return pointer;
}

/**
 * @brief 将读指针前移一步
 * @param 无
 * @return 无
 */
template<class T>
void CircularBuffer<T>::Next() {
#ifndef X86_BUILD
	//使用读写互斥量，防止线程冲突
	uint32_t gate_key;
	gate_key = GateHwi_enter(m_gateHwi);
#endif
	if (m_buffer_cur_length > 0) {
		m_read_pointer++;
		if (m_read_pointer >= m_buffer + m_buffer_total_length) {
			m_read_pointer -= m_buffer_total_length;
		}
		m_buffer_cur_length--;
	}
#ifndef X86_BUILD
	GateHwi_leave(m_gateHwi, gate_key);
#endif
}


/**
 * @brief 获取循环缓冲区空闲长度
 * @param 无
 * @return 空闲长度
 */
template<class T>
int CircularBuffer<T>::EmptyBufLen() {
#ifndef X86_BUILD
	uint32_t gate_key;
	//使用读写互斥量，防止线程冲突
	gate_key = GateHwi_enter(m_gateHwi);
#endif
	int empty_buf_len = m_buffer_total_length - m_buffer_cur_length;
#ifndef X86_BUILD
	GateHwi_leave(m_gateHwi, gate_key);
#endif
	return empty_buf_len;
}

/**
 * @brief 获取循环缓冲区数据长度
 * @param 无
 * @return 数据长度
 */
template<class T>
int CircularBuffer<T>::BufLen() {
#ifndef X86_BUILD
	uint32_t gate_key;
	//使用读写互斥量，防止线程冲突
	gate_key = GateHwi_enter(m_gateHwi);
#endif
	int buf_len = m_buffer_cur_length;
#ifndef X86_BUILD
	GateHwi_leave(m_gateHwi, gate_key);
#endif
	return buf_len;
}

/**
 * @brief 获取循环缓冲区数据长度
 * @param 无
 * @return 数据长度
 */
template<class T>
void CircularBuffer<T>::ClearBuf() {
#ifndef X86_BUILD
	uint32_t gate_key;
	//使用读写互斥量，防止线程冲突
	gate_key = GateHwi_enter(m_gateHwi);
#endif
	m_buffer_cur_length = 0;
	m_write_pointer = m_buffer;
	m_read_pointer = m_buffer;
#ifndef X86_BUILD
	GateHwi_leave(m_gateHwi, gate_key);
#endif
}

#endif // AE8100_INCLUDE_CIRCULAR_BUFFER_H_
