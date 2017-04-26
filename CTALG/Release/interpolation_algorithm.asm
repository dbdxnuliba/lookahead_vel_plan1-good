;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.3.4 *
;* Date/Time created: Sat Apr 22 16:22:06 2017                                *
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
	.symalias _ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState, _ZN22InterpolationAlgorithmC1EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState
	.symalias _ZN22InterpolationAlgorithmD2Ev, _ZN22InterpolationAlgorithmD1Ev
	.sect	".rodata"
	.align	4
	.elfsym	MAX_AXIS_NUM,SYM_SIZE(4)
MAX_AXIS_NUM:
	.field	64,32			; MAX_AXIS_NUM @ 0

	.sect	".rodata"
	.align	4
	.elfsym	MAX_M_PER_LINE,SYM_SIZE(4)
MAX_M_PER_LINE:
	.field	3,32			; MAX_M_PER_LINE @ 0

	.sect	".rodata"
	.align	4
	.elfsym	MAX_EXTRA_DATA_NUMBER,SYM_SIZE(4)
MAX_EXTRA_DATA_NUMBER:
	.field	12,32			; MAX_EXTRA_DATA_NUMBER @ 0

	.sect	".rodata"
	.align	4
	.elfsym	RESET_VALID_NUM,SYM_SIZE(4)
RESET_VALID_NUM:
	.field	20,32			; RESET_VALID_NUM @ 0

	.sect	".rodata"
	.align	4
	.elfsym	PAUSE_VALID_NUM,SYM_SIZE(4)
PAUSE_VALID_NUM:
	.field	20,32			; PAUSE_VALID_NUM @ 0

	.sect	".rodata"
	.align	4
	.elfsym	MAX_FILE_NAME_LEN,SYM_SIZE(4)
MAX_FILE_NAME_LEN:
	.field	256,32			; MAX_FILE_NAME_LEN @ 0

	.sect	".rodata"
	.align	4
	.elfsym	G_CODE_GROUP_NUM,SYM_SIZE(4)
G_CODE_GROUP_NUM:
	.field	32,32			; G_CODE_GROUP_NUM @ 0

	.sect	".rodata"
	.align	4
	.elfsym	MAX_TOOL_NUM,SYM_SIZE(4)
MAX_TOOL_NUM:
	.field	100,32			; MAX_TOOL_NUM @ 0

	.sect	".rodata"
	.align	4
	.elfsym	MAX_POT_NUM,SYM_SIZE(4)
MAX_POT_NUM:
	.field	100,32			; MAX_POT_NUM @ 0

	.global	_ZTV22InterpolationAlgorithm
	.sect	".const:_ZTV22InterpolationAlgorithm"
	.align	8
	.elfsym	_ZTV22InterpolationAlgorithm,SYM_SIZE(56)
_ZTV22InterpolationAlgorithm:
	.field	0,32			; _ZTV22InterpolationAlgorithm[0] @ 0
	.field	_ZTI22InterpolationAlgorithm,32		; _ZTV22InterpolationAlgorithm[1] @ 32
	.field	_ZN22InterpolationAlgorithmD1Ev,32		; _ZTV22InterpolationAlgorithm[2] @ 64
	.field	_ZN22InterpolationAlgorithmD0Ev,32		; _ZTV22InterpolationAlgorithm[3] @ 96
	.field	_ZN22InterpolationAlgorithm4InitE16SpeedProfileType,32		; _ZTV22InterpolationAlgorithm[4] @ 128
	.field	_ZN22InterpolationAlgorithm15GetCurrentSpeedEv,32		; _ZTV22InterpolationAlgorithm[5] @ 160
	.field	_ZN22InterpolationAlgorithm23IsInterpolationFinishedEv,32		; _ZTV22InterpolationAlgorithm[6] @ 192
	.field	__cxa_pure_virtual,32		; _ZTV22InterpolationAlgorithm[7] @ 224
	.field	_ZN22InterpolationAlgorithm13HasReachedEndEv,32		; _ZTV22InterpolationAlgorithm[8] @ 256
	.field	_ZN22InterpolationAlgorithm12PlanVelocityEddb,32		; _ZTV22InterpolationAlgorithm[9] @ 288
	.field	_ZN22InterpolationAlgorithm11InterpolateEP8LineData,32		; _ZTV22InterpolationAlgorithm[10] @ 320
	.field	__cxa_pure_virtual,32		; _ZTV22InterpolationAlgorithm[11] @ 352
	.field	__cxa_pure_virtual,32		; _ZTV22InterpolationAlgorithm[12] @ 384
	.field	__cxa_pure_virtual,32		; _ZTV22InterpolationAlgorithm[13] @ 416

	.global	_ZTI22InterpolationAlgorithm
	.sect	".const:_ZTI22InterpolationAlgorithm"
	.align	4
	.elfsym	_ZTI22InterpolationAlgorithm,SYM_SIZE(8)
_ZTI22InterpolationAlgorithm:
	.field	_ZTVN10__cxxabiv117__class_type_infoE+8,32		; _ZTI22InterpolationAlgorithm.base.__vptr @ 0
	.field	_ZTS22InterpolationAlgorithm,32		; _ZTI22InterpolationAlgorithm.base.__name @ 32

	.global	_ZTS22InterpolationAlgorithm
	.sect	".const:_ZTS22InterpolationAlgorithm"
	.align	8
	.elfsym	_ZTS22InterpolationAlgorithm,SYM_SIZE(25)
_ZTS22InterpolationAlgorithm:
	.field	50,8			; _ZTS22InterpolationAlgorithm[0] @ 0
	.field	50,8			; _ZTS22InterpolationAlgorithm[1] @ 8
	.field	73,8			; _ZTS22InterpolationAlgorithm[2] @ 16
	.field	110,8			; _ZTS22InterpolationAlgorithm[3] @ 24
	.field	116,8			; _ZTS22InterpolationAlgorithm[4] @ 32
	.field	101,8			; _ZTS22InterpolationAlgorithm[5] @ 40
	.field	114,8			; _ZTS22InterpolationAlgorithm[6] @ 48
	.field	112,8			; _ZTS22InterpolationAlgorithm[7] @ 56
	.field	111,8			; _ZTS22InterpolationAlgorithm[8] @ 64
	.field	108,8			; _ZTS22InterpolationAlgorithm[9] @ 72
	.field	97,8			; _ZTS22InterpolationAlgorithm[10] @ 80
	.field	116,8			; _ZTS22InterpolationAlgorithm[11] @ 88
	.field	105,8			; _ZTS22InterpolationAlgorithm[12] @ 96
	.field	111,8			; _ZTS22InterpolationAlgorithm[13] @ 104
	.field	110,8			; _ZTS22InterpolationAlgorithm[14] @ 112
	.field	65,8			; _ZTS22InterpolationAlgorithm[15] @ 120
	.field	108,8			; _ZTS22InterpolationAlgorithm[16] @ 128
	.field	103,8			; _ZTS22InterpolationAlgorithm[17] @ 136
	.field	111,8			; _ZTS22InterpolationAlgorithm[18] @ 144
	.field	114,8			; _ZTS22InterpolationAlgorithm[19] @ 152
	.field	105,8			; _ZTS22InterpolationAlgorithm[20] @ 160
	.field	116,8			; _ZTS22InterpolationAlgorithm[21] @ 168
	.field	104,8			; _ZTS22InterpolationAlgorithm[22] @ 176
	.field	109,8			; _ZTS22InterpolationAlgorithm[23] @ 184
	.field	0,8			; _ZTS22InterpolationAlgorithm[24] @ 192

;	/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/opt6x --call_assumptions=0 --gen_opt_info=2 /tmp/05675cS7EE4 /tmp/05675kS4wDT --opt_info_filename=src/interpolation/interpolation_algorithm.nfo 
	.sect	".text"
	.clink
	.global	_ZN22InterpolationAlgorithmD1Ev

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::~InterpolationAlgorithm()           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,DP,SP,A16,A17,A18,A19,A20,A21,*
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_ZN22InterpolationAlgorithmD1Ev:
;** --------------------------------------------------------------------------*
;** 33	-----------------------    C$12 = (*this).m_s_velocity_planning;
;** 33	-----------------------    if ( C$12 == NULL ) goto g3;
           STW     .D2T2   B10,*SP--(8)      ; |32| 

           STDW    .D2T1   A11:A10,*SP--     ; |32| 
||         MV      .L1     A4,A10            ; |32| 

           LDW     .D1T1   *+A10(16),A0      ; |33| 
           ZERO    .L2     B10               ; |35| 
           MV      .L1X    B3,A11            ; |32| 
           NOP             2

   [!A0]   B       .S1     $C$L1             ; |33| 
||         MV      .L1     A0,A4             ; |34| 

   [ A0]   CALL    .S1     _ZdlPv            ; |34| 
|| [!A0]   LDW     .D1T1   *+A10(20),A0      ; |37| 

           NOP             4
           ; BRANCHCC OCCURS {$C$L1}         ; |33| 
;** --------------------------------------------------------------------------*
;** 34	-----------------------    operator delete (C$12);
;** 35	-----------------------    (*this).m_s_velocity_planning = NULL;
           ADDKPC  .S2     $C$RL0,B3,0       ; |34| 
$C$RL0:    ; CALL OCCURS {_ZdlPv} {0}        ; |34| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(20),A0      ; |37| 
           STW     .D1T2   B10,*+A10(16)     ; |35| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L1:    
;**	-----------------------g3:
;** 37	-----------------------    C$11 = (*this).m_t_velocity_planning;
;** 37	-----------------------    if ( C$11 == NULL ) goto g5;

   [!A0]   B       .S1     $C$L2             ; |37| 
||         MV      .L1     A0,A4             ; |38| 

   [ A0]   CALL    .S1     _ZdlPv            ; |38| 
|| [!A0]   LDW     .D1T1   *+A10(32),A0      ; |41| 

           NOP             4
           ; BRANCHCC OCCURS {$C$L2}         ; |37| 
;** --------------------------------------------------------------------------*
;** 38	-----------------------    operator delete (C$11);
;** 39	-----------------------    (*this).m_t_velocity_planning = NULL;
           ADDKPC  .S2     $C$RL1,B3,0       ; |38| 
$C$RL1:    ; CALL OCCURS {_ZdlPv} {0}        ; |38| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(32),A0      ; |41| 
           STW     .D1T2   B10,*+A10(20)     ; |39| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L2:    
;**	-----------------------g5:
;** 41	-----------------------    C$10 = (*this).m_is_to_reset;
;** 41	-----------------------    if ( C$10 == NULL ) goto g7;

   [!A0]   B       .S1     $C$L3             ; |41| 
|| [!A0]   MV      .L2X    A11,B3            ; |44| 
||         MV      .L1     A0,A4             ; |42| 

   [ A0]   CALL    .S1     _ZdaPv            ; |42| 
|| [!A0]   MV      .L1     A10,A4            ; |44| 
|| [!A0]   LDDW    .D2T1   *++SP,A11:A10     ; |44| 

   [!A0]   RETNOP  .S2     B3,3              ; |44| 
|| [!A0]   LDW     .D2T2   *++SP(8),B10      ; |44| 

           ; BRANCHCC OCCURS {$C$L3}         ; |41| 
;** --------------------------------------------------------------------------*
;** 42	-----------------------    operator delete[] (C$10);
           ADDKPC  .S2     $C$RL2,B3,0       ; |42| 
$C$RL2:    ; CALL OCCURS {_ZdaPv} {0}        ; |42| 

           MV      .L2X    A11,B3            ; |44| 
||         MV      .L1     A10,A4            ; |44| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |44| 

           RETNOP  .S2     B3,3              ; |44| 
||         LDW     .D2T2   *++SP(8),B10      ; |44| 

;** --------------------------------------------------------------------------*
$C$L3:    
;**	-----------------------g7:
;** 44	-----------------------    return this;
           NOP             2
           ; BRANCH OCCURS {B3}              ; |44| 
	.sect	".text:_ZN22InterpolationAlgorithmD2Ev"
	.clink
	.global	_ZN22InterpolationAlgorithmD2Ev

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::~InterpolationAlgorithm() [subobject]*
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
_ZN22InterpolationAlgorithmD2Ev:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return InterpolationAlgorithm::~InterpolationAlgorithm(this);
           CALLRET .S1     _ZN22InterpolationAlgorithmD1Ev
           NOP             5
$C$RL3:    ; CALL-RETURN OCCURS {_ZN22InterpolationAlgorithmD1Ev} 0 
	.sect	".text"
	.clink
	.global	_ZN22InterpolationAlgorithmD0Ev

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::~InterpolationAlgorithm() [deleting]*
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,DP,SP,A16,A17,A18,A19,A20,A21,*
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_ZN22InterpolationAlgorithmD0Ev:
;** --------------------------------------------------------------------------*
;**  	-----------------------    if ( this == NULL ) goto g9;

           STW     .D2T2   B10,*SP--(8)
||         MV      .L1     A4,A0

           STDW    .D2T1   A11:A10,*SP--
|| [!A0]   B       .S1     $C$L7
||         MV      .L1     A4,A10

   [ A0]   LDW     .D1T1   *+A10(16),A0      ; |33| 
           MV      .L1X    B3,A11
           NOP             3
           ; BRANCHCC OCCURS {$C$L7}  
