;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.3.4 *
;* Date/Time created: Sat Apr 22 16:21:49 2017                                *
;******************************************************************************
	.compiler_opts --abi=eabi --c64p_l1d_workaround=off --endian=little --hll_source=on --long_precision_bits=32 --mem_model:code=near --mem_model:const=data --mem_model:data=far_aggregates --object_format=elf --silicon_version=6740 --symdebug:none 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C674x                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far Aggregate Data                                   *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Enabled with threshold = 0                           *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : No Debug Info                                        *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


;*****************************************************************************
;* FUNCTION SYNONYMS                                                         *
;*****************************************************************************
	.symalias _ZN12AlgInterfaceC2EiP18NCCCTChannelConfig, _ZN12AlgInterfaceC1EiP18NCCCTChannelConfig
	.symalias _ZN12AlgInterfaceD2Ev, _ZN12AlgInterfaceD1Ev
	.sect	".rodata"
	.align	4
	.elfsym	MAX_AXIS_NUM,SYM_SIZE(4)
MAX_AXIS_NUM:
	.field	64,32			; MAX_AXIS_NUM @ 0

	.sect	".rodata"
	.align	4
	.elfsym	DATA_PACKAGE_SIZE,SYM_SIZE(4)
DATA_PACKAGE_SIZE:
	.field	16384,32			; DATA_PACKAGE_SIZE @ 0

	.sect	".rodata"
	.align	4
	.elfsym	NCC_DATA_PACKAGE_HEADER_SIZE,SYM_SIZE(4)
NCC_DATA_PACKAGE_HEADER_SIZE:
	.field	8,32			; NCC_DATA_PACKAGE_HEADER_SIZE @ 0

	.global	alg_log_trace
	.sect	".neardata", RW
	.align	4
	.elfsym	alg_log_trace,SYM_SIZE(4)
alg_log_trace:
	.field	0,32			; alg_log_trace @ 0

;	/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/opt6x --call_assumptions=0 --gen_opt_info=2 /tmp/05619aAXvsr /tmp/05619w5HEU5 --opt_info_filename=src/alg_interface.nfo 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterfaceD1Ev

;******************************************************************************
;* FUNCTION NAME: AlgInterface::~AlgInterface()                               *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : B3                                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN12AlgInterfaceD1Ev:
;** --------------------------------------------------------------------------*
;** 22	-----------------------    return this;
           RETNOP  .S2     B3,5              ; |22| 
           ; BRANCH OCCURS {B3}              ; |22| 
	.sect	".text:_ZN12AlgInterfaceD2Ev"
	.clink
	.global	_ZN12AlgInterfaceD2Ev

;******************************************************************************
;* FUNCTION NAME: AlgInterface::~AlgInterface() [subobject]                   *
;*                                                                            *
;*   Regs Modified     : A0,A4,B3,B30,B31                                     *
;*   Regs Used         : A0,A4,B3,SP,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN12AlgInterfaceD2Ev:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return AlgInterface::~AlgInterface(this);

           MV      .L1X    B3,A0
||         CALLP   .S2     _ZN12AlgInterfaceD1Ev,B3

$C$RL0:    ; CALL OCCURS {_ZN12AlgInterfaceD1Ev} {0} 
;** --------------------------------------------------------------------------*
           RETNOP  .S2X    A0,5
           ; BRANCH OCCURS {A0}  
	.sect	".text"
	.clink
	.global	_ZN12AlgInterfaceC1EiP18NCCCTChannelConfig

;******************************************************************************
;* FUNCTION NAME: AlgInterface::AlgInterface(int, NCCCTChannelConfig *)       *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : A4,A6,B3,B4                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN12AlgInterfaceC1EiP18NCCCTChannelConfig:
;** --------------------------------------------------------------------------*
;** 16	-----------------------    (*this).m_channel_index = channel_index;
;** 17	-----------------------    (*this).m_channel_config = config;
;** 18	-----------------------    return this;
           RETNOP  .S2     B3,3              ; |18| 
           STW     .D1T2   B4,*A4            ; |16| 
           STW     .D1T1   A6,*+A4(4)        ; |17| 
           ; BRANCH OCCURS {B3}              ; |18| 
	.sect	".text:_ZN12AlgInterfaceC2EiP18NCCCTChannelConfig"
	.clink
	.global	_ZN12AlgInterfaceC2EiP18NCCCTChannelConfig

;******************************************************************************
;* FUNCTION NAME: AlgInterface::AlgInterface(int, NCCCTChannelConfig *) [subobject]*
;*                                                                            *
;*   Regs Modified     : A0,A4,B3,B30,B31                                     *
;*   Regs Used         : A0,A4,A6,B3,B4,SP,B30,B31                            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN12AlgInterfaceC2EiP18NCCCTChannelConfig:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return AlgInterface::AlgInterface(this, $P$T0, $P$T1);

           MV      .L1X    B3,A0
