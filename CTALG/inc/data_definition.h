#ifndef DATA_DEFINITION_H_
#define DATA_DEFINITION_H_

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdarg.h>

const int MAX_AXIS_NUM = 64; //支持的最大轴数，包括主轴
const int MAX_M_PER_LINE = 3; //支持一行中多个M
const int MAX_EXTRA_DATA_NUMBER = 12; //每个通道支持最大附加信息个数
const double PI = 3.1415926535897932384626433832795;
const double TWO_PI = 6.2831853071795864769252867665590;

const int RESET_VALID_NUM = 20;
const int PAUSE_VALID_NUM = 20;

const int MAX_FILE_NAME_LEN = 256;
const int MAX_MESSAGE_LENGTH = 38;
//g代码组个数
const int G_CODE_GROUP_NUM = 32;

// 螺距误差表最大长度
const int SCREW_COMP_TABLE_MAX_LEN = 1000;
const int DATA_PACKAGE_SIZE = 16384;		 	//数据包最大长度
const int NCC_DATA_PACKAGE_HEADER_SIZE = 8;	  	//NCCCmd数据包头大小

//刀库相关
const int MAX_TOOL_NUM = 100;					//最大刀具数
const int MAX_POT_NUM = 100;					//最大刀套数

const double ZERO = 1.0E-8;	 				//判断double类型数据是否为零的标准，如果其绝对值小于此值，则视为零

//系统最大位置值
const double MAX_POSITIVE_POS = 100.0;
const double MAX_NEGATIVE_POS = -100.0;

//系统保存IO状态个数
const int IO_NUM = 64;

const double ROTARY_AXIS_DIS_PER_R = 0.36; //旋转轴每转距离，单位：kdeg

#define IS_ZERO(num) (fabs(num)<1E-8) // 判断数据是否为0

/*
 * @brief M代码
 */
enum MCode {
	M00 = 0, 	//程序暂停
	M01, 		//选停
	M02, 		//程序停止，停留在最后一行
	M03, 		//主轴正转
	M04, 		//主轴反转
	M05, 		//主轴停转
	M06, 		//换刀
	M07,        //开冷却气
	M08 = 8, 	//开冷却水
	M09, 		//关冷却气和冷却水
	M10, 		//主轴夹头夹紧
	M11, 		//主轴夹头松开
	M18 = 18, 	//取消主轴定向
	M19, 		//主轴定向
	M22 = 22, 	//机械手动作
	M23, 		//刀套倒下
	M24, 		//刀套提起
	M29 = 29, 	//刚性攻丝
	M30,		//程序停止，返回程序第一行
	M32 = 32,	//开润滑
	M33,		//关润滑
	M80 = 80,	//断刀检测设置
	M81,		//断刀检测
	M99 = 99,	//子程序结束
	M100,       //固定循环内的单段标记，20140418pang
	M203 = 203,	//主轴位置控制正转
	M204,		//主轴位置控制反转
	M205,		//主轴位置控制停转
	M206,		//主轴切换成速度模式
	M207,		//主轴切换成位置模式
	M500 = 500, //固定循环开始
	M501, 		//固定循环结束
	M502,		//攻丝循环开始
	M503,		//攻丝循环结束
	M600 = 600,	//X轴未回参考点
	M601,		//Y轴未回参考点
	M602,		//Z轴未回参考点
	M603,		//4轴未回参考点
	MAX_M_NUM = 1000
};

/*
 * @brief 加工状态
 */
enum MachiningState {
	READY = 0, //准备好（空闲）状态
	RUNNING, //运行状态
	SIMULATING, //仿真中
	TOOL_TRACE_CHECKING, //刀路检查中
	PAUSING, //暂停过程中
	PAUSE, //暂停状态
	REF_POINT_RETURNING, //参考点返回中
	WARNING	//系统告警
};

/*
 * @brief 速度控制方式
 */
enum {
	CUTTING_MODE = 0,		//切削方式
	TAPPING_MODE,			//G63攻丝方式
	ACCURATE_STOP_MODE,		//G61(G09)准确停止
	AUTO_TURN_RATIO			//G62自动拐角倍率
};

//插补附加信息
enum ExtraDataType {
	EX_I = 0,	//I
	EX_J,	//J
	EX_K,	//K
	EX_I1,	//I1
	EX_J1,	//J1
	EX_K1,	//K1
	EX_R,	//R
	EX_AR,	//AR张角
	EX_Q,	//半径增减量
	EX_L,	//循环次数
	EX_RP,	//RP极径
	EX_AP	//AP极角
};


/*
 * @brief 轴类型
 */
enum AxisType {
	LINEAR_AXIS = 0, //直线轴
	ROTARY_AXIS, //旋转轴
	SPINDLE_AXIS,//主轴
	TOOL_MAGAZINE_AXIS,//刀库轴
	INVALID_AXIS //轴无效
};

//通道模式
enum ChannelMode {
	INVALID_MODE = 0, EDIT_MODE, //编辑模式
	MANUAL_MODE, //手动
	MDA_MODE, //MDA
	AUTO_MODE, //自动
	MPG_MODE, //手轮
	RETURN_REF_MODE //自动回参考点模式
};

/*
 * @brief NCC内部各模块之间的通信命令字，0x0001~0xFFFE(1~65534)有效
 * 1-1000：PDE，HMI 交互命令
 * 1001-2000：HMI，NCC-SM 交互命令
 * 2001-3000：NCC-SM，NCC-CT 交互命令
 * 3001-5000：NCC-SM 内部命令
 * 5001-7000：NCC-CT 内部命令
 * 7001-7500：NCC-CT，PCC 交互命令
 */
enum NCCCmdNumber {
	//HMI，NCC-SM 交互命令
	IS_HMI_READY_FROM_NCC_SM = 1001, //NCC-SM查询HMI是否准备好
	HMI_IS_READY_TO_NCC_SM, //HMI告知NCC-SM已准备好
	IS_NCC_SM_READY_FROM_HMI, //HMI查询NCC-SM是否准备好
	NCC_SM_IS_READY_TO_HMI, //NCC-SM告知HMI已准备好
	UPDATE_NCC_SM_CONFIG = 1030, //更新NCC-SM配置参数，HMI发送给NCC-SM
	RESET_CONFIG, //恢复出厂设置
	UPDATE_NCC_SM_STATE, //更新NCC-SM状态，NCC-SM发送给HMI
	NEW_ALARM_FROM_NCC_SM, //NCC-SM通知HMI有新的告警
	CLEAR_ALARM_HISTORY, //HMI通知NCC-SM清除告警历史
	CLEAR_CUR_ALARM, //HMI通知NCC-SM清除当前告警
	UPDATE_PLC_STATE, //NCC-SM通知HMI PLC状态有更新
	ACTIVATE_CONFIG_MODIFICATION, //激活参数修改
	CYCLE_START_FROM_HMI = 1040, //HMI发送给NCC-SM开始加工
	CYCLE_PAUSE_FROM_HMI, //HMI发送给NCC-SM暂停加工
	CYCLE_RESTART_FROM_HMI, //HMI发送给NCC-SM加工复位,cmd_extension=行号
	SIMULATE_FROM_HMI, //HMI发送给NCC-SM加工仿真
	SIMULATE_PAUSE_FROM_HMI, //HMI发送给NCC-SM仿真暂停
	SIMULATE_RESTART_FROM_HMI, //HMI发送给NCC-SM从第N行开始仿真,cmd_extension=行号
	TOOL_TRACE_CHECK_FROM_HMI, //HMI发送给NCC-SM刀路检查
	RETURN_TO_REF_POS_FROM_HMI, //HMI发送给NCC-SM回参考点
	NC_FILE_READY, //HMI发送给NCC-SM加工文件已准备好
	PLC_FILE_READY, //HMI发送给NCC-SM的plc程序已准备好
	PLC_STOP, //PLC扫描暂停
	PLC_READ_REG, //HMI读取PLC状态
	PLC_SET_REG, //HMI设置PLC状态
	PLC_REG_DATA, //PLC发送状态给HMI
	REQUEST_FOR_CYCLE_START, //NCC-SM向HMI请求开始加工，AUTO和MDA共用此命令
	SEND_TSM_SETTING, //HMI发送TSM设置给NCC-SM
	INVALID_OPERATION, //NCC-SM发送给HMI的非法操作提示，cmd_extension=非法操作类型
	HMI_MENU_OPERATION, //HMI菜单操作，data为菜单名字符串
	SYSTEM_POWER_DOWN, //系统断电，HMI收到此命令后需要执行保存参数等动作
	HEARTBEAT_HMI, //HMI心跳信号
	HEARTBEAT_NCC_SM, //NCC-SM心跳信号
	CONFIG_UPDATED_BY_NCC, //配置信息被NCC修改，cmd_extension=参数的数组内下标，data[0:3]=id，[4:11]=value
	SET_CUR_POS_AS_CS, //设置当前位置为坐标系原点，cmd_extension=cs id，1：G54...6:G59
	RESET_SYMBOL_UPDATE, //通知更新复位起效的系统变量
	HW_AXIS_SELECT, //手轮轴选，cmd_extension=轴序号
	HMI_MODIFY_PARA_FAILED, //HMI修改参数失败，cmd_extension=参数ID
	MCP_BUTTON_PRESSED, //MCP按键状态改变
	CLEAR_SYS_RUN_INFO, //清除系统运行信息
	MODIFY_PART_COUNT, //修改加工计件，cmd_extension = 要修改的计件数
	REBOOT_SYSTEM, //系统重启
	NC_CONFIG_SAVED, //NC参数保存完毕
	DELETE_TOOL, //删除刀具，cmd_extension = 删除的刀具号
	AUTHENTICATE_FAIL, //鉴权失败
	AUTHENTICATE_TRIAL_VERSION, //当前为试用版本
	AUTHENTICATE_TRIAL_EXPIRED, //试用版本过期
	UPDATE_REQEST, //HMI请求NCCSM，扫描远程更新服务器地址
	UPDATE_PROCESS, //HMI请求NCCSM，运行更新操作
	GET_HOST_IP_FAIL, //本机未获得IP地址，未能接入IP网络
	DETECT_SERV_FAIL, //扫描远程更新服务器失败，无任何服务器响应
	DETECT_SERV_SUCCESS, //扫描远程更新服务器成功，扫描到的服务器地址将发送给HMI
	CONNECT_SERVER_FAIL, //连接更新服务器失败
	UPDATE_REJECT, //无权更新，拒绝申请
	GET_CURRENT_VERSION_FAIL, //获取本地程序版本号失败
	RECEIVE_VERSION_FAIL, //接收更新文件版本号失败
	LATEST_VERSION, //最新版本，无须更新
	UPDATE_FAIL, //更新文件下载失败
	UPDATE_SUCCESS, //更新文件下载成功
	TOOL_MAGAZINE_ZERO_POINT_ALARM, //伺服刀库零点丢失报警
	TRACE_PREVIEW_START_FROM_HMI, //开始轨迹预览
	TRACE_PREVIEW_PAUSE_FROM_HMI, //轨迹预览暂停
	TRACE_PREVIEW_RESTART_FROM_HMI, //轨迹预览复位
	TRACE_DATA_WRITE_COMPLETE, //轨迹数据更新完毕，cmd_extension=0,1，pingpong buffer index
	TRACE_DATA_READ_COMPLETE, //轨迹数据读取完毕，cmd_extension=0,1，pingpong buffer index
	PLC_FILE_MATCH_FAIL, //PLC文件匹配失败
	AUTO_TOOL_MEASURE, //自动测量刀具长度，
	AUTO_TOOL_MEASURE_COMPLETE, //自动测量刀具结束，cmd_extension:是否测量成功