;** --------------------------------------------------------------------------*
;** 33	-----------------------    C$3 = (*this).m_s_velocity_planning;  // [18]
;** 33	-----------------------    if ( C$3 == NULL ) goto g4;  // [18]

   [!A0]   B       .S1     $C$L4             ; |33| 
||         MV      .L1     A0,A4             ; |34| 

   [ A0]   CALL    .S1     _ZdlPv            ; |34| 
|| [!A0]   LDW     .D1T1   *+A10(20),A0      ; |37| 

           ZERO    .L2     B10               ; |35| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L4}         ; |33| 
;** --------------------------------------------------------------------------*
;** 34	-----------------------    operator delete (C$3);  // [18]
;** 35	-----------------------    (*this).m_s_velocity_planning = NULL;  // [18]
           ADDKPC  .S2     $C$RL4,B3,0       ; |34| 
$C$RL4:    ; CALL OCCURS {_ZdlPv} {0}        ; |34| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(20),A0      ; |37| 
           STW     .D1T2   B10,*+A10(16)     ; |35| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L4:    
;**	-----------------------g4:
;** 37	-----------------------    C$2 = (*this).m_t_velocity_planning;  // [18]
;** 37	-----------------------    if ( C$2 == NULL ) goto g6;  // [18]

   [!A0]   B       .S1     $C$L5             ; |37| 
||         MV      .L1     A0,A4             ; |38| 

   [ A0]   CALL    .S1     _ZdlPv            ; |38| 
|| [!A0]   LDW     .D1T1   *+A10(32),A0      ; |41| 

           NOP             4
           ; BRANCHCC OCCURS {$C$L5}         ; |37| 
;** --------------------------------------------------------------------------*
;** 38	-----------------------    operator delete (C$2);  // [18]
;** 39	-----------------------    (*this).m_t_velocity_planning = NULL;  // [18]
           ADDKPC  .S2     $C$RL5,B3,0       ; |38| 
$C$RL5:    ; CALL OCCURS {_ZdlPv} {0}        ; |38| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(32),A0      ; |41| 
           STW     .D1T2   B10,*+A10(20)     ; |39| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L5:    
;**	-----------------------g6:
;** 41	-----------------------    C$1 = (*this).m_is_to_reset;  // [18]
;** 41	-----------------------    if ( C$1 == NULL ) goto g8;  // [18]
   [!A0]   B       .S1     $C$L6             ; |41| 
   [ A0]   CALL    .S1     _ZdaPv            ; |42| 
   [!A0]   CALL    .S1     _ZdlPv
           MV      .L1     A0,A4             ; |42| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L6}         ; |41| 
;** --------------------------------------------------------------------------*
;** 42	-----------------------    operator delete[] (C$1);  // [18]
           ADDKPC  .S2     $C$RL6,B3,0       ; |42| 
$C$RL6:    ; CALL OCCURS {_ZdaPv} {0}        ; |42| 
           CALL    .S1     _ZdlPv
           NOP             3
;** --------------------------------------------------------------------------*
$C$L6:    
;**	-----------------------g8:
;**  	-----------------------    operator delete ((void * const)this);
;**	-----------------------g9:
;**  	-----------------------    return;
           MV      .L1     A10,A4
           ADDKPC  .S2     $C$RL7,B3,0
$C$RL7:    ; CALL OCCURS {_ZdlPv} {0} 
;** --------------------------------------------------------------------------*
$C$L7:    
           MV      .L2X    A11,B3

           RET     .S2     B3
||         LDDW    .D2T1   *++SP,A11:A10

           LDW     .D2T2   *++SP(8),B10
           NOP             4
           ; BRANCH OCCURS {B3}  
	.sect	".text"
	.clink
	.global	_ZN22InterpolationAlgorithm15SetChannelIndexEiP18NCCCTChannelConfig

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::SetChannelIndex(int, NCCCTChannelConfig *)*
;*                                                                            *
;*   Regs Modified     : A3                                                   *
;*   Regs Used         : A3,A4,A6,B3,B4                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN22InterpolationAlgorithm15SetChannelIndexEiP18NCCCTChannelConfig:
;** --------------------------------------------------------------------------*
;** 253	-----------------------    (*this).m_channel_index = channel_index;
;** 254	-----------------------    (*this).m_channel_config = channel_config;
;**  	-----------------------    return;
           RETNOP  .S2     B3,3              ; |255| 

           MVK     .S1     37,A3             ; |253| 
||         STW     .D1T1   A6,*+A4(40)       ; |254| 

           STB     .D1T2   B4,*+A4[A3]       ; |253| 
           ; BRANCH OCCURS {B3}              ; |255| 
	.sect	".text"
	.clink
	.global	_ZN22InterpolationAlgorithmC1EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::InterpolationAlgorithm(Geometry *, DynamicInfo **, int, NCCCTChannelConfig *, ChannelRealtimeState *)*
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,B4,B5,B6,B7,A16,A17                   *
;*   Regs Used         : A0,A3,A4,A5,A6,A8,B3,B4,B5,B6,B7,B8,DP,SP,A16,A17    *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN22InterpolationAlgorithmC1EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState:
;** --------------------------------------------------------------------------*
;** 19	-----------------------    (*this).__vptr = &Virtual function table for InterpolationAlgorithm[2];
;** 253	-----------------------    (*this).m_channel_index = channel_index;  // [29]
;** 254	-----------------------    (*this).m_channel_config = channel_config;  // [29]
;** 22	-----------------------    (*this).m_realtime_state = realtime_state;
;** 24	-----------------------    (*this).m_interpolation_cycle = (double)(*channel_config).interpolation_cycle*9.99999999999999954748e-7;
;** 25	-----------------------    (*this).m_geometry = geometry;
;** 26	-----------------------    (*this).m_dynamic_info = dynamic_info;
;** 27	-----------------------    if ( !(*channel_config).axis_number ) goto g4;
;**  	-----------------------    K$29 = 0;
;** 27	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MV      .L1     A4,A3             ; |19| 
||         ADDAW   .D1     A8,17,A4          ; |24| 
||         MV      .L2X    A6,B5             ; |19| 
||         MVK     .S1     37,A6             ; |253| 
||         MVKL    .S2     _ZTV22InterpolationAlgorithm+8,B7

           LDHU    .D1T1   *A4,A4            ; |24| 
||         MVKL    .S1     0x3eb0c6f7,A17
||         MVKH    .S2     _ZTV22InterpolationAlgorithm+8,B7

           STB     .D1T2   B6,*+A3[A6]       ; |253| 
           MVKL    .S1     0xa0b5ed8d,A16
           LDBU    .D1T1   *+A8(2),A0        ; |27| 
           MVKH    .S1     0x3eb0c6f7,A17
           INTDPU  .L1     A4,A5:A4          ; |24| 
           STW     .D1T2   B7,*A3            ; |19| 
           MVKH    .S1     0xa0b5ed8d,A16
           STW     .D1T1   A8,*+A3(40)       ; |254| 
           STW     .D1T2   B8,*+A3(44)       ; |22| 
           MPYDP   .M1     A17:A16,A5:A4,A5:A4 ; |24| 
           STW     .D1T2   B4,*+A3(4)        ; |25| 
           STW     .D1T2   B5,*+A3(8)        ; |26| 
           ZERO    .L2     B5
   [ A0]   MV      .L2X    A3,B4
   [!A0]   BNOP    .S1     $C$L11,4          ; |27| 

           STDW    .D1T1   A5:A4,*+A3(24)    ; |24| 
||         ZERO    .L1     A5

           ; BRANCHCC OCCURS {$C$L11}        ; |27| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 28	-----------------------    *((*this).m_is_to_reset+i) = K$29;
;** 27	-----------------------    if ( (*(*this).m_channel_config).axis_number > (++i) ) goto g3;
           LDW     .D2T2   *+B4(32),B7       ; |28| (P) <0,0>  ^ 
           MV      .L2X    A5,B6
           DINT                              ; interrupts off
           MV      .L1X    B5,A4
           NOP             1
           STB     .D2T2   B6,*+B7[B5]       ; |28| (P) <0,5>  ^ 
           LDW     .D1T1   *+A3(40),A5       ; |27| (P) <0,6>  ^ 
           NOP             4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation_algorithm.cpp
;*      Loop source line                 : 27
;*      Loop opening brace source line   : 27
;*      Loop closing brace source line   : 29
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     0        1     
;*      .D units                     2*       2*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             2*       2*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Did not find schedule
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Did not find schedule
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Did not find schedule
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Did not find schedule
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Did not find schedule
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Did not find schedule
;*         ii = 12 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages       : 1
;*      Prolog not removed
;*      Collapsed prolog stages       : 0
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L8:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L9:    ; PIPED LOOP KERNEL
           LDBU    .D1T1   *+A5(2),A5        ; |27| <0,11>  ^ 
           LDW     .D2T2   *+B4(32),B7       ; |28| <1,0>  ^ 
           NOP             2
           ADD     .L1     1,A4,A4           ; |27| <0,15> 

           ADD     .L2     1,B5,B5           ; |27| <0,16> Define a twin register
||         CMPGT   .L1     A5,A4,A0          ; |27| <0,16> 

   [ A0]   B       .S2     $C$L9             ; |27| <0,17> 
|| [ A0]   STB     .D2T2   B6,*+B7[B5]       ; |28| <1,5>  ^ 

           LDW     .D1T1   *+A3(40),A5       ; |27| <1,6>  ^ 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L10:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;**	-----------------------g4:
;** 30	-----------------------    return this;
           RINT                              ; interrupts on
;** --------------------------------------------------------------------------*
$C$L11:    
           RETNOP  .S2     B3,4              ; |30| 
           MV      .L1     A3,A4             ; |30| 
           ; BRANCH OCCURS {B3}              ; |30| 
	.sect	".text:_ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState"
	.clink
	.global	_ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::InterpolationAlgorithm(Geometry *, DynamicInfo **, int, NCCCTChannelConfig *, ChannelRealtimeState *) [subobject]*
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,B3,B4,B5,B6,B7,A16,A17,B30,B31     *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A8,B3,B4,B5,B6,B7,B8,DP,SP,A16,A17,*
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return InterpolationAlgorithm::InterpolationAlgorithm(this, $P$T2, $P$T3, $P$T4, $P$T5, $P$T6);

           MV      .L1X    B3,A1
||         CALLP   .S2     _ZN22InterpolationAlgorithmC1EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState,B3

$C$RL8:    ; CALL OCCURS {_ZN22InterpolationAlgorithmC1EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState} {0} 
;** --------------------------------------------------------------------------*
           RETNOP  .S2X    A1,5
           ; BRANCH OCCURS {A1}  
	.sect	".text"
	.clink
	.global	_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::SetSpeedProfileType(SpeedProfileType)*
;*                                                                            *
;*   Regs Modified     : A0,A3,B0                                             *
;*   Regs Used         : A0,A3,A4,B0,B3,B4                                    *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType:
;** --------------------------------------------------------------------------*
;** 70	-----------------------    switch ( speed_profile_type ) {case 0: goto g3;, case 1: goto g2;, DEFAULT goto g4};
;**	-----------------------g2:
;** 72	-----------------------    (*this).m_velocity_planning = (struct elocityPlanning *)(*this).m_s_velocity_planning;
;** 74	-----------------------    goto g4;
;**	-----------------------g3:
;** 76	-----------------------    (*this).m_velocity_planning = (struct elocityPlanning *)(*this).m_t_velocity_planning;
;**	-----------------------g4:
;**  	-----------------------    return;
           MV      .L1X    B4,A0             ; |69| 
   [!A0]   LDW     .D1T1   *+A4(20),A3       ; |76| 
           CMPEQ   .L2     B4,1,B0           ; |70| 
   [!A0]   ZERO    .L2     B0
           NOP             2
   [!A0]   STW     .D1T1   A3,*+A4(12)       ; |76| 

           RETNOP  .S2     B3,4              ; |82| 
|| [ B0]   LDW     .D1T1   *+A4(16),A3       ; |72| 

   [ B0]   STW     .D1T1   A3,*+A4(12)       ; |72| 
           ; BRANCH OCCURS {B3}              ; |82| 
	.sect	".text"
	.clink
	.global	_ZN22InterpolationAlgorithm4InitE16SpeedProfileType

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::Init(SpeedProfileType)              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,  *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,DP,SP,A16,A17,   *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_ZN22InterpolationAlgorithm4InitE16SpeedProfileType:
;** --------------------------------------------------------------------------*
;** 47	-----------------------    $P$T7 = (struct VelocityPlanning *)operator new (32u);
;** 47	-----------------------    if ( $P$T7 ) goto g3;
;** 47	-----------------------    S$2 = NULL;
;** 47	-----------------------    goto g4;
           STW     .D2T1   A11,*SP--(8)      ; |46| 
           STDW    .D2T2   B11:B10,*SP--     ; |46| 

           STDW    .D2T1   A13:A12,*SP--     ; |46| 
||         MV      .L1X    B4,A11            ; |46| 

           MV      .L1X    B3,A13            ; |46| 
||         CALLP   .S2     _Znwj,B3
||         STW     .D2T1   A10,*SP--(8)      ; |46| 
||         MV      .L2X    A4,B10            ; |46| 
||         MVK     .S1     0x20,A4           ; |47| 

