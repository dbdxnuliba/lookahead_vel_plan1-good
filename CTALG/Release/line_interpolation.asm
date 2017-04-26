;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.3.4 *
;* Date/Time created: Sat Apr 22 16:22:07 2017                                *
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
	.elfsym	SCREW_COMP_TABLE_MAX_LEN,SYM_SIZE(4)
SCREW_COMP_TABLE_MAX_LEN:
	.field	1000,32			; SCREW_COMP_TABLE_MAX_LEN @ 0

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

	.sect	".rodata"
	.align	8
	.elfsym	ZERO,SYM_SIZE(8)
ZERO:
	.word	0e2308c3ah,03e45798eh		; ZERO @ 0

	.global	_ZTV17LineInterpolation
	.sect	".const:_ZTV17LineInterpolation"
	.align	8
	.elfsym	_ZTV17LineInterpolation,SYM_SIZE(56)
_ZTV17LineInterpolation:
	.field	0,32			; _ZTV17LineInterpolation[0] @ 0
	.field	_ZTI17LineInterpolation,32		; _ZTV17LineInterpolation[1] @ 32
	.field	_ZN17LineInterpolationD1Ev,32		; _ZTV17LineInterpolation[2] @ 64
	.field	_ZN17LineInterpolationD0Ev,32		; _ZTV17LineInterpolation[3] @ 96
	.field	_ZN17LineInterpolation4InitE16SpeedProfileType,32		; _ZTV17LineInterpolation[4] @ 128
	.field	_ZN22InterpolationAlgorithm15GetCurrentSpeedEv,32		; _ZTV17LineInterpolation[5] @ 160
	.field	_ZN22InterpolationAlgorithm23IsInterpolationFinishedEv,32		; _ZTV17LineInterpolation[6] @ 192
	.field	_ZN17LineInterpolation15ComputeGeometryEv,32		; _ZTV17LineInterpolation[7] @ 224
	.field	_ZN22InterpolationAlgorithm13HasReachedEndEv,32		; _ZTV17LineInterpolation[8] @ 256
	.field	_ZN22InterpolationAlgorithm12PlanVelocityEddb,32		; _ZTV17LineInterpolation[9] @ 288
	.field	_ZN22InterpolationAlgorithm11InterpolateEP8LineData,32		; _ZTV17LineInterpolation[10] @ 320
	.field	_ZN17LineInterpolation15ValidateDynamicEv,32		; _ZTV17LineInterpolation[11] @ 352
	.field	_ZN17LineInterpolation15ComputePositionEdP8LineData,32		; _ZTV17LineInterpolation[12] @ 384
	.field	_ZN17LineInterpolation21ComputeRemainDistanceEv,32		; _ZTV17LineInterpolation[13] @ 416

	.global	_ZTI17LineInterpolation
	.sect	".const:_ZTI17LineInterpolation"
	.align	4
	.elfsym	_ZTI17LineInterpolation,SYM_SIZE(12)
_ZTI17LineInterpolation:
	.field	_ZTVN10__cxxabiv120__si_class_type_infoE+8,32		; _ZTI17LineInterpolation.base.base.__vptr @ 0
	.field	_ZTS17LineInterpolation,32		; _ZTI17LineInterpolation.base.base.__name @ 32
	.field	_ZTI22InterpolationAlgorithm,32		; _ZTI17LineInterpolation.base_type @ 64

	.global	_ZTS17LineInterpolation
	.sect	".const:_ZTS17LineInterpolation"
	.align	8
	.elfsym	_ZTS17LineInterpolation,SYM_SIZE(20)
_ZTS17LineInterpolation:
	.field	49,8			; _ZTS17LineInterpolation[0] @ 0
	.field	55,8			; _ZTS17LineInterpolation[1] @ 8
	.field	76,8			; _ZTS17LineInterpolation[2] @ 16
	.field	105,8			; _ZTS17LineInterpolation[3] @ 24
	.field	110,8			; _ZTS17LineInterpolation[4] @ 32
	.field	101,8			; _ZTS17LineInterpolation[5] @ 40
	.field	73,8			; _ZTS17LineInterpolation[6] @ 48
	.field	110,8			; _ZTS17LineInterpolation[7] @ 56
	.field	116,8			; _ZTS17LineInterpolation[8] @ 64
	.field	101,8			; _ZTS17LineInterpolation[9] @ 72
	.field	114,8			; _ZTS17LineInterpolation[10] @ 80
	.field	112,8			; _ZTS17LineInterpolation[11] @ 88
	.field	111,8			; _ZTS17LineInterpolation[12] @ 96
	.field	108,8			; _ZTS17LineInterpolation[13] @ 104
	.field	97,8			; _ZTS17LineInterpolation[14] @ 112
	.field	116,8			; _ZTS17LineInterpolation[15] @ 120
	.field	105,8			; _ZTS17LineInterpolation[16] @ 128
	.field	111,8			; _ZTS17LineInterpolation[17] @ 136
	.field	110,8			; _ZTS17LineInterpolation[18] @ 144
	.field	0,8			; _ZTS17LineInterpolation[19] @ 152