	//NCC-SM，NCC-CT 交互命令
	IS_NCC_SM_READY_FROM_NCC_CT = 2001, //NCC-CT查询NCC-SM是否准备好
	NCC_SM_IS_READY_TO_NCC_CT, //NCC-SM告知NCC-CT已准备好
	IS_NCC_CT_READY_FROM_NCC_SM, //NCC-SM查询NCC-CT是否准备好
	NCC_CT_IS_READY_TO_NCC_SM, //NCC-CT告知NCC-SM已准备好
	STOP_NCC_CT,
	REQUEST_CONTINUE_FROM_NCC_SM, //NCC-SM向NCC-CT请求开始加工
	REQUEST_PAUSE_FROM_NCC_SM, //NCC-SM向NCC-CT请求暂停加工
	REQUEST_RESET_FROM_NCC_SM, //NCC-SM向NCC-CT请求复位
	REQUEST_RESET_FEEDBACK, //请求复位命令反馈，cmd_extension:0:失败，1：成功
	GPIO_CONFIGED, //NCC-CT通知NCC-SM GPIO已配置
	REQUEST_FOR_CHANGE_MODE, //NCC-SM向NCC-CT请求切换模式
	FEEDBACK_FOR_CHANGE_MODE, //请求切换模式反馈，cmd_extension:0:失败，1：成功
	REQUEST_FOR_RETURN_REF, //NCC-SM向NCC-CT请求回参考点, cmd_extension:0:取消回参考点，1：开始回参考点
	FEEDBACK_FOR_RETURN_REF, //请求回参考点反馈，cmd_extension:0:失败，1：成功
	SEND_NCC_CT_VERSION, //发送NCC-CT版本号
	SEND_IP_ADDR, //发送IP地址

	UPDATE_NCC_CT_CONFIG = 2027, //更新NCC-CT单个配置参数，NCC-SM发送给NCC-CT，cmd_extension=index, data[0:3]=id, data[4:11]=value
	SEND_NCC_CT_CONFIG, //发送NCC-CT配置参数，cmd_extension=参数类型，data[0]=index
	RECEIVE_NCC_CT_CONFIG, //接收NCC-CT配置参数单次完成
	SEND_NCC_CT_CONFIG_COMPLETE, //发送NCC-CT配置参数完成
	NEW_ALARM_FROM_NCC_CT, //NCC-CT通知NCC-SM有新的告警
	UPDATE_SPINDLE_RATIO, //更新主轴倍率,cmd_extension=倍率值
	UPDATE_AUTO_RATIO, //更新自动倍率,cmd_extension=倍率值
	UPDATE_RAPID_RATIO, //更新快速倍率,cmd_extension=倍率值
	UPDATE_MANUAL_RATIO, //更新手动倍率,cmd_extension=倍率值
	UPDATE_MANUAL_STEP, //更新手动步长,cmd_extension=步长类型
	CHANGE_CHANNEL_MODE, //切换通道模式
	INTERPOLATION_PAUSE, //插补器暂停
	INTERPOLATION_CONTINUE, //插补器继续
	PLC_PROGRAM_READY, //plc代码已更新至共享缓冲区
	PLC_HAS_STOPPED, //plc扫描已暂停
	SEND_LINE_DATA, //发送程序编译后数据给NCC-CT
	MACHINING_FINISHED, //加工结束
	UPDATE_LINE_DATA_QUEUE_STATE, //更新LineData队列的状态, cmd_extension :是否处于满的状态
	INTERPOLATION_PAUSED, //插补暂停到位
	SAVE_CONFIG, //保存配置参数，NCC-CT发送给NCC-SM，更新后的数据放入共享缓冲区
	SET_SIMULATING_MODE, //设置仿真模式，cmd_extension=0:正常加工，1：加工仿真
	MACHINING_RESET, //加工数据清零，用于开始加工时
	RETURN_TO_REF_POS, //回参考点
	REF_POS_REACHED, //参考点到位，cmd_extension:轴号
	RESET, //复位
	MACHINE_LOCK, //机床锁住,cmd_extension:是否开启
	MACHINE_AUXILIARY_LOCK, //机床辅助功能锁住,cmd_extension:是否开启
	M_CODE_PROCESSED, //NCC-CT发送M代码已执行命令给NCC-SM，cmd_extension=M代码
	IO_STATE_ON, //IO开关,cmd_extension = 是否开启
	EMERGENCY_STOP, //急停，cmd_extension=急停状态，0：急停松开；1：急停按下
	PLC_EMERGENCY_STOP, //PLC急停
	SYSTEM_ALARM_STATE, //系统告警状态，cmd_extension=0:无告警，1：有error级别以上告警，2：有warning或提示信息
	SEND_LIGHT_STATE, //发送按键灯状态给PLC
	SEND_FPGA_FILE, //NCC-SM通知NCC-CT发送FPGA数据包,cmd_extension=0:发送中间数据包，1：发送最后一个数据包
	FPGA_FILE_RECEIVED, //NCC-CT通知NCC-SM已接收FPGA数据包
	PROGRAM_LOCK, //程序锁
	PLC_ALARM, //PLC告警
	LIGHT_STATE, //灯状态
	SEND_FPGA_VERSION, //发送FPGA版本号
	SEND_PLC_VERSION, //发送PLC版本号
	RECONFIG_FPGA_REQUEST, //重新配置FPGA请求
	HEARTBEAT_NCC_CT, //NCC-CT心跳信号
	CYCLE_START_FEEDBACK, //开始加工命令反馈，cmd_extension:0:失败，1：成功
	CYCLE_PAUSE_FEEDBACK, //暂停加工命令反馈，cmd_extension:0:失败，1：成功
	CUR_MACHINING_INFO, //提示给用户的当前加工信息，cmd_extension:提示信息ID
	CLOSE_CUR_MACHINING_INFO, //关闭当前提示的加工信息，cmd_extension:提示信息ID
	IS_CONFIG_ERR, //参数配置是否有误，cmd_extension:0:无误；1：有误
	PLC_HAS_RUN, //plc扫描已开始
	TRANSFER_DEBUG_DATA, //传输调试数据，cmd_extension:数据缓冲区序号
	SET_NCC_SM_CONFIG, //CT通知SM修改配置参数，extension:参数id
	MACHINING_RESET_COMPLETE, //加工数据清零完成
	HW_TRACE, //手轮跟踪，cmd_extension:0:关闭；1：开启
	SAFE_DOOR_STATE, //安全门状态
	SERVO_TOOL_MAGAZINE, //是否为伺服刀库
	CLEAR_SPECIFIC_ALARM, //清除特定告警
	LINE_PROCESSED_BY_CT, //该行在CT已经运行
	TSM_COMPLETE, //NCC-CT通知NCC-SM TSM设置完成
	RESET_REF_STATE, //复位回参考点状态
	SET_RESTART_LINE_NO, //NCC-SM通知NCC-CT加工复位行号

	//NCC-SM 内部命令
	NEW_ALARM_FROM_MONITOR = 3001, //状态监控发现新的告警
	MCP_KEY_INFO, //MCP按键信息
	MCP_LIGHT_STATE, //MCP按键灯状态
	CYCLE_START, //MCP按键开始加工
	CYCLE_PAUSE, //MCP按键暂停加工
	MANUAL_RAPID_MOVE, //手动快速移动
	MANUAL_MOVE_POSITIVE, //手动正向移动
	MANUAL_MOVE_NEGATIVE, //手动负向移动
	MANUAL_MOVE_STOP, //手动移动停止
	SINGLE_BLOCK_MODE, //单段模式开关
	OPT_STOP_MODE, //选停模式开关
	BLOCK_SKIP_MODE, //跳段模式开关
	DRY_RUN_MODE, //空运行模式开关
	UPDATE_REALTIME_STATE, //更新通道实时状态到共享缓冲区
	GET_NCC_CT_STATE, //获取NCC-CT状态
	GET_NCC_CT_RT_STATE, //获取NCC-CT实时状态
	IS_MSG_QUE_FULL, //消息队列是否满
	G00_RATIO_ADJUST, //G00倍率按键是否按下，cmd_extension=是否开启
	UPDATE_SYSTEM_INFO, //更新系统信息（版本号），供HMI读取
	UPDATE_MCP_VERSION, //更新MCP版本号
	RECONFIG, //重新配置
	RESET_SYMBOL_UPDATE_COMPLETE, //更新复位起效的系统变量完成
	SEND_TRACE_PREVIEW_DATA, //发送轨迹预览数据
	GET_DEBUG_REALTIME, //获取宏变量#5021～#5024，当前各轴位置
	PAUSE_MCP, //暂停MCP扫描

	//NCC-CT内部命令
	SEND_LOG_TRACE = 5000, //发送日志给NCC-SM
	SEND_ALARM_INFO, //发送告警信息给NCC-SM
	GET_LINE_DATA, //获取编译数据
	SEND_TARGET_POS, //发送目标位置给轴控制
	UPDATE_REALTIME_STATE_CT, //NCC-CT更新实时状态
	PRE_SEL_TOOL, //预选刀，data中存放2个uint16_t值，分别为还刀刀套号和送刀刀套号
	CHANGE_TOOL, //换刀
	HARD_LIMIT_REACHED, //硬限位到达
	HANDWHEEL_START, //手轮开始
	HANDWHEEL_STOP, //手轮停止
	HW_MOVE_POSITIVE, //手轮正向移动
	HW_MOVE_NEGATIVE, //手轮负向移动
	HW_MOVE_STOP, //手轮移动停止
	PROCESS_AXIS_EXCEED_LIMIT, // 处理轴位置超程
	HEARTBEAT_PLC, //PLC心跳信号
	RESET_RET_REF_STATE, //重置回参考点状态
	AXIS_RESET_ALARM, //清除报警
	HW_TRACE_RATIO, //手轮跟踪倍率
	RESET_PLC_ALARM, //清除PLC告警
	RAPID_STOP_REQUEST, //请求快速停止
	CHECK_SOFT_LIMIT, //检查软件限位

