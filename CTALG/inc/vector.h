/**Copyright(C) 2012 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file vector.h
 * @author 陈晓颖
 * @date 2013-1-4
 * @brief 本源文件包含向量与向量之间的操作算法函数声明
 *
 */

#ifndef VECTOR_H_
#define VECTOR_H_

#include <math.h>
#include <stdio.h>

/**
 * @brief 向量计算类
 */
class Vector {
public:
	//无参构造函数
	inline Vector() {};
	//构造函数，将指定数组的指针赋值给m_data
	inline Vector(double data[3]);
	//构造函数，用指定的三个double值赋值给m_data
	inline Vector(double x, double y, double z);
	//用已知向量的数据构造向量
	inline Vector(const Vector& vector);

	//对向量赋值
	inline void SetValue(double x, double y, double z);
	//用数组对向量赋值
	inline void SetValue(double data[3]);

	double x() const {return m_data[0];}
	double y() const {return m_data[1];}
	double z() const {return m_data[2];}

	//将一个向量的data数值复制到m_data中
	inline Vector& operator =(const Vector& vector);
	//判断两个向量是否相等
	inline bool operator ==(const Vector& vector) const;
	//判断两个向量是否不相等
	inline bool operator !=(const Vector& vector) const;
	//取Vector数据中某一个元素
	inline double operator [](int index) const;
	//向量加另外一个向量，不改变向量原来的值
	inline Vector operator +(const Vector& vector) const;
	//计算两个向量的和，结果放在第一个向量中
	inline Vector& operator +=(const Vector& vector);
	//两个向量相减，返回向量的差
	inline Vector operator -(const Vector& vector) const;

	//计算两个向量的差，结果放在第一个向量中
	inline Vector& operator -=(const Vector& vector);
	//计算两个向量的乘积
	inline double operator *(const Vector& vector) const;
	//计算两个向量的叉积
	inline Vector Cross(const Vector& vector) const;
	//向量元素取反
	inline Vector operator -() const;
	//向量按照指定值进行放大，不改变原来的向量值
	inline Vector operator *(double ratio) const;
	//向量按照指定值进行放大，并将放大后的值替换原来的值
	inline Vector& operator *=(double ratio);
	//向量按照指定值进行缩小，不改变原来的向量值
	inline Vector operator /(double ratio) const;
	//向量按照指定值进行缩小，并将缩小后的值替换原来的值
	inline Vector& operator /=(double ratio);
	//得到向量的模
	inline double Norm() const;
	//得到与另外一个向量的差的模
	inline double Norm(Vector& vector) const;

	//将向量单位化
	inline Vector Normalize();

	//判断向量是否为零向量
	inline bool IsZero() const;

	//给定一个界限值，当指定两个向量每个元素之间的差小于此值时，认为两个向量相等
	inline bool Equal(const Vector& a,const Vector& b,double eps);
	//判断两个向量是否平行
	inline bool IsParallel(const Vector& vector);

	//将向量的值赋值给指定数组
	inline void Output(double data[3]) const;

	//打印Vector的信息
	inline void print() const;
private:
	double m_data[3];
};

#include "vector.inl"
#endif /* VECTOR_H_ */