||         CALLP   .S2     _ZN12AlgInterfaceC1EiP18NCCCTChannelConfig,B3

$C$RL1:    ; CALL OCCURS {_ZN12AlgInterfaceC1EiP18NCCCTChannelConfig} {0} 
;** --------------------------------------------------------------------------*
           RETNOP  .S2X    A0,5
           ; BRANCH OCCURS {A0}  
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface9IsStoppedEv

;******************************************************************************
;* FUNCTION NAME: AlgInterface::IsStopped()                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface9IsStoppedEv:
;** --------------------------------------------------------------------------*
;** 161	-----------------------    return Interpolation::IsStopped((*this).m_interpolator);
           CALLRET .S1     _ZN13Interpolation9IsStoppedEv ; |161| 
           LDW     .D1T1   *+A4(12),A4       ; |161| 
           NOP             4
$C$RL2:    ; CALL-RETURN OCCURS {_ZN13Interpolation9IsStoppedEv} 0  ; |161| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface9GetBufLenEv

;******************************************************************************
;* FUNCTION NAME: AlgInterface::GetBufLen()                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface9GetBufLenEv:
;** --------------------------------------------------------------------------*
;** 179	-----------------------    return Interpolation::GetBufLen((*this).m_interpolator);
           CALLRET .S1     _ZN13Interpolation9GetBufLenEv ; |179| 
           LDW     .D1T1   *+A4(12),A4       ; |179| 
           NOP             4
$C$RL3:    ; CALL-RETURN OCCURS {_ZN13Interpolation9GetBufLenEv} 0  ; |179| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface8IsPausedEi

;******************************************************************************
;* FUNCTION NAME: AlgInterface::IsPaused(int)                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface8IsPausedEi:
;** --------------------------------------------------------------------------*
;** 174	-----------------------    return Interpolation::IsPaused((*this).m_interpolator, axis_index);
           CALLRET .S1     _ZN13Interpolation8IsPausedEi ; |174| 
           LDW     .D1T1   *+A4(12),A4       ; |174| 
           NOP             4
$C$RL4:    ; CALL-RETURN OCCURS {_ZN13Interpolation8IsPausedEi} 0  ; |174| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface8ContinueEv

;******************************************************************************
;* FUNCTION NAME: AlgInterface::Continue()                                    *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface8ContinueEv:
;** --------------------------------------------------------------------------*
;** 124	-----------------------    Interpolation::Continue((*this).m_interpolator);
;**  	-----------------------    return;
           CALLRET .S1     _ZN13Interpolation8ContinueEv ; |124| 
           LDW     .D1T1   *+A4(12),A4       ; |124| 
           NOP             4
$C$RL5:    ; CALL-RETURN OCCURS {_ZN13Interpolation8ContinueEv} 0  ; |124| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface7SetModeE11ChannelMode

;******************************************************************************
;* FUNCTION NAME: AlgInterface::SetMode(ChannelMode)                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface7SetModeE11ChannelMode:
;** --------------------------------------------------------------------------*
;** 140	-----------------------    Interpolation::SetMode((*this).m_interpolator, channel_mode);
;**  	-----------------------    return;
           CALLRET .S1     _ZN13Interpolation7SetModeE11ChannelMode ; |140| 
           LDW     .D1T1   *+A4(12),A4       ; |140| 
           NOP             4
$C$RL6:    ; CALL-RETURN OCCURS {_ZN13Interpolation7SetModeE11ChannelMode} 0  ; |140| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface7ProcessEP8LineData

;******************************************************************************
;* FUNCTION NAME: AlgInterface::Process(LineData *)                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface7ProcessEP8LineData:
;** --------------------------------------------------------------------------*
;** 73	-----------------------    return LookAhead::Process((*this).m_look_ahead, line_data);
           CALLRET .S1     _ZN9LookAhead7ProcessEP8LineData ; |73| 
           LDW     .D1T1   *+A4(8),A4        ; |73| 
           NOP             4
$C$RL7:    ; CALL-RETURN OCCURS {_ZN9LookAhead7ProcessEP8LineData} 0  ; |73| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface5ResetEv

;******************************************************************************
;* FUNCTION NAME: AlgInterface::Reset()                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,*
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************
_ZN12AlgInterface5ResetEv:
;** --------------------------------------------------------------------------*
;** 129	-----------------------    LookAhead::Reset((*this).m_look_ahead);
;** 130	-----------------------    Interpolation::Reset((*this).m_interpolator);
;**  	-----------------------    return;
           STW     .D2T1   A11,*SP--(8)      ; |128| 

           STW     .D2T1   A10,*+SP(4)       ; |128| 
||         MV      .L1     A4,A10            ; |128| 

           MV      .L1X    B3,A11            ; |128| 
||         CALLP   .S2     _ZN9LookAhead5ResetEv,B3
||         LDW     .D1T1   *+A10(8),A4       ; |129| 