	SPINDLE_SPEED_OUT = 5500, //主轴速度输出
	SPINDLE_POS_OUT, //主轴位置输出
	AIXS_DRIVE_OUT, //进给轴驱动输出
	SPINDLE_DIRECTION, //主轴方向（0：正转，1：反转）
	SPINDLE_ALARM_CLEAR, //主轴报警清除
	SPINDLE_POS_CONTROL, //主轴位置控制使能，1：位置控制；0：速度控制
	AXIS_ENABLE, //进给轴使能
	DRIVE_ALARM_CLEAR, //驱动器报警清除
	MONITOR_DRIVE_ALARM, //检测驱动器告警
	SPINDLE_ORIENT, //主轴定位
	RESTORE_SPINDLE_STATE, //恢复主轴定向前状态
	SET_MOTOR_CUR_POS, //设置电机当前位置
	CHECK_GPIO, //检查GPIO是否需要设置

	//与NCC-CI交互命令
	IS_NCC_CT_READY_FROM_NCC_CI = 7501, //NCC-CI查询NCC-CT是否准备好
	NCC_CI_IS_READY, //NCC-CI告知NC已准备好
	STOP_NCC_CI,
	HEARTBEAT_NCC_CI, //NCC-CI心跳信号
	SET_NCC_CI_CONFIG, //CI通知CI修改配置参数，extension:参数id
	GET_MCP_VERSION,
	GET_BIO_VERSION,
	SEND_RTEX_VERSION,
	SEND_MCP_VERSION,
	SEND_BIO_VERSION,
	SYSTEM_REBOOT, //系统重启
	UPDATE_NCC_CI_CONFIG, //更新NCC-CI配置参数
	SEND_FILE_TO_NCC_CI, //发送文件给NCC-CI
	SEND_TRACE_TO_NCC, //发送TRACE到NCC
	SEND_LOG_TO_NCC, //发送LOG到NCC
	SEND_ALARM_TO_NCC, //发送ALARM到NCC
	SEND_PLC_DATA_TO_NCC, //发送PLC数据到NCC
	SEND_NCC_CI_VERSION, //发送NCC-CI版本号

	//CI与RTEX交互
	HEARTBEAT_RTEX = 8000,
	AXIS_DISABLE,
	AXIS_RUN_HOME, //伺服轴自动回零点，cmd_extension:轴号
	AXIS_HOMED, //伺服轴回零点结束，cmd_extension:轴号
	CLEAR_HOMED_LOCK, //伺服轴回零点清除, cmd_extension:轴号
	CANCEL_RETURN_HOME, //伺服轴取消回零点，cmd_extension:轴号
	READ_ALARM, //读取报警
	RESET_RTEX, //复位RTEX
	SERVO_ON, //打开伺服
	SERVO_OFF, //关闭伺服
	CLEAR_ALARM, //清除报警
	PARAM_READ, //参数读取
	PARAM_WRITE, //参数写入
	HOME, //回起始点
	NORMAL,
	SYSTEM_ID, //系统参数
	MONITOR, //监测
	HEART_BEAT,

	//CI内部命令
	HEARTBEAT_MCP = 8501, //MCP心跳
	HERATBEAT_BIO,
	NCC_MAX_CMD //命令字最大值+1，代码中对命令字进行判断，若大于等于HMI_MAX_CMD，则无效
};

//错误类型，用于告警显示
enum ErrorType {
	ERROR_NONE = 0,
	//系统告警
	ERR_EMERGENCY_STOP = 1, //紧急停止
	PLC_ALARM_ERR, //PLC告警
	BOARD_TEMPERATURE_EXCEED_ERR, //主板温度过高
	INTERPOLATION_HEARTBEAT_LOST, //插补心跳丢失
	MCP_DISCONNECT, //MCP与NC通信丢失
	DRIVE_NOT_READY, //驱动器尚未就绪
	NCC_CT_NOT_READY, //NCC-CT未准备好
	HMI_NOT_READY, //HMI未准备好
	HMI_NOT_ALIVE, //HMI工作不正常
	NCC_SM_NOT_ALIVE, //NCC-SM工作不正常
	NCC_CT_NOT_ALIVE, //NCC-CT工作不正常
	PLC_NOT_ALIVE, //PLC工作不正常
	EXT_24V_DOWN, //外部24V掉电
	TEMP_SENSOR_ALARM, //温度传感器告警
	SYSTEM_POWER_DOWN_ERR, //系统电压严重波动
	INTP_CYCLE_TOO_SHORT, //插补周期设置过短
	PULSE_SEND_ERR, //脉冲发送错误
	BATTERY_DETECT_FAILED, //电池电量检测失败
	BATTERY_LOW_CAPACITY, //主板电池电量不足
	AUTENTICATE_FAIL_ALERT, //鉴权失败告警
	COMMUNICATION_ERR, //数据通信异常
	HW_VERSION_INVALID, //硬件版本号无效
	NCC_CI_NOT_ALIVE, //NCC-CI工作不正常
	NCC_CI_NOT_READY, //NCC-CI未准备好

	SAFE_DOOR_OPENED = 300, //安全门已开启
	SAFE_DOOR_CAN_NOT_OPEN, //加工过程中安全门禁止开启
	RESET_REQUIRED, //操作前请复位
	CLEAR_ALARM_REQUIRED, //操作前清先清除告警
	MCP_RATIO_INVALID, //MCP倍率档位值无效

	//加工告警
	HAS_NOT_RETURNED_TO_REF_POINT = 1000, //未回参考点
	RETURN_REF_POS_ERR, //回参考点失败
	RETURN_REF_POS_DIR_ERR, //手动回参考点方向错误
	OTHER_AXIS_RETRING_REF_POS, //其他轴正在回参考点，请等待
	AUTO_RATIO_ZERO, //自动倍率为0
	MANUAL_RATIO_ZERO, //手动倍率为0
	RAPID_RATIO_ZERO, //快速倍率为0
	RETURN_REF_POS_IN_WRONG_MODE, //该模式下不允许回参考点
	RETURN_REF_POS_WHILE_MACHINE_LOCKED, //机床锁开启，无法回参考点

	OPEN_NC_FILE_ERR = 1100, //打开NC文件出错
	OPEN_FILE_ERR, //打开文件出错
	PLC_RUNNING_CHANGE_FILE_ERR, //plc正在运行，替换PLC文件失败
	AUTO_MDA_EXCHANGE_ERR, //运行过程中AUTO和MDA切换，此时需要复位后才可以切换
	SIMULATING_MACHINING_START_ERR, //仿真或开始加工无效，请复位
	CHANGE_MODE_WHEN_RUNNING, //尚未停止时无法切换模式
	CYCLE_PAUSE_FAILED, //暂停加工失败
	NC_FILE_NOT_READY, //加工文件无效
	TAPPING_ERROR, //攻丝延时过大
	ROTATE_TO_OPPOSITE_DIR_ERR, //手动模式下主轴直接向反方向旋转
	SPINDLE_CONTROL_IN_AUTO_MODE, //自动模式下禁止控制主轴
	MACHINE_AUXILIARY_LOCKED, //辅助锁开启，此操作禁止
	TSM_SETTING_ERR, //TSM设置有误
	RESTART_LINE_NO_INVALID, //加工复位行号无效
	MACHINE_LOCKED, //机床锁开启，此操作禁止
	LADDER_NOT_MATCH, //梯形图文件匹配失败
	TOOL_BROKEN = 1115, //发生断刀，加工停止
	TOOL_BROKEN_DETECT_NOT_SETTED, //断刀检测未设置
	CHANGE_TOOL_WHILE_SPINDLE_ROTATING, //主轴旋转中，无法换刀
	WAIT_FOR_RESETTING, //复位中，请稍候
	WAIT_FOR_UPDATING_PARA, //更新参数中，请稍候
	RESET_FAILED, //复位失败，请重新操作
	TOOL_MAGA_ZERO_WHILE_S_ROTATING, //主轴旋转中，无法刀库回零
	Z_STOP_WHILE_SPINDLE_ROTATING, //主轴旋转中，Z轴不能移动
	RETURN_REF_INVALID, //当前状态下不允许回参考点
	AXIS_CONTROL_IN_CUR_MODE, //该模式下禁止控制各轴
	CHANGE_MODE_WHEN_SIMULATING, //仿真或轨迹预览时无法切换模式
	WAIT_FOR_CHANGING_TOOL, //换刀中，请稍候
	SOME_AXIS_NOT_ENABLED, //部分轴未使能
	MACHINING_ERR, //加工异常
	AUTO_CHECK_INSTRUMENT_NOT_INSTALLED, //对刀仪未安装或设置错误
	AUTO_TOOL_MEASURE_FORBIDDEN, //非就绪状态下禁止自动对刀
	TOOL_DETECT_WHILE_SPINDLE_ROTATING, //主轴旋转中，无法执行断刀检测
	OP_FORBIDDEN_WHILE_SPINDLE_ROTATING, //主轴旋转中，此操作禁止

	//轴告警
	SOFT_LIMIT_EXCEED_PLUS = 2000, //软限位超限+
	SOFT_LIMIT_EXCEED_MINUS, //软限位超限-
	HARD_LIMIT_EXCEED_PLUS, //硬件限位超限+
	HARD_LIMIT_EXCEED_MINUS, //硬件限位超限-
	AXIS_NOT_VALID, //轴未使能
	DRIVE_ALARM, //驱动器告警
	AXIS_SPEED_EXCEED, //轴速度超限
	REF_POS_CHECK_FAILED, //回参考点检查失败

	//主轴告警
	SPINDLE_SPEED_ABNORMAL = 2300, //主轴速度异常
	SPINDLE_ORIENT_SPEED_ABNORMAL, //主轴定位速度异常
	SPINDLE_ORIENT_TIMEOUT, //主轴定位超时
	SPINDLE_OIL_COOLER_ERR, //油冷机报警，无法控制主轴
	SPINDLE_SPEED_EXCEED, //主轴速度超限
	SPINDLE_CHANGE_TOOL_POS_TURN, //主轴禁止旋转
	SPINDLE_VIBRATION_EXCEED, //主轴振动过大
	SPINDLE_NOT_EXIST, //主轴无效

