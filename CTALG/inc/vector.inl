/**Copyright(C) 2012 A&E. All Rights Reserved.
 *Information in this file is the intellectual property of A&E, and may
 *contains trade secrets that must be stored and viewed confidentially.
 *
 * @file vector.h
 * @author 陈晓颖
 * @date 2012-1-4
 * @brief 本源文件包含向量与向量之间的操作算法内联函数的实现
 *
 */
 
/**
 * @brief  构造函数，将给定的数组指针赋值给m_data
 * @param  double data[3]：用来构造Vector的数组指针
 * @return 无
 */
inline Vector::Vector(double data[3]) {
	m_data[0] = data[0];
	m_data[1] = data[1];
	m_data[2] = data[2];
}
/**
 * @brief  构造函数，用指定的三个double值赋值给m_data
 * @param  double x：第一个元素值
 * @param  double y：第二个元素值
 * @param  double z：第三个元素值
 * @return 无
 */
inline Vector::Vector(double x, double y, double z) {
	m_data[0] = x;
	m_data[1] = y;
	m_data[2] = z;
}
/**
 * @brief  用已知向量的数据构造向量
 * @param  Vector& vector：指定向量
 * @return 无
 */
inline Vector::Vector(const Vector& vector) {
	m_data[0] = vector.m_data[0];
	m_data[1] = vector.m_data[1];
	m_data[2] = vector.m_data[2];
}
/**
 * @brief  对向量赋值
 * @param  double x：向量第一个元素的值
 * @param  double y：向量第二个元素的值
 * @param  double z：向量第三个元素的值
 * @return 无
 */
inline void Vector::SetValue(double x, double y, double z) {
	m_data[0] = x;
	m_data[1] = y;
	m_data[2] = z;
}
/**
 * @brief  用数组对向量赋值
 * @param  double data[3]：指定数组
 * @return 无
 */
inline void Vector::SetValue(double data[3]) {
	m_data[0] = data[0];
	m_data[1] = data[1];
	m_data[2] = data[2];
}
/**
 * @brief  将一个向量的data数值复制到m_data中
 * @param  Vector& vector：指定向量
 * @return 赋值后的vector
 */
inline Vector& Vector::operator =(const Vector& vector) {
	m_data[0] = vector.m_data[0];
	m_data[1] = vector.m_data[1];
	m_data[2] = vector.m_data[2];
	return *this;
}
/**
 * @brief  判断两个向量是否相等
 * @param  Vector& vector：指定向量
 * @return true：两个向量相等；false：两个向量不相等
 */
inline bool Vector::operator ==(const Vector& vector) const{
	if(fabs(vector.m_data[0] - m_data[0]) > ZERO) {
		return false;
	}
	if(fabs(vector.m_data[0] - m_data[0]) > ZERO) {
		return false;
	}
	if(fabs(vector.m_data[0] - m_data[0]) > ZERO) {
		return false;
	}
	return true;
}
/**
 * @brief  判断两个向量是否不相等
 * @param  Vector& vector：指定向量
 * @return true：两个向量不相等；false：两个向量相等
 */
inline bool Vector::operator !=(const Vector& vector) const{
	if(fabs(vector.m_data[0] - m_data[0]) > ZERO) {
		return true;
	}
	if(fabs(vector.m_data[1] - m_data[1]) > ZERO) {
		return true;
	}
	if(fabs(vector.m_data[2] - m_data[2]) > ZERO) {
		return true;
	}
	return false;
}
/**
 * @brief  取Vector数据中某一个元素
 * @param  uint32_t index：指定的元素下标
 * @return 指定下标的元素值
 */
inline double Vector::operator [](int index) const {
	return m_data[index];
}
/**
 * @brief  两个向量相加，返回向量的和
 * @param  Vector& vector：所要加的向量
 * @return 两个向量的和
 */
inline Vector Vector::operator +(const Vector& vector) const {
	double data[3] = {m_data[0]+vector.m_data[0], m_data[1]+vector.m_data[1], m_data[2]+vector.m_data[2]};
	return Vector(data);
}
/**
 * @brief  计算两个向量的和，结果放在本实例中
 * @param  Vector& vector：所要加的向量
 * @return 加上给定向量之后的向量值
 */
inline Vector& Vector::operator +=(const Vector& vector) {
	m_data[0] += vector.m_data[0];
	m_data[1] += vector.m_data[1];
	m_data[2] += vector.m_data[2];
	return *this;
}
/**
 * @brief  两个向量相加，返回向量的差，不改变原来向量的值
 * @param  Vector& vector：所要减的向量
 * @return 两个向量的差
 */
inline Vector Vector::operator -(const Vector& vector) const {
	double data[3] = {m_data[0]-vector.m_data[0], m_data[1]-vector.m_data[1], m_data[2]-vector.m_data[2]};
	return Vector(data);
}
/**
 * @brief  计算两个向量的差，改变原来向量的值
 * @param  Vector& vector：所要减的向量
 * @return 减去给定向量之后的向量值
 */
inline Vector& Vector::operator -=(const Vector& vector) {
	m_data[0] -= vector.m_data[0];
	m_data[1] -= vector.m_data[1];
	m_data[2] -= vector.m_data[2];
	return *this;
}
/**
 * @brief  计算两个向量的乘积
 * @param  Vector& vector：所要乘的向量
 * @return 两个向量的乘积
 */