$C$RL8:    ; CALL OCCURS {_ZN9LookAhead5ResetEv} {0}  ; |129| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZN13Interpolation5ResetEv,B3
||         LDW     .D1T1   *+A10(12),A4      ; |130| 

$C$RL9:    ; CALL OCCURS {_ZN13Interpolation5ResetEv} {0}  ; |130| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3            ; |132| 

           RET     .S2     B3                ; |132| 
||         LDW     .D2T1   *+SP(4),A10       ; |132| 

           LDW     .D2T1   *++SP(8),A11      ; |132| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |132| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface5PauseEb

;******************************************************************************
;* FUNCTION NAME: AlgInterface::Pause(bool)                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,A19,A20,A21,*
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_ZN12AlgInterface5PauseEb:
;** --------------------------------------------------------------------------*
;** 118	-----------------------    LookAhead::Reset((*this).m_look_ahead);
;** 119	-----------------------    Interpolation::Pause((*this).m_interpolator, is_emergency_stop);
;**  	-----------------------    return;
           STW     .D2T2   B13,*SP--(8)      ; |117| 

           STDW    .D2T1   A11:A10,*SP--     ; |117| 
||         MV      .L1     A4,A10            ; |117| 

           MV      .L2     B3,B13            ; |117| 
||         CALLP   .S2     _ZN9LookAhead5ResetEv,B3
||         LDW     .D1T1   *+A10(8),A4       ; |118| 
||         MV      .L1X    B4,A11            ; |117| 

$C$RL10:   ; CALL OCCURS {_ZN9LookAhead5ResetEv} {0}  ; |118| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZN13Interpolation5PauseEb,B3
||         LDW     .D1T1   *+A10(12),A4      ; |119| 
||         MV      .L2X    A11,B4            ; |117| 

$C$RL11:   ; CALL OCCURS {_ZN13Interpolation5PauseEb} {0}  ; |119| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |121| 

           RET     .S2     B3                ; |121| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |121| 

           LDW     .D2T2   *++SP(8),B13      ; |121| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |121| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface4InitEPFiP8LineDataPvEPFvhdS2_EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS9_EP17NCCCTChannelStateP20ChannelRealtimeStateS2_

;******************************************************************************
;* FUNCTION NAME: AlgInterface::Init(int (*)(LineData *, void *), void (*)(unsigned char, double, void *), void (*)(TraceLevel, TraceModule, char *), void (*)(LogLevel, char *), NCCCTChannelState *, ChannelRealtimeState *, void *)*
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B11,B13,SP,A16,*
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,DP,*
;*                           SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,  *
;*                           A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22, *
;*                           B23,B24,B25,B26,B27,B28,B29,B30,B31              *
;*   Local Frame Size  : 8 Args + 0 Auto + 40 Save = 48 byte                  *
;******************************************************************************
_ZN12AlgInterface4InitEPFiP8LineDataPvEPFvhdS2_EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS9_EP17NCCCTChannelStateP20ChannelRealtimeStateS2_:
;** --------------------------------------------------------------------------*
;** 34	-----------------------    v$1 = alg_log_trace;
;** 34	-----------------------    if ( v$1 ) goto g6;

           STW     .D2T2   B13,*SP--(8)      ; |32| 
||         MV      .L2     B3,B13            ; |32| 

           STDW    .D2T1   A15:A14,*SP--     ; |32| 
||         MV      .L1X    B6,A15            ; |32| 

           MV      .L1     A4,A12            ; |32| 
||         MVK     .S1     0x8,A4            ; |35| 
||         STDW    .D2T1   A13:A12,*SP--     ; |32| 

           STDW    .D2T1   A11:A10,*SP--     ; |32| 
           STW     .D2T2   B11,*SP--(16)     ; |32| 
           LDW     .D2T2   *+DP(alg_log_trace),B0 ; |34| 
           MV      .L1X    B4,A13            ; |32| 
           MV      .L1     A10,A11           ; |32| 
           MV      .L1X    B8,A14            ; |32| 
           MV      .L1     A6,A10            ; |32| 
   [ B0]   B       .S1     $C$L2             ; |34| 
   [!B0]   CALL    .S1     _Znwj             ; |35| 
   [ B0]   CALL    .S1     _ZN11ALGLogTrace10PrintTraceE10TraceLevel11TraceModulePcz ; |41| 
           MV      .L2X    A8,B11            ; |32| 
   [ B0]   MVKL    .S2     $C$SL1+0,B4
   [ B0]   MVKH    .S2     $C$SL1+0,B4
           ; BRANCHCC OCCURS {$C$L2}         ; |34| 
;** --------------------------------------------------------------------------*
;** 35	-----------------------    $P$T4 = (struct LGLogTrace *)operator new (8u);
;** 35	-----------------------    if ( $P$T4 ) goto g4;
;** 35	-----------------------    alg_log_trace = NULL;
;** 35	-----------------------    v$1 = NULL;
;** 35	-----------------------    goto g5;
           ADDKPC  .S2     $C$RL12,B3,0      ; |35| 