$C$RL9:    ; CALL OCCURS {_Znwj} {0}         ; |47| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |47| 
||         ZERO    .L2     B4                ; |47| 

   [!A0]   B       .S1     $C$L12            ; |47| 
|| [ A0]   LDDW    .D2T2   *+B10(24),B5:B4   ; |26| 

   [ A0]   CALL    .S1     _ZN16VelocityPlanningC2Ed ; |26| 
   [!A0]   CALL    .S1     _Znwj             ; |48| 
           MV      .L1     A4,A10            ; |47| 
           MVKL    .S1     _ZTV17SVelocityPlanning+8,A12
           MVKH    .S1     _ZTV17SVelocityPlanning+8,A12
           ; BRANCHCC OCCURS {$C$L12}        ; |47| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 26	-----------------------    VelocityPlanning::VelocityPlanning [subobject]((struct elocityPlanning *)$P$T7, (*this).m_interpolation_cycle);  // [30]
;** 26	-----------------------    (*$P$T7).__b_16VelocityPlanning.__vptr = &Virtual function table for SVelocityPlanning[2];  // [30]
;** 26	-----------------------    S$2 = $P$T7;  // [30]
           ADDKPC  .S2     $C$RL10,B3,0      ; |26| 
$C$RL10:   ; CALL OCCURS {_ZN16VelocityPlanningC2Ed} {0}  ; |26| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _Znwj             ; |48| 
           MV      .L1     A10,A3            ; |26| 
           STW     .D1T1   A12,*A3           ; |26| 
           MV      .L2X    A10,B4            ; |26| 
;** --------------------------------------------------------------------------*
$C$L12:    
;**	-----------------------g4:
;** 47	-----------------------    (*this).m_s_velocity_planning = S$2;
;** 48	-----------------------    $P$T8 = (struct VelocityPlanning *)operator new (56u);
;** 48	-----------------------    if ( $P$T8 ) goto g6;
;** 48	-----------------------    S$1 = NULL;
;** 48	-----------------------    goto g7;
           MVK     .S1     0x38,A4           ; |48| 

           ADDKPC  .S2     $C$RL11,B3,0      ; |48| 
||         STW     .D2T2   B4,*+B10(16)      ; |47| 

$C$RL11:   ; CALL OCCURS {_Znwj} {0}         ; |48| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |48| 
||         ZERO    .L2     B4                ; |48| 
||         MVKL    .S2     _ZTV17TVelocityPlanning+8,B11
||         MV      .S1     A4,A10            ; |48| 

           MVKH    .S2     _ZTV17TVelocityPlanning+8,B11
|| [!A0]   LDW     .D2T2   *+B10(32),B0      ; |49| 
|| [!A0]   B       .S1     $C$L13            ; |48| 

   [ A0]   CALL    .S1     _ZN16VelocityPlanningC2Ed ; |27| 
   [ A0]   LDDW    .D2T2   *+B10(24),B5:B4   ; |27| 
   [ A0]   ZERO    .L2     B0                ; |48| nullify predicate
   [!A0]   STW     .D2T2   B4,*+B10(20)      ; |48| 
   [ B0]   B       .S1     $C$L14            ; |49| 
           ; BRANCHCC OCCURS {$C$L13}        ; |48| 
;** --------------------------------------------------------------------------*
;**	-----------------------g6:
;** 27	-----------------------    VelocityPlanning::VelocityPlanning [subobject]((struct elocityPlanning *)$P$T8, (*this).m_interpolation_cycle);  // [32]
;** 27	-----------------------    (*$P$T8).__b_16VelocityPlanning.__vptr = &Virtual function table for TVelocityPlanning[2];  // [32]
;** 27	-----------------------    S$1 = $P$T8;  // [32]
           ADDKPC  .S2     $C$RL12,B3,0      ; |27| 
$C$RL12:   ; CALL OCCURS {_ZN16VelocityPlanningC2Ed} {0}  ; |27| 
;** --------------------------------------------------------------------------*
           STW     .D1T2   B11,*A10          ; |27| 
           LDW     .D2T2   *+B10(32),B0      ; |49| 
           MV      .L2X    A10,B4            ; |27| 
           STW     .D2T2   B4,*+B10(20)      ; |48| 
           NOP             2
   [ B0]   B       .S1     $C$L14            ; |49| 
;** --------------------------------------------------------------------------*
$C$L13:    
;**	-----------------------g7:
;** 48	-----------------------    (*this).m_t_velocity_planning = S$1;
;** 49	-----------------------    v$1 = (*this).m_is_to_reset;
;** 49	-----------------------    if ( v$1 ) goto g9;
   [!B0]   LDW     .D2T2   *+B10(40),B4      ; |50| 
           NOP             3
   [!B0]   CALL    .S1     _Znaj             ; |50| 
           ; BRANCHCC OCCURS {$C$L14}        ; |49| 
;** --------------------------------------------------------------------------*
;** 50	-----------------------    v$1 = operator new[] ((unsigned)(*(*this).m_channel_config).axis_number);
;** 50	-----------------------    (*this).m_is_to_reset = v$1;
           LDBU    .D2T1   *+B4(2),A4        ; |50| 
           ADDKPC  .S2     $C$RL13,B3,3      ; |50| 
$C$RL13:   ; CALL OCCURS {_Znaj} {0}         ; |50| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A4,B0             ; |50| 
           STW     .D2T2   B0,*+B10(32)      ; |50| 
;** --------------------------------------------------------------------------*
$C$L14:    
;**	-----------------------g9:
;** 52	-----------------------    if ( v$1 == NULL ) goto g15;

   [!B0]   BNOP    .S1     $C$L19,4          ; |52| 
|| [ B0]   LDW     .D2T2   *+B10(40),B4      ; |55| 

   [ B0]   LDBU    .D2T2   *+B4(2),B0        ; |55| 
           ; BRANCHCC OCCURS {$C$L19}        ; |52| 
;** --------------------------------------------------------------------------*
;** 55	-----------------------    v$4 = (*this).m_channel_config;
;** 55	-----------------------    if ( !(*v$4).axis_number ) goto g13;
;**  	-----------------------    K$48 = 0;
;** 55	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ZERO    .L1     A4
           ZERO    .L1     A5
           NOP             2

   [!B0]   B       .S1     $C$L18            ; |55| 
|| [ B0]   MV      .L2     B10,B4

   [ B0]   LDW     .D2T2   *+B4(32),B7       ; |56| (P) <0,0>  ^ 
   [ B0]   MV      .L2X    A4,B5
   [ B0]   MV      .L2X    A5,B6
           NOP             2
           ; BRANCHCC OCCURS {$C$L18}        ; |55| 
;** --------------------------------------------------------------------------*
;**	-----------------------g12:
;** 56	-----------------------    *((*this).m_is_to_reset+i) = K$48;
;** 55	-----------------------    v$4 = (*this).m_channel_config;
;** 55	-----------------------    if ( (*v$4).axis_number > (++i) ) goto g12;

           MV      .L1X    B10,A3
||         STB     .D2T2   B6,*+B7[B5]       ; |56| (P) <0,5>  ^ 

           LDW     .D1T1   *+A3(40),A5       ; |55| (P) <0,6>  ^ 
           DINT                              ; interrupts off
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation_algorithm.cpp
;*      Loop source line                 : 55
;*      Loop opening brace source line   : 55
;*      Loop closing brace source line   : 57
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     0        1     
;*      .D units                     2*       2*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             2*       2*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Did not find schedule
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Did not find schedule
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Did not find schedule
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Did not find schedule
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Unsafe schedule for irregular loop
;*         ii = 10 Did not find schedule
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Did not find schedule
;*         ii = 12 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages       : 1
;*      Prolog not removed
;*      Collapsed prolog stages       : 0
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L15:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L16:    ; PIPED LOOP KERNEL
           LDBU    .D1T1   *+A5(2),A6        ; |55| <0,11>  ^ 
           LDW     .D2T2   *+B4(32),B7       ; |56| <1,0>  ^ 
           NOP             2
           ADD     .L1     1,A4,A4           ; |55| <0,15> 

           ADD     .L2     1,B5,B5           ; |55| <0,16> Define a twin register
||         CMPGT   .L1     A6,A4,A0          ; |55| <0,16> 

   [ A0]   B       .S2     $C$L16            ; |55| <0,17> 
|| [ A0]   STB     .D2T2   B6,*+B7[B5]       ; |56| <1,5>  ^ 

   [ A0]   LDW     .D1T1   *+A3(40),A5       ; |55| <1,6>  ^ 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L17:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MV      .L2X    A5,B4

           MV      .L2X    A3,B10
||         RINT                              ; interrupts on

;** --------------------------------------------------------------------------*
$C$L18:    
;**	-----------------------g13:
;** 58	-----------------------    C$3 = (*this).m_s_velocity_planning;
;** 58	-----------------------    if ( C$3 == NULL ) goto g15;
;** 61	-----------------------    v$3 = (*this).m_t_velocity_planning;
;** 61	-----------------------    if ( v$3 ) goto g16;
           LDW     .D2T2   *+B10(16),B1      ; |58| 
           MV      .L2X    A11,B0            ; |70| 
           NOP             3
   [ B1]   LDW     .D2T2   *+B10(20),B5      ; |61| 
           NOP             4
           MV      .L2     B5,B2
   [!B1]   ZERO    .L2     B2
   [ B2]   B       .S1     $C$L20            ; |61| 
           MV      .L1X    B2,A0             ; guard predicate rewrite
   [ A0]   LDBU    .D2T2   *+B4(2),B4        ; |65| 
   [ B2]   CMPEQ   .L2     B0,1,B2           ; |70| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L20}        ; |61| 
;** --------------------------------------------------------------------------*
$C$L19:    
;**	-----------------------g15:
;** 62	-----------------------    return 2700;
           LDW     .D2T1   *++SP(8),A10      ; |67| 

           MV      .L2X    A13,B3            ; |67| 
||         LDDW    .D2T1   *++SP,A13:A12     ; |67| 

           LDDW    .D2T2   *++SP,B11:B10     ; |67| 
||         RET     .S2     B3                ; |67| 

           LDW     .D2T1   *++SP(8),A11      ; |67| 
           MVK     .S1     0xa8c,A4          ; |62| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |67| 
;** --------------------------------------------------------------------------*
$C$L20:    
;**	-----------------------g16:
;** 70	-----------------------    switch ( speed_profile_type ) {case 0: goto g18;, case 1: goto g17;, DEFAULT goto g19};  // [22]
;**	-----------------------g17:
;** 72	-----------------------    (*this).m_velocity_planning = (struct elocityPlanning *)C$3;  // [22]
;** 74	-----------------------    goto g19;  // [22]
;**	-----------------------g18:
;** 76	-----------------------    (*this).m_velocity_planning = (struct elocityPlanning *)v$3;  // [22]
;**	-----------------------g19:
;** 65	-----------------------    (*this).m_trajectory_index = (*v$4).axis_number;
;** 66	-----------------------    return 0;

   [!B0]   STW     .D2T2   B5,*+B10(12)      ; |76| 
||         MVK     .S2     36,B5             ; |65| 
|| [!B0]   ZERO    .L2     B2

           STB     .D2T2   B4,*+B10[B5]      ; |65| 
||         MV      .L2X    A13,B3            ; |67| 

   [ B2]   STW     .D2T2   B1,*+B10(12)      ; |72| 
           LDW     .D2T1   *++SP(8),A10      ; |67| 
           LDDW    .D2T1   *++SP,A13:A12     ; |67| 

           LDDW    .D2T2   *++SP,B11:B10     ; |67| 
||         RET     .S2     B3                ; |67| 

           LDW     .D2T1   *++SP(8),A11      ; |67| 
           ZERO    .L1     A4                ; |66| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |67| 
	.sect	".text"
	.clink
	.global	_ZN22InterpolationAlgorithm23IsInterpolationFinishedEv

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::IsInterpolationFinished()           *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,B4                                          *
;*   Regs Used         : A3,A4,A5,B3,B4                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN22InterpolationAlgorithm23IsInterpolationFinishedEv:
;** --------------------------------------------------------------------------*
;** 89	-----------------------    C$1 = *((*this).m_trajectory_index*4+(*this).m_dynamic_info);
;** 90	-----------------------    return (*C$1).current_step >= (*C$1).step_number;

           MVK     .S1     36,A3             ; |89| 
||         LDW     .D1T1   *+A4(8),A5        ; |89| 

           LDBU    .D1T1   *+A4[A3],A3       ; |89| 
           MVK     .S1     340,A4            ; |90| 
           NOP             3
           LDW     .D1T1   *+A5[A3],A3       ; |89| 
           ADD     .L2X    -4,A4,B4
           NOP             3

           ADD     .L2X    B4,A3,B4          ; |90| 
||         ADD     .L1     A4,A3,A3          ; |90| 

           LDW     .D2T2   *B4,B4            ; |90| 
||         LDW     .D1T1   *A3,A3            ; |90| 

           RETNOP  .S2     B3,3              ; |93| 
           CMPLTU  .L1X    A3,B4,A3          ; |90| 
           XOR     .L1     1,A3,A4           ; |90| 
           ; BRANCH OCCURS {B3}              ; |93| 
	.sect	".text"
	.clink
	.global	_ZN22InterpolationAlgorithm15GetCurrentSpeedEv

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::GetCurrentSpeed()                   *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5                                             *
;*   Regs Used         : A3,A4,A5,B3                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN22InterpolationAlgorithm15GetCurrentSpeedEv:
;** --------------------------------------------------------------------------*
;** 85	-----------------------    return (**((*this).m_trajectory_index*4+(*this).m_dynamic_info)).current_f;

           MVK     .S1     36,A3             ; |85| 