	//刀库告警
	INVALID_TOOL_NO = 2500, //无效刀具号
	POT_CONFLICT, //刀套号冲突
	NO_EMPTY_POT, //无空刀位
	PLC_CUR_POT_ERR, //PLC当前刀套号错误
	TOOL_NO_CHANGE_ERR, //刀具号修改错误
	RESET_WHILE_CHANGING_TOOL, //换刀时复位，请检查刀库参数
	TOOL_LEN_EXCEED, //刀具过长，无法自动换刀
	TOOL_R_EXCEED, //刀具半径过大，无法自动换刀
	TOOL_MAGAZINE_MANUAL_ERROR, //刀库运行中禁止进行其他手动操作
	TOOL_MAGAZINE_AXIS_MOVE_FORBIDDEN, //刀库轴不允许转动
	INVALID_H_CODE, //无效H补偿号
	INVALID_D_CODE, //无效D补偿号
	CHANGE_TOOL_WITH_TOOL_COMPENSATION, //换刀前请取消刀补
	//初始化告警
	NC_INIT_ERR = 2700, //NC初始化失败
	NC_CLEAR_ERR, //NC退出失败
	SYSTEM_CONFIG_INIT_ERR, //初始化系统配置出错
	FPGA_CONFIG_ERR, //FPGA文件传输错误
	PCC_INIT_ERR, //PCC初始化出错
	KB_FIRMWARE_INIT_ERR, //键盘面板初始化出错

	//远程更新告警
	CNC_UPDATE_SVR_ERR, //连接更新服务器出错
	GET_UPDATE_VER_ERR, //获取更新程序版本出错
	CURR_VER_LATEST, //当前版本即为最新
	GET_UPDATE_FILE_ERR, //获取更新程序文件出错
	DTC_UPDATE_SVR_FAIL, //扫描远程更新服务器失败
	GET_IP_ADDR_FAIL, //本地IP地址获取失败
	GET_CURR_VER_FAIL, //本地程序版本号获取失败

	//配置参数错误告警
	SYSTEM_CONFIG_ERR = 3200, //系统参数设置错误
	MAX_ACC_SET_ERR, //系统/轴加速度不匹配
	SOFT_LIMIT_SET_ERR, //软件限位设置错误
	HMI_SAVE_CONFIG_FAILED, //HMI保存参数失败
	NC_UPDATE_CONFIG_FAILED, //NC更新参数失败
	POT_SETTING_ERR, //刀套号设置有误
	DATABASE_UPDATE_NEEDED, //请更新配置参数数据库
	READ_CONFIG_DATA_FAILED, //读取配置参数失败
	HOME_POS_ERR, //参考点位置设置冲突
	CHANNEL_AXIS_CFG_ERR, //通道轴配置错误

	//插补,数值范围是400~500,添加：陈晓颖，2012-5-17
	INTERPOLATION_DATA_ERROR = 4000, //插补计算错误
	DATA_PROCESS_ERROR, //数据处理错误

	//螺距/反向间隙补偿模块，2014-7-18，陈晓颖
	BACKLASH_INVALID = 4100, //反向间隙补偿值无效
	BACKLASH_STEP_CONFLICT, //反向间隙补偿步长大于补偿值
	BACKLASH_STEP_INVALID, //反向间隙补偿步长值无效
	BACKLASH_STEP_TOO_LARGE, //反向间隙补偿步长过大
	BACKLASH_STEP_TOO_SMALL, //反向间隙补偿步长值过小
	SCREW_COMP_VALUE_EXCEED, //螺距补偿值过大
	SCREW_COMP_OF_ROTARY_AXIS_INVALID, //旋转轴的螺距补偿值无效

	//编译器错误，编译器错误中error_info为行号
	CHARACTER_ERR = 4300, //字符错误
	SYNTAX_ERR, //语法错误
	SEMANTIC_ERR, //语义错误
	FILE_OPEN_ERR, //文件打开错误

	//语义分析错误类型
	TOOL_NUMBER_ERR = 4600, //刀具号错误
	TOOL_NUMBER_EXCEED, //刀具号超过范围
	DEST_POS_INVALID, //终点位置超出软限位
	MULTI_M_CODE, //M代码冲突
	S_SPEED_EXCEED, //S值超过主轴最大速度， error_info为程序行号
	F_SPEED_EXCEED, //F值超过系统最大速度，error_info为程序行号
	AXIS_NOT_ENABLED, //轴未被使能
	AXIS_NAME_ERROR, //轴名称错误
	SPINDLE_SHOULD_STOP_BEFORE_TAPPING, //攻丝前应停止主轴
	S_VALUE_ERROR, //S赋值错误
	F_VALUE_ERROR, //F赋值错误
	L_VALUE_ERROR, //L赋值错误
	D_VALUE_ERROR, //D赋值错误
	H_VALUE_ERROR, //H赋值错误
	M_VALUE_ERROR, //M代码数值错误
	M_CODE_REPEAT, //M代码重复
	M_CODE_EXCEED, //M代码数量过多
	M02_M30_ERR, //M02/M30不能在子程序使用
	SUB_LEVEL_EXCEED, //子程序调用级数过多
	SUB_LOOP_EXCEED, //子程序循环次数过多
	G22_DATA_INVALID, //安全区域指定的数据无效
	G23_USAGE_ERROR, //G23使用错误
	CYCLE_PARA_TYP_ERR, //固定循环参数错误
	G04_DATA_TYP_ERR, //G04数据格式错误
	MULTI_HOMO_GROUP_CMD, //同组G指令冲突
	G53_DATA_INVALID, //G53数值无效
	AXIS_DATA_REPEAT, //轴重复赋值
	EXTRA_DATA_REPEAT, //附加轴重复赋值
	G92_DATA_INVALID, //G92数值无效
	MACRO_PARA_REPEAT, //宏程序传参重复
	MACRO_PARA_TYP_ERR, //固定循环参数类型错误
	MACRO_PARA_EXCEED, //宏程序参数个数超出范围
	G50_USAGE_ERR, //G50使用错误
	MULTI_COORD_TRANSFORM, //坐标变换指令冲突
	WORKPIECE_COOR_NEEDED, //请先指定工件坐标系
	G51_DATA_INVALID, //G51数值无效
	COOR_TRANS_NUM_EXCEED, //坐标变换次数超出限制
	COOR_TRANS_SHUT_FAIL, //需要先关闭另一个坐标变换
	G50_1_USAGE_ERR, //G50.1使用错误
	G51_1_DATA_INVALID, //G51.1数值无效
	G69_USAGE_ERR, //G69使用错误
	G68_DATA_INVALID, //G68数值无效
	G00_G01_DATA_INVALID, //直线插补数值无效
	G02_G03_DATA_INVALID, //圆弧/螺旋插补数值无效
	L_COMPENS_DATA_INVALID, //长度补偿数值无效
	AXIS_DATA_TYP_ERR, //轴数据类型错误
	EXTRA_DATA_TYP_ERR, //附加轴数据类型错误
	ASSIGN_DATA_TYP_ERR, //左右两侧类型不匹配，不能赋值
	IDEN_UPDATE_FAIL, //变量更新失败
	IDEN_NAME_INVALID, //变量名无效
	IDEN_VALUE_TYP_ERR, //变量类型错误
	ELSE_MATCH_ERROR, //else语句匹配错误
	IF_MATCH_ERROR, //if语句匹配错误
	WHILE_MATCH_ERROR, //while语句匹配错误
	GOTOF_LINE_ERROR, //GOTOF要跳转的行号不存在
	GOTOB_LINE_ERROR, //GOTOB要跳转的行号不存在
	F_DATA_MISSING, //进给率设置错误
	ZERO_DIVISOR_ERROR, //0不能做除数
	FUNC_CALC_FAIL, //函数计算出错
	FUNC_ARGUMENT_NUM_ERROR, //函数参数个数错误
	FUNC_ARGUMENT_TYP_ERROR, //函数参数类型错误
	RIGHT_VALUE_ASSIGN_ERR, //右值不能做赋值运算
	RIGHT_VALUE_INC_DEC_ERR, //右值不能做++或--运算
	SELF_INC_FAIL, //不能做自增运算
	SELF_DEC_FAIL, //不能做自减运算
	S_VALUE_NOT_SET, //需要指定主轴速度
	SPINDLE_SHOULD_STOP_BEFORE_CHANGING_TOOL, //换刀前应停止主轴
	SPINDLE_SHOULD_STOP_BEFORE_ORIENTATION, //主轴定向前应停止主轴
	P_VALUE_ERROR, //P赋值错误
	COMMENT_TERMINATE_MISSING, //注释符不完整
	CYCLE_RETEAT_ERROR, //固定循环返回到错误平面
	END_WITHOUT_M30, //主程序未以M02/M30结束
	GET_SYS_VAR_ERR, //变量不存在
	G52_DATA_INVALID, //G52数值无效
	ABSOLUTE_MODE_NEEDED, //使用绝对坐标建立工件坐标系/局部坐标系
	MULTI_WCS_RESIGN, //工件坐标系指令冲突
	PARA_ENTRY_ERR, //可编程的参数输入出错
	PARA_ENTRY_REPEAT, //可编程的参数输入赋值重复
	M98_JUMP_ERROR, //M98指定的顺序号不存在
	M99_JUMP_ERROR, //M99指定的顺序号不存在
	Q_VALUE_ERROR, //Q赋值错误
	S_SPEED_EXCEED_TOOL, //S值超过刀具最大转速， error_info为程序行号
	F_SPEED_EXCEED_TOOL, //F值超过刀具最大进给速度，error_info为程序行号
	G02_4_DATA_INVALID, //G02.4数值错误
	G29_USAGE_ERROR, //使用G29前需要指定中间点
	SERVO_TOOL_MAGAZINE_AXIS_ERR, //不能使用刀库伺服轴做插补轴
	G04_SINGLE_BLOCK_ERR, //G04必须在单独程序段内
	TAPPING_SPINDLE_SPEED_EXCEED, //攻丝转速超过主轴或刀具最大转速
	TAPPING_FEED_EXCEED, //攻丝进给速度超过系统或刀具最大速度
	SPINDLE_SHOULD_STOP_BEFORE_CH_MODE, //切换模式前应停止主轴
	RESTART_LINE_NOT_ALLOWED, //不可从该行加工复位
	G10_G11_INVALID_WHEN_RESTARTING, //加工复位中G10无法生效