$C$RL12:   ; CALL OCCURS {_Znwj} {0}         ; |35| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |35| 
||         ZERO    .L2     B0                ; |35| 
||         ZERO    .S2     B4                ; |35| 
||         MV      .S1X    B11,A6            ; |35| 

   [!A0]   B       .S1     $C$L1             ; |35| 
|| [ A0]   MVK     .L2     0x1,B0            ; nullify predicate
|| [!A0]   STW     .D2T2   B4,*+DP(alg_log_trace) ; |35| 
||         MV      .S2X    A15,B4            ; |35| 

   [ A0]   CALL    .S1     _ZN11ALGLogTraceC1EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS2_E ; |35| 
   [!B0]   BNOP    .S1     $C$L5,3           ; |36| 
           ; BRANCHCC OCCURS {$C$L1}         ; |35| 
;** --------------------------------------------------------------------------*
;**	-----------------------g4:
;** 35	-----------------------    v$1 = ALGLogTrace::ALGLogTrace($P$T4, AlgPrintTrace, AlgPrintLog);
;** 35	-----------------------    alg_log_trace = v$1;
           ADDKPC  .S2     $C$RL13,B3,0      ; |35| 
$C$RL13:   ; CALL OCCURS {_ZN11ALGLogTraceC1EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS2_E} {0}  ; |35| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A4,B0             ; |35| 
   [!B0]   BNOP    .S1     $C$L5,2           ; |36| 
           STW     .D2T2   B0,*+DP(alg_log_trace) ; |35| 
;** --------------------------------------------------------------------------*
$C$L1:    
;**	-----------------------g5:
;** 36	-----------------------    if ( v$1 == NULL ) goto g11;
           NOP             2
           ; BRANCHCC OCCURS {$C$L5}         ; |36| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ZN11ALGLogTrace10PrintTraceE10TraceLevel11TraceModulePcz ; |41| 
           MVKL    .S2     $C$SL1+0,B4
           MVKH    .S2     $C$SL1+0,B4
           NOP             1
;** --------------------------------------------------------------------------*
$C$L2:    
;**	-----------------------g6:
;** 41	-----------------------    ALGLogTrace::PrintTrace(v$1, 2, 508, (char *)"Greetings!!!@0x%x", v$1);
;** 42	-----------------------    $P$T2 = (struct nterpolation *)operator new (17080u);
;** 42	-----------------------    ($P$T2 != NULL) ? (S$2 = Interpolation::Interpolation($P$T2, (unsigned short)(*this).m_channel_index, (*this).m_channel_config, channel_state, realtime_state, OutputData, SetPosInMachining, arg1)) : (S$2 = NULL);
           STW     .D2T2   B0,*+SP(8)        ; |41| 

           STW     .D2T2   B4,*+SP(4)        ; |41| 
||         MVK     .L2     0x2,B4            ; |41| 
||         MVK     .S1     0x1fc,A6          ; |41| 
||         MV      .L1X    B0,A4             ; |41| 
||         ADDKPC  .S2     $C$RL14,B3,0      ; |41| 

$C$RL14:   ; CALL OCCURS {_ZN11ALGLogTrace10PrintTraceE10TraceLevel11TraceModulePcz} {0}  ; |41| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _Znwj,B3
||         MVK     .S1     0x42b8,A4         ; |42| 

$C$RL15:   ; CALL OCCURS {_Znwj} {0}         ; |42| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A4,B0             ; |42| 
||         ZERO    .L1     A0                ; |42| 
||         MV      .S1     A11,A8            ; |42| 

   [!B0]   B       .S2     $C$L3             ; |42| 
|| [ B0]   MVK     .L1     0x1,A0            ; |48| nullify predicate
|| [ B0]   LDW     .D1T1   *+A12(4),A6       ; |42| 
|| [!B0]   MV      .S1     A0,A4             ; |48| 
||         MV      .L2X    A13,B8            ; |42| 

   [ B0]   CALL    .S1     _ZN13InterpolationC1EtP18NCCCTChannelConfigP17NCCCTChannelStateP20ChannelRealtimeStatePFiP8LineDataPvEPFvhdS8_ES8_ ; |42| 
|| [ B0]   LDHU    .D1T2   *A12,B4           ; |42| 
||         MV      .L2X    A14,B6            ; |42| 

   [!A0]   BNOP    .S1     $C$L5,3           ; |44| 
|| [!B0]   STW     .D1T1   A0,*+A12(12)      ; |42| 

           ; BRANCHCC OCCURS {$C$L3}         ; |42| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     $C$RL16,B3,0      ; |42| 
$C$RL16:   ; CALL OCCURS {_ZN13InterpolationC1EtP18NCCCTChannelConfigP17NCCCTChannelStateP20ChannelRealtimeStatePFiP8LineDataPvEPFvhdS8_ES8_} {0}  ; |42| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |42| 
   [!A0]   BNOP    .S1     $C$L5,2           ; |44| 

           MV      .L1     A0,A4             ; |48| 