||         LDW     .D1T1   *+A4(8),A5        ; |85| 

           LDBU    .D1T1   *+A4[A3],A3       ; |85| 
           NOP             4
           LDW     .D1T1   *+A5[A3],A3       ; |85| 
           NOP             4

           ADDK    .S1     320,A3            ; |85| 
||         RET     .S2     B3                ; |86| 

           LDDW    .D1T1   *A3,A5:A4         ; |85| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |86| 
	.sect	".text"
	.clink
	.global	_ZN22InterpolationAlgorithm13HasReachedEndEv

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::HasReachedEnd()                     *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,B4,B5                                    *
;*   Regs Used         : A3,A4,A5,A6,B3,B4,B5                                 *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN22InterpolationAlgorithm13HasReachedEndEv:
;** --------------------------------------------------------------------------*
;** 103	-----------------------    C$1 = *((*this).m_trajectory_index*4+(*this).m_dynamic_info);
;** 106	-----------------------    return *((*(*this).m_geometry).end_data+2480)-(*C$1).current_l-(*C$1).left_dist < 1.00000000000000002092e-8;
           LDW     .D1T1   *+A4(4),A6        ; |106| 

           MVK     .S1     36,A3             ; |103| 
||         LDW     .D1T1   *+A4(8),A5        ; |103| 

           LDBU    .D1T1   *+A4[A3],A3       ; |103| 
           MVK     .S2     328,B4            ; |106| 
           NOP             1
           ADDK    .S1     512,A6            ; |106| 
           LDW     .D1T1   *A6,A4            ; |106| 
           LDW     .D1T1   *+A5[A3],A3       ; |103| 
           NOP             4

           ADDK    .S1     2480,A4           ; |106| 
||         ADD     .L2X    B4,A3,B4          ; |106| 

           LDDW    .D1T1   *A4,A5:A4         ; |106| 
||         LDDW    .D2T2   *B4,B5:B4         ; |106| 

           NOP             4
           SUBDP   .L2X    A5:A4,B5:B4,B5:B4 ; |106| 
           MVK     .S1     352,A4            ; |106| 
           ADD     .L1     A4,A3,A3          ; |106| 
           LDDW    .D1T1   *A3,A5:A4         ; |106| 
           NOP             4
           SUBDP   .L1X    B5:B4,A5:A4,A5:A4 ; |106| 
           MVKL    .S2     0x3e45798e,B5
           MVKL    .S2     0xe2308c3a,B4
           RET     .S2     B3                ; |109| 
           MVKH    .S2     0x3e45798e,B5
           MVKH    .S2     0xe2308c3a,B4
           NOP             1
           CMPLTDP .S1X    A5:A4,B5:B4,A4    ; |106| 
           NOP             1
           ; BRANCH OCCURS {B3}              ; |109| 
	.sect	".text"
	.clink
	.global	_ZN22InterpolationAlgorithm11InterpolateEP8LineData

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::Interpolate(LineData *)             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,   *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,DP,SP,A16,A17,*
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_ZN22InterpolationAlgorithm11InterpolateEP8LineData:
;** --------------------------------------------------------------------------*
;** 198	-----------------------    v$6 = (int)(*this).m_trajectory_index;
;** 198	-----------------------    v$2 = (unsigned char)v$6;
;** 198	-----------------------    v$1 = (*this).m_dynamic_info;
;** 198	-----------------------    C$10 = v$1[(unsigned char)v$2];
;** 198	-----------------------    (*C$10).current_time = (*C$10).current_time+(*this).m_interpolation_cycle;
;** 199	-----------------------    C$9 = v$1[v$2];
;** 199	-----------------------    (*C$9).current_step = (*C$9).current_step+1u;
;** 202	-----------------------    v$1 = v$1;
;** 202	-----------------------    v$2 = v$2;
;** 202	-----------------------    C$8 = (*this).m_velocity_planning;
;** 202	-----------------------    (*v$1[v$2]).current_l = (*(double (*)())*((*C$8).__vptr+4))(C$8, C$9);
;** 204	-----------------------    v$9 = (*this).m_dynamic_info;
;** 204	-----------------------    v$1 = v$9;
;** 204	-----------------------    v$6 = (int)(*this).m_trajectory_index;
;** 204	-----------------------    v$2 = (unsigned char)v$6;
;** 204	-----------------------    C$7 = v$1[(unsigned char)v$2];
;** 204	-----------------------    if ( (*C$7).current_l < 0.0 ) goto g21;
           STW     .D2T1   A14,*SP--(8)      ; |197| 
           STDW    .D2T2   B11:B10,*SP--     ; |197| 
           STDW    .D2T1   A13:A12,*SP--     ; |197| 

           STDW    .D2T1   A11:A10,*SP--     ; |197| 
||         MV      .L1     A4,A10            ; |197| 
||         MVK     .S1     36,A3             ; |198| 

           LDBU    .D1T1   *+A10[A3],A3      ; |198| 
           LDW     .D1T1   *+A10(8),A11      ; |198| 
           MV      .L1X    B4,A12            ; |197| 
           MVK     .S2     340,B4            ; |199| 
           LDDW    .D1T1   *+A10(24),A9:A8   ; |198| 
           EXTU    .S1     A3,24,24,A13      ; |198| 
           LDW     .D1T1   *+A11[A13],A3     ; |199| 
           LDW     .D1T1   *+A11[A13],A5     ; |198| 
           MVK     .S1     340,A4            ; |199| 
           MV      .L2     B3,B11            ; |197| 
           NOP             1
           ADD     .L2X    B4,A3,B4          ; |199| 
           LDW     .D2T2   *B4,B4            ; |199| 
           LDDW    .D1T1   *+A5(184),A7:A6   ; |198| 
           ADD     .L1     A4,A3,A4          ; |199| 
           NOP             2
           ADD     .L2     1,B4,B4           ; |199| 
           STW     .D1T2   B4,*A4            ; |199| 
           LDW     .D1T1   *+A10(12),A4      ; |202| 
           ADDDP   .L1     A9:A8,A7:A6,A7:A6 ; |198| 
           MV      .L2X    A3,B4             ; |202| 
           NOP             2
           LDW     .D1T1   *A4,A8            ; |202| 
           NOP             3
           STDW    .D1T1   A7:A6,*+A5(184)   ; |198| 
           LDW     .D1T1   *+A8(4),A5        ; |202| 
           NOP             4
           CALL    .S2X    A5                ; |202| 
           ADDKPC  .S2     $C$RL14,B3,4      ; |202| 
$C$RL14:   ; CALL OCCURS {A5} {0}            ; |202| 
;** --------------------------------------------------------------------------*

           MV      .L1     A13,A3            ; |202| 
||         MVK     .S1     36,A7             ; |204| 
||         LDW     .D1T1   *+A10(8),A6       ; |204| 

           LDW     .D1T1   *+A11[A3],A3      ; |202| 
           LDBU    .D1T2   *+A10[A7],B8      ; |204| 
           MVK     .S2     328,B7            ; |204| 
           ZERO    .L2     B17:B16           ; |204| 
           MV      .L2X    A6,B5             ; |204| 
           ADDK    .S1     328,A3            ; |202| 

           STDW    .D1T1   A5:A4,*A3         ; |202| 
||         EXTU    .S2     B8,24,24,B6       ; |204| 

           LDW     .D2T2   *+B5[B6],B4       ; |204| 
           ZERO    .L1     A9:A8             ; |205| 
           MVK     .S1     328,A4            ; |205| 
           NOP             2
           ADD     .L2     B7,B4,B7          ; |204| 
           LDDW    .D2T2   *B7,B19:B18       ; |204| 
           MVK     .S2     340,B7            ; |212| 
           ADD     .L2     B7,B4,B4          ; |212| 
           NOP             2
           CMPLTDP .S2     B19:B18,B17:B16,B0 ; |204| 
           NOP             1

   [ B0]   B       .S1     $C$L30            ; |204| 
|| [ B0]   LDW     .D1T1   *+A10(40),A3      ; |207| 
|| [!B0]   LDW     .D2T2   *B4,B4            ; |212| 

   [ B0]   LDW     .D2T2   *+B5[B6],B10      ; |205| 
           MV      .L2     B0,B1             ; guard predicate rewrite
           NOP             2

   [ B0]   LDBU    .D1T1   *+A3(2),A0        ; |207| 
|| [!B1]   CMPEQ   .L1X    B4,1,A0           ; |212| 

           ; BRANCHCC OCCURS {$C$L30}        ; |204| 
;** --------------------------------------------------------------------------*
;** 212	-----------------------    if ( (C$6 = (*C$7).current_step) == 1u ) goto g10;

           CMPEQ   .L2     B4,2,B0           ; |229| 
|| [ A0]   B       .S1     $C$L23            ; |212| 
|| [ A0]   LDW     .D1T1   *+A10(40),A3      ; |213| 

   [ A0]   MVK     .L2     0x1,B0            ; nullify predicate
   [!B0]   BNOP    .S1     $C$L28,2          ; |229| 
   [ A0]   LDBU    .D1T1   *+A3(2),A0        ; |213| 
           ; BRANCHCC OCCURS {$C$L23}        ; |212| 
;** --------------------------------------------------------------------------*
;** 229	-----------------------    if ( C$6 != 2u ) goto g20;
   [ B0]   LDW     .D1T1   *+A10(40),A3      ; |230| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L28}        ; |229| 
;** --------------------------------------------------------------------------*
;** 230	-----------------------    v$4 = (*this).m_channel_config;
;** 230	-----------------------    if ( !(*v$4).axis_number ) goto g20;
;** 230	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           ZERO    .L1     A11               ; |230| 
           NOP             2
           LDBU    .D1T1   *+A3(2),A0        ; |230| 
           NOP             4

   [!A0]   BNOP    .S1     $C$L28,4          ; |230| 
|| [ A0]   LDW     .D1T1   *+A10(32),A4      ; |231| 

   [ A0]   LDB     .D1T1   *+A4[A11],A0      ; |231| 
           ; BRANCHCC OCCURS {$C$L28}        ; |230| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L21:    
;**	-----------------------g6:
;** 231	-----------------------    if ( !*((*this).m_is_to_reset+i) ) goto g8;
           NOP             4

   [!A0]   LDBU    .D1T1   *+A3(2),A4        ; |230| 
|| [!A0]   B       .S1     $C$L22            ; |231| 

   [ A0]   CALL    .S1     _ZN11AxisMovData7SetMaskEhh ; |233| 
   [ A0]   MVK     .S1     1432,A3           ; |233| 
   [!A0]   ADD     .L1     1,A11,A11         ; |230| 
           NOP             1

   [ A0]   ADD     .D1     A3,A12,A4         ; |233| 
|| [ A0]   EXTU    .S1     A11,24,24,A3      ; |233| 
|| [!A0]   CMPGT   .L1     A4,A11,A0         ; |230| 

           ; BRANCHCC OCCURS {$C$L22}        ; |231| 
;** --------------------------------------------------------------------------*
;** 233	-----------------------    AxisMovData::SetMask((struct xisMovData *)data+1432, (unsigned char)i, 0u);
;** 233	-----------------------    v$4 = (*this).m_channel_config;

           ZERO    .L1     A6                ; |233| 
||         MV      .L2X    A3,B4             ; |233| 
||         ADDKPC  .S2     $C$RL15,B3,0      ; |233| 

$C$RL15:   ; CALL OCCURS {_ZN11AxisMovData7SetMaskEhh} {0}  ; |233| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(40),A3      ; |233| 
           ADD     .L1     1,A11,A11         ; |230| 
           NOP             3
           LDBU    .D1T1   *+A3(2),A4        ; |230| 
           NOP             4
           CMPGT   .L1     A4,A11,A0         ; |230| 
;** --------------------------------------------------------------------------*
$C$L22:    
;**	-----------------------g8:
;** 230	-----------------------    if ( (*v$4).axis_number > (++i) ) goto g6;
;**  	-----------------------    v$2 = (int)(*this).m_trajectory_index;

   [ A0]   BNOP    .S1     $C$L21,4          ; |230| 
|| [ A0]   LDW     .D1T1   *+A10(32),A4      ; |231| 

   [ A0]   LDB     .D1T1   *+A4[A11],A0      ; |231| 
           ; BRANCHCC OCCURS {$C$L21}        ; |230| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    v$1 = (*this).m_dynamic_info;
;**  	-----------------------    goto g20;

           B       .S2     $C$L29
||         MVK     .S1     36,A3
||         LDW     .D1T2   *+A10(8),B5

           LDBU    .D1T2   *+A10[A3],B6
           LDW     .D1T1   *A10,A3           ; |238| 
           NOP             3
           ; BRANCH OCCURS {$C$L29}  