	//参数归一化模块报警，陈晓颖，2013-7-15
	PARAM_RADIUS_INVALID = 5000, //圆弧半径指定的值错误
	PARAM_ARC_CENTER_INVALID, //圆心指定错误
	PARAM_SPIRAL_PARAM_ERROR, //圆锥或螺线给定参数指定错误
	PARAM_ERR_FOR_3D_ARC, //三维圆弧参数指定错误

	//刀补模块错误报警，陈晓颖，2013-7-26
	CANCEL_R_COMP_WITHOUT_MOVE_ERROR = 5200, //取消刀具半径补偿时没有轴移动
	NO_MOVE_DATA_EXCEED_ERROR, //刀具半径补偿非加工数据超限
	C_LENGTH_COMP_AXIS_EXCEED, //C类刀具长度补偿轴个数超限
	TOOL_RADIUS_EXCEED, //刀具半径过大
	CHANGE_R_COMP_SURFACE_ERROR, //刀具半径补偿过程中不可改变加工平面
	CHANGE_R_COMP_STAT_CMD_ERROR, //建立或取消刀具半径补偿指令错误
	END_WITHOUT_CANCEL_LENGTH_COMP, //程序结束时没有取消刀具长度补偿
	R_COMP_ERR_UNDER_MACHINE_COORD, //在机床坐标系下不能使用刀具半径补偿
	WRONG_MOV_CMD_FOR_L_COMP_CHANGE, //刀具长度补偿变化时指定插补指令错误
	RADIUS_COMP_NOT_SUPPORTED_FOR_CURVE_TYPE, //不支持指定曲线类型的刀具半径补偿
	R_COMP_CHANGE_AFTER_ESTABLISH, //刀具半径补偿不能在建立后立即改变
	R_COMP_ERR_UNDER_FIXED_CYCLE,  //固定循环中不能使用刀具半径补偿，编号5211

	//安全区域模块错误报警，陈晓颖，2013-8-26
	PROTECT_ZONE_PARAM_ERROR = 5400, //安全区域参数设置错误
	EXCEED_PROTECT_ZONE_WARNING, //程序段超过安全区域报警

	//PCC告警
	PCC_LOAD_CODE_ERR = 6000, //PLC读取代码失败
	PCC_NCC_CMD_TYPE_ERROR, //NCC-PCC的命令字类型错误
	PCC_LOAD_CODE_ERROR, //PCC读取用户代码错误
	PCC_READ_NCC_CMD_BUFFER_ERROR, //PCC读取命令缓冲区错误
	PCC_WRITE_NCC_CMD_BUFFER_ERROR, //PCC写NCC-PCC BUFFER错误
	PCC_CMD_TYPE_ERROR, //PCC指令类型错误
	PCC_SP_STACK_FULL_ERROR, //PCC子程序任务堆栈满错误
	PCC_SP_STACK_EMPTY_ERROR, //PCC子程序任务堆栈达到栈底错误
	PCC_CODE_ERROR, //PCC CODE有错误
	PCC_STATUS_ERROR, //PCC程序状态错误
	PCC_CMD_ADDR_ERROR, //PCC指令的地址错误

	RTEX_COMMUNICATION_TIMEOUT_ERROR = 6500, //RTEX通讯丢失告警

	//函数返回值错误类型
	INVALID_PARA = 8000, //函数输入参数无效
	HW_DATA_NOT_PROCESSED, //手轮数据未处理

	//内部测试用报警
	TEST_TOOL_MAGAZINE_ROT_ERROR = 9000, //刀盘旋转错误

	//10000-11000为PLC具体报警号
	PLC_ALARM_START_NUM = 10000, //PLC报警起始号
	ERROR_TOTAL_NUM
};

/*
 * @brief G code
 */
enum GCode {
	G00 = 0, G01 = 10, G02 = 20, G03 = 30, G02_4 = 24, G02_5 = 25, //三维螺旋/圆锥插补类型，（潘丽英，添加于20120806）
	G02_6 = 26, //二维椭圆类型，（潘丽英，添加于20120806）
	G02_7 = 27, //三维椭圆类型，（潘丽英，添加于20120806）
	G09 = 90,
	G10 = 100, //坐标平移
	G11 = 110, //坐标平移取消
	G17 = 170, //坐标平面
	G18 = 180,
	G19 = 190,
	G20 = 200,
	G21 = 210,
	G27 = 270, //参考点检查
	G28 = 280, //回参考点
	G29 = 290, //从参考点返回
	G30 = 300, //第2，3，4参考点返回
	G30_1 = 301, //可变参考点返回
	G33 = 330, //车螺纹
	G33_1 = 331, //刚性攻丝
	G33_2 = 332, //刚性攻丝（回程）
	G34 = 340,
	G35 = 350,
	G40 = 400,
	G41 = 410,
	G42 = 420,
	G43 = 430,
	G44 = 440,
	G49 = 490,
	G50 = 500, //取消比例缩放
	G50_1 = 510, //取消镜像
	G51 = 510, //比例缩放
	G51_1 = 511, //镜像
	G52 = 520,
	G53 = 530,
	G54 = 540,
	G55 = 550,
	G56 = 560,
	G57 = 570,
	G58 = 580,
	G59 = 590,
	G64_1 = 641,
	G68 = 680,
	G69 = 690,
	G73 = 730,
	G74 = 740,
	G76 = 760,
	G80 = 800, //取消固定循环
	G81 = 810,
	G82 = 820,
	G83 = 830, //钻孔循环
	G84 = 840, //攻丝循环
	G85 = 850,
	G86 = 860,
	G87 = 870,
	G88 = 880,
	G89 = 890, //镗孔循环
	G90 = 900,
	G91 = 910,
	G92 = 920,
	G92_1 = 921,
	G93 = 930,
	G94 = 940,
	G95 = 950,
	G98 = 980,
	G99 = 990, //退刀平面选择
	G5401 = 54010,
	G5402 = 54020,
	G5403 = 54030,
	G5404 = 54040,
	G5405 = 54050,
	G5406 = 54060,
	G5407 = 54070,
	G5408 = 54080,
	G5409 = 54090,
	G5410 = 54100,
	G5411 = 54110,
	G5412 = 54120,
	G5413 = 54130,
	G5414 = 54140,
	G5415 = 54150,
	G5416 = 54160,
	G5417 = 54170,
	G5418 = 54180,
	G5419 = 54190,
	G5420 = 54200,
	G5421 = 54210,
	G5422 = 54220,
	G5423 = 54230,
	G5424 = 54240,
	G5425 = 54250,
	G5426 = 54260,
	G5427 = 54270,
	G5428 = 54280,
	G5429 = 54290,
	G5430 = 54300,
	G5431 = 54310,
	G5432 = 54320,
	G5433 = 54330,
	G5434 = 54340,
	G5435 = 54350,
	G5436 = 54360,
	G5437 = 54370,
	G5438 = 54380,
	G5439 = 54390,
	G5440 = 54400,
	G5441 = 54410,
	G5442 = 54420,
	G5443 = 54430,
	G5444 = 54440,
	G5445 = 54450,
	G5446 = 54460,
	G5447 = 54470,
	G5448 = 54480,
	G5449 = 54490,
	G5450 = 54500,
};

//平面信息
enum ProcessPlane {
	XY = 0, ZX, YZ, THREE_DIMENSION_PLANE
};

//快速移动模式，直线型和非直线型
enum QuickMoveMode {
	NON_LINEAR_QUICK_MOVE = 0, LINEAR_QUICK_MOVE
};
/**
 * @brief 速度规划类型，添加：陈晓颖，2013-3-8
 */
enum SpeedProfileType {
	T_SPEED_PROFILE, S_SPEED_PROFILE
};
/**
 * @brief 速度规划类型，添加：陈晓颖，2013-3-15
 */
enum QuickMoveType {
	LINE_MOVE, //直线快速移动
	POLYLINE_MOVE //折线快速移动
};

//插补速度规划模式。
enum AccelerationType {
	T_SHAPE_ACCELERATION = 0, S_SHAPE_ACCELERATION
};
//倍率类型
enum RatioType {
	SPINDLE_RATIO = 0, //主轴倍率
	AUTO_FEED_RATIO, //自动进给倍率
	//TODO：手动进给倍率在插补模块中不再使用，是否在其他模块中也不使用？需要删除吗？陈晓颖，2013-4-23
	MANUAL_FEED_RATIO, //手动进给倍率
	G00_RATIO //G00进给倍率
//快速进给倍率
};

/*-------------------------------------Basic Structures-----------------------------------*/
/**
 * @brief CoordInfo包含坐标系信息
 */
struct CoordInfo { //坐标系信息
	CoordInfo();
	void Init();
	void Reset();
	bool CheckMask(uint8_t index);
	void SetMask(uint8_t index, uint8_t value = 1); //用于设置mask 的第index位为 value值
	double surface_vector[3]; //所选平面的法向量
	double build_coord_dest[MAX_AXIS_NUM]; //建立工件（或机床）坐标系时输入的数据，G92/G52/G10共用
	double wcs_offset_differ[MAX_AXIS_NUM]; //当前工件坐标系相对于G54～G59的偏移，单位：m
	uint8_t surface_flag; //02组，用于标识选择的平面，0:XY* 1:ZX* 2:YZ*
	uint8_t coord_id; //14组，工件坐标系选择，0:G53机床坐标系 1-6:G54*-G59 工件坐标系
	uint8_t build_coord_flag; //建立坐标系类型。0:不建立坐标系；1：G92；2：G52 3:G10 4：G92.1复位
	uint64_t build_wcs_mask; //标记G92/G10/G92.1使用的轴
};

/**
 * @brief AxisDataMode包含坐标值及维度信息
 */
struct AxisDataMode { //坐标值及维度信息
	AxisDataMode();
	void Init();
	uint8_t absolute_flag; //03组，绝对和增量标志 0:绝对指令* 1:增量指令*
	uint8_t polar_flag; //17组，0:G15*极坐标指令取消, 1:G16极坐标指令
	uint8_t unit_mode; //06组，公制英制输入。0:G21公制输入 1:G20英制输入
};

/**
 * @brief UsrCoordTrans包含可编程坐标变换信息
 */
struct UsrCoordTrans { //可编程坐标变换信息
	UsrCoordTrans();
	UsrCoordTrans(UsrCoordTrans& usr_coord_trans);
	void Init();
	void Reset();
	bool CheckMask(uint8_t index); //用于检查mask, 可将mirror_mask  或scale mask 传进去检查第index位
	void SetMask(uint8_t index, uint8_t value = 1); //用于设置mask 的第index位为 value值
	int coord_type; //第11组G代码 当行出现的坐标变换功能
	double coord_param[7]; //0-2:旋转中心、缩放中心、平移轴、镜像轴；3-5：旋转轴矢量、缩放轴倍率；6：旋转角
	uint8_t coord_param_mask;
};