inline double Vector::operator *(const Vector& vector) const {
	return (m_data[0]*vector.m_data[0] + m_data[1]*vector.m_data[1] + m_data[2]*vector.m_data[2]);
}
/**
 * @brief  计算两个向量的叉积
 * @param  Vector& vector：所要叉乘的向量
 * @return 两个向量的叉积
 */
inline Vector Vector::Cross(const Vector& vector) const {
	//叉积公式：u x v = { u2v3-v2u3 , u3v1-v3u1 , u1v2-u2v1 }
	double data[3] = {m_data[1]*vector[2] - vector[1]*m_data[2], m_data[2]*vector[0] - vector[2]*m_data[0], m_data[0]*vector[1] - vector[0]*m_data[1]};
	return Vector(data);
}
/**
 * @brief  得到向量的相反值，不改变原来向量的值
 * @param  const Vector& vector：指定向量
 * @return 向量的相反值
 */
inline Vector Vector::operator -() const {
	double data[3] = {-m_data[0], -m_data[1], -m_data[2]};
	return Vector(data);
}
/**
 * @brief  向量按照指定值进行放大，不改变原来的向量值
 * @param  double ratio：指定的放大值
 * @return 放大后的向量值
 */
inline Vector Vector::operator *(double ratio) const {
	double data[3] = {m_data[0] * ratio, m_data[1] * ratio, m_data[2] * ratio};
	return Vector(data);
}
/**
 * @brief  向量放大一个指定值，并将缩放后的值替换原来的值
 * @param  double ratio：指定的放大值
 * @return 放大后的向量值
 */
inline Vector& Vector::operator *=(double ratio) {
	m_data[0] *= ratio;
	m_data[1] *= ratio;
	m_data[2] *= ratio;
	return *this;
}
/**
 * @brief  向量按照指定值进行缩小，不改变原来的向量值
 * @param  double ratio：指定的缩小值
 * @return 缩小后的向量值
 */
inline Vector Vector::operator /(double ratio) const {
	ratio = 1.0 / ratio;
	double data[3] = {m_data[0] * ratio, m_data[1] * ratio, m_data[2] * ratio};
	return Vector(data);
}
/**
 * @brief  向量缩小一个指定值，并将缩放后的值替换原来的值
 * @param  double ratio：指定的缩小值
 * @return 缩小后的向量值
 */
inline Vector& Vector::operator /=(double ratio) {
	ratio = 1.0 / ratio;
	m_data[0] *= ratio;
	m_data[1] *= ratio;
	m_data[2] *= ratio;
	return *this;
}
/**
 * @brief  得到向量的模
 * @param  无
 * @return 向量的模
 */
inline double Vector::Norm() const {
	return sqrt(m_data[0]*m_data[0] + m_data[1]*m_data[1] + m_data[2]*m_data[2]);
}
/**
 * @brief  得到与另外一个向量的差的模
 * @param  Vector& vector：指定另外一个向量
 * @return 与另外一个向量的差的模
 */
inline double Vector::Norm(Vector& vector) const {
	return sqrt(pow(vector.m_data[0] - m_data[0], 2) + pow(vector.m_data[1] - m_data[1], 2) + pow(vector.m_data[2] - m_data[2], 2));
}
/**
 * @brief  将已知向量化为一个单位向量
 * @param  无
 * @return 单位化后的向量
 */
inline Vector Vector::Normalize() {
	double norm = this->Norm();
	if(norm > ZERO) {
		*this /= norm;
	}
	return *this;
}

/**
 * @brief  判断向量是否为零向量
 * @param  无
 * @return true：向量为零向量；false：向量不为零向量
 */
inline bool Vector::IsZero() const {
	if(fabs(m_data[0]) > ZERO) {
		return false;
	}
	if(fabs(m_data[1]) > ZERO) {
		return false;
	}
	if(fabs(m_data[2]) > ZERO) {
		return false;
	}
	return true;
}
/**
 * @brief  给定一个界限值，当指定两个向量每个元素之间的差小于此值时，认为两个向量相等
 * @param  const Vector& a：第一个向量
 * @param  const Vector& b：第二个向量
 * @return true：两个向量相等；false：两个向量不相等
 */
inline bool Equal(const Vector& a,const Vector& b,double eps) {
    return (fabs(a.x() - b.x()) <= eps) &&
    		(fabs(a.y() - b.y()) <= eps) &&
    		(fabs(a.z() - b.z()) <= eps);
}
/**
 * @brief  判断两个向量是否平行
 * @param  const Vector& vector：判断是否平行的向量
 * @return true：两个向量相等；false：两个向量不相等
 */
inline bool Vector::IsParallel(const Vector& vector) {
	if((fabs(vector[0] * m_data[1] - vector[1] * m_data[0]) < ZERO)
	&& (fabs(vector[0] * m_data[2] - vector[2] * m_data[0]) < ZERO)
	&& (fabs(vector[1] * m_data[2] - vector[2] * m_data[1]) < ZERO)) {
		return true;
	}
	return false;
}
/**
 * @brief  将向量中的数据输出给指定的数组
 * @param  double data[3]：输出到的数组
 * @return 无
 */
//将向量的值赋值给指定数组
inline void Vector::Output(double data[3]) const {
	data[0] = m_data[0];
	data[1] = m_data[1];
	data[2] = m_data[2];
}
/**
 * @brief  打印Vector的信息
 * @param  无
 * @return 无
 */
inline void Vector::print() const {
	printf("向量信息：%f,%f,%f，模：%f\n", m_data[0], m_data[1], m_data[2], Norm());
}