;** --------------------------------------------------------------------------*
$C$L23:    
;**	-----------------------g10:
;** 213	-----------------------    if ( !(*(*this).m_channel_config).axis_number ) goto g20;
;**  	-----------------------    K$94 = 0;
;**  	-----------------------    K$61 = (struct xisMovData *)data+1432;
;** 213	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           ZERO    .L1     A11               ; |213| 
           ZERO    .L1     A14               ; |213| 
           MVK     .S1     1432,A31
           ADD     .L1     A31,A12,A13
   [!A0]   BNOP    .S1     $C$L28,5          ; |213| 
           ; BRANCHCC OCCURS {$C$L28}        ; |213| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |214| 
           EXTU    .S1     A11,24,24,A3      ; |214| 
           MV      .L1     A13,A4            ; |214| 
           MV      .L2X    A3,B4             ; |214| 
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L24:    
;**	-----------------------g12:
;** 214	-----------------------    if ( AxisMovData::CheckMask(K$61, (unsigned char)i) ) goto g17;
           ADDKPC  .S2     $C$RL16,B3,0      ; |214| 
$C$RL16:   ; CALL OCCURS {_ZN11AxisMovData9CheckMaskEh} {0}  ; |214| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |214| 

   [ A0]   B       .S2     $C$L26            ; |214| 
|| [!A0]   LDW     .D1T1   *+A10(4),A4       ; |215| 
|| [!A0]   MVK     .S1     1440,A5           ; |215| 

   [!A0]   ADDAD   .D1     A12,A11,A3        ; |215| 
   [ A0]   LDW     .D1T1   *+A10(32),A3      ; |225| 
   [!A0]   ADD     .L1     A5,A3,A3          ; |215| 
   [!A0]   LDDW    .D1T1   *A3,A7:A6         ; |215| 
   [!A0]   LDDW    .D1T1   *+A4[A11],A5:A4   ; |215| 
           ; BRANCHCC OCCURS {$C$L26}        ; |214| 
;** --------------------------------------------------------------------------*
;** 215	-----------------------    C$5 = *((i<<3)+(*this).m_geometry);
;** 215	-----------------------    C$4 = (i<<3)+(double * const)data+1440;
;** 215	-----------------------    if ( ABS(*C$4-C$5) <= 1.00000000000000003643e-10 ) goto g15;
           MVKL    .S2     0x3ddb7cdf,B5
           MVKL    .S2     0xd9d7bdbb,B4
           MVKH    .S2     0x3ddb7cdf,B5
           MVKH    .S2     0xd9d7bdbb,B4
           SUBDP   .L1     A7:A6,A5:A4,A7:A6 ; |215| 
           NOP             6
           ABSDP   .S1     A7:A6,A7:A6       ; |215| 
           NOP             2
           CMPGTDP .S2X    A7:A6,B5:B4,B0    ; |215| 
           NOP             1

   [!B0]   B       .S2     $C$L25            ; |215| 
|| [!B0]   MVK     .S1     36,A3             ; |220| 

   [ B0]   CALL    .S1     _ZN11AxisMovData7SetMaskEhh ; |218| 
|| [!B0]   LDBU    .D1T1   *+A10[A3],A3      ; |220| 

   [!B0]   LDW     .D1T1   *+A10(8),A4       ; |220| 
   [ B0]   STDW    .D1T1   A5:A4,*A3         ; |217| 
   [ B0]   EXTU    .S1     A11,24,24,A3      ; |218| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L25}        ; |215| 
;** --------------------------------------------------------------------------*
;** 217	-----------------------    *C$4 = C$5;
;** 218	-----------------------    AxisMovData::SetMask(K$61, (unsigned char)i, 1u);

           MVK     .L1     0x1,A6            ; |218| 
||         MV      .S1     A13,A4            ; |218| 
||         MV      .L2X    A3,B4             ; |218| 
||         ADDKPC  .S2     $C$RL17,B3,0      ; |218| 

$C$RL17:   ; CALL OCCURS {_ZN11AxisMovData7SetMaskEhh} {0}  ; |218| 

           MVK     .S1     36,A3             ; |220| 
||         LDW     .D1T1   *+A10(8),A4       ; |220| 

           LDBU    .D1T1   *+A10[A3],A3      ; |220| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L25:    
;**	-----------------------g15:
;** 220	-----------------------    if ( (**((*this).m_trajectory_index*4+(*this).m_dynamic_info)).step_number <= 1u ) goto g18;
;** 221	-----------------------    *((*this).m_is_to_reset+i) = 1;
;** 221	-----------------------    goto g18;
           MVK     .L1     1,A31             ; |221| 
           LDW     .D1T1   *+A4[A3],A3       ; |220| 
           NOP             4
           ADDK    .S1     336,A3            ; |220| 
           LDW     .D1T1   *A3,A3            ; |220| 
           NOP             4
           CMPGTU  .L1     A3,1,A0           ; |220| 

           BNOP    .S1     $C$L27,4          ; |221| 
|| [ A0]   LDW     .D1T1   *+A10(32),A3      ; |221| 

   [ A0]   STB     .D1T1   A31,*+A3[A11]     ; |221| 
           ; BRANCH OCCURS {$C$L27}          ; |221| 
;** --------------------------------------------------------------------------*
$C$L26:    
;**	-----------------------g17:
;** 225	-----------------------    *((*this).m_is_to_reset+i) = K$94;
           NOP             1
           STB     .D1T1   A14,*+A3[A11]     ; |225| 
;** --------------------------------------------------------------------------*
$C$L27:    
;**	-----------------------g18:
;** 213	-----------------------    if ( (*(*this).m_channel_config).axis_number > (++i) ) goto g12;
;**  	-----------------------    v$2 = (int)(*this).m_trajectory_index;
           LDW     .D1T1   *+A10(40),A3      ; |213| 
           ADD     .L1     1,A11,A11         ; |213| 
           NOP             3
           LDBU    .D1T1   *+A3(2),A3        ; |213| 
           NOP             4
           CMPGT   .L1     A3,A11,A0         ; |213| 

   [!A0]   LDW     .D1T2   *+A10(8),B5
|| [ A0]   MV      .L1     A13,A4            ; |214| 
|| [ A0]   B       .S1     $C$L24            ; |213| 

   [ A0]   CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |214| 
   [ A0]   EXTU    .S1     A11,24,24,A3      ; |214| 
   [!A0]   MVK     .S1     36,A3
   [!A0]   LDBU    .D1T2   *+A10[A3],B6
   [ A0]   MV      .L2X    A3,B4             ; |214| 
           ; BRANCHCC OCCURS {$C$L24}        ; |213| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    v$1 = (*this).m_dynamic_info;
;** --------------------------------------------------------------------------*
$C$L28:    
           LDW     .D1T1   *A10,A3           ; |238| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L29:    
;**	-----------------------g20:
;** 238	-----------------------    (*(void (*)())*((*this).__vptr+40))(this, (*v$1[v$2]).current_l, data);
;**  	-----------------------    U$19 = *((*this).m_trajectory_index*4+(*this).m_dynamic_info);
;** 238	-----------------------    goto g25;
           LDW     .D2T2   *+B5[B6],B4       ; |238| 
           LDW     .D1T1   *+A3(40),A3       ; |238| 
           MV      .L1     A10,A4            ; |238| 
           MV      .L1     A12,A6            ; |238| 
           NOP             1
           ADDK    .S2     328,B4            ; |238| 
           CALL    .S2X    A3                ; |238| 
           LDDW    .D2T2   *B4,B5:B4         ; |238| 
           ADDKPC  .S2     $C$RL18,B3,3      ; |238| 
$C$RL18:   ; CALL OCCURS {A3} {0}            ; |238| 
;** --------------------------------------------------------------------------*

           MVK     .S1     36,A3
||         LDW     .D1T1   *+A10(8),A4

           BNOP    .S1     $C$L34,4          ; |238| 
||         LDBU    .D1T1   *+A10[A3],A3

           LDW     .D1T2   *+A4[A3],B10
           ; BRANCH OCCURS {$C$L34}          ; |238| 
;** --------------------------------------------------------------------------*
$C$L30:    
;**	-----------------------g21:
;** 205	-----------------------    U$19 = v$1[v$2];
;** 205	-----------------------    (*U$19).current_l = 0.0;
;** 207	-----------------------    if ( !(C$3 = (*(*this).m_channel_config).axis_number) ) goto g25;
           MVK     .S1     1440,A31
           ADD     .L1X    A4,B10,A4         ; |205| 
           ADD     .L1     A31,A12,A3
           STDW    .D1T1   A9:A8,*A4         ; |205| 

   [!A0]   BNOP    .S1     $C$L34,5          ; |207| 
|| [ A0]   LDW     .D1T2   *+A10(4),B7
|| [ A0]   SUB     .L1     A0,1,A4

           ; BRANCHCC OCCURS {$C$L34}        ; |207| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$107 = (*this).m_geometry;
;**  	-----------------------    U$109 = (double * const)data+1440;
;**  	-----------------------    L$1 = (int)C$3;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g23:
;** 208	-----------------------    *U$109++ = *U$107++;
;** 207	-----------------------    if ( L$1 = L$1-1 ) goto g23;
;**  	-----------------------    U$19 = v$9[v$6];
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation_algorithm.cpp
;*      Loop source line                 : 207
;*      Loop opening brace source line   : 207
;*      Loop closing brace source line   : 209
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     0        2*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        2*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     0        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L31:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;12               ; (P) 
||         MVC     .S2X    A4,ILC

;** --------------------------------------------------------------------------*
$C$L32:    ; PIPED LOOP KERNEL
           LDDW    .D2T2   *B7++,B5:B4       ; |208| (P) <0,0>  ^ 
           NOP             3

           SPMASK          L2
||         MV      .L2X    A3,B6

           STDW    .D2T2   B5:B4,*B6++       ; |208| (P) <0,5>  ^ 
           SPKERNEL 0,1
;** --------------------------------------------------------------------------*
$C$L33:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MV      .L2X    A6,B4
           LDW     .D2T2   *+B4[B8],B10
;** --------------------------------------------------------------------------*
$C$L34:    
;**	-----------------------g25:
;** 247	-----------------------    C$2 = (*this).m_velocity_planning;
;** 247	-----------------------    (*U$19).current_f = (*(double (*)())*(*C$2).__vptr)(C$2, U$19);
;** 248	-----------------------    *((double * const)data+1384) = (**((*this).m_trajectory_index*4+(*this).m_dynamic_info)).current_f;
;**  	-----------------------    return;
           LDW     .D1T1   *+A10(12),A4      ; |247| 
           NOP             4
           LDW     .D1T1   *A4,A3            ; |247| 
           MV      .L2     B10,B4            ; |247| 
           NOP             3
           LDW     .D1T1   *A3,A3            ; |247| 
           NOP             4
           CALL    .S2X    A3                ; |247| 
           ADDKPC  .S2     $C$RL19,B3,4      ; |247| 
$C$RL19:   ; CALL OCCURS {A3} {0}            ; |247| 
;** --------------------------------------------------------------------------*

           MVK     .S1     36,A3             ; |248| 
||         LDW     .D1T1   *+A10(8),A6       ; |248| 

           LDBU    .D1T1   *+A10[A3],A3      ; |248| 
           MVK     .S2     320,B4            ; |247| 
           ADD     .L2     B4,B10,B4         ; |247| 
           STDW    .D2T1   A5:A4,*B4         ; |247| 
           MVK     .S2     1384,B4           ; |248| 
           LDW     .D1T1   *+A6[A3],A3       ; |248| 
           MV      .L2     B11,B3            ; |249| 
           NOP             3
           ADDK    .S1     320,A3            ; |248| 
           LDDW    .D1T1   *A3,A5:A4         ; |248| 
           ADD     .L1X    B4,A12,A3         ; |248| 
           NOP             3
           STDW    .D1T1   A5:A4,*A3         ; |248| 
           LDDW    .D2T1   *++SP,A11:A10     ; |249| 
           LDDW    .D2T1   *++SP,A13:A12     ; |249| 

           LDDW    .D2T2   *++SP,B11:B10     ; |249| 
||         RET     .S2     B3                ; |249| 

           LDW     .D2T1   *++SP(8),A14      ; |249| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |249| 
	.sect	".text"
	.clink
	.global	_ZN22InterpolationAlgorithm12PlanVelocityEddb

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::PlanVelocity(double, double, bool)  *
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
_ZN22InterpolationAlgorithm12PlanVelocityEddb:
;** --------------------------------------------------------------------------*
;** 112	-----------------------    v$3 = (*this).m_geometry;
;** 112	-----------------------    C$18 = (*v$3).end_data;
;** 112	-----------------------    if ( !(*C$18).interpolation_type ) goto g10;

           STW     .D2T1   A11,*SP--(8)      ; |111| 
||         MV      .L2     B6,B0             ; |111| 

           STW     .D2T1   A10,*+SP(4)       ; |111| 
||         MV      .L1     A4,A10            ; |111| 

           LDW     .D1T1   *+A10(4),A19      ; |112| 
           MV      .L1X    B3,A11            ; |111| 
           MVK     .S2     274,B6            ; |112| 
           MVK     .S1     512,A3            ; |112| 
           MVK     .S2     1376,B9           ; |146| 
           ADD     .L1     A3,A19,A3         ; |112| 
           LDW     .D1T1   *A3,A3            ; |112| 
           MVK     .S1     1368,A4           ; |114| 
           MV      .L1     A4,A5             ; |114| 
           MVK     .S1     36,A8             ; |114| 
           MVK     .S1     0x8a,A18          ; |146| 
           ADD     .L2X    B6,A3,B6          ; |112| 
           LDHU    .D2T2   *B6,B1            ; |112| 
           MV      .L2X    A8,B8             ; |114| 
           ADD     .L1     A4,A3,A3          ; |114| 
           MVK     .S2     512,B6            ; |145| 
           ADD     .L2X    B6,A19,B6         ; |145| 

   [ B1]   LDDW    .D1T1   *A3,A5:A4         ; |114| 