/**
 * @brief FeedInfo包含进给单位、方式等信息
 */
struct FeedInfo { //进给单位、方式等信息
	FeedInfo();
	void Init();
	void Reset();
	bool has_f_cmd; //标记当行是否有F指令
	uint8_t feed_unit; //05组，进给单位，0:G94每分钟进给* 1:G95每转进给 2:G93反比时间进给
	uint8_t speed_ctrl_mode; //15组，切削进给下的速度控制，0:G64* 切削方式， 1:G63攻丝方式， 2:G61(G09)准确停止， 3:G62自动拐角倍率
	uint8_t dwell_flag; //00组，两段NC程序间暂停（G04），0：不执行暂停，1：暂停
	bool no_need_lookahead; //为TRUE：该段（走刀段）不需进行前瞻；为FALSE：需要进行前瞻
	double usr_target_feed_speed; //用户给出的进给速度
	double calc_target_feed_speed; //前瞻后的目标速度
	double end_feed_speed; //前瞻后的终点速度
	double cur_speed; //联动速度
	uint32_t dwell_value; //暂停毫秒数或暂停转数
};

/**
 * @brief SpindleInfo包含主轴转速等信息
 */
struct SpindleInfo { //主轴转速等信息
	SpindleInfo();
	void Init();
	void Reset();
	uint8_t circle_speed_ctrl_flag; //13组，主轴圆周速度恒定控制标识，0:G97S_*圆周速度恒定控制取消, 1:G96S_打开,2：G97，3：G96
	uint8_t circle_speed_ctrl_direction; //恒线速度切削时的刀尖到旋转轴的半径方向，0：系统默认方向，1：x轴方向，2：y轴，3：z轴，4：第4轴
	uint8_t speed_change_check_flag; //19组,0:G25*主轴速度变动检测OFF, 1:G26主轴速度变动检测ON
	int8_t direction; //旋转方向，1：顺时针; -1：逆时针	M3 M4 每次归零
	double speed; //轴的转速	模态	每次归零
	double dest_position; //主轴目标位置	每次归零
	double spindle_max_speed; //主轴最大转速限制
};

/**
 * @brief ToolCompensationInfo包含刀具补偿信息
 */
struct ToolCompensationInfo { //刀具补偿信息
	ToolCompensationInfo();
	void Init();
	void Reset();
	bool has_r_compensation; //0:没有半径刀补指令 1：有
	bool has_l_compensation; //0:没有长度刀补指令 1：有
	uint16_t r_compensation_type; //07组，刀具半径补偿类型,0:G40* 刀具半径补偿取消，1:G41 刀具或刀尖半径补偿/左, 2:G42刀具或刀尖半径补偿/右
	uint16_t l_compensation_type; //08组，刀具长度补偿类型,0:G49* 刀具长度补偿取消，1:G43 刀具长度补偿+, 2:G44刀具长度补偿- 3:G43.2 五轴+ 4:G44.2五轴-
	uint32_t tool_no; //刀具号 T系统变量
	uint32_t h_code; //刀具长度补偿编号 H系统变量
	double tool_length; //刀具长度补偿的长度
	uint32_t d_code; //刀刃编号 D系统变量
	bool has_tool_compensated; //实际是否进行了刀具长度或者半径补偿
	uint8_t insert_line_no; //表示进行刀具半径补偿时插入的路径号码
};

/**
 * @brief AxisMovData包含几何轴位置和进给速度等相关信息
 */
struct AxisMovData { //几何轴位置和进给速度等相关信息
	AxisMovData();
	void Init();
	void Reset();
	uint8_t CheckMask(uint8_t i);
	uint8_t CheckRadiusModeMask(uint8_t i);
	void SetMask(uint8_t i, uint8_t value = 1);
	void SetRadiusModeMask(uint8_t i, uint8_t value = 1);
	uint64_t mask; //标记本段有哪几个坐标信息，X-C分别对应第0-5比特，其他为特殊轴.该比特为0则无，1则有.每次归0
	double dest_pos[MAX_AXIS_NUM]; //终点， 每次归0
	uint64_t radius_mode_mask; //标记每个轴是半径编程还是直径编程,半径则对应轴位为0,直径为1.共16位,代表16个轴，模态信息
	uint8_t middle_flag; //记录本次参考点返回是否设了中间点 每次归0
	uint8_t ref_point_index; //记录返回到第几参考点 每次归0
	double middle_pos[MAX_AXIS_NUM]; //用于记录中间点 每次归0
	double dist; //当段距离 每次归0
	double cur_speed[MAX_AXIS_NUM]; //当前实际速度 每次归0
	uint8_t dist_processed; //非几何轴是否已经计算到dist中
};

/**
 * @brief ExtraMovData包含插补运动的附加信息
 */
struct ExtraMovData { //插补运动的附加信息
	ExtraMovData();
	void Init();
	void Reset();
	uint8_t CheckMask(uint8_t);
	void SetMask(uint8_t i, uint8_t value = 1);

	uint16_t mask; //0-2:IJK 3-5:I1J1K1 6:R 7:AR 8:极角 9:极径 10:L次数
	double extra_data[MAX_EXTRA_DATA_NUMBER]; //所有的 extra 数据
	uint16_t round_chamfer_state; //倒圆倒角状态，为1：倒圆；为2：倒角（李杰，添加于20120727）
	double round_chamfer_length; //倒圆半径，或者倒角长度（李杰，添加于20120727）
};

/**
 * @brief MCommands包含M辅助代码信息
 */
struct MCommands { //M辅助代码信息
	MCommands();
	void Init();
	void Reset();
	void DelCmd(uint32_t);
	uint8_t HasCmd(uint32_t);
	//添加M值，若达到个数限制，则报错，返回false
	bool SetCmd(uint32_t);
	bool InsertCmd(uint32_t cmd);
	int count; //M辅助代码指令的个数,初值为0
	uint32_t m_cmds[MAX_M_PER_LINE]; //M辅助代码指令号
};

/*
 * @brief G10修改系统参数的内容20140308pang
 */
struct ParaEntry {
	ParaEntry();
	void Init();
	void Reset();
	bool CheckMask(uint8_t);
	void SetMask(uint8_t i, uint8_t value = 1);
	uint8_t para_entry_type; //修改参数的类别，见枚举量ParaEntryType
	uint16_t para_entry_index; //数组类型（如轴参数）的参数输入时，要修改的下标号(参数P)
	uint16_t para_entry_id; //要修改的参数的参数号(参数N)
	double para_entry_value; //修改一个参数值；(参数R)
	double para_entry_values[MAX_AXIS_NUM]; //修改多个参数值（如原点偏置，参数XYZ）
	uint64_t para_entry_values_mask;
};

struct LineData {
	char current_file_name[MAX_FILE_NAME_LEN];
	uint8_t has_nc_cmd; //用于标注是否有NC加工代码
	uint8_t has_fixed_cycle_cmd; //用于标记是否有固定循环指令
	uint32_t line_no; //行号, 开机设为0:无程序段，大于0:相应的程序段号。每行更新
	uint32_t sub_line_no; //sub program line number
	uint8_t over_flag; //标记程序是否结束 0:没结束 1:结束
	uint8_t protection_zone_alarm_flag; //安全区超程的标记 1:超出安全区; 0:没超出
	uint8_t interpolation_flag; //用于记录此行是否有插补指令
	uint8_t interpolation_stop_flag; //GongLihui,20120514，插补是否停止，0：未停止，1：停止（用户按下暂停键后真正运动停止时，或单段模式下该段最后一个插补点）
	uint8_t rotary_axis_quick_move; //旋转轴是否快速定位
	uint16_t interpolation_type; //01组，插补类型，值对应于命令的数值乘以10	//模态信息
	uint16_t g_temporary_cmd; //00组G代码，只在一段中有效。值对应于命令的数值乘以10
	uint16_t tool_no; //刀具号
	CoordInfo coord_info; //坐标系及平面信息*
	AxisDataMode axis_data_mode; //坐标值及维度信息*
	FeedInfo feed_info; //进给单位等信息*
	SpindleInfo spindle_info; //主轴转动信息*
	AxisMovData axis_mov_data; //几何轴位置信息 **
	ExtraMovData extra_mov_data; //插补运动的附加信息 **
	MCommands m_commands; //M辅助代码信息*
	ParaEntry para_entry; //输入参数信息
	uint8_t has_special_cmd; //是否有特殊命令，此标志用户如果NCC-SM将一行数据拆分成多行时，通过此标志告诉NCC-CT,1:被拆分的非最后一行数据，2：最后一行数据
	uint16_t g_code_info[G_CODE_GROUP_NUM]; //G指令模态信息
	double tool_comp_vector[3]; //刀具补偿向量
	bool has_tool_compensated; //是否进行了刀具补偿
	uint8_t insert_line_no; //表示进行刀具半径补偿时插入的路径号码
	uint8_t cur_h_code; //当前H补偿号
	uint8_t cur_d_code; //当前D补偿号

	bool is_consider_angle; //表示当前点是否需要考虑两条线段的夹角，而需要限制终点速度（前瞻模块使用，给插补模块的接口）
	//根据LineData中的指令判断当前行插补完成后是否应该停下
	bool NeedToStop();

	double acc; //本段的合成加速度
	double max_centripetal_acc; //圆弧插补的最大向心加速度
	double jerk; //系统合成最大加加速度
	uint8_t feedback_flag; //是否要求CT执行本行语句时反馈SM。0：否；1：是
	uint32_t serial_number; //顺序号
};

/*
 * @brief 刀具信息
 */
struct ToolInfo {
	uint16_t pot;	//该刀具对应的刀套号
	double max_s;	//该刀具对应的最大主轴速度
	double max_f;	//该刀具对应的最大进给速度
	uint16_t h_code;//对应的H补偿号
	uint16_t d_code;//对应的D补偿号
	uint8_t imagined_cutter_tip;//假想刀尖号
	int type;	//刀具类型
};

/*
 * @brief NCC-CT需要的刀库数据
 */