;	/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/opt6x --call_assumptions=0 --gen_opt_info=2 /tmp/05686IbQip5 /tmp/05686YrwkTV --opt_info_filename=src/interpolation/line_interpolation.nfo 
	.sect	".text:_ZN17LineInterpolationD1Ev"
	.clink
	.global	_ZN17LineInterpolationD1Ev

;******************************************************************************
;* FUNCTION NAME: LineInterpolation::~LineInterpolation()                     *
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
_ZN17LineInterpolationD1Ev:
;** --------------------------------------------------------------------------*
;** 42	-----------------------    C$10 = (*this).m_slope;
;** 42	-----------------------    if ( C$10 == NULL ) goto g3;
           STW     .D2T1   A11,*SP--(8)      ; |41| 

           STW     .D2T1   A10,*+SP(4)       ; |41| 
||         MV      .L1     A4,A10            ; |41| 

           LDW     .D1T1   *+A10(48),A0      ; |42| 
           MV      .L1X    B3,A11            ; |41| 
           NOP             3
   [!A0]   B       .S1     $C$L1             ; |42| 
   [ A0]   CALL    .S1     _ZdaPv            ; |43| 
   [!A0]   CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |45| 
           MV      .L1     A0,A4             ; |43| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L1}         ; |42| 
;** --------------------------------------------------------------------------*
;** 43	-----------------------    operator delete[] (C$10);
           ADDKPC  .S2     $C$RL0,B3,0       ; |43| 
$C$RL0:    ; CALL OCCURS {_ZdaPv} {0}        ; |43| 
           CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |45| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L1:    
;**	-----------------------g3:
;** 45	-----------------------    InterpolationAlgorithm::~InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)this);
;** 45	-----------------------    return this;
           MV      .L1     A10,A4            ; |45| 
           ADDKPC  .S2     $C$RL1,B3,0       ; |45| 
$C$RL1:    ; CALL OCCURS {_ZN22InterpolationAlgorithmD2Ev} {0}  ; |45| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3            ; |45| 

           RET     .S2     B3                ; |45| 
||         MV      .L1     A10,A4            ; |45| 
||         LDW     .D2T1   *+SP(4),A10       ; |45| 

           LDW     .D2T1   *++SP(8),A11      ; |45| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |45| 
	.sect	".text:_ZN17LineInterpolationD2Ev"
	.clink
	.global	_ZN17LineInterpolationD2Ev

;******************************************************************************
;* FUNCTION NAME: LineInterpolation::~LineInterpolation() [subobject]         *
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
_ZN17LineInterpolationD2Ev:
;** --------------------------------------------------------------------------*
;** 42	-----------------------    C$11 = (*this).m_slope;  // [13]
;** 42	-----------------------    if ( C$11 == NULL ) goto g3;  // [13]
           STW     .D2T1   A11,*SP--(8)

           STW     .D2T1   A10,*+SP(4)
||         MV      .L1     A4,A10

           LDW     .D1T1   *+A10(48),A0      ; |42| 
           MV      .L1X    B3,A11
           NOP             3
   [!A0]   B       .S1     $C$L2             ; |42| 
   [ A0]   CALL    .S1     _ZdaPv            ; |43| 
   [!A0]   CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |45| 
           MV      .L1     A0,A4             ; |43| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L2}         ; |42| 
;** --------------------------------------------------------------------------*
;** 43	-----------------------    operator delete[] (C$11);  // [13]
           ADDKPC  .S2     $C$RL2,B3,0       ; |43| 
$C$RL2:    ; CALL OCCURS {_ZdaPv} {0}        ; |43| 
           CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |45| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L2:    
;**	-----------------------g3:
;** 45	-----------------------    InterpolationAlgorithm::~InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)this);  // [13]
;** 45	-----------------------    return (void * const)this;  // [13]
           MV      .L1     A10,A4            ; |45| 
           ADDKPC  .S2     $C$RL3,B3,0       ; |45| 
$C$RL3:    ; CALL OCCURS {_ZN22InterpolationAlgorithmD2Ev} {0}  ; |45| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3

           RET     .S2     B3
||         MV      .L1     A10,A4            ; |45| 
||         LDW     .D2T1   *+SP(4),A10

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
	.sect	".text:_ZN17LineInterpolationD0Ev"
	.clink
	.global	_ZN17LineInterpolationD0Ev

;******************************************************************************
;* FUNCTION NAME: LineInterpolation::~LineInterpolation() [deleting]          *
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
_ZN17LineInterpolationD0Ev:
;** --------------------------------------------------------------------------*
;**  	-----------------------    if ( this == NULL ) goto g5;

           STW     .D2T1   A11,*SP--(8)