|| [!B1]   B       .S1     $C$L36            ; |112| 

   [ B1]   LDBU    .D1T1   *+A10[A8],A8      ; |114| 
   [ B1]   LDW     .D1T1   *+A10(8),A31      ; |114| 
   [!B1]   LDW     .D2T1   *B6,A4            ; |145| 
   [ B1]   LDW     .D1T1   *+A10(44),A29     ; |121| 
   [ B1]   MPYDP   .M2X    B5:B4,A5:A4,B5:B4 ; |114| 
           ; BRANCHCC OCCURS {$C$L36}        ; |112| 
;** --------------------------------------------------------------------------*
;** 113	-----------------------    v$4 = (*this).m_channel_config;
;** 113	-----------------------    max_speed = (*v$4).max_speed;
;** 114	-----------------------    v$2 = (int)(*this).m_trajectory_index;
;** 114	-----------------------    v$1 = (*this).m_dynamic_info;
;** 114	-----------------------    (*v$1[(unsigned char)v$2]).f = *((double *)C$18+1368)*target_feed_rate;
;** 116	-----------------------    U$38 = v$1[v$2];
;** 116	-----------------------    if ( (*U$38).f <= max_speed ) goto g4;
;** 117	-----------------------    (*U$38).f = max_speed;
;**	-----------------------g4:
;** 121	-----------------------    if ( !(C$17 = (*(*this).m_realtime_state).tool_no) ) goto g8;
           LDW     .D1T1   *+A10(40),A3      ; |113| 
           EXTU    .S1     A8,24,24,A30      ; |114| 
           LDW     .D1T1   *+A31[A30],A5     ; |114| 
           LDW     .D1T1   *+A31[A8],A20     ; |116| 
           MVK     .S1     2176,A9           ; |121| 
           LDBU    .D1T1   *+A29[A9],A0      ; |121| 
           LDDW    .D1T1   *+A3(72),A17:A16  ; |113| 
           MVK     .S1     1362,A28          ; |121| 
           NOP             1
           STDW    .D1T2   B5:B4,*+A5(16)    ; |114| 
           LDDW    .D1T1   *+A20(16),A5:A4   ; |116| 
           NOP             1
   [!A0]   BNOP    .S1     $C$L35,2          ; |121| 
           CMPGTDP .S1     A5:A4,A17:A16,A1  ; |116| 
           ADD     .L1     A28,A3,A4         ; |121| 
   [ A1]   STDW    .D1T1   A17:A16,*+A20(16) ; |117| 
           ; BRANCHCC OCCURS {$C$L35}        ; |121| 
;** --------------------------------------------------------------------------*
;** 121	-----------------------    if ( (unsigned short)C$17 > *((unsigned short *)v$4+1362) ) goto g8;
;** 123	-----------------------    C$16 = *((unsigned short)C$17*40+(double *)v$4+1344);
;** 123	-----------------------    if ( (*U$38).f <= C$16 ) goto g8;
;** 124	-----------------------    (*U$38).f = C$16;
           LDHU    .D1T1   *A4,A8            ; |121| 
           SHL     .S1     A0,5,A9           ; |123| 
           ADDAD   .D1     A9,A0,A9          ; |123| 
           ADD     .L1     A3,A9,A3          ; |123| 
           ADDK    .S1     1344,A3           ; |123| 
           CMPGTU  .L1     A0,A8,A1          ; |121| 
   [!A1]   LDDW    .D1T1   *+A20(16),A9:A8   ; |123| 
   [!A1]   LDDW    .D1T1   *A3,A5:A4         ; |123| 
   [ A1]   ZERO    .L1     A0
           NOP             3
   [!A1]   CMPGTDP .S1     A9:A8,A5:A4,A0    ; |123| 
           NOP             1
   [ A0]   STDW    .D1T1   A5:A4,*+A20(16)   ; |124| 
;** --------------------------------------------------------------------------*
$C$L35:    
;**	-----------------------g8:
;** 127	-----------------------    U$66 = (*v$3).end_data;
;** 127	-----------------------    U$68 = U$66+1376;
;** 127	-----------------------    Q$1 = 138;
;** 127	-----------------------    (*U$38).fe = *(double *)U$68*end_feed_rate;
;** 139	-----------------------    if ( (*U$38).fe <= max_speed ) goto g11;
;** 140	-----------------------    (*U$38).fe = max_speed;
;** 140	-----------------------    goto g11;
           MVK     .S1     512,A3            ; |127| 
           ADD     .L1     A3,A19,A3         ; |127| 
           LDW     .D1T2   *A3,B8            ; |127| 
           MV      .L1X    B9,A31            ; |127| 
           MVK     .S2     344,B6            ; |151| 
           MVK     .S2     344,B5            ; |169| 
           ADD     .L2X    B5,A20,B5         ; |169| 
           ADD     .L1X    A31,B8,A3         ; |127| 
           LDDW    .D1T1   *A3,A5:A4         ; |127| 
           NOP             4
           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |127| 
           NOP             9
           STDW    .D1T1   A5:A4,*+A20(8)    ; |127| 
           LDDW    .D1T1   *+A20(8),A5:A4    ; |139| 
           MVK     .S1     320,A6            ; |168| 
           BNOP    .S1     $C$L37,2          ; |140| 
           CMPGTDP .S1     A5:A4,A17:A16,A0  ; |139| 
           NOP             1

   [ A0]   STDW    .D1T1   A17:A16,*+A20(8)  ; |140| 
||         MVK     .S1     336,A4            ; |149| 

           ; BRANCH OCCURS {$C$L37}          ; |140| 
;** --------------------------------------------------------------------------*
$C$L36:    
;**	-----------------------g10:
;** 145	-----------------------    v$2 = (int)(*this).m_trajectory_index;
;** 145	-----------------------    v$1 = (*this).m_dynamic_info;
;** 145	-----------------------    C$15 = (*v$3).end_data;
;** 145	-----------------------    (*v$1[(unsigned char)v$2]).f = *((double *)C$15+1368)*target_feed_rate;
;** 146	-----------------------    U$66 = C$15;
;** 146	-----------------------    U$68 = U$66+1376;
;** 146	-----------------------    Q$1 = 138;
;** 146	-----------------------    U$38 = v$1[v$2];
;** 146	-----------------------    (*U$38).fe = *(double *)U$68*end_feed_rate;
           LDW     .D1T2   *+A10(8),B31      ; |145| 
           MV      .L1X    B8,A31
           ADD     .L1     A5,A4,A3          ; |145| 
           LDDW    .D1T2   *A3,B7:B6         ; |145| 
           LDBU    .D1T2   *+A10[A31],B8     ; |145| 
           ADD     .L1X    B9,A4,A3          ; |146| 
           NOP             2
           MPYDP   .M2     B5:B4,B7:B6,B7:B6 ; |145| 
           EXTU    .S2     B8,24,24,B30      ; |145| 
           LDW     .D2T2   *+B31[B30],B4     ; |145| 
           LDW     .D2T1   *+B31[B8],A20     ; |146| 
           MV      .L2X    A4,B8             ; |146| 
           MVK     .S1     336,A4            ; |149| 
           MVK     .S2     344,B5            ; |169| 
           NOP             3
           STDW    .D2T2   B7:B6,*+B4(16)    ; |145| 
           LDDW    .D1T1   *A3,A9:A8         ; |146| 
           ADD     .L2X    B5,A20,B5         ; |169| 
           MVK     .S2     344,B6            ; |151| 
           NOP             2
           MPYDP   .M1     A7:A6,A9:A8,A7:A6 ; |146| 
           NOP             9

           STDW    .D1T1   A7:A6,*+A20(8)    ; |146| 
||         MVK     .S1     320,A6            ; |168| 

;** --------------------------------------------------------------------------*
$C$L37:    
;**	-----------------------g11:
;** 149	-----------------------    if ( (*U$38).current_step < (*U$38).step_number ) goto g19;
           ADD     .L1     A4,A20,A31        ; |149| 

           ADD     .L2X    4,A4,B4
||         LDW     .D1T1   *A31,A4           ; |149| 

           ADD     .L2X    B4,A20,B4         ; |149| 
           LDW     .D2T2   *B4,B4            ; |149| 
           MVK     .S1     352,A5            ; |170| 
           NOP             3

           CMPLTU  .L1X    B4,A4,A0          ; |149| 
||         ADD     .S1     A6,A20,A4         ; |168| 
||         ADD     .D1     A5,A20,A6         ; |170| 
||         ADD     .L2X    B6,A20,B4         ; |151| 

   [ A0]   B       .S1     $C$L38            ; |149| 
|| [ A0]   LDDW    .D1T1   *A4,A5:A4         ; |168| 
|| [!A0]   LDDW    .D2T2   *B4,B5:B4         ; |151| 

   [!A0]   LDDW    .D1T1   *+A10(24),A5:A4   ; |153| 
           ZERO    .L2     B7:B6             ; |169| 
   [ A0]   STDW    .D2T2   B7:B6,*B5         ; |169| 
   [ A0]   STDW    .D1T2   B7:B6,*A6         ; |170| 
   [ A0]   STDW    .D1T1   A5:A4,*A20        ; |168| 
           ; BRANCHCC OCCURS {$C$L38}        ; |149| 
;** --------------------------------------------------------------------------*
;** 151	-----------------------    trans_time = (*U$38).left_time;
;** 153	-----------------------    C$14 = (*this).m_interpolation_cycle-trans_time;
;** 153	-----------------------    if ( trans_time >= C$14 ) goto g14;
;** 154	-----------------------    trans_time = C$14;
;**	-----------------------g14:
;** 156	-----------------------    if ( is_tapping_mode != 1 ) goto g16;
;** 160	-----------------------    (*U$38).fs = (*U$38).last_fe-(*(*this).m_channel_config).tapping_max_stop_acc*trans_time*0.5;
;** 160	-----------------------    goto g17;
;**	-----------------------g16:
;** 157	-----------------------    (*U$38).fs = (*U$38).last_fe-(*U$66).acc*trans_time*0.5;
;**	-----------------------g17:
;** 162	-----------------------    if ( (*U$38).fs >= 0.0 ) goto g20;
;** 163	-----------------------    (*U$38).fs = 0.0;
;** 163	-----------------------    goto g20;

   [ B0]   LDW     .D1T1   *+A10(40),A6      ; |160| 
||         SUBDP   .L1X    A5:A4,B5:B4,A5:A4 ; |153| 

           MVK     .S2     3784,B6           ; |157| 
           ADD     .L2     B6,B8,B6          ; |157| 
   [!B0]   LDDW    .D2T2   *B6,B7:B6         ; |157| 
           ZERO    .L1     A31
   [ B0]   ADDK    .S1     720,A6            ; |160| 
   [ B0]   LDDW    .D1T1   *A6,A7:A6         ; |160| 
           CMPLTDP .S1X    B5:B4,A5:A4,A0    ; |153| 
           MVK     .S2     3800,B9           ; |178| 
   [ A0]   MV      .L2X    A5,B5             ; |154| 
   [ A0]   MV      .L2X    A4,B4             ; |154| 
   [ B0]   MPYDP   .M2X    B5:B4,A7:A6,B5:B4 ; |160| 
           SET     .S1     A31,0x15,0x1d,A5
           ZERO    .L1     A4                ; |160| 
           MV      .L1     A5,A7             ; |157| 
   [!B0]   MPYDP   .M2     B5:B4,B7:B6,B5:B4 ; |157| 
           ZERO    .L1     A6                ; |160| 
           MVK     .S1     720,A16           ; |183| 
           MVK     .S2     360,B6            ; |157| 
           MVK     .S1     288,A31           ; |184| 
           ADD     .L1X    B6,A20,A8         ; |160| 
   [ B0]   MPYDP   .M2X    A5:A4,B5:B4,B5:B4 ; |160| 
   [ B0]   LDDW    .D1T1   *A8,A5:A4         ; |160| 
           MVK     .S2     712,B7            ; |182| 
           NOP             2
   [!B0]   MPYDP   .M1X    A7:A6,B5:B4,A5:A4 ; |157| 
           NOP             3
           ADD     .L1X    B6,A20,A7         ; |157| 
   [!B0]   LDDW    .D1T1   *A7,A7:A6         ; |157| 
   [ B0]   SUBDP   .L1X    A5:A4,B5:B4,A5:A4 ; |160| 
           MVK     .S2     728,B6            ; |184| 
           ZERO    .L2     B5:B4             ; |162| 
           NOP             1
   [!B0]   SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |157| 
           ADD     .S1     A31,A20,A7        ; |178| 
           ADD     .S1     A31,A20,A6        ; |184| 
   [ B0]   STDW    .D1T1   A5:A4,*A20        ; |160| 
           NOP             3
   [!B0]   STDW    .D1T1   A5:A4,*A20        ; |157| 
           LDDW    .D1T1   *A20,A5:A4        ; |162| 
           NOP             1
           BNOP    .S1     $C$L39,2          ; |163| 
           CMPLTDP .S2X    A5:A4,B5:B4,B1    ; |162| 

           ZERO    .L2     B5:B4             ; |163| 