struct NCCCTToolMagazine {
	uint8_t magazine_enable; //刀库是否使能
	uint16_t max_tool_num; //当前刀库刀具容量
	ToolInfo tool[MAX_TOOL_NUM]; //刀具信息
	uint8_t pot_state[MAX_POT_NUM]; //刀套信息，0：空闲，1：占用
	uint8_t tool_magazine_type; //刀库类型:0:斗笠式，1：刀臂式，2：夹臂式
	uint8_t cur_tool; //当前刀号
	double pot_pos[MAX_TOOL_NUM]; //伺服刀库刀位角度
	double tool_len[MAX_TOOL_NUM]; //刀具长度
	double tool_radius[MAX_TOOL_NUM]; //刀具半径
	double max_tool_len; //自动换刀允许的最大长度
	double max_tool_radius; //自动换刀允许的最大半径
	uint16_t servo_tool_magazine_zero_delay; //伺服刀库回零延时，单位ms
};

/*
 * @brief NCC-CT需要的通用配置数据
 */
struct NCCCTGeneralConfig {
	uint8_t product_type; //产品型号
	uint8_t channel_number; //通道数量
	uint8_t max_axis_number; //最大轴数量
	uint16_t gpio_sample_freq; //GPIO采样频率
	uint16_t gpio_filter_time; //GPIO滤波时间
	uint16_t hw_sample_freq; //手轮采样频率
	uint16_t hw_filter_time; //手轮滤波时间
	uint16_t spindle_sample_freq; //主轴采样频率
	uint16_t spindle_filter_time; //主轴滤波时间
	uint16_t z_sample_freq; //Z信号采样频率
	uint16_t z_filter_time; //Z信号滤波时间
	uint16_t debug_flag; //调试参数
};

/*
 * @brief NCC-CT需要的轴配置数据
 */
struct NCCCTAxisConfig {
	//轴参数
	uint8_t axis_type; //轴类型，0：直线轴；1：旋转轴；2：主轴; 3:无效；4:刀库轴
	uint8_t virtual_axis; //是否虚拟轴
	uint8_t nearby_locate; //旋转轴就近定位
	uint8_t return_ref_pos_dir; //各轴回参考点方向，0：负向；1：正向
	uint8_t return_ref_pos_index; //各轴回参考点顺序，全0表示同时回参考点
	uint8_t return_ref_pos_type; //各轴回参考点类型，0：有基准；1：无基准；2：禁止
	uint8_t axis_alarm_v_type; //进给轴告警电压类型，0：低电平有效；1：高电平有效
	uint8_t axis_ready_v_type; //进给轴就绪电压类型，0：低电平有效；1：高电平有效
	uint8_t axis_control_mode; //轴驱动器控制方式，0：方向/脉冲；1：CW/CCW；2：AB相
	uint8_t tool_change_axis_move; //换刀时轴是否移动
	uint32_t encoder_count; //编码器线数
	uint8_t encoder_type; //编码器类型
	uint32_t encoder_ref; //编码器参考点位置
	double axis_mov_p_round; //轴每转移动距离，单位：m
	double max_axis_acc; //轴最大加速度,单位：m/s2
	double max_G00_axis_acc; //轴最大停止加速度,单位：m/s2
	double max_axis_jerk; //轴最大加加速度，单位：m/s3
	double max_axis_speed; //轴最大速度，单位：m/s
	double axis_home_pos[10]; //各轴参考点偏移位置，单位：m/度
	double return_ref_pos_speed[10]; //各轴回参考点速度，单位：m/s
	double negative_soft_limit1; //负向软件限位1,单位：m
	double positive_soft_limit1; //正向软件限位1,单位：m
	double negative_soft_limit2; //负向软件限位2,单位：m
	double positive_soft_limit2; //正向软件限位2,单位：m
	double axis_cmd_res; //轴指令精度，单位：m

	//主轴参数
	uint8_t bus_axis_type; //是否总线轴类型，0：总线轴；1：非总线主轴1；2：非总线主轴2
	double spindle_orient_speed; //主轴定位速度，单位：r/s
	double spindle_orient_angle; //主轴定位角度，单位：度
	double max_spindle_speed; //主轴最大速度，单位：r/s
	double spindle_default_speed; //主轴默认转速，r/s
	double spindle_drive_max_speed; //主轴驱动器最大转速
	double max_spindle_drift; //最大允许主轴零漂
	double spindle_monitor_time; //主轴转速监控时间，单位：s
	uint16_t spindle_mode_change_delay; //主轴模式切换延时，单位:ms
	uint8_t spindle_mode_v_type; //主轴速度与位置控制电压类型，0：高低；1：低高
	uint8_t spindle_v_range; //主轴电压范围，0：-10V～10V，1：0～10V
	uint8_t spindle_speed_mode_dir_reverse; //主轴速度模式方向取反
	uint8_t spindle_pos_mode_dir_reverse; //主轴位置模式方向取反
	double spindle_pid_p; //主轴速度PID比例系数

	//补偿参数
	double backlash; //各轴反向间隙补偿量，单位：mm
	double backlash_comp_step; //各轴反向间隙补偿步长，单位：mm
	double screw_comp_rate; //各轴螺距误差补偿倍率
	double screw_comp_interval; //各轴螺距误差补偿间距
	int16_t screw_comp_home_no; //各轴螺距误差补偿中，参考点对应的补偿编号，从零开始数
	int16_t screw_comp_num; //各轴螺距误差补偿点数
	int16_t screw_comp_table[SCREW_COMP_TABLE_MAX_LEN]; //各轴螺距误差补偿表，单位：um
};

/*
 * @brief NCC-CT需要的通道配置数据
 */
struct NCCCTChannelConfig {
	//通道数据
	uint8_t default_plane; //默认平面
	uint8_t default_cmd_mode; //默认指令模式
	uint8_t axis_number; //通道轴数量
	uint8_t machine_axis[MAX_AXIS_NUM]; //通道轴对应的机床轴序号
	uint16_t interpolation_cycle; //插补周期，单位：微秒
	uint16_t lookahead_number; //前瞻段数
	double max_speed; //系统最大进给速度,单位：m/s
	double max_bow_err; //系统最大弓高误差，单位：m
	double max_centripetal_acc; //系统最大向心加速度,单位：m/s2
	uint8_t speed_profile_type; //速度规划模式，0：梯型；1：S型
	uint8_t quick_move_mode; //快速定位模式,0:直线型，1：非直线型
	double limit_radius; //圆锥插补时，当半径小于此值，圆锥插补运动角速度恒定，单位：m
	double manual_move_speed; //手动移动速度，单位：m/s
	double g00_speed; //G00移动速度，单位：m/s
	uint8_t hw_mode; //手轮模式，0：位置模式；1：速度模式
	double arc_radius_err; //圆弧半径误差允许，单：m
	double spiral_end_err; //螺线终点误差允许，单位：m
	uint8_t tool_change_mode; //换刀模式，0：M06换刀；1：T代码换刀
	uint8_t change_tool_pos_index; //换刀位置
	uint8_t avoid_tool_pos_index; //让刀位置
	uint8_t safe_pos_index[3]; //安全位置
	uint8_t tool_measure_pos; //刀具测量位置
	uint8_t machining_mode; //加工模式，0：连续路径；1：准停
	double es_wait_time; //急停等待时间，单位：s
	double rs_wait_time; //快速停止等待时间，单位：s
	double rs_wait_distance[MAX_AXIS_NUM]; //快速停止等待距离，单位：m
	double tapping_comp_scale; //攻丝误差补偿系数
	double tool_measure_speed; //刀具测量移动速度
	uint8_t manual_rapid_ratio; //手动快速移动速度倍数
	double tapping_max_acc; //刚性攻丝最大加速度,单位：m/s2
	double tapping_max_stop_acc; //刚性攻丝最大停止加速度，即最大减速度,单位：m/s2
	double tapping_max_jerk; //刚性攻丝最大JERK,单位：m/s3
	uint8_t tapping_mode; //G74/G84攻丝模式，0：柔性攻丝，1：刚性攻丝
	double exofs_origin[MAX_AXIS_NUM]; //外部工件原点偏置
	uint8_t tool_parallel_axis; //该通道刀具平行轴序号，该序号是本通道内的轴序号
	uint8_t spindle_index; //主轴序号
	double tool_measure_start_pos; //刀具测量开始位置
	double tool_broken_detect_len; //断刀检测门限
	uint8_t reset_valid[RESET_VALID_NUM]; //复位是否有效
	uint8_t pause_valid[PAUSE_VALID_NUM]; //进给保持是否有效
	uint16_t drive_alarm_clear_time; //驱动器报警清除时间，单位：ms
	double change_tool_speed[4]; //换刀速度
	//刀库数据
	NCCCTToolMagazine tool_magazine; //刀库数据
	//轴配置数据指针
	NCCCTAxisConfig* channel_axis_config[MAX_AXIS_NUM]; //该通道对应的轴配置数据指针
};

//64bit的mask
struct mask_64 {
	uint32_t mask_l;
	uint32_t mask_h;
	void Init() {
		mask_h = 0;
		mask_l = 0;
	}
	void InitF() {
		mask_h = (uint32_t)-1;
		mask_l = (uint32_t)-1;
	}
	bool CheckMask(int i) {
		bool mask = false;
		if (i >= 0 && i < 32) {
			if (mask_l & ((uint32_t) 1 << i)) {
				mask = true;
			}
		} else if (i >= 0 && i >= 32) {
			if (mask_h & ((uint32_t) 1 << (i - 32))) {
				mask = true;
			}
		}
		return mask;
	}
	void SetMask(int i) {
		if (i >= 0 && i < 32) {
			mask_l |= (uint32_t) 1 << i;
		} else if (i >= 0 && i >= 32) {
			mask_h |= (uint32_t) 1 << (i - 32);
		}
	}
	void SetMask(int i, int value) {
		if (value == 0) {
			if (i >= 0 && i < 32) {
				mask_l &= ~((uint32_t) 1 << i);
			} else if (i >= 0 && i >= 32) {
				mask_h &= ~((uint32_t) 1 << (i - 32));
			}
		} else {
			SetMask(i);
		}
	}
	bool IsZero() {
		return (mask_h || mask_l) ? false : true;
	}
	bool IsAllF() {
		return (mask_h == -1 && mask_l == -1) ? true : false;
	}
};

/*
 * @brief 通道状态
 */