||         STW     .D1T1   A0,*+A12(12)      ; |42| 

;** --------------------------------------------------------------------------*
$C$L3:    
;** 42	-----------------------    (*this).m_interpolator = S$2;
;** 44	-----------------------    if ( S$2 == NULL ) goto g11;
   [ A0]   CALL    .S1     _ZN13Interpolation4InitEv ; |48| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L5}         ; |44| 
;** --------------------------------------------------------------------------*
;** 48	-----------------------    if ( !(res = Interpolation::Init(S$2)) ) goto g9;
;** 50	-----------------------    return res;
           ADDKPC  .S2     $C$RL17,B3,3      ; |48| 
$C$RL17:   ; CALL OCCURS {_ZN13Interpolation4InitEv} {0}  ; |48| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |48| 
   [ A0]   B       .S1     $C$L6             ; |50| 
   [!A0]   CALL    .S1     _Znwj             ; |53| 
           MV      .L1     A4,A3             ; |48| 
           MVK     .S1     0x688,A4          ; |53| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L6}         ; |50| 
;** --------------------------------------------------------------------------*
;**	-----------------------g9:
;** 53	-----------------------    $P$T3 = (struct ookAhead *)operator new (1672u);
;** 53	-----------------------    ($P$T3 != NULL) ? (S$1 = LookAhead::LookAhead($P$T3, (*this).m_interpolator, (unsigned short)(*this).m_channel_index, (*this).m_channel_config, realtime_state)) : (S$1 = NULL);
           ADDKPC  .S2     $C$RL18,B3,0      ; |53| 
$C$RL18:   ; CALL OCCURS {_Znwj} {0}         ; |53| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A4,B0             ; |53| 
||         ZERO    .L1     A0                ; |53| 
||         MV      .S1     A11,A8            ; |53| 

   [!B0]   B       .S2     $C$L4             ; |53| 
|| [ B0]   MVK     .L1     0x1,A0            ; |59| nullify predicate
|| [ B0]   LDW     .D1T2   *+A12(4),B6       ; |53| 
|| [!B0]   MV      .S1     A0,A4             ; |59| 

   [ B0]   CALL    .S1     _ZN9LookAheadC1EP13InterpolationtP18NCCCTChannelConfigP20ChannelRealtimeState ; |53| 
|| [ B0]   LDHU    .D1T1   *A12,A6           ; |53| 

   [!A0]   BNOP    .S1     $C$L6,2           ; |55| 
|| [ B0]   LDW     .D1T2   *+A12(12),B4      ; |53| 

   [!B0]   STW     .D1T1   A0,*+A12(8)       ; |53| 
           ; BRANCHCC OCCURS {$C$L4}         ; |53| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     $C$RL19,B3,0      ; |53| 
$C$RL19:   ; CALL OCCURS {_ZN9LookAheadC1EP13InterpolationtP18NCCCTChannelConfigP20ChannelRealtimeState} {0}  ; |53| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |53| 
   [!A0]   BNOP    .S1     $C$L6,2           ; |55| 

           MV      .L1     A0,A4             ; |59| 
||         STW     .D1T1   A0,*+A12(8)       ; |53| 

;** --------------------------------------------------------------------------*
$C$L4:    
;** 53	-----------------------    (*this).m_look_ahead = S$1;
;** 55	-----------------------    if ( S$1 == NULL ) goto g11;
   [ A0]   CALL    .S1     _ZN9LookAhead4InitEv ; |59| 
   [!A0]   MVK     .S1     0xa8c,A3          ; |57| 
           ; BRANCHCC OCCURS {$C$L6}         ; |55| 
;** --------------------------------------------------------------------------*
;** 59	-----------------------    res = LookAhead::Init(S$1);
;** 61	-----------------------    return res;
           ADDKPC  .S2     $C$RL20,B3,3      ; |59| 
$C$RL20:   ; CALL OCCURS {_ZN9LookAhead4InitEv} {0}  ; |59| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(16),B11     ; |64| 
           LDDW    .D2T1   *++SP,A11:A10     ; |64| 

           LDDW    .D2T1   *++SP,A13:A12     ; |64| 
||         MV      .L2     B13,B3            ; |64| 

           LDDW    .D2T1   *++SP,A15:A14     ; |64| 
||         RET     .S2     B3                ; |64| 

           LDW     .D2T2   *++SP(8),B13      ; |64| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |64| 
;** --------------------------------------------------------------------------*
$C$L5:    
;**	-----------------------g11:
;** 57	-----------------------    return 2700;
           MVK     .S1     0xa8c,A3          ; |57| 
;** --------------------------------------------------------------------------*
$C$L6:    
           LDW     .D2T2   *++SP(16),B11     ; |64| 
           LDDW    .D2T1   *++SP,A11:A10     ; |64| 

           LDDW    .D2T1   *++SP,A13:A12     ; |64| 
||         MV      .L2     B13,B3            ; |64| 

           LDDW    .D2T1   *++SP,A15:A14     ; |64| 