||         MV      .L1     A4,A0

           STW     .D2T1   A10,*+SP(4)
|| [!A0]   B       .S1     $C$L4
||         MV      .L1     A4,A10

   [ A0]   LDW     .D1T1   *+A10(48),A0      ; |42| 
           MV      .L1X    B3,A11
           NOP             3
           ; BRANCHCC OCCURS {$C$L4}  
;** --------------------------------------------------------------------------*
;** 42	-----------------------    C$1 = (*this).m_slope;  // [13]
;** 42	-----------------------    if ( C$1 == NULL ) goto g4;  // [13]
   [!A0]   B       .S1     $C$L3             ; |42| 
   [ A0]   CALL    .S1     _ZdaPv            ; |43| 
   [!A0]   CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |45| 
           MV      .L1     A0,A4             ; |43| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L3}         ; |42| 
;** --------------------------------------------------------------------------*
;** 43	-----------------------    operator delete[] (C$1);  // [13]
           ADDKPC  .S2     $C$RL4,B3,0       ; |43| 
$C$RL4:    ; CALL OCCURS {_ZdaPv} {0}        ; |43| 
           CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |45| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L3:    
;**	-----------------------g4:
;** 45	-----------------------    InterpolationAlgorithm::~InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)this);  // [13]
;**  	-----------------------    operator delete ((void * const)this);
;**	-----------------------g5:
;**  	-----------------------    return;
           MV      .L1     A10,A4            ; |45| 
           ADDKPC  .S2     $C$RL5,B3,0       ; |45| 
$C$RL5:    ; CALL OCCURS {_ZN22InterpolationAlgorithmD2Ev} {0}  ; |45| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZdlPv,B3
||         MV      .L1     A10,A4

$C$RL6:    ; CALL OCCURS {_ZdlPv} {0} 
;** --------------------------------------------------------------------------*
$C$L4:    
           MV      .L2X    A11,B3

           RET     .S2     B3
||         LDW     .D2T1   *+SP(4),A10

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
	.sect	".text"
	.clink
	.global	_ZN17LineInterpolation4InitE16SpeedProfileType

;******************************************************************************
;* FUNCTION NAME: LineInterpolation::Init(SpeedProfileType)                   *
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
_ZN17LineInterpolation4InitE16SpeedProfileType:
;** --------------------------------------------------------------------------*
;** 15	-----------------------    InterpolationAlgorithm::Init((struct nterpolationAlgorithm *)this, speed_profile_type);
;** 16	-----------------------    v$1 = (*this).m_slope;
;** 16	-----------------------    if ( v$1 ) goto g3;
           STW     .D2T1   A11,*SP--(8)      ; |14| 

           MV      .L1X    B3,A11            ; |14| 
||         CALLP   .S2     _ZN22InterpolationAlgorithm4InitE16SpeedProfileType,B3
||         STW     .D2T1   A10,*+SP(4)       ; |14| 
||         MV      .S1     A4,A10            ; |14| 

$C$RL7:    ; CALL OCCURS {_ZN22InterpolationAlgorithm4InitE16SpeedProfileType} {0}  ; |15| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(48),A0      ; |16| 
           NOP             4

   [ A0]   BNOP    .S1     $C$L5,4           ; |16| 
|| [!A0]   LDW     .D1T1   *+A10(56),A3      ; |17| 

   [!A0]   CALL    .S1     _Znaj             ; |17| 
|| [!A0]   LDBU    .D1T1   *+A3(2),A3        ; |17| 

           ; BRANCHCC OCCURS {$C$L5}         ; |16| 
;** --------------------------------------------------------------------------*
;** 17	-----------------------    v$1 = operator new[] ((unsigned)(*(*this).m_channel_config).axis_number<<3);
;** 17	-----------------------    (*this).m_slope = v$1;
           ADDKPC  .S2     $C$RL8,B3,3       ; |17| 
           SHL     .S1     A3,3,A4           ; |17| 
$C$RL8:    ; CALL OCCURS {_Znaj} {0}         ; |17| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |17| 
           STW     .D1T1   A0,*+A10(48)      ; |17| 
;** --------------------------------------------------------------------------*
$C$L5:    
;**	-----------------------g3:
;** 22	-----------------------    return (v$1 != NULL) ? 0 : 2700;

           MV      .L2X    A11,B3            ; |23| 
||         LDW     .D2T1   *+SP(4),A10       ; |23| 
||         ZERO    .L1     A4                ; |22| 

           RETNOP  .S2     B3,5              ; |23| 
||         LDW     .D2T1   *++SP(8),A11      ; |23| 
|| [!A0]   MVK     .S1     0xa8c,A4          ; |22| 

           ; BRANCH OCCURS {B3}              ; |23| 
	.sect	".text:_ZN17LineInterpolation21ComputeRemainDistanceEv"
	.clink
	.global	_ZN17LineInterpolation21ComputeRemainDistanceEv