||         MVK     .S1     328,A4            ; |174| 

   [ B1]   STDW    .D1T2   B5:B4,*A20        ; |163| 
||         MVK     .S2     296,B4            ; |179| 

           ; BRANCH OCCURS {$C$L39}          ; |163| 
;** --------------------------------------------------------------------------*
$C$L38:    
;**	-----------------------g19:
;** 168	-----------------------    (*U$38).fs = (*U$38).current_f;
;** 169	-----------------------    (*U$38).left_time = C$13 = 0.0;
;** 170	-----------------------    (*U$38).left_dist = C$13;

           MVK     .S1     288,A31           ; |184| 
||         MVK     .S2     728,B6            ; |184| 

           MVK     .S1     328,A4            ; |174| 
||         ADD     .L1     A31,A20,A6        ; |184| 
||         ADD     .D1     A31,A20,A7        ; |178| 
||         MVK     .S2     712,B7            ; |182| 

           MVK     .S1     720,A16           ; |183| 
||         MVK     .S2     296,B4            ; |179| 

           MVK     .S2     3800,B9           ; |178| 
;** --------------------------------------------------------------------------*
$C$L39:    
;**	-----------------------g20:
;** 173	-----------------------    (*U$38).le = *((Q$1<<3)+(double *)U$68);
;** 174	-----------------------    (*U$38).ls = (*U$38).current_l;
;** 175	-----------------------    if ( is_tapping_mode != 1 ) goto g22;

           LDDW    .D1T1   *+A3[A18],A5:A4   ; |173| 
||         ADD     .L1     A4,A20,A3         ; |174| 
||         MVK     .S2     3784,B5           ; |176| 

   [!B0]   BNOP    .S1     $C$L40,3          ; |175| 
||         LDDW    .D1T1   *A3,A9:A8         ; |174| 
||         ADD     .L2     B9,B8,B5          ; |178| 
||         ADD     .S2     B5,B8,B8          ; |176| 
||         ADD     .L1X    B4,A20,A3         ; |185| 
||         ADD     .D2X    B4,A20,B4         ; |179| 

           STDW    .D1T1   A5:A4,*+A20(32)   ; |173| 
           STDW    .D1T1   A9:A8,*+A20(24)   ; |174| 
           ; BRANCHCC OCCURS {$C$L40}        ; |175| 
;** --------------------------------------------------------------------------*
;** 182	-----------------------    v$4 = (*this).m_channel_config;
;** 182	-----------------------    (*U$38).acceleration = (*v$4).tapping_max_acc;
;** 183	-----------------------    (*U$38).deceleration = (*v$4).tapping_max_stop_acc;
;** 184	-----------------------    (*U$38).Ja = C$12 = (*v$4).tapping_max_jerk;
;** 185	-----------------------    (*U$38).Jd = C$12;
;** 185	-----------------------    goto g23;
           LDW     .D1T1   *+A10(40),A7      ; |182| 
           NOP             4
           ADD     .L1X    B7,A7,A4          ; |182| 
           LDDW    .D1T1   *A4,A5:A4         ; |182| 
           ADD     .L1     A16,A7,A31        ; |183| 
           ADD     .L2X    B6,A7,B4          ; |184| 
           NOP             2
           STDW    .D1T1   A5:A4,*+A20(48)   ; |182| 
           LDDW    .D1T1   *A31,A5:A4        ; |183| 
           NOP             4
           STDW    .D1T1   A5:A4,*+A20(56)   ; |183| 
           LDDW    .D2T2   *B4,B5:B4         ; |184| 
           MV      .L1     A10,A4            ; |187| 
           BNOP    .S1     $C$L41,2          ; |185| 
           STDW    .D1T2   B5:B4,*A3         ; |185| 
           LDW     .D1T1   *A10,A3           ; |187| 
           STDW    .D1T2   B5:B4,*A6         ; |184| 
           ; BRANCH OCCURS {$C$L41}          ; |185| 
;** --------------------------------------------------------------------------*
$C$L40:    
;**	-----------------------g22:
;** 176	-----------------------    (*U$38).acceleration = C$11 = (*U$66).acc;
;** 177	-----------------------    (*U$38).deceleration = C$11;
;** 178	-----------------------    (*U$38).Ja = C$10 = (*U$66).jerk;
;** 179	-----------------------    (*U$38).Jd = C$10;
           LDDW    .D2T1   *B8,A5:A4         ; |176| 
           LDW     .D1T1   *A10,A3           ; |187| 
           NOP             3
           STDW    .D1T1   A5:A4,*+A20(48)   ; |176| 
           STDW    .D1T1   A5:A4,*+A20(56)   ; |177| 
           LDDW    .D2T2   *B5,B7:B6         ; |178| 
           MV      .L1     A10,A4            ; |187| 
           NOP             3
           STDW    .D1T2   B7:B6,*A7         ; |178| 
           STDW    .D2T2   B7:B6,*B4         ; |179| 
;** --------------------------------------------------------------------------*
$C$L41:    
;**	-----------------------g23:
;** 187	-----------------------    (*(void (*)())*((*this).__vptr+36))(this);
;** 189	-----------------------    VelocityPlanning::PlanVelocity((*this).m_velocity_planning, *((*this).m_trajectory_index*4+(*this).m_dynamic_info));
;** 194	-----------------------    return (int)(**((*this).m_trajectory_index*4+(*this).m_dynamic_info)).step_number;
           NOP             3
           LDW     .D1T1   *+A3(36),A3       ; |187| 
           NOP             4
           CALL    .S2X    A3                ; |187| 
           ADDKPC  .S2     $C$RL20,B3,4      ; |187| 
$C$RL20:   ; CALL OCCURS {A3} {0}            ; |187| 
;** --------------------------------------------------------------------------*

           MVK     .S1     36,A3             ; |189| 
||         LDW     .D1T2   *+A10(8),B5       ; |189| 

           LDBU    .D1T2   *+A10[A3],B4      ; |189| 
           LDW     .D1T1   *+A10(12),A4      ; |189| 
           NOP             3

           CALLP   .S2     _ZN16VelocityPlanning12PlanVelocityEP11DynamicInfo,B3
||         LDW     .D2T2   *+B5[B4],B4       ; |189| 

$C$RL21:   ; CALL OCCURS {_ZN16VelocityPlanning12PlanVelocityEP11DynamicInfo} {0}  ; |189| 
;** --------------------------------------------------------------------------*

           MVK     .S1     36,A4             ; |194| 
||         LDW     .D1T1   *+A10(8),A3       ; |194| 

           LDBU    .D1T1   *+A10[A4],A4      ; |194| 
           MV      .L2X    A11,B3            ; |195| 
           LDW     .D2T1   *+SP(4),A10       ; |195| 
           NOP             2
           LDW     .D1T1   *+A3[A4],A3       ; |194| 
           NOP             4
           ADDK    .S1     336,A3            ; |194| 

           RET     .S2     B3                ; |195| 
||         LDW     .D1T1   *A3,A4            ; |194| 

           LDW     .D2T1   *++SP(8),A11      ; |195| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |195| 
	.sect	".text"
	.clink
	.global	_ZN22InterpolationAlgorithm11SaveEndDataEP14CircularBufferI8LineDataE

;******************************************************************************
;* FUNCTION NAME: InterpolationAlgorithm::SaveEndData(CircularBuffer<LineData> *)*
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,SP,A16,A17,  *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,DP,SP,A16,   *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_ZN22InterpolationAlgorithm11SaveEndDataEP14CircularBufferI8LineDataE:
;** --------------------------------------------------------------------------*
;** 96	-----------------------    (*(void (*)())*((*this).__vptr+44))(this);
;** 98	-----------------------    MCommands::Reset((struct Commands *)(*(*this).m_geometry).end_data+3128);
;** 99	-----------------------    data = (*(*this).m_geometry).end_data;
;** 157	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*buffer).m_gateHwi);  // [34]
;** 159	-----------------------    assert(data != NULL);  // [34]
           STW     .D2T2   B12,*SP--(8)      ; |95| 
           STDW    .D2T2   B11:B10,*SP--     ; |95| 
           STDW    .D2T1   A13:A12,*SP--     ; |95| 

           STDW    .D2T1   A11:A10,*SP--     ; |95| 
||         MV      .L1     A4,A11            ; |95| 

           LDW     .D1T1   *A11,A3           ; |96| 
           MV      .L1X    B3,A13            ; |95| 
           MV      .L1X    B4,A10            ; |95| 
           NOP             2
           LDW     .D1T1   *+A3(44),A3       ; |96| 
           NOP             4
           CALL    .S2X    A3                ; |96| 
           ADDKPC  .S2     $C$RL22,B3,4      ; |96| 
$C$RL22:   ; CALL OCCURS {A3} {0}            ; |96| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A11(4),A3       ; |98| 
           NOP             4
           ADDK    .S1     512,A3            ; |98| 
           LDW     .D1T1   *A3,A4            ; |98| 
           MVK     .S1     3128,A3           ; |98| 
           NOP             3

           CALLP   .S2     _ZN9MCommands5ResetEv,B3
||         ADD     .L1     A3,A4,A4          ; |98| 

$C$RL23:   ; CALL OCCURS {_ZN9MCommands5ResetEv} {0}  ; |98| 
           LDW     .D1T2   *+A11(4),B4       ; |99| 
           LDW     .D1T1   *+A10(20),A4      ; |157| 
           NOP             3
           ADDK    .S2     512,B4            ; |99| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D2T2   *B4,B10           ; |99| 

$C$RL24:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |157| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B10,A0
   [ A0]   B       .S1     $C$L42            ; |159| 

   [!A0]   CALL    .S1     __c6xabi_abort_msg ; |159| 
|| [ A0]   LDW     .D1T1   *A10,A0           ; |163| 

           MV      .L1     A4,A12            ; |157| 
           MVKL    .S1     $C$SL1+0,A4
           MVKH    .S1     $C$SL1+0,A4
           NOP             1
           ; BRANCHCC OCCURS {$C$L42}        ; |159| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     $C$RL25,B3,0      ; |159| 
$C$RL25:   ; CALL OCCURS {__c6xabi_abort_msg} {0}  ; |159| 
           LDW     .D1T1   *A10,A0           ; |163| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L42:    
;** 163	-----------------------    v$1 = (*buffer).m_buffer;  // [34]
;** 163	-----------------------    if ( v$1 == NULL ) goto g13;  // [34]

   [ A0]   LDW     .D1T1   *+A10(16),A7      ; |176| 
|| [!A0]   B       .S1     $C$L46            ; |163| 
|| [ A0]   MVKL    .S2     0x89645c5,B4

   [ A0]   LDW     .D1T1   *+A10(8),A3       ; |166| 
   [ A0]   LDW     .D1T1   *+A10(4),A5       ; |166| 
   [ A0]   LDW     .D1T2   *+A10(12),B6      ; |176| 
   [ A0]   MVKH    .S2     0x89645c5,B4
           SUB     .L1     A7,A0,A4          ; |182| 
           ; BRANCHCC OCCURS {$C$L46}        ; |163| 
;** --------------------------------------------------------------------------*
;** 166	-----------------------    v$4 = (*buffer).m_buffer_total_length;  // [34]
;** 166	-----------------------    if ( (C$7 = v$4-(*buffer).m_buffer_cur_length) >= 2 ) goto g4;  // [34]
;** 169	-----------------------    write_length = C$7;  // [34]
;** 169	-----------------------    goto g5;  // [34]
;**	-----------------------g4:
;** 167	-----------------------    write_length = 1;  // [34]
;**	-----------------------g5:
;** 176	-----------------------    v$2 = (*buffer).m_read_pointer;  // [34]
;** 176	-----------------------    if ( (*buffer).m_write_pointer < v$2 ) goto g9;  // [34]
           MVK     .S1     3816,A31          ; |177| 

           SUB     .L1     A5,A3,A11         ; |166| 
||         MPY32US .M2X    B4,A4,B5:B4       ; |182| 
||         SHR     .S1     A4,31,A3          ; |182| 

           CMPLTU  .L1X    B6,A7,A2          ; |176| 
           CMPLT   .L1     A11,2,A1          ; |166| 

   [!A1]   MVK     .L1     0x1,A11           ; |167| 
|| [ A2]   B       .S1     $C$L44            ; |176| 

           MPYLI   .M1     A31,A11,A9:A8     ; |177| 
||         SHR     .S2     B5,7,B5           ; |182| 
||         MV      .L2     B10,B4            ; |182| 
|| [ A2]   CALL    .S1     memcpy            ; |178| 

           MPY32   .M1     A31,A11,A6        ; |178| 
|| [!A2]   SUB     .L2X    A11,B5,B4         ; |189| 

           SUB     .L1X    B5,A3,A4          ; |182| 
           CMPLT   .L1     A4,A11,A1         ; |182| 
           SUB     .L1     A7,A8,A4          ; |177| 
           ; BRANCHCC OCCURS {$C$L44}        ; |176| 