||         RET     .S2     B3                ; |64| 

           LDW     .D2T2   *++SP(8),B13      ; |64| 
           MV      .L1     A3,A4             ; |57| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |64| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface23InsertInterpolationDataEP8LineData

;******************************************************************************
;* FUNCTION NAME: AlgInterface::InsertInterpolationData(LineData *)           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface23InsertInterpolationDataEP8LineData:
;** --------------------------------------------------------------------------*
;** 94	-----------------------    return Interpolation::InsertInterpolationData((*this).m_interpolator, data);
           CALLRET .S1     _ZN13Interpolation23InsertInterpolationDataEP8LineData ; |94| 
           LDW     .D1T1   *+A4(12),A4       ; |94| 
           NOP             4
$C$RL21:   ; CALL-RETURN OCCURS {_ZN13Interpolation23InsertInterpolationDataEP8LineData} 0  ; |94| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface19SetOptionalStopModeEb

;******************************************************************************
;* FUNCTION NAME: AlgInterface::SetOptionalStopMode(bool)                     *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface19SetOptionalStopModeEb:
;** --------------------------------------------------------------------------*
;** 150	-----------------------    Interpolation::SetOptionalStopMode((*this).m_interpolator, is_optional_stop);
;**  	-----------------------    return;
           CALLRET .S1     _ZN13Interpolation19SetOptionalStopModeEb ; |150| 
           LDW     .D1T1   *+A4(12),A4       ; |150| 
           NOP             4
$C$RL22:   ; CALL-RETURN OCCURS {_ZN13Interpolation19SetOptionalStopModeEb} 0  ; |150| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface17SetSingleLineModeEb

;******************************************************************************
;* FUNCTION NAME: AlgInterface::SetSingleLineMode(bool)                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface17SetSingleLineModeEb:
;** --------------------------------------------------------------------------*
;** 145	-----------------------    Interpolation::SetSingleLineMode((*this).m_interpolator, is_single_line_mode);
;**  	-----------------------    return;
           CALLRET .S1     _ZN13Interpolation17SetSingleLineModeEb ; |145| 
           LDW     .D1T1   *+A4(12),A4       ; |145| 
           NOP             4
$C$RL23:   ; CALL-RETURN OCCURS {_ZN13Interpolation17SetSingleLineModeEb} 0  ; |145| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface17SetRetRefPosStateEbh

;******************************************************************************
;* FUNCTION NAME: AlgInterface::SetRetRefPosState(bool, unsigned char)        *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface17SetRetRefPosStateEbh:
;** --------------------------------------------------------------------------*
;** 156	-----------------------    Interpolation::SetRetRefPosState((*this).m_interpolator, returning_ref_pos, cur_mode);
;**  	-----------------------    return;
           CALLRET .S1     _ZN13Interpolation17SetRetRefPosStateEbh ; |156| 
           LDW     .D1T1   *+A4(12),A4       ; |156| 
           NOP             4
$C$RL24:   ; CALL-RETURN OCCURS {_ZN13Interpolation17SetRetRefPosStateEbh} 0  ; |156| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface16IsIntpBufferFullEh

;******************************************************************************
;* FUNCTION NAME: AlgInterface::IsIntpBufferFull(unsigned char)               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface16IsIntpBufferFullEh:
;** --------------------------------------------------------------------------*
;** 85	-----------------------    return Interpolation::IsBufferFull((*this).m_interpolator, mode);
           CALLRET .S1     _ZNK13Interpolation12IsBufferFullEh ; |85| 
           LDW     .D1T1   *+A4(12),A4       ; |85| 
           NOP             4
$C$RL25:   ; CALL-RETURN OCCURS {_ZNK13Interpolation12IsBufferFullEh} 0  ; |85| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface14SetAxisMoveCmdE12NCCCmdNumbertbddb

;******************************************************************************
;* FUNCTION NAME: AlgInterface::SetAxisMoveCmd(NCCCmdNumber, unsigned short, bool, double, double, bool)*
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface14SetAxisMoveCmdE12NCCCmdNumbertbddb:
;** --------------------------------------------------------------------------*
;** 79	-----------------------    Interpolation::SetAxisMoveCmd((*this).m_interpolator, move_cmd, axis_index, step_mode, speed, distance, is_accumulative);
;**  	-----------------------    return;
           CALLRET .S1     _ZN13Interpolation14SetAxisMoveCmdE12NCCCmdNumbertbddb ; |79| 
           LDW     .D1T1   *+A4(12),A4       ; |79| 
           NOP             4
$C$RL26:   ; CALL-RETURN OCCURS {_ZN13Interpolation14SetAxisMoveCmdE12NCCCmdNumbertbddb} 0  ; |79| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface14IsLABufferFullEv