;******************************************************************************
;* FUNCTION NAME: LineInterpolation::ComputeRemainDistance()                  *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A8,A9,B4                                 *
;*   Regs Used         : A3,A4,A5,A6,A8,A9,B3,B4                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN17LineInterpolation21ComputeRemainDistanceEv:
;** --------------------------------------------------------------------------*
;** 84	-----------------------    C$1 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data;
;** 84	-----------------------    (*C$1).axis_mov_data.dist = (*C$1).axis_mov_data.dist-(**((*this).__b_22InterpolationAlgorithm.m_trajectory_index*4+(*this).__b_22InterpolationAlgorithm.m_dynamic_info)).current_l;
;**  	-----------------------    return;
           LDW     .D1T1   *+A4(4),A3        ; |84| 

           MVK     .S1     36,A6             ; |84| 
||         LDW     .D1T1   *+A4(8),A5        ; |84| 

           LDBU    .D1T1   *+A4[A6],A4       ; |84| 
           MVK     .S2     2480,B4           ; |84| 
           NOP             1
           ADDK    .S1     512,A3            ; |84| 
           LDW     .D1T1   *A3,A6            ; |84| 
           LDW     .D1T1   *+A5[A4],A3       ; |84| 
           MVK     .S1     2480,A4           ; |84| 
           NOP             2
           ADD     .L1     A4,A6,A4          ; |84| 

           ADDK    .S1     328,A3            ; |84| 
||         LDDW    .D1T1   *A4,A9:A8         ; |84| 

           LDDW    .D1T1   *A3,A5:A4         ; |84| 
           ADD     .L1X    B4,A6,A3          ; |84| 
           NOP             3
           SUBDP   .L1     A9:A8,A5:A4,A5:A4 ; |84| 
           NOP             1
           RETNOP  .S2     B3,4              ; |85| 
           STDW    .D1T1   A5:A4,*A3         ; |84| 
           ; BRANCH OCCURS {B3}              ; |85| 
	.sect	".text"
	.clink
	.global	_ZN17LineInterpolation15ValidateDynamicEv

;******************************************************************************
;* FUNCTION NAME: LineInterpolation::ValidateDynamic()                        *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,*
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,DP,SP, *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 40 Save = 40 byte                  *
;******************************************************************************
_ZN17LineInterpolation15ValidateDynamicEv:
;** --------------------------------------------------------------------------*
;** 40	-----------------------    v$2 = (*this).m_channel_config;
;** 40	-----------------------    if ( (C$4 = (*v$2).axis_number) < 2 ) goto g8;

           STW     .D2T1   A11,*SP--(8)      ; |37| 
||         MV      .L1     A4,A11            ; |37| 

           STDW    .D2T2   B11:B10,*SP--     ; |37| 
           STDW    .D2T1   A15:A14,*SP--     ; |37| 
           STDW    .D2T1   A13:A12,*SP--     ; |37| 
           STW     .D2T1   A10,*SP--(8)      ; |37| 
           LDW     .D1T1   *+A11(56),A15     ; |40| 
           MV      .L2     B3,B11            ; |37| 
           ZERO    .L1     A10               ; |40| 
           NOP             2
           LDBU    .D1T1   *+A15(2),A3       ; |40| 
           NOP             4

           CMPLTU  .L1     A3,2,A0           ; |40| 
||         SUB     .L2X    A3,1,B10

   [ A0]   BNOP    .S1     $C$L9,4           ; |40| 
|| [!A0]   LDW     .D1T1   *+A11(4),A3

           ADDK    .S1     512,A3
           ; BRANCHCC OCCURS {$C$L9}         ; |40| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$25 = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+1432);
;**  	-----------------------    L$1 = C$4-1;
;** 40	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 254, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D1T1   *A3,A3
           NOP             4
           ADDK    .S1     1432,A3
           LDDW    .D1T1   *A3,A13:A12
;** --------------------------------------------------------------------------*
           CALL    .S1     __c6xabi_llshl    ; |41| 
           NOP             4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L6:    
;**	-----------------------g3:
;** 41	-----------------------    if ( (1uLL<<i&U$25) == 0uLL ) goto g7;

           MV      .L2X    A10,B4            ; |41| 
||         ZERO    .L1     A5                ; |41| 
||         MVK     .S1     0x1,A4            ; |41| 
||         ADDKPC  .S2     $C$RL9,B3,0       ; |41| 

$C$RL9:    ; CALL OCCURS {__c6xabi_llshl} {0}  ; |41| 
;** --------------------------------------------------------------------------*

           AND     .L1     A13,A5,A3         ; |41| 
||         ZERO    .S1     A5                ; |41| 
||         AND     .D1     A12,A4,A31        ; |41| 

           CMPEQ   .L1     A3,A5,A0          ; |41| 
   [ A0]   CMPEQ   .L1     A31,A5,A0         ; |41| 

   [ A0]   BNOP    .S1     $C$L7,4           ; |41| 