struct NCCCTChannelState {
	uint8_t channel_mode;			//通道模式
	uint8_t machining_state;		//加工状态
	uint8_t spindle_mode;           //主轴工作方式，0：速度控制方式；1：位置控制方式
	uint8_t is_returning_ref_pos;	//是否在回参考点过程中
	uint8_t in_emergency_state;		//是否处于急停
	uint8_t plc_emergency_button_on;//PLC急停按键是否被按下
	uint8_t hard_limit_reached;		//是否硬限位到达
	uint8_t soft_limit_reached;		//是否软限位到达
	uint8_t machine_locked;			//机床锁住是否有效
	uint8_t machine_auxiliary_locked;//机床辅助功能锁住是否有效
	uint16_t manual_ratio;			//手动倍率
	uint16_t auto_ratio;				//自动倍率
	uint16_t g00_ratio;				//G00倍率
	uint8_t manual_rapid;			//是否处于手动快速移动
	uint8_t is_changing_tool;		//是否处于换刀过程中
	uint8_t is_spindle_orientation;	//是否处于主轴定向中
	uint8_t spindle_orientation_complete;	//是否主轴定向完成
	uint8_t pausing;				//是否在暂停过程中
	uint8_t single_line_mode;		//是否单段模式
	uint8_t optional_stop_mode;		//是否选停模式
	uint8_t hw_contour_mode;		//是否手轮跟踪模式
	uint8_t io_state[IO_NUM];		//IO状态
	uint32_t dwell_count;			//暂停时间，单位：ms
	uint8_t m_code_pause;			//M代码暂停中
	uint8_t spindle_pos_control;	//主轴位置控制，1：位置控制；0：速度控制
	uint8_t in_abnormal_state;		//是否处于异常状态
	uint8_t handwheel_step;			//手轮步长，1，10，100
	uint8_t manual_step;			//manual step, 1, 10, 100
	uint8_t speed_ctrl_mode;		//速度控制方式，0:G64* 切削方式， 1:G63攻丝方式， 2:G61(G09)准确停止， 3:G62自动拐角倍率
	mask_64 drive_alarm;			//轴驱动器是否报警
	uint8_t axis_abnormal;			//主轴是否异常，非驱动器报警
	uint8_t ext_24v;				//外部24V是否正常
	uint8_t power_down;				//系统是否掉电
	uint8_t power_down_alarm;		//系统掉电时是否已报警
	uint16_t power_down_count;		//检测到的掉电次数
	mask_64 returned_to_ref_point;	//是否已回参考点
	uint8_t move_in_config_err;		//配置错误时移动
	uint8_t plc_state;				//PLC状态
	uint8_t cpu_load;				//CPU占用率
	uint8_t tool_magazine_get_pot_complete;//伺服刀库是否到达取刀位置
	uint8_t tool_magazine_ret_pot_complete;//伺服刀库是否到达还刀位置
	uint8_t tool_broken_detect_setted;//断刀检测已设置
	uint8_t tool_broken_detect_setting;//是否在断刀检测设置中
	uint8_t tool_broken_detect;		//是否在断刀检测中
	uint8_t auto_tool_measure;		//是否自动对刀中
	uint16_t cur_pot;				//当前刀套号
	int8_t spindle_actual_dir;		//主轴实际方向
	uint8_t servo_cutter_zero;     //伺服刀库回零过程中
	double manual_set_pos[MAX_AXIS_NUM];//Axis destination position in Manual or MPG mode
	int8_t manual_move_dir[MAX_AXIS_NUM];//手动移动方向
	uint8_t last_status_tool_magazine;  //记录上一时刻的刀库正反转回零状态
	uint8_t stop_sending_pulse;		//停止发送脉冲
	uint8_t tool_magazine_axis_zero;  		//刀库轴回零标识，用于刀库轴是否回参考点的标记
	uint8_t servo_tool_magazine_axis;       //刀库轴
	uint32_t restart_line_no;			//加工复位行号
	uint8_t dest_pos_invalid;		//终点位置是否无效
	uint8_t protect_zone_err;		//安全区域错误
	uint8_t is_tsm;					//是否处于TSM处理中
	double ref_biase[MAX_AXIS_NUM];	//参考点偏差，即驱动器参考点的反馈值减去用户所设参考点的差值
	uint8_t servo_tool_magazine;	//是否伺服刀库
};
/**
 * @brief 轴位置数据结构
 */
struct Position {
	double pos[MAX_AXIS_NUM];
};

/**
 * @brief ErrorInfo数据结构为错误处理模块第输入/输出数据格式
 */
struct ErrorInfo {
	uint16_t axis_index;    //通道内轴序号
	uint16_t error_type;    //错误类型
	uint8_t error_level;    //错误级别
	uint8_t clear_type;		//清除告警类别
	int32_t error_info;     //错误信息
	uint64_t time; //错误发生时间,从高字节到低字节依次为:预留1字节,年(2字节),月(1字节),日(1字节),小时(1字节),分(1字节),秒(1字节)
};
/**
 * @brief NCCCmd数据结构用于NCC内部的数据传输
 */
struct NCCCmd {
	NCCCmd() {
		channel_number = 0;
		cmd = 0;
		cmd_extension = 0;
		data_length = 0;
	};
	uint16_t channel_number;
	uint16_t cmd;
	uint16_t cmd_extension;
	uint16_t data_length; //单位：字节
	char data[DATA_PACKAGE_SIZE - NCC_DATA_PACKAGE_HEADER_SIZE];
};

/*
 * @brief 通道实时状态
 */
struct ChannelRealtimeState {
	Position target_pos;				//当前目标位置
	Position cur_pos;					//当前实际位置
	double path_remains[MAX_AXIS_NUM];	//剩余距离
	double spindle_cur_speed; 			//主轴当前转速，单位：转/秒
	double cur_feed_speed; 				//当前进给速度，单位：mm/s
	uint32_t machining_time; 			//加工时间，4个字节分别是天/小时/分/秒
	uint32_t machining_time_remains; 	//剩余加工时间，4个字节分别是天/小时/分/秒
	uint32_t line_no;					//当前行号
	double feed_speed; 					//用户设定进给速度，单位：mm/s
	double manual_speed; 					//手动速度，单位：mm/s
	double spindle_speed;           	//用户设定主轴转速，单位：转/秒
	uint16_t g_code_info[G_CODE_GROUP_NUM];	//G指令模态信息
	uint16_t m_code[4];					//M指令
	double cur_axis_speed[MAX_AXIS_NUM];//各轴移动速度
	uint8_t tool_no;					//当前刀号
	Position simulate_pos;				//当前仿真位置
	uint32_t sub_line_no;				//sub program line number
	uint8_t preset_tool_no;				//预选刀刀号
	int8_t spindle_dir;					//主轴方向
	char cur_machining_file_name[MAX_FILE_NAME_LEN];	//当前加工程序文件名，可能是子程序
	double wcs_offset_differ[MAX_AXIS_NUM]; 		//当前工件坐标系相对于G54～G59的偏移，单位：mm
	uint8_t exof_mask;					//标记exofs生效的mask。0：exofs生效；1：G92生效
	uint8_t cur_h_code;					//当前H补偿号
	uint8_t cur_d_code;					//当前D补偿号
	uint8_t second_soft_limit_p_valid;	//第二正向软件限位是否生效，bit0~7依次为1-8轴
	uint8_t second_soft_limit_n_valid;	//第二负向软件限位是否生效，bit0~7依次为1-8轴
	double tool_comp_vector[3];//刀具补偿矢量,用于HMI计算工件坐标
	uint8_t insert_line_no;				//表示进行刀具半径补偿时插入的路径号码
	uint32_t serial_number;				//加工行顺序号
};

/*********************LogTrace 类打印信息枚举变量 Begin************************/
//TraceLevel数据结构用于设置调试信息打印级别
enum TraceLevel {
	TRACE_NONE = 0, //不记录调试信息
	TRACE_FATAL, //异常退出或结束
	TRACE_ERROR, //严重错误Error
	TRACE_WARNING, //警告Warning，例如内存分配失败
	TRACE_INFO, //函数调用和退出，Entry-Exit
	TRACE_PROCESS, //详细调用过程，包括中间步骤
	TRACE_DETAIL
//详细调用过程，每一个步骤
};

//TraceModule数据结构为调试信息类型，表示该模块的控制位在1024bit中的位置
enum TraceModule {
	//NCC-SM
	MAIN_ENTRANCE_SM = 0, //上位机main入口
	DATA_COMMUNICATION, //数据通信模块
	COMMAND_TRANSFER, //命令转发
	CHANNEL_CONTROL_SM, //上位机通道控制
	ERROR_PROCESS_SM, //上位机错误处理
	STATE_MONITOR_SM, //上位机状态监控
	ALARM_DIAGNOSIS_SM, //上位机系统告警与诊断
	SYSTEM_CONFIG, //系统配置
	MCP_PROCESS, //MCP处理
	CIRCULAR_BUFFER, //循环缓冲区
	TOOL_COMPENSATION, //刀补
	COORD_TRANSFER, //坐标变换Buffer
	PROTECTION_ZONE_LIMIT, //安全区域限制模块
	INTERRUPT_PROCESS, //中断处理
	MATRIX_CALCULATION, //矩阵运算
	SYSLINK_COMMUNICATION_SM, //上位机syslink通信
	NCC_SM_CT_COMMUNICATOR_SM,
	PARAMETER_NORMALIZE, //参数标准化
	//NCC-CT
	MAIN_ENTRANCE_CT = 500, //下位机main入口
	AXIS_CONTROL, //轴控制
	SPINDLE_CONTROL, //主轴控制
	AXIS_MONITOR, //轴监控
	HANDWHEEL_CONTROL, //手轮控制
	FAST_IO, //快速IO
	SAFE_CONTROL, //安全控制
	PLC_CONTROL, //PLC控制
	CHANNEL_CONTROL_CT, //下位机通道控制
	ERROR_PROCESS_CT, //下位机错误处理
	STATE_MONITOR_CT, //下位机状态监控
	ALARM_DIAGNOSIS_CT, //下位机系统告警与诊断
	PRE_PROCESS, //预处理
	COMPILER, //编译器
	LOOKAHEAD, //前瞻
	INTERPOLATION, //插补器
	COMPENSATION, //补偿器
	MULTI_AXIS_PROCESS, //多轴处理器
	RUN_HOME, //回参考点
	PARA_CONFIG, //参数配置
	SYSLINK_COMMUNICATION_CT, //下位机syslink通信
	NCC_SM_CT_COMMUNICATOR_CT,
	DRIVER_COMMUNICATION, //驱动通信
	FPGA_COMMUNICATION, //FPGA通讯
	TOOL_MANAGEMENT, //刀库管理
	SPINDLE_ORIENT_MODULE,	//主轴定向
	PLC_PROCESS,		//PLC处理模块
	TOOL_PROCESS,		//刀具处理模块
	DEBUG_DATA_PROCESS,	//调试数据处理模块
	MODULE_NUMBER //模块数量
};

enum LogLevel {
	TRACE_INFORMATION, WARNNING_INFORMATION, ERROR_INFORMATION
};

#endif //DATA_DEFINITION_H_