;******************************************************************************
;* FUNCTION NAME: AlgInterface::IsLABufferFull()                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface14IsLABufferFullEv:
;** --------------------------------------------------------------------------*
;** 90	-----------------------    return LookAhead::IsBufFull((*this).m_look_ahead);
           CALLRET .S1     _ZN9LookAhead9IsBufFullEv ; |90| 
           LDW     .D1T1   *+A4(8),A4        ; |90| 
           NOP             4
$C$RL27:   ; CALL-RETURN OCCURS {_ZN9LookAhead9IsBufFullEv} 0  ; |90| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface14GetCurLineDataEP8LineData

;******************************************************************************
;* FUNCTION NAME: AlgInterface::GetCurLineData(LineData *)                    *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface14GetCurLineDataEP8LineData:
;** --------------------------------------------------------------------------*
;** 102	-----------------------    return Interpolation::GetCurLineData((*this).m_interpolator, data);
           CALLRET .S1     _ZNK13Interpolation14GetCurLineDataEP8LineData ; |102| 
           LDW     .D1T1   *+A4(12),A4       ; |102| 
           NOP             4
$C$RL28:   ; CALL-RETURN OCCURS {_ZNK13Interpolation14GetCurLineDataEP8LineData} 0  ; |102| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface13SetIntpCurPosEtd

;******************************************************************************
;* FUNCTION NAME: AlgInterface::SetIntpCurPos(unsigned short, double)         *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface13SetIntpCurPosEtd:
;** --------------------------------------------------------------------------*
;** 106	-----------------------    Interpolation::SetCurPos((*this).m_interpolator, axis_index, pos);
;**  	-----------------------    return;
           CALLRET .S1     _ZN13Interpolation9SetCurPosEtd ; |106| 
           LDW     .D1T1   *+A4(12),A4       ; |106| 
           NOP             4
$C$RL29:   ; CALL-RETURN OCCURS {_ZN13Interpolation9SetCurPosEtd} 0  ; |106| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface12SetHeartbeatEb

;******************************************************************************
;* FUNCTION NAME: AlgInterface::SetHeartbeat(bool)                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface12SetHeartbeatEb:
;** --------------------------------------------------------------------------*
;** 165	-----------------------    Interpolation::SetHeartbeat((*this).m_interpolator, system_ready);
;**  	-----------------------    return;
           CALLRET .S1     _ZN13Interpolation12SetHeartbeatEb ; |165| 
           LDW     .D1T1   *+A4(12),A4       ; |165| 
           NOP             4
$C$RL30:   ; CALL-RETURN OCCURS {_ZN13Interpolation12SetHeartbeatEb} 0  ; |165| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface12SetAlgCurPosEtd

;******************************************************************************
;* FUNCTION NAME: AlgInterface::SetAlgCurPos(unsigned short, double)          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************
_ZN12AlgInterface12SetAlgCurPosEtd:
;** --------------------------------------------------------------------------*
;** 112	-----------------------    LookAhead::SetCurPos((*this).m_look_ahead, axis_index, pos);
;** 113	-----------------------    Interpolation::SetCurPos((*this).m_interpolator, axis_index, pos);
;**  	-----------------------    return;
           STW     .D2T2   B13,*SP--(8)      ; |111| 
           STDW    .D2T1   A13:A12,*SP--     ; |111| 

           STDW    .D2T1   A11:A10,*SP--     ; |111| 
||         MV      .L1     A4,A10            ; |111| 
||         MV      .S1     A7,A12            ; |111| 

           MV      .L2     B3,B13            ; |111| 
||         CALLP   .S2     _ZN9LookAhead9SetCurPosEtd,B3
||         LDW     .D1T1   *+A10(8),A4       ; |112| 
||         MV      .L1X    B4,A11            ; |111| 
||         MV      .S1     A6,A13            ; |111| 

$C$RL31:   ; CALL OCCURS {_ZN9LookAhead9SetCurPosEtd} {0}  ; |112| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZN13Interpolation9SetCurPosEtd,B3
||         LDW     .D1T1   *+A10(12),A4      ; |113| 
||         MV      .L2X    A11,B4            ; |113| 
||         MV      .L1     A13,A6            ; |113| 
||         MV      .S1     A12,A7            ; |113| 

$C$RL32:   ; CALL OCCURS {_ZN13Interpolation9SetCurPosEtd} {0}  ; |113| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *++SP,A11:A10     ; |115| 
||         MV      .L2     B13,B3            ; |115| 

           LDDW    .D2T1   *++SP,A13:A12     ; |115| 
||         RET     .S2     B3                ; |115| 

           LDW     .D2T2   *++SP(8),B13      ; |115| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |115| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface11SetFeedRateE9RatioTyped

;******************************************************************************
;* FUNCTION NAME: AlgInterface::SetFeedRate(RatioType, double)                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface11SetFeedRateE9RatioTyped:
;** --------------------------------------------------------------------------*
;** 135	-----------------------    Interpolation::SetFeedRate((*this).m_interpolator, type, feed_rate);
;**  	-----------------------    return;
           CALLRET .S1     _ZN13Interpolation11SetFeedRateE9RatioTyped ; |135| 
           LDW     .D1T1   *+A4(12),A4       ; |135| 
           NOP             4