|| [!A0]   LDW     .D1T1   *+A11(48),A3      ; |43| 

   [!A0]   LDDW    .D1T1   *+A3[A10],A7:A6   ; |43| 
           ; BRANCHCC OCCURS {$C$L7}         ; |41| 
;** --------------------------------------------------------------------------*
;** 43	-----------------------    C$3 = ABS(*((i<<3)+(*this).m_slope));
;** 43	-----------------------    if ( C$3 <= 1.00000000000000002092e-8 ) goto g7;
           MVKL    .S1     0xe2308c3a,A4
           MVKL    .S1     0x3e45798e,A5
           MVKH    .S1     0xe2308c3a,A4
           MVKH    .S1     0x3e45798e,A5
           ABSDP   .S1     A7:A6,A7:A6       ; |43| 
           ADDAW   .D1     A15,A10,A3        ; |45| 
           CMPGTDP .S1     A7:A6,A5:A4,A0    ; |43| 
           NOP             1

   [!A0]   B       .S2     $C$L8             ; |43| 
||         ADDK    .S1     7896,A3           ; |45| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
|| [!A0]   ADD     .D1     1,A10,A10         ; |40| 

   [ A0]   LDW     .D1T1   *A3,A5            ; |45| 
|| [ A0]   MVK     .S1     36,A4             ; |45| 

   [ A0]   LDBU    .D1T1   *+A11[A4],A8      ; |45| 

   [ A0]   LDW     .D1T1   *+A11(8),A3       ; |45| 
|| [!A0]   SUB     .L1X    B10,1,A0          ; |40| 
|| [!A1]   SUB     .L2     B10,1,B10         ; |40| 

   [ A1]   ZERO    .L1     A0                ; |40| nullify predicate
   [ A0]   B       .S1     $C$L6             ; |40| 
           ; BRANCHCC OCCURS {$C$L8}         ; |43| 
;** --------------------------------------------------------------------------*
;** 45	-----------------------    U$50 = *(*((unsigned char * const)this+36)*4+(*this).__b_22InterpolationAlgorithm.m_dynamic_info);
;** 45	-----------------------    C$2 = (**(i*4+(struct CCCTAxisConfig **)v$2+7896)).max_axis_speed/C$3;
;** 45	-----------------------    if ( (*U$50).f <= C$2 ) goto g7;
;** 46	-----------------------    (*U$50).f = C$2;
           LDDW    .D1T1   *+A5(56),A5:A4    ; |45| 
           CALL    .S1     __c6xabi_divd     ; |45| 
           LDW     .D1T1   *+A3[A8],A14      ; |45| 
           MV      .L2X    A6,B4             ; |45| 
           ADDKPC  .S2     $C$RL10,B3,1      ; |45| 
           MV      .L2X    A7,B5             ; |45| 
$C$RL10:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |45| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A14(16),A7:A6   ; |45| 
           NOP             4
           CMPGTDP .S1     A7:A6,A5:A4,A0    ; |45| 
           NOP             1
   [ A0]   STDW    .D1T1   A5:A4,*+A14(16)   ; |46| 
;** --------------------------------------------------------------------------*
$C$L7:    
           SUB     .L1X    B10,1,A0          ; |40| 

   [ A0]   B       .S1     $C$L6             ; |40| 
||         SUB     .L2     B10,1,B10         ; |40| 
||         ADD     .L1     1,A10,A10         ; |40| 

;** --------------------------------------------------------------------------*
$C$L8:    
;**	-----------------------g7:
;** 40	-----------------------    ++i;
;** 40	-----------------------    if ( L$1 = L$1-1 ) goto g3;
   [ A0]   CALL    .S1     __c6xabi_llshl    ; |41| 
           NOP             4
           ; BRANCHCC OCCURS {$C$L6}         ; |40| 
;** --------------------------------------------------------------------------*
;**	-----------------------g8:
;**  	-----------------------    return;
;** --------------------------------------------------------------------------*
$C$L9:    
           LDW     .D2T1   *++SP(8),A10      ; |51| 
           LDDW    .D2T1   *++SP,A13:A12     ; |51| 

           LDDW    .D2T1   *++SP,A15:A14     ; |51| 
||         MV      .L2     B11,B3            ; |51| 

           LDDW    .D2T2   *++SP,B11:B10     ; |51| 
||         RET     .S2     B3                ; |51| 

           LDW     .D2T1   *++SP(8),A11      ; |51| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |51| 
	.sect	".text"
	.clink
	.global	_ZN17LineInterpolation15SetChannelIndexEiP18NCCCTChannelConfig