;** --------------------------------------------------------------------------*
;** 182	-----------------------    C$6 = v$2-v$1;  // [34]
;** 182	-----------------------    C$5 = C$6>>31;  // [34]
;** 182	-----------------------    C$4 = (int)_hill((long long)C$6*144065989LL)>>7;  // [34]
;** 182	-----------------------    if ( C$4-C$5 >= write_length ) goto g8;  // [34]

           ADD     .L1X    A3,B4,A4          ; |189| 
||         MVK     .S2     3816,B4           ; |190| 
||         MVK     .S1     3816,A8           ; |183| 

           MVK     .S1     3816,A31          ; |184| 

           MV      .L1X    B4,A6             ; |190| 
||         MV      .L2X    A8,B6             ; |183| 
||         MPYLI   .M1     A8,A11,A9:A8      ; |183| 

           MPYLI   .M2X    B4,A5,B5:B4       ; |190| 
||         SUB     .L1X    A11,B5,A5         ; |190| 

           ADD     .L1     A3,A5,A3          ; |190| 
||         MVK     .S1     3816,A5           ; |190| 
||         MPYLI   .M2X    B6,A4,B7:B6       ; |192| 

           MPY32   .M1     A6,A11,A6         ; |192| 
           MV      .L2X    A5,B31            ; |190| 

           MPY32   .M2X    B31,A4,B5         ; |191| 
||         MPYLI   .M1     A5,A3,A5:A4       ; |190| 
|| [!A1]   B       .S1     $C$L43            ; |182| 

           ADD     .L1X    A0,B4,A3          ; |190| 
||         MV      .L2     B10,B4            ; |190| 
||         ADD     .S2     B10,B6,B12        ; |192| 

   [ A1]   CALL    .S1     memcpy            ; |191| 
   [!A1]   CALL    .S1     memcpy            ; |184| 

           SUB     .L1     A3,A4,A4          ; |190| 
||         MPY32   .M1     A31,A11,A3        ; |184| 
||         SUB     .L2X    A6,B5,B11         ; |192| 
||         SUB     .S1     A7,A8,A5          ; |183| 

           MV      .L1X    B5,A6             ; |191| 
           ; BRANCHCC OCCURS {$C$L43}        ; |182| 
;** --------------------------------------------------------------------------*
;** 189	-----------------------    split_length = write_length-C$4+C$5;  // [34]
;** 190	-----------------------    v$2 = &v$1[v$4-write_length-C$4+C$5];  // [34]
;** 190	-----------------------    (*buffer).m_read_pointer = v$2;  // [34]
;** 191	-----------------------    C$3 = split_length*3816u;  // [34]
;** 191	-----------------------    memcpy(v$2, data, C$3);  // [34]
;** 192	-----------------------    memcpy((*buffer).m_buffer, split_length*3816+data, write_length*3816u-C$3);  // [34]
;** 192	-----------------------    goto g10;  // [34]
           STW     .D1T1   A4,*+A10(16)      ; |190| 
           ADDKPC  .S2     $C$RL26,B3,0      ; |191| 
$C$RL26:   ; CALL OCCURS {memcpy} {0}        ; |191| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     memcpy,B3
||         LDW     .D1T1   *A10,A4           ; |192| 
||         MV      .L2     B12,B4            ; |192| 
||         MV      .L1X    B11,A6            ; |192| 

$C$RL27:   ; CALL OCCURS {memcpy} {0}        ; |192| 
;** --------------------------------------------------------------------------*

           BNOP    .S2     $C$L45,1          ; |192| 
||         LDW     .D1T1   *+A10(4),A3       ; |195| 
||         MVK     .S1     3816,A4           ; |195| 

           LDW     .D1T1   *A10,A6           ; |195| 
           LDW     .D1T1   *+A10(8),A7       ; |198| 
           LDW     .D1T1   *+A10(12),A31     ; |195| 
           MPYLI   .M1     A4,A3,A5:A4       ; |195| 
           ; BRANCH OCCURS {$C$L45}          ; |192| 
;** --------------------------------------------------------------------------*
$C$L43:    
;**	-----------------------g8:
;** 183	-----------------------    v$2 -= write_length*3816;  // [34]
;** 183	-----------------------    (*buffer).m_read_pointer = v$2;  // [34]
;** 184	-----------------------    memcpy(v$2, data, write_length*3816u);  // [34]
;** 185	-----------------------    goto g10;  // [34]
           MV      .L1     A5,A4             ; |184| 
           STW     .D1T1   A5,*+A10(16)      ; |183| 

           ADDKPC  .S2     $C$RL28,B3,0      ; |184| 
||         MV      .L1     A3,A6             ; |184| 

$C$RL28:   ; CALL OCCURS {memcpy} {0}        ; |184| 
;** --------------------------------------------------------------------------*

           BNOP    .S2     $C$L45,1          ; |185| 
||         LDW     .D1T1   *+A10(4),A3       ; |195| 
||         MVK     .S1     3816,A4           ; |195| 

           LDW     .D1T1   *A10,A6           ; |195| 
           LDW     .D1T1   *+A10(8),A7       ; |198| 
           LDW     .D1T1   *+A10(12),A31     ; |195| 
           MPYLI   .M1     A4,A3,A5:A4       ; |195| 
           ; BRANCH OCCURS {$C$L45}          ; |185| 
;** --------------------------------------------------------------------------*
$C$L44:    
;**	-----------------------g9:
;** 177	-----------------------    v$2 -= write_length*3816;  // [34]
;** 177	-----------------------    (*buffer).m_read_pointer = v$2;  // [34]
;** 178	-----------------------    memcpy(v$2, data, write_length*3816u);  // [34]

           ADDKPC  .S2     $C$RL29,B3,0      ; |178| 
||         STW     .D1T1   A4,*+A10(16)      ; |177| 

$C$RL29:   ; CALL OCCURS {memcpy} {0}        ; |178| 
           LDW     .D1T1   *+A10(4),A3       ; |195| 
           MVK     .S1     3816,A4           ; |195| 
           LDW     .D1T1   *+A10(8),A7       ; |198| 
           LDW     .D1T1   *A10,A6           ; |195| 
           LDW     .D1T1   *+A10(12),A31     ; |195| 
           MPYLI   .M1     A4,A3,A5:A4       ; |195| 
;** --------------------------------------------------------------------------*
$C$L45:    
;**	-----------------------g10:
;** 195	-----------------------    C$2 = _mpyli(3816, (*buffer).m_buffer_total_length);  // [34]
;** 195	-----------------------    C$1 = (*buffer).m_write_pointer;  // [34]
;** 195	-----------------------    if ( C$1 < _lo(C$2)+(*buffer).m_buffer ) goto g12;  // [34]
;** 196	-----------------------    (*buffer).m_write_pointer = C$1-(int)_lo(C$2);  // [34]
;**	-----------------------g12:
;** 198	-----------------------    (*buffer).m_buffer_cur_length = (*buffer).m_buffer_cur_length+write_length;  // [34]
           NOP             2
           ADD     .L1     A11,A7,A30        ; |198| 

           ADD     .L1     A6,A4,A6          ; |195| 
||         SUB     .S1     A31,A4,A3         ; |196| 
||         STW     .D1T1   A30,*+A10(8)      ; |198| 

           CMPLTU  .L1     A31,A6,A0         ; |195| 
   [!A0]   STW     .D1T1   A3,*+A10(12)      ; |196| 
;** --------------------------------------------------------------------------*
$C$L46:    
;**	-----------------------g13:
;** 202	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*buffer).m_gateHwi, (int)gate_key);  // [34]
;**  	-----------------------    return;

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D1T1   *+A10(20),A4      ; |202| 
||         MV      .L2X    A12,B4            ; |202| 

$C$RL30:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |202| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T1   *++SP,A11:A10     ; |100| 

           MV      .L2X    A13,B3            ; |100| 
||         LDDW    .D2T1   *++SP,A13:A12     ; |100| 

           LDDW    .D2T2   *++SP,B11:B10     ; |100| 
||         RET     .S2     B3                ; |100| 

           LDW     .D2T2   *++SP(8),B12      ; |100| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |100| 
	.sect	".text:_ZN17TVelocityPlanningC2Ed"
	.clink
	.global	_ZN17TVelocityPlanningC2Ed

;******************************************************************************
;* FUNCTION NAME: TVelocityPlanning::TVelocityPlanning(double) [subobject]    *
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
_ZN17TVelocityPlanningC2Ed:
;** --------------------------------------------------------------------------*
;** 27	-----------------------    VelocityPlanning::VelocityPlanning [subobject]((struct elocityPlanning *)this, $P$T1);  // [32]
;** 27	-----------------------    (*this).__b_16VelocityPlanning.__vptr = &Virtual function table for TVelocityPlanning[2];  // [32]
;**  	-----------------------    return this;
           STW     .D2T1   A11,*SP--(8)

           MV      .L1X    B3,A11
||         CALLP   .S2     _ZN16VelocityPlanningC2Ed,B3
||         STW     .D2T1   A10,*+SP(4)
||         MV      .S1     A4,A10

$C$RL31:   ; CALL OCCURS {_ZN16VelocityPlanningC2Ed} {0}  ; |27| 
;** --------------------------------------------------------------------------*
           MVKL    .S1     _ZTV17TVelocityPlanning+8,A3
           MVKH    .S1     _ZTV17TVelocityPlanning+8,A3

           MV      .L2X    A11,B3
||         STW     .D1T1   A3,*A10           ; |27| 

           RET     .S2     B3
||         MV      .L1     A10,A4
||         LDW     .D2T1   *+SP(4),A10

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
	.sect	".text:_ZN17SVelocityPlanningC2Ed"
	.clink
	.global	_ZN17SVelocityPlanningC2Ed

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::SVelocityPlanning(double) [subobject]    *
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
_ZN17SVelocityPlanningC2Ed:
;** --------------------------------------------------------------------------*
;** 26	-----------------------    VelocityPlanning::VelocityPlanning [subobject]((struct elocityPlanning *)this, $P$T0);  // [30]
;** 26	-----------------------    (*this).__b_16VelocityPlanning.__vptr = &Virtual function table for SVelocityPlanning[2];  // [30]
;**  	-----------------------    return this;
           STW     .D2T1   A11,*SP--(8)

           MV      .L1X    B3,A11
||         CALLP   .S2     _ZN16VelocityPlanningC2Ed,B3
||         STW     .D2T1   A10,*+SP(4)
||         MV      .S1     A4,A10

$C$RL32:   ; CALL OCCURS {_ZN16VelocityPlanningC2Ed} {0}  ; |26| 
;** --------------------------------------------------------------------------*
           MVKL    .S1     _ZTV17SVelocityPlanning+8,A3
           MVKH    .S1     _ZTV17SVelocityPlanning+8,A3

           MV      .L2X    A11,B3
||         STW     .D1T1   A3,*A10           ; |26| 

           RET     .S2     B3
||         MV      .L1     A10,A4
||         LDW     .D2T1   *+SP(4),A10

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
;; Inlined function references:
;; [ 18] InterpolationAlgorithm::~InterpolationAlgorithm()
;; [ 22] InterpolationAlgorithm::SetSpeedProfileType(SpeedProfileType)
;; [ 29] InterpolationAlgorithm::SetChannelIndex(int, NCCCTChannelConfig *)
;; [ 30] SVelocityPlanning::SVelocityPlanning(double)
;; [ 32] TVelocityPlanning::TVelocityPlanning(double)
;; [ 34] CircularBuffer<LineData>::InsertData(const LineData *, int)
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const:.string"
$C$SL1:	.string	"Assertion failed, (data != 0), file /root/git/ALG_LIB/CTALG"
	.string	"/inc/circular_buffer.h, line 159",10,0
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_Znwj
	.global	_ZdlPv
	.global	_Znaj
	.global	_ZdaPv
	.global	ti_sysbios_gates_GateHwi_enter__E
	.global	ti_sysbios_gates_GateHwi_leave__E
	.global	__cxa_pure_virtual
	.global	_ZN11AxisMovData9CheckMaskEh
	.global	_ZN11AxisMovData7SetMaskEhh
	.global	_ZN9MCommands5ResetEv
	.global	_ZN16VelocityPlanningC2Ed
	.global	_ZN16VelocityPlanning12PlanVelocityEP11DynamicInfo
	.global	_ZTV17SVelocityPlanning
	.global	_ZTV17TVelocityPlanning
	.global	_ZTVN10__cxxabiv117__class_type_infoE
	.global	__c6xabi_abort_msg
	.global	memcpy
;*****************************************************************************
;* SECTION GROUPS                                                            *
;*****************************************************************************
	.group    "_ZN17SVelocityPlanningC2Ed", 1
	.gmember  ".text:_ZN17SVelocityPlanningC2Ed"
	.endgroup
	.group    "_ZN17TVelocityPlanningC2Ed", 1
	.gmember  ".text:_ZN17TVelocityPlanningC2Ed"
	.endgroup
	.group    "_ZTI22InterpolationAlgorithm", 1
	.gmember  ".const:_ZTI22InterpolationAlgorithm"
	.endgroup
	.group    "_ZTS22InterpolationAlgorithm", 1
	.gmember  ".const:_ZTS22InterpolationAlgorithm"
	.endgroup
	.group    "_ZTV22InterpolationAlgorithm", 1
	.gmember  ".const:_ZTV22InterpolationAlgorithm"
	.endgroup


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