$C$RL33:   ; CALL-RETURN OCCURS {_ZN13Interpolation11SetFeedRateE9RatioTyped} 0  ; |135| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface11InterpolateEv

;******************************************************************************
;* FUNCTION NAME: AlgInterface::Interpolate()                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface11InterpolateEv:
;** --------------------------------------------------------------------------*
;** 68	-----------------------    Interpolation::Interpolate((*this).m_interpolator);
;**  	-----------------------    return;
           CALLRET .S1     _ZN13Interpolation11InterpolateEv ; |68| 
           LDW     .D1T1   *+A4(12),A4       ; |68| 
           NOP             4
$C$RL34:   ; CALL-RETURN OCCURS {_ZN13Interpolation11InterpolateEv} 0  ; |68| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface11AddIntpDataEP8LineData

;******************************************************************************
;* FUNCTION NAME: AlgInterface::AddIntpData(LineData *)                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface11AddIntpDataEP8LineData:
;** --------------------------------------------------------------------------*
;** 98	-----------------------    return Interpolation::AddIntpData((*this).m_interpolator, data);
           CALLRET .S1     _ZN13Interpolation11AddIntpDataEP8LineData ; |98| 
           LDW     .D1T1   *+A4(12),A4       ; |98| 
           NOP             4
$C$RL35:   ; CALL-RETURN OCCURS {_ZN13Interpolation11AddIntpDataEP8LineData} 0  ; |98| 
	.sect	".text"
	.clink
	.global	_ZN12AlgInterface10GetCurModeEv

;******************************************************************************
;* FUNCTION NAME: AlgInterface::GetCurMode()                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN12AlgInterface10GetCurModeEv:
;** --------------------------------------------------------------------------*
;** 170	-----------------------    return Interpolation::GetCurMode((*this).m_interpolator);
           CALLRET .S1     _ZN13Interpolation10GetCurModeEv ; |170| 
           LDW     .D1T1   *+A4(12),A4       ; |170| 
           NOP             4
$C$RL36:   ; CALL-RETURN OCCURS {_ZN13Interpolation10GetCurModeEv} 0  ; |170| 
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const:.string"
$C$SL1:	.string	"Greetings!!!@0x%x",0
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_Znwj
	.global	_ZN11ALGLogTraceC1EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS2_E
	.global	_ZN11ALGLogTrace10PrintTraceE10TraceLevel11TraceModulePcz
	.global	_ZN9LookAheadC1EP13InterpolationtP18NCCCTChannelConfigP20ChannelRealtimeState
	.global	_ZN9LookAhead4InitEv
	.global	_ZN9LookAhead7ProcessEP8LineData
	.global	_ZN9LookAhead5ResetEv
	.global	_ZN9LookAhead9SetCurPosEtd
	.global	_ZN9LookAhead9IsBufFullEv
	.global	_ZN13InterpolationC1EtP18NCCCTChannelConfigP17NCCCTChannelStateP20ChannelRealtimeStatePFiP8LineDataPvEPFvhdS8_ES8_
	.global	_ZN13Interpolation4InitEv
	.global	_ZN13Interpolation11InterpolateEv
	.global	_ZNK13Interpolation12IsBufferFullEh
	.global	_ZN13Interpolation23InsertInterpolationDataEP8LineData
	.global	_ZN13Interpolation11AddIntpDataEP8LineData
	.global	_ZNK13Interpolation14GetCurLineDataEP8LineData
	.global	_ZN13Interpolation9SetCurPosEtd
	.global	_ZN13Interpolation5PauseEb
	.global	_ZN13Interpolation8ContinueEv
	.global	_ZN13Interpolation5ResetEv
	.global	_ZN13Interpolation11SetFeedRateE9RatioTyped
	.global	_ZN13Interpolation7SetModeE11ChannelMode
	.global	_ZN13Interpolation17SetSingleLineModeEb
	.global	_ZN13Interpolation19SetOptionalStopModeEb
	.global	_ZN13Interpolation14SetAxisMoveCmdE12NCCCmdNumbertbddb
	.global	_ZN13Interpolation17SetRetRefPosStateEbh
	.global	_ZN13Interpolation9IsStoppedEv
	.global	_ZN13Interpolation12SetHeartbeatEb
	.global	_ZN13Interpolation10GetCurModeEv
	.global	_ZN13Interpolation8IsPausedEi
	.global	_ZN13Interpolation9GetBufLenEv

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_Long_Precision_Bits(2)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "TI", Tag_File, 1, Tag_ABI_enum_size(2)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_wchar_t(1)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_array_object_alignment(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_array_object_align_expected(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_PIC(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_PID(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_DSBT(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_stack_align_needed(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_stack_align_preserved(0)
	.battr "TI", Tag_File, 1, Tag_Tramps_Use_SOC(1)