;******************************************************************************
;* FUNCTION NAME: LineInterpolation::SetChannelIndex(int, NCCCTChannelConfig *)*
;*                                                                            *
;*   Regs Modified     : A3                                                   *
;*   Regs Used         : A3,A4,A6,B3,B4                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN17LineInterpolation15SetChannelIndexEiP18NCCCTChannelConfig:
;** --------------------------------------------------------------------------*
;** 62	-----------------------    (*this).m_channel_index = channel_index;
;** 63	-----------------------    (*this).m_channel_config = channel_config;
;**  	-----------------------    return;
           RETNOP  .S2     B3,3              ; |64| 

           MVK     .S1     52,A3             ; |62| 
||         STW     .D1T1   A6,*+A4(56)       ; |63| 

           STB     .D1T2   B4,*+A4[A3]       ; |62| 
           ; BRANCH OCCURS {B3}              ; |64| 
	.sect	".text"
	.clink
	.global	_ZN17LineInterpolation15ComputePositionEdP8LineData

;******************************************************************************
;* FUNCTION NAME: LineInterpolation::ComputePosition(double, LineData *)      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,*
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,DP,*
;*                           SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,  *
;*                           A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22, *
;*                           B23,B24,B25,B26,B27,B28,B29,B30,B31              *
;*   Local Frame Size  : 0 Args + 0 Auto + 40 Save = 40 byte                  *
;******************************************************************************
_ZN17LineInterpolation15ComputePositionEdP8LineData:
;** --------------------------------------------------------------------------*
;** 54	-----------------------    v$1 = (*this).m_channel_config;
;** 54	-----------------------    H$1 = v$1;
;** 54	-----------------------    if ( !(*H$1).axis_number ) goto g6;
           STW     .D2T2   B13,*SP--(8)      ; |53| 
           STDW    .D2T2   B11:B10,*SP--     ; |53| 

           STDW    .D2T1   A15:A14,*SP--     ; |53| 
||         MV      .L1     A4,A15            ; |53| 

           STDW    .D2T1   A13:A12,*SP--     ; |53| 
           STDW    .D2T1   A11:A10,*SP--     ; |53| 
           LDW     .D1T2   *+A15(56),B10     ; |54| 
           MV      .L2     B3,B13            ; |53| 
           MVK     .S1     1432,A3
           ADD     .L1     A3,A6,A3
           MV      .L2X    A6,B11            ; |53| 
           LDBU    .D2T2   *+B10(2),B0       ; |54| 
           ZERO    .L1     A14               ; |54| 
           MV      .L1X    B4,A10            ; |53| 
           MV      .L1X    B5,A11            ; |53| 
           NOP             1
   [!B0]   BNOP    .S1     $C$L11,5          ; |54| 
           ; BRANCHCC OCCURS {$C$L11}        ; |54| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    H$2 = *((unsigned long long *)data+1432);
;** 54	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     __c6xabi_llshl    ; |55| 
           LDDW    .D1T1   *A3,A13:A12
           MV      .L2X    A14,B4            ; |55| 
           ZERO    .L1     A5                ; |55| 
           MVK     .L1     0x1,A4            ; |55| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L10:    
;**	-----------------------g3:
;** 55	-----------------------    if ( (1uLL<<i&H$2) == 0uLL ) goto g5;
;** 56	-----------------------    *((i<<3)+(double * const)data+1440) = *((i<<3)+(*this).__b_22InterpolationAlgorithm.m_geometry)+*((i<<3)+(*this).m_slope)*current_l;
;** 56	-----------------------    v$1 = H$1;
;**	-----------------------g5:
;** 54	-----------------------    if ( (*v$1).axis_number > (++i) ) goto g3;
           ADDKPC  .S2     $C$RL11,B3,0      ; |55| 
$C$RL11:   ; CALL OCCURS {__c6xabi_llshl} {0}  ; |55| 
;** --------------------------------------------------------------------------*

           AND     .L1     A13,A5,A5         ; |55| 
||         ZERO    .S1     A3                ; |55| 

           CMPEQ   .L1     A5,A3,A0          ; |55| 
||         AND     .S1     A12,A4,A3         ; |55| 
||         ZERO    .D1     A4                ; |55| 

   [ A0]   CMPEQ   .L1     A3,A4,A0          ; |55| 
   [!A0]   LDW     .D1T1   *+A15(48),A3      ; |56| 
           LDBU    .D2T2   *+B10(2),B4       ; |54| 
           NOP             3
   [!A0]   LDDW    .D1T1   *+A3[A14],A5:A4   ; |56| 
   [!A0]   LDW     .D1T1   *+A15(4),A3       ; |56| 
           NOP             3
   [!A0]   MPYDP   .M1     A11:A10,A5:A4,A7:A6 ; |56| 
   [!A0]   LDDW    .D1T1   *+A3[A14],A5:A4   ; |56| 
   [!A0]   MV      .L1X    B11,A3
   [!A0]   ADDAD   .D1     A3,A14,A3         ; |56| 
           ADD     .L1     1,A14,A14         ; |54| 
   [!A0]   ADDK    .S1     1440,A3           ; |56| 
           CMPGT   .L2X    B4,A14,B0         ; |54| 
   [ B0]   MV      .L2X    A14,B4            ; |55| 
           NOP             2
   [!A0]   ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |56| 
           NOP             1
   [ B0]   B       .S1     $C$L10            ; |54| 
   [ B0]   CALL    .S1     __c6xabi_llshl    ; |55| 
           NOP             3

   [!A0]   STDW    .D1T1   A5:A4,*A3         ; |56| 
|| [ B0]   ZERO    .L1     A5                ; |55| 
|| [ B0]   MVK     .S1     0x1,A4            ; |55| 

           ; BRANCHCC OCCURS {$C$L10}        ; |54| 
;** --------------------------------------------------------------------------*
;**	-----------------------g6:
;**  	-----------------------    return;
;** --------------------------------------------------------------------------*
$C$L11:    
           LDDW    .D2T1   *++SP,A11:A10     ; |59| 
           LDDW    .D2T1   *++SP,A13:A12     ; |59| 

           LDDW    .D2T1   *++SP,A15:A14     ; |59| 
||         MV      .L2     B13,B3            ; |59| 

           LDDW    .D2T2   *++SP,B11:B10     ; |59| 
||         RET     .S2     B3                ; |59| 

           LDW     .D2T2   *++SP(8),B13      ; |59| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |59| 
	.sect	".text"
	.clink
	.global	_ZN17LineInterpolation15ComputeGeometryEv

;******************************************************************************
;* FUNCTION NAME: LineInterpolation::ComputeGeometry()                        *
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
_ZN17LineInterpolation15ComputeGeometryEv:
;** --------------------------------------------------------------------------*
;** 27	-----------------------    if ( !(C$2 = (*(*this).m_channel_config).axis_number) ) goto g7;
           STW     .D2T1   A11,*SP--(8)      ; |25| 
           STDW    .D2T2   B11:B10,*SP--     ; |25| 
           STDW    .D2T1   A13:A12,*SP--     ; |25| 
           STW     .D2T1   A10,*SP--(8)      ; |25| 
           LDW     .D1T1   *+A4(56),A3       ; |27| 
           MV      .L2     B3,B11            ; |25| 
           ZERO    .L1     A10               ; |27| 
           NOP             2
           LDBU    .D1T1   *+A3(2),A0        ; |27| 
           NOP             4

   [!A0]   BNOP    .S1     $C$L14,4          ; |27| 
|| [ A0]   LDW     .D1T1   *+A4(4),A11
||         MV      .L1     A0,A12

   [ A0]   LDW     .D1T2   *+A4(48),B10
           ; BRANCHCC OCCURS {$C$L14}        ; |27| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    v$1 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;**  	-----------------------    U$33 = (*this).m_slope;
;**  	-----------------------    L$1 = (int)C$2;
;** 27	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 255, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;** --------------------------------------------------------------------------*
           MVK     .S1     512,A3            ; |28| 
           ADD     .L1     A3,A11,A3         ; |28| 

           LDW     .D1T1   *A3,A13           ; |28| 
||         MVK     .S2     1432,B4           ; |28| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L12:    
;**	-----------------------g3:
;** 28	-----------------------    U$16 = (*v$1).end_data;
;** 28	-----------------------    if ( !(int)((unsigned long long)((unsigned)(*((unsigned long long *)U$16+1432)>>i)^0xffffffffu)&1uLL) ) goto g5;
;** 32	-----------------------    *U$33 = 0.0;
;** 32	-----------------------    goto g6;
           NOP             4
           ADD     .L2X    B4,A13,B4         ; |28| 
           LDDW    .D2T2   *B4,B7:B6         ; |28| 
           CALL    .S1     __c6xabi_llshru   ; |28| 
           MV      .L2X    A10,B4            ; |28| 
           ADDKPC  .S2     $C$RL12,B3,1      ; |28| 
           MV      .L1X    B7,A5             ; |28| 
           MV      .L1X    B6,A4             ; |28| 
$C$RL12:   ; CALL OCCURS {__c6xabi_llshru} {0}  ; |28| 
;** --------------------------------------------------------------------------*

           XOR     .L1     -1,A4,A3          ; |28| 
||         ZERO    .L2     B5:B4             ; |32| 

           EXTU    .S1     A3,31,31,A0       ; |28| 
||         ADDAD   .D1     A13,A10,A3        ; |29| 

   [ A0]   B       .S2     $C$L13            ; |32| 
||         ADDK    .S1     1440,A3           ; |29| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
|| [!A0]   LDDW    .D1T1   *+A11[A10],A5:A4  ; |29| 
|| [ A0]   STDW    .D2T2   B5:B4,*B10        ; |32| 

   [!A0]   LDDW    .D1T1   *A3,A7:A6         ; |29| 
|| [ A0]   SUB     .L1     A12,1,A0          ; |27| 
|| [ A1]   ADD     .L2     8,B10,B10         ; |27| 
|| [ A1]   ADD     .S1     1,A10,A10         ; |27| 

   [!A1]   ZERO    .L1     A0                ; |27| nullify predicate
|| [ A1]   SUB     .S1     A12,1,A12         ; |27| 

   [ A0]   BNOP    .S1     $C$L12,2          ; |27| 
           ; BRANCHCC OCCURS {$C$L13}        ; |32| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 29	-----------------------    *U$33 = (*((i<<3)+(double *)U$16+1440)-*((i<<3)+(double *)v$1))/*((double *)U$16+2480);

           MVK     .S2     2480,B4           ; |29| 
||         SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |29| 

           ADD     .L2X    B4,A13,B4         ; |29| 
||         CALL    .S1     __c6xabi_divd     ; |29| 

           LDDW    .D2T2   *B4,B5:B4         ; |29| 
           ADDKPC  .S2     $C$RL13,B3,3      ; |29| 
$C$RL13:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |29| 
;** --------------------------------------------------------------------------*
           SUB     .L1     A12,1,A0          ; |27| 
   [ A0]   BNOP    .S1     $C$L12,1          ; |27| 

           ADD     .L1     1,A10,A10         ; |27| 
||         STDW    .D2T1   A5:A4,*B10        ; |29| 
||         ADD     .L2     8,B10,B10         ; |27| 
||         SUB     .S1     A12,1,A12         ; |27| 

;** --------------------------------------------------------------------------*
$C$L13:    
;**	-----------------------g6:
;** 27	-----------------------    ++U$33;
;** 27	-----------------------    ++i;
;** 27	-----------------------    if ( L$1 = L$1-1 ) goto g3;

   [ A0]   MVK     .S1     512,A3            ; |28| 
|| [ A0]   MVK     .S2     1432,B4           ; |28| 

   [ A0]   ADD     .L1     A3,A11,A3         ; |28| 
   [ A0]   LDW     .D1T1   *A3,A13           ; |28| 
           ; BRANCHCC OCCURS {$C$L12}        ; |27| 
;** --------------------------------------------------------------------------*
;**	-----------------------g7:
;**  	-----------------------    return;
;** --------------------------------------------------------------------------*
$C$L14:    
           LDW     .D2T1   *++SP(8),A10      ; |35| 

           LDDW    .D2T1   *++SP,A13:A12     ; |35| 
||         MV      .L2     B11,B3            ; |35| 

           LDDW    .D2T2   *++SP,B11:B10     ; |35| 
||         RET     .S2     B3                ; |35| 

           LDW     .D2T1   *++SP(8),A11      ; |35| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |35| 
;; Inlined function references:
;; [ 13] LineInterpolation::~LineInterpolation()
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_ZdlPv
	.global	_Znaj
	.global	_ZdaPv
	.global	_ZN22InterpolationAlgorithmD2Ev
	.global	_ZN22InterpolationAlgorithm4InitE16SpeedProfileType
	.global	_ZN22InterpolationAlgorithm15GetCurrentSpeedEv
	.global	_ZN22InterpolationAlgorithm23IsInterpolationFinishedEv
	.global	_ZN22InterpolationAlgorithm13HasReachedEndEv
	.global	_ZN22InterpolationAlgorithm12PlanVelocityEddb
	.global	_ZN22InterpolationAlgorithm11InterpolateEP8LineData
	.global	_ZTI22InterpolationAlgorithm
	.global	_ZTVN10__cxxabiv120__si_class_type_infoE
	.global	__c6xabi_llshl
	.global	__c6xabi_divd
	.global	__c6xabi_llshru
;*****************************************************************************
;* SECTION GROUPS                                                            *
;*****************************************************************************
	.group    "_ZN17LineInterpolation21ComputeRemainDistanceEv", 1
	.gmember  ".text:_ZN17LineInterpolation21ComputeRemainDistanceEv"
	.endgroup
	.group    "_ZN17LineInterpolationD0Ev", 1
	.gmember  ".text:_ZN17LineInterpolationD0Ev"
	.endgroup
	.group    "_ZN17LineInterpolationD1Ev", 1
	.gmember  ".text:_ZN17LineInterpolationD1Ev"
	.endgroup
	.group    "_ZN17LineInterpolationD2Ev", 1
	.gmember  ".text:_ZN17LineInterpolationD2Ev"
	.endgroup
	.group    "_ZTI17LineInterpolation", 1
	.gmember  ".const:_ZTI17LineInterpolation"
	.endgroup
	.group    "_ZTS17LineInterpolation", 1
	.gmember  ".const:_ZTS17LineInterpolation"
	.endgroup
	.group    "_ZTV17LineInterpolation", 1
	.gmember  ".const:_ZTV17LineInterpolation"
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
