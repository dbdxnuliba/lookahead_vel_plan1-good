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

	.global	_ZTV22QuickMoveInterpolation
	.sect	".const:_ZTV22QuickMoveInterpolation"
	.align	8
	.elfsym	_ZTV22QuickMoveInterpolation,SYM_SIZE(56)
_ZTV22QuickMoveInterpolation:
	.field	0,32			; _ZTV22QuickMoveInterpolation[0] @ 0
	.field	_ZTI22QuickMoveInterpolation,32		; _ZTV22QuickMoveInterpolation[1] @ 32
	.field	_ZN22QuickMoveInterpolationD1Ev,32		; _ZTV22QuickMoveInterpolation[2] @ 64
	.field	_ZN22QuickMoveInterpolationD0Ev,32		; _ZTV22QuickMoveInterpolation[3] @ 96
	.field	_ZN22QuickMoveInterpolation4InitE16SpeedProfileType,32		; _ZTV22QuickMoveInterpolation[4] @ 128
	.field	_ZN22QuickMoveInterpolation15GetCurrentSpeedEv,32		; _ZTV22QuickMoveInterpolation[5] @ 160
	.field	_ZN22QuickMoveInterpolation23IsInterpolationFinishedEv,32		; _ZTV22QuickMoveInterpolation[6] @ 192
	.field	_ZN22QuickMoveInterpolation15ComputeGeometryEv,32		; _ZTV22QuickMoveInterpolation[7] @ 224
	.field	_ZN22QuickMoveInterpolation13HasReachedEndEv,32		; _ZTV22QuickMoveInterpolation[8] @ 256
	.field	_ZN22QuickMoveInterpolation12PlanVelocityEddb,32		; _ZTV22QuickMoveInterpolation[9] @ 288
	.field	_ZN22QuickMoveInterpolation11InterpolateEP8LineData,32		; _ZTV22QuickMoveInterpolation[10] @ 320
	.field	_ZN22QuickMoveInterpolation15ValidateDynamicEv,32		; _ZTV22QuickMoveInterpolation[11] @ 352
	.field	_ZN22QuickMoveInterpolation15ComputePositionEdP8LineData,32		; _ZTV22QuickMoveInterpolation[12] @ 384
	.field	_ZN22QuickMoveInterpolation21ComputeRemainDistanceEv,32		; _ZTV22QuickMoveInterpolation[13] @ 416

	.global	_ZTI22QuickMoveInterpolation
	.sect	".const:_ZTI22QuickMoveInterpolation"
	.align	4
	.elfsym	_ZTI22QuickMoveInterpolation,SYM_SIZE(12)
_ZTI22QuickMoveInterpolation:
	.field	_ZTVN10__cxxabiv120__si_class_type_infoE+8,32		; _ZTI22QuickMoveInterpolation.base.base.__vptr @ 0
	.field	_ZTS22QuickMoveInterpolation,32		; _ZTI22QuickMoveInterpolation.base.base.__name @ 32
	.field	_ZTI22InterpolationAlgorithm,32		; _ZTI22QuickMoveInterpolation.base_type @ 64

	.global	_ZTS22QuickMoveInterpolation
	.sect	".const:_ZTS22QuickMoveInterpolation"
	.align	8
	.elfsym	_ZTS22QuickMoveInterpolation,SYM_SIZE(25)
_ZTS22QuickMoveInterpolation:
	.field	50,8			; _ZTS22QuickMoveInterpolation[0] @ 0
	.field	50,8			; _ZTS22QuickMoveInterpolation[1] @ 8
	.field	81,8			; _ZTS22QuickMoveInterpolation[2] @ 16
	.field	117,8			; _ZTS22QuickMoveInterpolation[3] @ 24
	.field	105,8			; _ZTS22QuickMoveInterpolation[4] @ 32
	.field	99,8			; _ZTS22QuickMoveInterpolation[5] @ 40
	.field	107,8			; _ZTS22QuickMoveInterpolation[6] @ 48
	.field	77,8			; _ZTS22QuickMoveInterpolation[7] @ 56
	.field	111,8			; _ZTS22QuickMoveInterpolation[8] @ 64
	.field	118,8			; _ZTS22QuickMoveInterpolation[9] @ 72
	.field	101,8			; _ZTS22QuickMoveInterpolation[10] @ 80
	.field	73,8			; _ZTS22QuickMoveInterpolation[11] @ 88
	.field	110,8			; _ZTS22QuickMoveInterpolation[12] @ 96
	.field	116,8			; _ZTS22QuickMoveInterpolation[13] @ 104
	.field	101,8			; _ZTS22QuickMoveInterpolation[14] @ 112
	.field	114,8			; _ZTS22QuickMoveInterpolation[15] @ 120
	.field	112,8			; _ZTS22QuickMoveInterpolation[16] @ 128
	.field	111,8			; _ZTS22QuickMoveInterpolation[17] @ 136
	.field	108,8			; _ZTS22QuickMoveInterpolation[18] @ 144
	.field	97,8			; _ZTS22QuickMoveInterpolation[19] @ 152
	.field	116,8			; _ZTS22QuickMoveInterpolation[20] @ 160
	.field	105,8			; _ZTS22QuickMoveInterpolation[21] @ 168
	.field	111,8			; _ZTS22QuickMoveInterpolation[22] @ 176
	.field	110,8			; _ZTS22QuickMoveInterpolation[23] @ 184
	.field	0,8			; _ZTS22QuickMoveInterpolation[24] @ 192

;	/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/opt6x --call_assumptions=0 --gen_opt_info=2 /tmp/05697c4fHpv /tmp/05697ubkwUb --opt_info_filename=src/interpolation/quick_move_interpolation.nfo 
	.sect	".text:_ZN22QuickMoveInterpolationD1Ev"
	.clink
	.global	_ZN22QuickMoveInterpolationD1Ev

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::~QuickMoveInterpolation()           *
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
_ZN22QuickMoveInterpolationD1Ev:
;** --------------------------------------------------------------------------*
;** 39	-----------------------    C$11 = (*this).m_axis_distance;
;** 39	-----------------------    if ( C$11 == NULL ) goto g3;
           STW     .D2T1   A11,*SP--(8)      ; |38| 

           STW     .D2T1   A10,*+SP(4)       ; |38| 
||         MV      .L1     A4,A10            ; |38| 

           LDW     .D1T1   *+A10(56),A0      ; |39| 
           MV      .L1X    B3,A11            ; |38| 
           NOP             3

   [!A0]   B       .S1     $C$L1             ; |39| 
||         MV      .L1     A0,A4             ; |40| 

   [ A0]   CALL    .S1     _ZdaPv            ; |40| 
|| [!A0]   LDW     .D1T1   *+A10(60),A0      ; |42| 

           NOP             4
           ; BRANCHCC OCCURS {$C$L1}         ; |39| 
;** --------------------------------------------------------------------------*
;** 40	-----------------------    operator delete[] (C$11);
           ADDKPC  .S2     $C$RL0,B3,0       ; |40| 
$C$RL0:    ; CALL OCCURS {_ZdaPv} {0}        ; |40| 
           LDW     .D1T1   *+A10(60),A0      ; |42| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L1:    
;**	-----------------------g3:
;** 42	-----------------------    C$10 = (*this).m_is_axis_positive;
;** 42	-----------------------    if ( C$10 == NULL ) goto g5;
   [!A0]   B       .S1     $C$L2             ; |42| 
   [ A0]   CALL    .S1     _ZdaPv            ; |43| 
   [!A0]   CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |45| 
           MV      .L1     A0,A4             ; |43| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L2}         ; |42| 
;** --------------------------------------------------------------------------*
;** 43	-----------------------    operator delete[] (C$10);
           ADDKPC  .S2     $C$RL1,B3,0       ; |43| 
$C$RL1:    ; CALL OCCURS {_ZdaPv} {0}        ; |43| 
           CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |45| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L2:    
;**	-----------------------g5:
;** 45	-----------------------    InterpolationAlgorithm::~InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)this);
;** 45	-----------------------    return this;
           MV      .L1     A10,A4            ; |45| 
           ADDKPC  .S2     $C$RL2,B3,0       ; |45| 
$C$RL2:    ; CALL OCCURS {_ZN22InterpolationAlgorithmD2Ev} {0}  ; |45| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3            ; |45| 

           RET     .S2     B3                ; |45| 
||         MV      .L1     A10,A4            ; |45| 
||         LDW     .D2T1   *+SP(4),A10       ; |45| 

           LDW     .D2T1   *++SP(8),A11      ; |45| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |45| 
	.sect	".text:_ZN22QuickMoveInterpolationD2Ev"
	.clink
	.global	_ZN22QuickMoveInterpolationD2Ev

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::~QuickMoveInterpolation() [subobject]*
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
_ZN22QuickMoveInterpolationD2Ev:
;** --------------------------------------------------------------------------*
;** 39	-----------------------    C$12 = (*this).m_axis_distance;  // [7]
;** 39	-----------------------    if ( C$12 == NULL ) goto g3;  // [7]
           STW     .D2T1   A11,*SP--(8)

           STW     .D2T1   A10,*+SP(4)
||         MV      .L1     A4,A10

           LDW     .D1T1   *+A10(56),A0      ; |39| 
           MV      .L1X    B3,A11
           NOP             3

   [!A0]   B       .S1     $C$L3             ; |39| 
||         MV      .L1     A0,A4             ; |40| 

   [ A0]   CALL    .S1     _ZdaPv            ; |40| 
|| [!A0]   LDW     .D1T1   *+A10(60),A0      ; |42| 

           NOP             4
           ; BRANCHCC OCCURS {$C$L3}         ; |39| 
;** --------------------------------------------------------------------------*
;** 40	-----------------------    operator delete[] (C$12);  // [7]
           ADDKPC  .S2     $C$RL3,B3,0       ; |40| 
$C$RL3:    ; CALL OCCURS {_ZdaPv} {0}        ; |40| 
           LDW     .D1T1   *+A10(60),A0      ; |42| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L3:    
;**	-----------------------g3:
;** 42	-----------------------    C$11 = (*this).m_is_axis_positive;  // [7]
;** 42	-----------------------    if ( C$11 == NULL ) goto g5;  // [7]
   [!A0]   B       .S1     $C$L4             ; |42| 
   [ A0]   CALL    .S1     _ZdaPv            ; |43| 
   [!A0]   CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |45| 
           MV      .L1     A0,A4             ; |43| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L4}         ; |42| 
;** --------------------------------------------------------------------------*
;** 43	-----------------------    operator delete[] (C$11);  // [7]
           ADDKPC  .S2     $C$RL4,B3,0       ; |43| 
$C$RL4:    ; CALL OCCURS {_ZdaPv} {0}        ; |43| 
           CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |45| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L4:    
;**	-----------------------g5:
;** 45	-----------------------    InterpolationAlgorithm::~InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)this);  // [7]
;** 45	-----------------------    return (void * const)this;  // [7]
           MV      .L1     A10,A4            ; |45| 
           ADDKPC  .S2     $C$RL5,B3,0       ; |45| 
$C$RL5:    ; CALL OCCURS {_ZN22InterpolationAlgorithmD2Ev} {0}  ; |45| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3

           RET     .S2     B3
||         MV      .L1     A10,A4            ; |45| 
||         LDW     .D2T1   *+SP(4),A10

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
	.sect	".text:_ZN22QuickMoveInterpolationD0Ev"
	.clink
	.global	_ZN22QuickMoveInterpolationD0Ev

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::~QuickMoveInterpolation() [deleting]*
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
_ZN22QuickMoveInterpolationD0Ev:
;** --------------------------------------------------------------------------*
;**  	-----------------------    if ( this == NULL ) goto g7;

           STW     .D2T1   A11,*SP--(8)
||         MV      .L1     A4,A0

           STW     .D2T1   A10,*+SP(4)
|| [!A0]   B       .S1     $C$L7
||         MV      .L1     A4,A10

   [ A0]   LDW     .D1T1   *+A10(56),A0      ; |39| 
           MV      .L1X    B3,A11
           NOP             3
           ; BRANCHCC OCCURS {$C$L7}  
;** --------------------------------------------------------------------------*
;** 39	-----------------------    C$2 = (*this).m_axis_distance;  // [7]
;** 39	-----------------------    if ( C$2 == NULL ) goto g4;  // [7]

   [!A0]   B       .S1     $C$L5             ; |39| 
||         MV      .L1     A0,A4             ; |40| 

   [ A0]   CALL    .S1     _ZdaPv            ; |40| 
|| [!A0]   LDW     .D1T1   *+A10(60),A0      ; |42| 

           NOP             4
           ; BRANCHCC OCCURS {$C$L5}         ; |39| 
;** --------------------------------------------------------------------------*
;** 40	-----------------------    operator delete[] (C$2);  // [7]
           ADDKPC  .S2     $C$RL6,B3,0       ; |40| 
$C$RL6:    ; CALL OCCURS {_ZdaPv} {0}        ; |40| 
           LDW     .D1T1   *+A10(60),A0      ; |42| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L5:    
;**	-----------------------g4:
;** 42	-----------------------    C$1 = (*this).m_is_axis_positive;  // [7]
;** 42	-----------------------    if ( C$1 == NULL ) goto g6;  // [7]
   [!A0]   B       .S1     $C$L6             ; |42| 
   [ A0]   CALL    .S1     _ZdaPv            ; |43| 
   [!A0]   CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |45| 
           MV      .L1     A0,A4             ; |43| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L6}         ; |42| 
;** --------------------------------------------------------------------------*
;** 43	-----------------------    operator delete[] (C$1);  // [7]
           ADDKPC  .S2     $C$RL7,B3,0       ; |43| 
$C$RL7:    ; CALL OCCURS {_ZdaPv} {0}        ; |43| 
           CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |45| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L6:    
;**	-----------------------g6:
;** 45	-----------------------    InterpolationAlgorithm::~InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)this);  // [7]
;**  	-----------------------    operator delete ((void * const)this);
;**	-----------------------g7:
;**  	-----------------------    return;
           MV      .L1     A10,A4            ; |45| 
           ADDKPC  .S2     $C$RL8,B3,0       ; |45| 
$C$RL8:    ; CALL OCCURS {_ZN22InterpolationAlgorithmD2Ev} {0}  ; |45| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZdlPv,B3
||         MV      .L1     A10,A4

$C$RL9:    ; CALL OCCURS {_ZdlPv} {0} 
;** --------------------------------------------------------------------------*
$C$L7:    
           MV      .L2X    A11,B3

           RET     .S2     B3
||         LDW     .D2T1   *+SP(4),A10

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
	.sect	".text"
	.clink
	.global	_ZN22QuickMoveInterpolation4InitE16SpeedProfileType

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::Init(SpeedProfileType)              *
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
_ZN22QuickMoveInterpolation4InitE16SpeedProfileType:
;** --------------------------------------------------------------------------*
;** 16	-----------------------    InterpolationAlgorithm::Init((struct nterpolationAlgorithm *)this, speed_profile_type);
;** 17	-----------------------    v$1 = (*this).m_axis_distance;
;** 17	-----------------------    if ( v$1 ) goto g3;
           STW     .D2T1   A11,*SP--(8)      ; |15| 

           MV      .L1X    B3,A11            ; |15| 
||         CALLP   .S2     _ZN22InterpolationAlgorithm4InitE16SpeedProfileType,B3
||         STW     .D2T1   A10,*+SP(4)       ; |15| 
||         MV      .S1     A4,A10            ; |15| 

$C$RL10:   ; CALL OCCURS {_ZN22InterpolationAlgorithm4InitE16SpeedProfileType} {0}  ; |16| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(56),A0      ; |17| 
           NOP             4

   [ A0]   BNOP    .S1     $C$L8,4           ; |17| 
|| [!A0]   LDW     .D1T1   *+A10(52),A3      ; |18| 

   [!A0]   CALL    .S1     _Znaj             ; |18| 
|| [!A0]   LDBU    .D1T1   *+A3(2),A3        ; |18| 

           ; BRANCHCC OCCURS {$C$L8}         ; |17| 
;** --------------------------------------------------------------------------*
;** 18	-----------------------    v$1 = operator new[] ((unsigned)(*(*this).m_channel_config).axis_number<<3);
;** 18	-----------------------    (*this).m_axis_distance = v$1;
           ADDKPC  .S2     $C$RL11,B3,3      ; |18| 
           SHL     .S1     A3,3,A4           ; |18| 
$C$RL11:   ; CALL OCCURS {_Znaj} {0}         ; |18| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |18| 
           STW     .D1T1   A0,*+A10(56)      ; |18| 
;** --------------------------------------------------------------------------*
$C$L8:    
;**	-----------------------g3:
;** 20	-----------------------    if ( v$1 == NULL ) goto g8;

   [!A0]   BNOP    .S1     $C$L10,3          ; |20| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
|| [ A0]   LDW     .D1T1   *+A10(60),A0      ; |23| 

   [!A1]   ZERO    .L1     A0                ; |23| nullify predicate
   [ A0]   B       .S1     $C$L9             ; |23| 
           ; BRANCHCC OCCURS {$C$L10}        ; |20| 
;** --------------------------------------------------------------------------*
;** 23	-----------------------    v$2 = (*this).m_is_axis_positive;
;** 23	-----------------------    if ( v$2 ) goto g6;

   [ A0]   BNOP    .S1     $C$L11,3          ; |29| 
|| [!A0]   LDW     .D1T1   *+A10(52),A3      ; |24| 
|| [ A0]   ZERO    .L1     A4                ; |29| 

   [!A0]   CALL    .S1     _Znaj             ; |24| 
           ; BRANCHCC OCCURS {$C$L9}         ; |23| 
;** --------------------------------------------------------------------------*
;** 24	-----------------------    v$2 = operator new[] ((unsigned)(*(*this).m_channel_config).axis_number);
;** 24	-----------------------    (*this).m_is_axis_positive = v$2;
           LDBU    .D1T1   *+A3(2),A4        ; |24| 
           ADDKPC  .S2     $C$RL12,B3,3      ; |24| 
$C$RL12:   ; CALL OCCURS {_Znaj} {0}         ; |24| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |24| 
   [ A0]   BNOP    .S1     $C$L11,3          ; |29| 

           STW     .D1T1   A0,*+A10(60)      ; |24| 
||         ZERO    .L1     A4                ; |29| 

;** --------------------------------------------------------------------------*
$C$L9:    
;**	-----------------------g6:
;** 26	-----------------------    if ( v$2 == NULL ) goto g8;
;** 29	-----------------------    return 0;
   [ A0]   MV      .L2X    A11,B3            ; |30| 
           ; BRANCHCC OCCURS {$C$L11}        ; |29| 
;** --------------------------------------------------------------------------*
$C$L10:    
;**	-----------------------g8:
;** 27	-----------------------    return 2700;
           MVK     .S1     0xa8c,A4          ; |27| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3            ; |30| 
;** --------------------------------------------------------------------------*
$C$L11:    

           RET     .S2     B3                ; |30| 
||         LDW     .D2T1   *+SP(4),A10       ; |30| 

           LDW     .D2T1   *++SP(8),A11      ; |30| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |30| 
	.sect	".text"
	.clink
	.global	_ZN22QuickMoveInterpolation23IsInterpolationFinishedEv

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::IsInterpolationFinished()           *
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
_ZN22QuickMoveInterpolation23IsInterpolationFinishedEv:
;** --------------------------------------------------------------------------*
;** 46	-----------------------    v$3 = (*this).m_channel_config;
;** 45	-----------------------    res = 1;
;** 46	-----------------------    if ( !(*v$3).axis_number ) goto g9;
           STW     .D2T1   A14,*SP--(8)      ; |44| 
           STDW    .D2T2   B11:B10,*SP--     ; |44| 
           STDW    .D2T1   A13:A12,*SP--     ; |44| 

           STDW    .D2T1   A11:A10,*SP--     ; |44| 
||         MV      .L1     A4,A11            ; |44| 

           LDW     .D1T1   *+A11(52),A14     ; |46| 
           MVK     .L2     0x1,B10           ; |45| 
           MV      .L2     B3,B11            ; |44| 
           ZERO    .L1     A10               ; |46| 
           NOP             1
           LDBU    .D1T1   *+A14(2),A0       ; |46| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L14,5          ; |46| 
           ; BRANCHCC OCCURS {$C$L14}        ; |46| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    v$2 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 46	-----------------------    i = 0u;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     __c6xabi_llshl    ; |47| 
           LDW     .D1T1   *+A11(4),A12
           MV      .L2X    A10,B4            ; |47| 
           ZERO    .L1     A5                ; |47| 
           MVK     .L1     0x1,A4            ; |47| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L12:    
;**	-----------------------g3:
;** 47	-----------------------    C$11 = 1uLL<<i;
;** 47	-----------------------    if ( (*((*v$2).end_data+1432)&C$11) == 0uLL ) goto g8;
           ADDKPC  .S2     $C$RL13,B3,0      ; |47| 
$C$RL13:   ; CALL OCCURS {__c6xabi_llshl} {0}  ; |47| 
;** --------------------------------------------------------------------------*
           MVK     .S1     512,A3            ; |47| 
           ADD     .L1     A3,A12,A3         ; |47| 
           LDW     .D1T1   *A3,A3            ; |47| 
           ZERO    .L2     B4                ; |47| 
           NOP             3
           ADDK    .S1     1432,A3           ; |47| 
           LDDW    .D1T1   *A3,A7:A6         ; |47| 
           NOP             4
           AND     .L1     A5,A7,A3          ; |47| 
           AND     .L1     A4,A6,A31         ; |47| 
           CMPEQ   .L2X    A3,B4,B0          ; |47| 
   [ B0]   CMPEQ   .L2X    A31,B4,B0         ; |47| 

   [ B0]   BNOP    .S2     $C$L13,3          ; |47| 
|| [!B0]   LDW     .D1T1   *+A11(8),A3       ; |48| 
|| [!B0]   MVK     .S1     336,A6            ; |48| 

   [!B0]   ADD     .L2X    4,A6,B4
   [!B0]   LDW     .D1T1   *+A3[A10],A3      ; |48| 
           ; BRANCHCC OCCURS {$C$L13}        ; |47| 
;** --------------------------------------------------------------------------*
;** 48	-----------------------    C$12 = *(i*4+(*this).__b_22InterpolationAlgorithm.m_dynamic_info);
;** 48	-----------------------    if ( (*C$12).current_step < (*C$12).step_number ) goto g7;
;** 50	-----------------------    U$41 = (*this).m_axis_distance+(i<<3);
;** 50	-----------------------    if ( *U$41-((*C$12).current_l+(*C$12).left_dist) >= 1.00000000000000002092e-8 ) goto g8;
;** 53	-----------------------    (*C$12).run_state = 2;
;** 54	-----------------------    v$2 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 54	-----------------------    C$10 = (*v$2).end_data+1432;
;** 54	-----------------------    *C$10 = *C$10&~C$11;
;** 55	-----------------------    *U$41 = 0.0;
;** 55	-----------------------    v$3 = (*this).m_channel_config;
;** 55	-----------------------    goto g8;
;**	-----------------------g7:
;** 49	-----------------------    res = 0;
           MVK     .S2     352,B5            ; |50| 
           MVK     .S1     328,A7            ; |50| 
           MVK     .L2     2,B31             ; |53| 
           NOT     .L2X    A4,B30            ; |54| 

           ADD     .L1     A6,A3,A6          ; |48| 
||         ADD     .L2X    B4,A3,B4          ; |48| 

           LDW     .D1T1   *A6,A6            ; |48| 
||         LDW     .D2T2   *B4,B4            ; |48| 

           NOT     .L1     A5,A4             ; |54| 
           NOP             3

           CMPLTU  .L1X    B4,A6,A0          ; |48| 
||         ADD     .S1     A7,A3,A6          ; |50| 
||         ADD     .L2X    B5,A3,B4          ; |50| 

   [!A0]   LDDW    .D2T2   *B4,B5:B4         ; |50| 
|| [!A0]   LDDW    .D1T1   *A6,A9:A8         ; |50| 

   [!A0]   LDW     .D1T1   *+A11(56),A6      ; |50| 
   [ A0]   ZERO    .L2     B0                ; |50| 
   [!A0]   MVKL    .S2     0x3e45798e,B7
   [!A0]   MVKL    .S2     0xe2308c3a,B6
   [!A0]   ADDDP   .L2X    B5:B4,A9:A8,B5:B4 ; |50| 
   [!A0]   ADDAD   .D1     A6,A10,A13        ; |50| 
   [!A0]   LDDW    .D1T1   *A13,A7:A6        ; |50| 
   [!A0]   MVKH    .S2     0x3e45798e,B7
   [!A0]   MVKH    .S2     0xe2308c3a,B6
   [ A0]   ZERO    .S2     B10               ; |49| 
           NOP             1
   [!A0]   SUBDP   .L2X    A7:A6,B5:B4,B5:B4 ; |50| 
           MVK     .S1     372,A6            ; |53| 
           ADD     .L1     A6,A3,A3          ; |53| 
           NOP             4
   [!A0]   CMPLTDP .S2     B5:B4,B7:B6,B0    ; |50| 
           NOP             1
   [ B0]   STW     .D1T2   B31,*A3           ; |53| 
   [ B0]   LDW     .D1T1   *+A11(4),A12      ; |54| 
           MVK     .S2     512,B4            ; |54| 
           MVK     .S1     1432,A3           ; |54| 
           NOP             2
   [ B0]   ADD     .L2X    B4,A12,B4         ; |54| 
   [ B0]   LDW     .D2T2   *B4,B4            ; |54| 
           NOP             4
   [ B0]   ADD     .L1X    A3,B4,A3          ; |54| 
   [ B0]   LDDW    .D1T1   *A3,A7:A6         ; |54| 
           NOP             4

   [ B0]   AND     .L1     A4,A7,A5          ; |54| 
|| [ B0]   AND     .S1X    B30,A6,A4         ; |54| 

   [ B0]   STDW    .D1T1   A5:A4,*A3         ; |54| 
||         ZERO    .L1     A5:A4             ; |55| 

   [ B0]   STDW    .D1T1   A5:A4,*A13        ; |55| 
   [ B0]   LDW     .D1T1   *+A11(52),A14     ; |55| 
;** --------------------------------------------------------------------------*
$C$L13:    
;**	-----------------------g8:
;** 46	-----------------------    if ( (unsigned)(*v$3).axis_number > (++i) ) goto g3;
           ADD     .L1     1,A10,A10         ; |46| 
           NOP             3
           LDBU    .D1T1   *+A14(2),A3       ; |46| 
           NOP             4
           CMPGTU  .L1     A3,A10,A0         ; |46| 
   [ A0]   B       .S1     $C$L12            ; |46| 
   [ A0]   CALL    .S1     __c6xabi_llshl    ; |47| 
   [ A0]   MVK     .L1     0x1,A4            ; |47| 
   [ A0]   ZERO    .L1     A5                ; |47| 
   [ A0]   MV      .L2X    A10,B4            ; |47| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L12}        ; |46| 
;** --------------------------------------------------------------------------*
$C$L14:    
;**	-----------------------g9:
;** 59	-----------------------    return res;
           LDDW    .D2T1   *++SP,A11:A10     ; |60| 

           LDDW    .D2T1   *++SP,A13:A12     ; |60| 
||         MV      .L2     B11,B3            ; |60| 

           RET     .S2     B3                ; |60| 
||         MV      .L1X    B10,A4            ; |59| 
||         LDDW    .D2T2   *++SP,B11:B10     ; |60| 

           LDW     .D2T1   *++SP(8),A14      ; |60| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |60| 
	.sect	".text:_ZN22QuickMoveInterpolation21ComputeRemainDistanceEv"
	.clink
	.global	_ZN22QuickMoveInterpolation21ComputeRemainDistanceEv

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::ComputeRemainDistance()             *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : B3                                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN22QuickMoveInterpolation21ComputeRemainDistanceEv:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return;
           RETNOP  .S2     B3,5              ; |108| 
           ; BRANCH OCCURS {B3}              ; |108| 
	.sect	".text:_ZN22QuickMoveInterpolation15ValidateDynamicEv"
	.clink
	.global	_ZN22QuickMoveInterpolation15ValidateDynamicEv

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::ValidateDynamic()                   *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : B3                                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN22QuickMoveInterpolation15ValidateDynamicEv:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return;
           RETNOP  .S2     B3,5              ; |114| 
           ; BRANCH OCCURS {B3}              ; |114| 
	.sect	".text"
	.clink
	.global	_ZN22QuickMoveInterpolation15SetChannelIndexEiP18NCCCTChannelConfig

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::SetChannelIndex(int, NCCCTChannelConfig *)*
;*                                                                            *
;*   Regs Modified     : A3                                                   *
;*   Regs Used         : A3,A4,A6,B3,B4                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN22QuickMoveInterpolation15SetChannelIndexEiP18NCCCTChannelConfig:
;** --------------------------------------------------------------------------*
;** 186	-----------------------    (*this).m_channel_index = channel_index;
;** 187	-----------------------    (*this).m_channel_config = channel_config;
;**  	-----------------------    return;
           RETNOP  .S2     B3,3              ; |188| 

           MVK     .S1     48,A3             ; |186| 
||         STW     .D1T1   A6,*+A4(52)       ; |187| 

           STB     .D1T2   B4,*+A4[A3]       ; |186| 
           ; BRANCH OCCURS {B3}              ; |188| 
	.sect	".text"
	.clink
	.global	_ZN22QuickMoveInterpolation15GetCurrentSpeedEv

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::GetCurrentSpeed()                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,   *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 48 Save = 48 byte                  *
;******************************************************************************
_ZN22QuickMoveInterpolation15GetCurrentSpeedEv:
;** --------------------------------------------------------------------------*
;** 33	-----------------------    max_axis_speed = 0.0;
;** 34	-----------------------    if ( !(C$12 = (*(*this).m_channel_config).axis_number) ) goto g7;
           STW     .D2T1   A11,*SP--(8)      ; |32| 
           STDW    .D2T2   B13:B12,*SP--     ; |32| 
           STDW    .D2T2   B11:B10,*SP--     ; |32| 

           STDW    .D2T1   A15:A14,*SP--     ; |32| 
||         MV      .L1     A4,A15            ; |32| 

           STDW    .D2T1   A13:A12,*SP--     ; |32| 
           STW     .D2T1   A10,*SP--(8)      ; |32| 
           LDW     .D1T1   *+A15(52),A3      ; |34| 
           MV      .L2     B3,B13            ; |32| 
           ZERO    .L1     A14               ; |34| 
           ZERO    .L1     A11:A10           ; |33| 
           NOP             1
           LDBU    .D1T1   *+A3(2),A0        ; |34| 
           NOP             4

   [!A0]   BNOP    .S1     $C$L16,4          ; |34| 
|| [ A0]   LDW     .D1T1   *+A15(4),A3
||         MV      .L2X    A0,B10

           ADDK    .S1     512,A3
           ; BRANCHCC OCCURS {$C$L16}        ; |34| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$24 = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+1432);
;**  	-----------------------    L$1 = (unsigned)C$12;
;** 34	-----------------------    i = 0u;
;**  	-----------------------    #pragma MUST_ITERATE(1, 255, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D1T1   *A3,A3
           NOP             4
           ADDK    .S1     1432,A3
           LDDW    .D1T1   *A3,A5:A4
           NOP             1
           CALL    .S1     __c6xabi_llshl    ; |35| 
           NOP             2

           MV      .L2X    A5,B11
||         ZERO    .L1     A5                ; |35| 

           MV      .L2X    A4,B12
||         MVK     .L1     0x1,A4            ; |35| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L15:    
;**	-----------------------g3:
;** 35	-----------------------    if ( (1uLL<<i&U$24) == 0uLL ) goto g6;
;** 36	-----------------------    C$11 = (**(i*4+(*this).__b_22InterpolationAlgorithm.m_dynamic_info)).current_f;
;** 36	-----------------------    if ( max_axis_speed >= C$11 ) goto g6;
;** 37	-----------------------    max_axis_speed = C$11;
;**	-----------------------g6:
;** 34	-----------------------    ++i;
;** 34	-----------------------    if ( L$1 = L$1-1 ) goto g3;

           MV      .L2X    A14,B4            ; |35| 
||         ADDKPC  .S2     $C$RL14,B3,0      ; |35| 

$C$RL14:   ; CALL OCCURS {__c6xabi_llshl} {0}  ; |35| 
;** --------------------------------------------------------------------------*

           MV      .L1X    B11,A3            ; |35| 
||         ZERO    .S1     A6                ; |35| 

           AND     .L1     A3,A5,A5          ; |35| 
||         MV      .S1X    B12,A3            ; |35| 

           AND     .S1     A3,A4,A4          ; |35| 
||         CMPEQ   .L1     A5,A6,A0          ; |35| 

   [ A0]   CMPEQ   .L1     A4,A6,A0          ; |35| 
   [!A0]   LDW     .D1T1   *+A15(8),A3       ; |36| 
           SUB     .L1X    B10,1,A2          ; |34| 
   [ A2]   ZERO    .L1     A5                ; |35| 
   [ A2]   MVK     .L1     0x1,A4            ; |35| 
   [ A0]   MV      .L1     A6,A1             ; |34| 
   [!A0]   LDW     .D1T1   *+A3[A14],A3      ; |36| 
           ADD     .L1     1,A14,A14         ; |34| 
           SUB     .L2     B10,1,B10         ; |34| 
           NOP             2
   [!A0]   ADDK    .S1     320,A3            ; |36| 
   [!A0]   LDDW    .D1T1   *A3,A13:A12       ; |36| 
           NOP             1
   [ A2]   B       .S1     $C$L15            ; |34| 
   [ A2]   CALL    .S1     __c6xabi_llshl    ; |35| 
           NOP             1
   [!A0]   CMPLTDP .S1     A11:A10,A13:A12,A1 ; |36| 
           NOP             1

   [ A1]   MV      .L1     A13,A11           ; |37| 
|| [ A1]   MV      .S1     A12,A10           ; |37| 

           ; BRANCHCC OCCURS {$C$L15}        ; |34| 
;** --------------------------------------------------------------------------*
$C$L16:    
;**	-----------------------g7:
;** 41	-----------------------    return max_axis_speed;

           MV      .L1     A10,A4            ; |41| 
||         LDW     .D2T1   *++SP(8),A10      ; |42| 

           LDDW    .D2T1   *++SP,A13:A12     ; |42| 
           LDDW    .D2T1   *++SP,A15:A14     ; |42| 

           LDDW    .D2T2   *++SP,B11:B10     ; |42| 
||         MV      .L2     B13,B3            ; |42| 

           LDDW    .D2T2   *++SP,B13:B12     ; |42| 
||         RET     .S2     B3                ; |42| 

           MV      .L1     A11,A5            ; |41| 
||         LDW     .D2T1   *++SP(8),A11      ; |42| 

           NOP             4
           ; BRANCH OCCURS {B3}              ; |42| 
	.sect	".text"
	.clink
	.global	_ZN22QuickMoveInterpolation15ComputePositionEdtP8LineData

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::ComputePosition(double, unsigned short, LineData *)*
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A7,B4,B5                                 *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,B3,B4,B5,B6                        *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN22QuickMoveInterpolation15ComputePositionEdtP8LineData:
;** --------------------------------------------------------------------------*
;** 176	-----------------------    if ( *((*this).m_is_axis_positive+axis_index) ) goto g3;
;** 180	-----------------------    *(((int)axis_index<<3)+(double * const)data+1440) = *(((int)axis_index<<3)+(*this).__b_22InterpolationAlgorithm.m_geometry)-current_l;
;** 180	-----------------------    goto g4;
;**	-----------------------g3:
;** 177	-----------------------    *(((int)axis_index<<3)+(double * const)data+1440) = *(((int)axis_index<<3)+(*this).__b_22InterpolationAlgorithm.m_geometry)+current_l;
;**	-----------------------g4:
;**  	-----------------------    return;
           LDW     .D1T1   *+A4(60),A5       ; |176| 
           MV      .L1X    B6,A3             ; |175| 
           ADDAD   .D1     A3,A6,A7          ; |177| 
           ADDAD   .D1     A3,A6,A3          ; |180| 
           ADDK    .S1     1440,A7           ; |177| 
           LDB     .D1T1   *+A5[A6],A0       ; |176| 
           ADDK    .S1     1440,A3           ; |180| 
           NOP             3
   [ A0]   LDW     .D1T1   *+A4(4),A4        ; |177| 
   [!A0]   LDW     .D1T1   *+A4(4),A4        ; |180| 
           NOP             3
   [ A0]   LDDW    .D1T1   *+A4[A6],A5:A4    ; |177| 
   [!A0]   LDDW    .D1T1   *+A4[A6],A5:A4    ; |180| 
           NOP             3
   [ A0]   ADDDP   .L2X    B5:B4,A5:A4,B5:B4 ; |177| 
   [!A0]   SUBDP   .L1X    A5:A4,B5:B4,A5:A4 ; |180| 
           NOP             1
           RETNOP  .S2     B3,3              ; |182| 
   [ A0]   STDW    .D1T2   B5:B4,*A7         ; |177| 
   [!A0]   STDW    .D1T1   A5:A4,*A3         ; |180| 
           ; BRANCH OCCURS {B3}              ; |182| 
	.sect	".text"
	.clink
	.global	_ZN22QuickMoveInterpolation15ComputePositionEdP8LineData

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::ComputePosition(double, LineData *) *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,   *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 4 Auto + 56 Save = 60 byte                  *
;******************************************************************************
_ZN22QuickMoveInterpolation15ComputePositionEdP8LineData:
;** --------------------------------------------------------------------------*
;** 167	-----------------------    v$3 = (*this).m_channel_config;
;** 167	-----------------------    if ( !(*v$3).axis_number ) goto g8;
           STW     .D2T1   A11,*SP--(8)      ; |166| 

           STW     .D2T1   A10,*SP--(8)      ; |166| 
||         MV      .L1     A4,A10            ; |166| 

           STDW    .D2T2   B13:B12,*SP--     ; |166| 
           STDW    .D2T2   B11:B10,*SP--     ; |166| 
           STDW    .D2T1   A15:A14,*SP--     ; |166| 
           STDW    .D2T1   A13:A12,*SP--     ; |166| 
           STW     .D2T2   B3,*SP--(16)      ; |166| 
           LDW     .D1T1   *+A10(52),A12     ; |167| 
           MV      .L2     B4,B12            ; |166| 
           MV      .L2     B5,B13            ; |166| 
           ZERO    .L2     B11               ; |167| 
           STW     .D2T1   A6,*+SP(4)        ; |166| 
           LDBU    .D1T1   *+A12(2),A0       ; |167| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L18,5          ; |167| 
           ; BRANCHCC OCCURS {$C$L18}        ; |167| 
;** --------------------------------------------------------------------------*
;** 167	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MV      .L2     B11,B4            ; |168| 
||         CALL    .S1     __c6xabi_llshl    ; |168| 
||         LDW     .D1T1   *+A10(4),A11      ; |168| 

           MVK     .S1     512,A15           ; |168| 
           MV      .L1X    B11,A14           ; |168| 
           MVK     .L1     0x1,A4            ; |168| 
           MV      .L1     A14,A5            ; |168| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L17:    
;**	-----------------------g3:
;** 168	-----------------------    v$1 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 168	-----------------------    if ( (*((*v$1).end_data+1432)&1uLL<<i) == 0uLL ) goto g7;
;** 170	-----------------------    axis_index = i;
;**  	-----------------------    K$43 = (double * const)data+1440;
;** 176	-----------------------    if ( *((*this).m_is_axis_positive+axis_index) ) goto g6;  // [18]
;** 180	-----------------------    *(((int)axis_index<<3)+K$43) = *(((int)axis_index<<3)+(double *)v$1)-current_l;  // [18]
;** 180	-----------------------    v$3 = (*this).m_channel_config;  // [18]
;** 180	-----------------------    goto g7;  // [18]
;**	-----------------------g6:
;** 177	-----------------------    *(((int)axis_index<<3)+K$43) = *(((int)axis_index<<3)+(double *)v$1)+current_l;  // [18]
;**	-----------------------g7:
;** 167	-----------------------    if ( (*v$3).axis_number > (++i) ) goto g3;
;**	-----------------------g8:
;**  	-----------------------    return;
           ADDKPC  .S2     $C$RL15,B3,0      ; |168| 
$C$RL15:   ; CALL OCCURS {__c6xabi_llshl} {0}  ; |168| 
;** --------------------------------------------------------------------------*
           ADD     .L1     A15,A11,A3        ; |168| 
           LDW     .D1T1   *A3,A3            ; |168| 
           NOP             4
           ADDK    .S1     1432,A3           ; |168| 
           LDDW    .D1T1   *A3,A7:A6         ; |168| 
           NOP             4

           AND     .L1     A5,A7,A3          ; |168| 
||         AND     .S1     A4,A6,A31         ; |168| 

           CMPEQ   .L1     A3,A14,A0         ; |168| 
   [ A0]   CMPEQ   .L1     A31,A14,A0        ; |168| 
   [!A0]   LDW     .D1T2   *+A10(60),B4      ; |176| 
   [!A0]   EXTU    .S2     B11,16,16,B10     ; |170| 
   [ A0]   MVK     .L2     0x1,B1
   [!A0]   LDW     .D2T2   *+SP(4),B5
   [!A0]   MVK     .S2     1440,B8
   [!A0]   LDB     .D2T2   *+B4[B10],B1      ; |176| 
           MV      .L2X    A11,B4            ; |168| Define a twin register
           ADD     .L2     1,B11,B11         ; |167| 
   [!A0]   ADD     .L2     B8,B5,B5
           NOP             1
   [!B1]   LDDW    .D2T2   *+B4[B10],B7:B6   ; |180| 
   [!B1]   LDW     .D1T1   *+A10(52),A12     ; |180| 
   [!A0]   MV      .L1X    B5,A13
           MV      .L2     B1,B0
   [!B1]   MV      .L2X    A13,B5
   [!B1]   SUBDP   .L2     B7:B6,B13:B12,B7:B6 ; |180| 
   [ A0]   MV      .S2X    A14,B0            ; |180| 
           LDBU    .D1T1   *+A12(2),A3       ; |167| 
           NOP             4
   [!B1]   STDW    .D2T2   B7:B6,*+B5[B10]   ; |180| 
   [ B0]   LDDW    .D2T2   *+B4[B10],B5:B4   ; |177| 
           CMPGT   .L1X    A3,B11,A0         ; |167| 
   [ A0]   LDW     .D1T1   *+A10(4),A11      ; |168| 
   [ A0]   MVK     .L1     0x1,A4            ; |168| 
   [ A0]   MV      .L1     A14,A5            ; |168| 
   [ B0]   ADDDP   .L2     B13:B12,B5:B4,B7:B6 ; |177| 
   [ B0]   MV      .S2X    A13,B4
   [ A0]   B       .S1     $C$L17            ; |167| 
   [ A0]   CALL    .S1     __c6xabi_llshl    ; |168| 
           NOP             3

   [ B0]   STDW    .D2T2   B7:B6,*+B4[B10]   ; |177| 
|| [ A0]   MV      .L2     B11,B4            ; |168| 

           ; BRANCHCC OCCURS {$C$L17}        ; |167| 
;** --------------------------------------------------------------------------*
$C$L18:    
           LDW     .D2T2   *++SP(16),B3      ; |173| 
           LDDW    .D2T1   *++SP,A13:A12     ; |173| 
           LDDW    .D2T1   *++SP,A15:A14     ; |173| 
           LDDW    .D2T2   *++SP,B11:B10     ; |173| 
           LDDW    .D2T2   *++SP,B13:B12     ; |173| 

           LDW     .D2T1   *++SP(8),A10      ; |173| 
||         RET     .S2     B3                ; |173| 

           LDW     .D2T1   *++SP(8),A11      ; |173| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |173| 
	.sect	".text"
	.clink
	.global	_ZN22QuickMoveInterpolation15ComputeGeometryEv

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::ComputeGeometry()                   *
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
_ZN22QuickMoveInterpolation15ComputeGeometryEv:
;** --------------------------------------------------------------------------*
;** 64	-----------------------    if ( !(U$4 = (*(*this).m_channel_config).axis_number) ) goto g10;
;** 64	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           STW     .D2T2   B13,*SP--(8)      ; |62| 
           STDW    .D2T1   A13:A12,*SP--     ; |62| 

           STDW    .D2T1   A11:A10,*SP--     ; |62| 
||         MV      .L1     A4,A11            ; |62| 

           LDW     .D1T1   *+A11(52),A3      ; |64| 
           ZERO    .L1     A10               ; |64| 
           MV      .L2     B3,B13            ; |62| 
           NOP             2
           LDBU    .D1T1   *+A3(2),A0        ; |64| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L24,4          ; |64| 
           MV      .L1     A0,A12            ; |64| 
           ; BRANCHCC OCCURS {$C$L24}        ; |64| 
;** --------------------------------------------------------------------------*

           LDW     .D1T1   *+A11(8),A3       ; |65| 
||         MVK     .S1     368,A4            ; |65| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L19:    
;**	-----------------------g3:
;** 65	-----------------------    if ( !(**(i*4+(*this).__b_22InterpolationAlgorithm.m_dynamic_info)).is_enabled ) goto g9;
           NOP             4
           LDW     .D1T1   *+A3[A10],A3      ; |65| 
           NOP             4
           LDB     .D1T1   *+A3[A4],A0       ; |65| 
           NOP             4

   [!A0]   BNOP    .S2     $C$L22,4          ; |65| 
|| [ A0]   LDW     .D1T1   *+A11(4),A3       ; |66| 
|| [ A0]   MVK     .S1     512,A4            ; |66| 

           ADD     .L1     A4,A3,A4          ; |66| 
           ; BRANCHCC OCCURS {$C$L22}        ; |65| 
;** --------------------------------------------------------------------------*
;** 66	-----------------------    C$6 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 66	-----------------------    C$4 = *((i<<3)+(double *)C$6);
;** 66	-----------------------    C$5 = i<<3;
;** 66	-----------------------    C$2 = (*C$6).end_data;
;** 66	-----------------------    temp_dist = *(C$5+(double *)C$2+1440)-C$4;
;** 67	-----------------------    U$26 = C$5;
;** 67	-----------------------    C$3 = *(U$26+(double *)C$2+1440)-C$4;
;** 67	-----------------------    if ( C$3 > 1.00000000000000002092e-8 ) goto g8;
           LDW     .D1T1   *A4,A13           ; |66| 
           SHL     .S2X    A10,3,B8          ; |66| 
           LDDW    .D1T1   *+A3[A10],A5:A4   ; |66| 
           MVKL    .S2     0x3e45798e,B7
           MVKL    .S2     0xe2308c3a,B6
           ADD     .L2X    A13,B8,B4         ; |67| 
           ADDK    .S2     1440,B4           ; |67| 
           LDDW    .D2T2   *B4,B5:B4         ; |67| 
           ADD     .L1X    A13,B8,A3         ; |66| 
           ADDK    .S1     1440,A3           ; |66| 
           LDDW    .D1T1   *A3,A7:A6         ; |66| 
           MVKH    .S2     0x3e45798e,B7
           SUBDP   .L2X    B5:B4,A5:A4,B5:B4 ; |67| 
           MVKH    .S2     0xe2308c3a,B6
           NOP             5
           CMPGTDP .S2     B5:B4,B7:B6,B0    ; |67| 
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |66| 

           MV      .L2     B0,B2             ; branch predicate copy
|| [ B0]   B       .S1     $C$L21            ; |67| 
||         MVKL    .S2     0xbe45798e,B7
||         MV      .D2     B0,B1             ; guard predicate rewrite

   [ B2]   LDW     .D1T1   *+A11(56),A6      ; |68| 
||         MVKH    .S2     0xbe45798e,B7

           CMPLTDP .S2     B5:B4,B7:B6,B0    ; |71| 
   [ B2]   LDW     .D1T1   *+A11(60),A3      ; |69| 
   [ B1]   ZERO    .L2     B0                ; |71| nullify predicate
   [ B0]   B       .S1     $C$L20            ; |71| 
           ; BRANCHCC OCCURS {$C$L21}        ; |67| 
;** --------------------------------------------------------------------------*
;** 71	-----------------------    if ( C$3 < -1.00000000000000002092e-8 ) goto g7;

   [!B0]   CALL    .S1     __c6xabi_llshl    ; |77| 
|| [ B0]   LDW     .D1T1   *+A11(56),A6      ; |72| 

   [ B0]   LDW     .D1T1   *+A11(60),A3      ; |73| 
   [ B0]   ZERO    .L1     A7                ; |72| 
   [ B0]   SET     .S1     A7,31,31,A7       ; |72| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L20}        ; |71| 
;** --------------------------------------------------------------------------*
;** 77	-----------------------    C$1 = (struct xisMovData *)C$2+1432;
;** 77	-----------------------    (*C$1).mask = (*C$1).mask&~(1uLL<<i);
;** 77	-----------------------    goto g9;

           MV      .L2X    A10,B4            ; |77| 
||         MVK     .L1     0x1,A4            ; |77| 
||         ZERO    .S1     A5                ; |77| 
||         ADDKPC  .S2     $C$RL16,B3,0      ; |77| 

$C$RL16:   ; CALL OCCURS {__c6xabi_llshl} {0}  ; |77| 
;** --------------------------------------------------------------------------*

           MVK     .S1     1432,A3           ; |77| 
||         ADD     .L1     1,A10,A10         ; |64| 

           ADD     .S1     A3,A13,A3         ; |77| 
||         CMPGT   .L1     A12,A10,A0        ; |64| 

           LDDW    .D1T1   *A3,A7:A6         ; |77| 
||         NOT     .L1     A4,A5             ; |77| 
||         NOT     .S1     A5,A4             ; |77| 

           B       .S1     $C$L23            ; |77| 
   [ A0]   BNOP    .S1     $C$L19,2          ; |64| 

           AND     .L1     A5,A6,A4          ; |77| 
||         AND     .S1     A4,A7,A5          ; |77| 

           STDW    .D1T1   A5:A4,*A3         ; |77| 
           ; BRANCH OCCURS {$C$L23}          ; |77| 
;** --------------------------------------------------------------------------*
$C$L20:    
;**	-----------------------g7:
;** 72	-----------------------    *((*this).m_axis_distance+U$26) = -temp_dist;
;** 73	-----------------------    *((*this).m_is_axis_positive+i) = 0;
;**  	-----------------------    U$4 = (*(*this).m_channel_config).axis_number;
;** 74	-----------------------    goto g9;

           ZERO    .L2     B5                ; |73| 
||         XOR     .L1     A5,A7,A5          ; |72| 
||         ADD     .S2X    B8,A6,B4          ; |72| 

           STDW    .D2T1   A5:A4,*B4         ; |72| 
||         STB     .D1T2   B5,*+A3[A10]      ; |73| 

           BNOP    .S1     $C$L22,4          ; |74| 
||         LDW     .D1T1   *+A11(52),A3

           LDBU    .D1T1   *+A3(2),A12
           ; BRANCH OCCURS {$C$L22}          ; |74| 
;** --------------------------------------------------------------------------*
$C$L21:    
;**	-----------------------g8:
;** 68	-----------------------    *((*this).m_axis_distance+U$26) = temp_dist;
;** 69	-----------------------    *((*this).m_is_axis_positive+i) = 1;
;**  	-----------------------    U$4 = (*(*this).m_channel_config).axis_number;

           ADD     .L1X    B8,A6,A6          ; |68| 
||         MVK     .S1     1,A31             ; |69| 

           STDW    .D1T1   A5:A4,*A6         ; |68| 
           STB     .D1T1   A31,*+A3[A10]     ; |69| 
           LDW     .D1T1   *+A11(52),A3
           NOP             4
           LDBU    .D1T1   *+A3(2),A12
;** --------------------------------------------------------------------------*
$C$L22:    
           ADD     .L1     1,A10,A10         ; |64| 
           NOP             3
           CMPGT   .L1     A12,A10,A0        ; |64| 
   [ A0]   BNOP    .S1     $C$L19,4          ; |64| 
;** --------------------------------------------------------------------------*
$C$L23:    
;**	-----------------------g9:
;** 64	-----------------------    if ( U$4 > (++i) ) goto g3;

   [ A0]   LDW     .D1T1   *+A11(8),A3       ; |65| 
|| [ A0]   MVK     .S1     368,A4            ; |65| 

           ; BRANCHCC OCCURS {$C$L19}        ; |64| 
;** --------------------------------------------------------------------------*
;**	-----------------------g10:
;**  	-----------------------    return;
;** --------------------------------------------------------------------------*
$C$L24:    

           LDDW    .D2T1   *++SP,A11:A10     ; |81| 
||         MV      .L2     B13,B3            ; |81| 

           LDDW    .D2T1   *++SP,A13:A12     ; |81| 
||         RET     .S2     B3                ; |81| 

           LDW     .D2T2   *++SP(8),B13      ; |81| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |81| 
	.sect	".text"
	.clink
	.global	_ZN22QuickMoveInterpolation13HasReachedEndEv

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::HasReachedEnd()                     *
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
_ZN22QuickMoveInterpolation13HasReachedEndEv:
;** --------------------------------------------------------------------------*
;** 85	-----------------------    v$3 = (*this).m_channel_config;
;** 84	-----------------------    res = 1;
;** 85	-----------------------    if ( !(*v$3).axis_number ) goto g8;

           STW     .D2T1   A11,*SP--(8)      ; |83| 
||         MV      .L1     A4,A11            ; |83| 

           STDW    .D2T2   B11:B10,*SP--     ; |83| 
           STDW    .D2T1   A13:A12,*SP--     ; |83| 
           STW     .D2T1   A10,*SP--(8)      ; |83| 
           LDW     .D1T1   *+A11(52),A13     ; |85| 
           MVK     .L2     0x1,B10           ; |84| 
           MV      .L2     B3,B11            ; |83| 
           ZERO    .L1     A10               ; |85| 
           NOP             1
           LDBU    .D1T1   *+A13(2),A0       ; |85| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L27,5          ; |85| 
           ; BRANCHCC OCCURS {$C$L27}        ; |85| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    v$2 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 85	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     __c6xabi_llshl    ; |86| 
           LDW     .D1T1   *+A11(4),A12
           MV      .L2X    A10,B4            ; |86| 
           ZERO    .L1     A5                ; |86| 
           MVK     .L1     0x1,A4            ; |86| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L25:    
;**	-----------------------g3:
;** 86	-----------------------    C$11 = 1uLL<<i;
;** 86	-----------------------    if ( (*((*v$2).end_data+1432)&C$11) == 0uLL ) goto g7;
           ADDKPC  .S2     $C$RL17,B3,0      ; |86| 
$C$RL17:   ; CALL OCCURS {__c6xabi_llshl} {0}  ; |86| 
;** --------------------------------------------------------------------------*
           MVK     .S1     512,A3            ; |86| 
           ADD     .L1     A3,A12,A3         ; |86| 
           LDW     .D1T1   *A3,A3            ; |86| 
           ZERO    .L2     B4                ; |86| 
           NOP             3
           ADDK    .S1     1432,A3           ; |86| 
           LDDW    .D1T1   *A3,A7:A6         ; |86| 
           NOP             4
           AND     .L1     A5,A7,A3          ; |86| 
           AND     .L1     A4,A6,A31         ; |86| 
           CMPEQ   .L2X    A3,B4,B0          ; |86| 
   [ B0]   CMPEQ   .L2X    A31,B4,B0         ; |86| 

   [!B0]   MVK     .S2     352,B4            ; |87| 
|| [!B0]   LDW     .D1T1   *+A11(8),A3       ; |87| 

   [ B0]   BNOP    .S1     $C$L26,3          ; |86| 
   [!B0]   LDW     .D1T1   *+A3[A10],A3      ; |87| 
   [!B0]   MVK     .S1     328,A6            ; |87| 
           ; BRANCHCC OCCURS {$C$L26}        ; |86| 
;** --------------------------------------------------------------------------*
;** 87	-----------------------    U$31 = (*this).m_axis_distance+(i<<3);
;** 87	-----------------------    C$12 = *(i*4+(*this).__b_22InterpolationAlgorithm.m_dynamic_info);
;** 87	-----------------------    if ( *U$31-((*C$12).current_l+(*C$12).left_dist) > 1.00000000000000002092e-8 ) goto g6;
;** 93	-----------------------    (*C$12).run_state = 2;
;** 94	-----------------------    v$2 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 94	-----------------------    C$10 = (*v$2).end_data+1432;
;** 94	-----------------------    *C$10 = *C$10&~C$11;
;** 95	-----------------------    *U$31 = 0.0;
;** 95	-----------------------    v$3 = (*this).m_channel_config;
;** 95	-----------------------    goto g7;
;**	-----------------------g6:
;** 88	-----------------------    res = 0;
           LDW     .D1T1   *+A11(56),A8      ; |87| 
           MVK     .L2     2,B31             ; |93| 
           MVKL    .S2     0xe2308c3a,B6

           ADD     .L1     A6,A3,A6          ; |87| 
||         ADD     .L2X    B4,A3,B4          ; |87| 

           LDDW    .D1T1   *A6,A7:A6         ; |87| 
||         LDDW    .D2T2   *B4,B5:B4         ; |87| 

           ADDAD   .D1     A8,A10,A8         ; |87| 
           MVKL    .S2     0x3e45798e,B7
           MVKH    .S2     0xe2308c3a,B6
           MVKH    .S2     0x3e45798e,B7
           ADDDP   .L2X    B5:B4,A7:A6,B5:B4 ; |87| 
           LDDW    .D1T1   *A8,A7:A6         ; |87| 
           MVK     .S1     1432,A31          ; |94| 
           NOT     .L1     A5,A30            ; |94| 
           NOT     .L2X    A4,B30            ; |94| 
           NOP             2
           SUBDP   .L2X    A7:A6,B5:B4,B5:B4 ; |87| 
           MVK     .S1     372,A6            ; |93| 
           ADD     .L1     A6,A3,A3          ; |93| 
           NOP             4
           CMPGTDP .S2     B5:B4,B7:B6,B0    ; |87| 
           NOP             1
   [!B0]   STW     .D1T2   B31,*A3           ; |93| 
   [!B0]   LDW     .D1T1   *+A11(4),A12      ; |94| 
           MVK     .S2     512,B4            ; |94| 
   [ B0]   ZERO    .L2     B10               ; |88| 
           NOP             2
   [!B0]   ADD     .L2X    B4,A12,B4         ; |94| 
   [!B0]   LDW     .D2T2   *B4,B4            ; |94| 
           NOP             4
   [!B0]   ADD     .L1X    A31,B4,A9         ; |94| 
   [!B0]   LDDW    .D1T1   *A9,A7:A6         ; |94| 
           NOP             4

   [!B0]   AND     .L1     A30,A7,A5         ; |94| 
|| [!B0]   AND     .S1X    B30,A6,A4         ; |94| 

   [!B0]   STDW    .D1T1   A5:A4,*A9         ; |94| 
||         ZERO    .L1     A5:A4             ; |95| 

   [!B0]   STDW    .D1T1   A5:A4,*A8         ; |95| 
   [!B0]   LDW     .D1T1   *+A11(52),A13     ; |95| 
;** --------------------------------------------------------------------------*
$C$L26:    
;**	-----------------------g7:
;** 85	-----------------------    if ( (*v$3).axis_number > (++i) ) goto g3;
           ADD     .L1     1,A10,A10         ; |85| 
           NOP             3
           LDBU    .D1T1   *+A13(2),A3       ; |85| 
           NOP             4
           CMPGT   .L1     A3,A10,A0         ; |85| 
   [ A0]   B       .S1     $C$L25            ; |85| 
   [ A0]   CALL    .S1     __c6xabi_llshl    ; |86| 
   [ A0]   MVK     .L1     0x1,A4            ; |86| 
   [ A0]   ZERO    .L1     A5                ; |86| 
   [ A0]   MV      .L2X    A10,B4            ; |86| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L25}        ; |85| 
;** --------------------------------------------------------------------------*
$C$L27:    
;**	-----------------------g8:
;** 99	-----------------------    return res;
           LDW     .D2T1   *++SP(8),A10      ; |100| 

           LDDW    .D2T1   *++SP,A13:A12     ; |100| 
||         MV      .L2     B11,B3            ; |100| 

           RET     .S2     B3                ; |100| 
||         MV      .L1X    B10,A4            ; |99| 
||         LDDW    .D2T2   *++SP,B11:B10     ; |100| 

           LDW     .D2T1   *++SP(8),A11      ; |100| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |100| 
	.sect	".text"
	.clink
	.global	_ZN22QuickMoveInterpolation12PlanVelocityEddb

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::PlanVelocity(double, double, bool)  *
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
_ZN22QuickMoveInterpolation12PlanVelocityEddb:
;** --------------------------------------------------------------------------*
;** 104	-----------------------    v$2 = (*this).m_channel_config;
;** 103	-----------------------    step_num = 0.0;
;** 104	-----------------------    if ( !(*v$2).axis_number ) goto g10;
           STW     .D2T1   A11,*SP--(8)      ; |102| 
           STDW    .D2T2   B11:B10,*SP--     ; |102| 

           STDW    .D2T1   A15:A14,*SP--     ; |102| 
||         MV      .L1     A4,A15            ; |102| 

           STDW    .D2T1   A13:A12,*SP--     ; |102| 
           STW     .D2T1   A10,*SP--(8)      ; |102| 
           LDW     .D1T1   *+A15(52),A8      ; |104| 
           MV      .L1X    B5,A11            ; |102| 
           ZERO    .L2     B10               ; |104| 
           MV      .L2     B3,B11            ; |102| 
           ZERO    .L1     A14               ; |104| 
           LDBU    .D1T1   *+A8(2),A0        ; |104| 
           ZERO    .L1     A13:A12           ; |103| 
           MV      .L1X    B4,A10            ; |102| 
           NOP             2

   [!A0]   BNOP    .S1     $C$L30,4          ; |104| 
|| [ A0]   LDW     .D1T1   *+A15(8),A3

           SUB     .L1     A3,4,A7
           ; BRANCHCC OCCURS {$C$L30}        ; |104| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$18 = (*this).__b_22InterpolationAlgorithm.m_dynamic_info-4;
;**  	-----------------------    U$17 = 0;
;** 104	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           LDW     .D1T1   *++A7,A9          ; |105| 
           MVK     .S1     368,A3            ; |105| 
           NOP             3
           LDB     .D1T1   *+A9[A3],A0       ; |105| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L28:    
;**	-----------------------g3:
;** 105	-----------------------    U$19 = *(++U$18);
;** 105	-----------------------    if ( !(*U$19).is_enabled ) goto g9;
           NOP             4
   [ A0]   LDW     .D1T1   *+A15(4),A3       ; |106| 
   [!A0]   ADD     .L2     4,B10,B10         ; |104| 
   [!A0]   ADD     .L1     1,A14,A14         ; |104| 
           NOP             1
   [!A0]   B       .S1     $C$L29            ; |105| 

           ADDK    .S1     512,A3            ; |106| 
|| [!A0]   LDBU    .D1T1   *+A8(2),A3        ; |104| 

           NOP             4
           ; BRANCHCC OCCURS {$C$L29}        ; |105| 
;** --------------------------------------------------------------------------*
;** 106	-----------------------    U$31 = i<<3;
;** 106	-----------------------    (*U$19).f = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+U$31+2488)*target_feed_rate;
;** 108	-----------------------    U$39 = *(i*4+(struct CCCTAxisConfig **)v$2+7896);
;** 108	-----------------------    C$13 = (*U$39).max_axis_speed;
;** 108	-----------------------    if ( (*U$19).f <= C$13 ) goto g6;
;** 109	-----------------------    (*U$19).f = C$13;
;**	-----------------------g6:
;** 111	-----------------------    (*U$19).fe = C$11 = 0.0;
;** 112	-----------------------    (*U$19).fs = (*U$19).current_f;
;** 113	-----------------------    (*U$19).le = *((*this).m_axis_distance+U$31);
;** 114	-----------------------    (*U$19).ls = (*U$19).current_l;
;** 115	-----------------------    (*U$19).acceleration = (*U$39).max_axis_acc;
;** 116	-----------------------    (*U$19).deceleration = (*U$39).max_G00_axis_acc;
;** 117	-----------------------    (*U$19).Ja = C$12 = (*U$39).max_axis_jerk;
;** 118	-----------------------    (*U$19).Jd = C$12;
;** 119	-----------------------    (*U$19).left_time = C$11;
;** 120	-----------------------    (*U$19).left_dist = C$11;
;** 122	-----------------------    VelocityPlanning::PlanVelocity((*this).__b_22InterpolationAlgorithm.m_velocity_planning, U$19);
;** 123	-----------------------    v$1 = (*this).__b_22InterpolationAlgorithm.m_dynamic_info;
;** 123	-----------------------    C$10 = (double)(*v$1[i]).step_number;
;** 123	-----------------------    if ( step_num >= C$10 ) goto g8;
;** 124	-----------------------    step_num = C$10;
;**	-----------------------g8:
;** 126	-----------------------    U$18 = v$1+U$17;
;** 126	-----------------------    (**U$18).is_enabled = 0;
;** 126	-----------------------    v$2 = (*this).m_channel_config;
           LDW     .D1T1   *A3,A4            ; |106| 
           SHL     .S1     A14,3,A31         ; |106| 
           ZERO    .L2     B9:B8             ; |111| 
           MVK     .S2     320,B4            ; |112| 
           MVK     .S2     328,B31           ; |114| 
           ADD     .L1     A31,A4,A4         ; |106| 
           ADDK    .S1     2488,A4           ; |106| 
           LDDW    .D1T1   *A4,A5:A4         ; |106| 
           ADD     .L2X    B4,A9,B4          ; |112| 
           ADDAW   .D1     A8,A14,A6         ; |108| 
           LDW     .D1T1   *+A15(56),A7      ; |113| 
           ADD     .L2X    B31,A9,B7         ; |114| 
           MPYDP   .M1     A11:A10,A5:A4,A5:A4 ; |106| 
           ADDK    .S1     7896,A6           ; |108| 
           LDW     .D1T2   *A6,B6            ; |108| 
           LDDW    .D2T1   *B4,A17:A16       ; |112| 
           ADD     .L1     A31,A7,A30        ; |113| 
           LDDW    .D1T1   *A30,A7:A6        ; |113| 
           LDDW    .D2T1   *B7,A19:A18       ; |114| 
           MVK     .S2     296,B7            ; |118| 
           MVK     .S2     344,B30           ; |119| 
           MVK     .S1     288,A29           ; |117| 
           STDW    .D1T1   A5:A4,*+A9(16)    ; |106| 

           LDDW    .D1T1   *+A9(16),A5:A4    ; |108| 
||         LDDW    .D2T2   *+B6(56),B5:B4    ; |108| 

           STDW    .D1T1   A17:A16,*A9       ; |112| 
           STDW    .D1T2   B9:B8,*+A9(8)     ; |111| 
           STDW    .D1T1   A7:A6,*+A9(32)    ; |113| 
           STDW    .D1T1   A19:A18,*+A9(24)  ; |114| 
           CMPGTDP .S2X    A5:A4,B5:B4,B0    ; |108| 
           LDW     .D1T1   *+A15(12),A4      ; |122| 
   [ B0]   STDW    .D1T2   B5:B4,*+A9(16)    ; |109| 
           LDDW    .D2T2   *+B6(32),B5:B4    ; |115| 
           MVK     .S2     352,B29           ; |120| 
           ADD     .L1     A29,A9,A3         ; |117| 
           ADD     .L2X    B29,A9,B28        ; |120| 
           NOP             1
           STDW    .D1T2   B5:B4,*+A9(48)    ; |115| 
           LDDW    .D2T2   *+B6(40),B5:B4    ; |116| 
           NOP             4
           STDW    .D1T2   B5:B4,*+A9(56)    ; |116| 
           LDDW    .D2T2   *+B6(48),B5:B4    ; |117| 
           ADD     .L2X    B30,A9,B6         ; |119| 
           CALL    .S1     _ZN16VelocityPlanning12PlanVelocityEP11DynamicInfo ; |122| 
           STDW    .D2T2   B9:B8,*B6         ; |119| 
           ADD     .L2X    B7,A9,B6          ; |118| 
           STDW    .D1T2   B5:B4,*A3         ; |117| 

           STDW    .D2T2   B5:B4,*B6         ; |118| 
||         MV      .L2X    A9,B4             ; |122| 

           STDW    .D2T2   B9:B8,*B28        ; |120| 
||         ADDKPC  .S2     $C$RL18,B3,0      ; |122| 

$C$RL18:   ; CALL OCCURS {_ZN16VelocityPlanning12PlanVelocityEP11DynamicInfo} {0}  ; |122| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A15(8),A3       ; |123| 
           LDW     .D1T1   *+A15(52),A8      ; |126| 
           MVK     .S1     368,A6            ; |126| 
           ZERO    .L1     A31               ; |126| 
           NOP             1
           LDW     .D1T1   *+A3[A14],A4      ; |123| 
           ADD     .L1X    B10,A3,A7         ; |126| 
           LDW     .D1T1   *A7,A9            ; |126| 
           ADD     .L1     1,A14,A14         ; |104| 
           ADD     .L2     4,B10,B10         ; |104| 
           ADDK    .S1     336,A4            ; |123| 
           LDW     .D1T1   *A4,A4            ; |123| 
           STB     .D1T1   A31,*+A9[A6]      ; |126| 
           LDBU    .D1T1   *+A8(2),A3        ; |104| 
           NOP             2
           INTDPU  .L1     A4,A5:A4          ; |123| 
           NOP             4
           CMPLTDP .S1     A13:A12,A5:A4,A0  ; |123| 
           NOP             1

   [ A0]   MV      .L1     A4,A12            ; |124| 
|| [ A0]   MV      .S1     A5,A13            ; |124| 

;** --------------------------------------------------------------------------*
$C$L29:    
;**	-----------------------g9:
;** 104	-----------------------    U$17 += 4;
;** 104	-----------------------    if ( (*v$2).axis_number > (++i) ) goto g3;
           CMPGT   .L1     A3,A14,A0         ; |104| 

   [ A0]   BNOP    .S2     $C$L28,4          ; |104| 
|| [ A0]   LDW     .D1T1   *++A7,A9          ; |105| 
|| [ A0]   MVK     .S1     368,A3            ; |105| 

   [ A0]   LDB     .D1T1   *+A9[A3],A0       ; |105| 
           ; BRANCHCC OCCURS {$C$L28}        ; |104| 
;** --------------------------------------------------------------------------*
$C$L30:    
;**	-----------------------g10:
;** 129	-----------------------    return (int)step_num;
           LDW     .D2T1   *++SP(8),A10      ; |130| 

           DPTRUNC .L1     A13:A12,A4        ; |129| 
||         LDDW    .D2T1   *++SP,A13:A12     ; |130| 

           LDDW    .D2T1   *++SP,A15:A14     ; |130| 
||         MV      .L2     B11,B3            ; |130| 

           LDDW    .D2T2   *++SP,B11:B10     ; |130| 
||         RET     .S2     B3                ; |130| 

           LDW     .D2T1   *++SP(8),A11      ; |130| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |130| 
	.sect	".text"
	.clink
	.global	_ZN22QuickMoveInterpolation11InterpolateEP8LineData

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::Interpolate(LineData *)             *
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
_ZN22QuickMoveInterpolation11InterpolateEP8LineData:
;** --------------------------------------------------------------------------*
;** 134	-----------------------    v$3 = (*this).m_channel_config;
;** 133	-----------------------    speed = 0.0;
;** 134	-----------------------    if ( !(*v$3).axis_number ) goto g18;
           STW     .D2T2   B13,*SP--(8)      ; |132| 
           STDW    .D2T2   B11:B10,*SP--     ; |132| 
           STDW    .D2T1   A15:A14,*SP--     ; |132| 
           STDW    .D2T1   A13:A12,*SP--     ; |132| 

           STDW    .D2T1   A11:A10,*SP--     ; |132| 
||         MV      .L1     A4,A10            ; |132| 

           LDW     .D1T1   *+A10(52),A15     ; |134| 
           MV      .L2     B3,B13            ; |132| 
           ZERO    .L2     B11:B10           ; |133| 
           MV      .L1X    B4,A13            ; |132| 
           ZERO    .L1     A11               ; |134| 
           LDBU    .D1T1   *+A15(2),A0       ; |134| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L34,5          ; |134| 
           ; BRANCHCC OCCURS {$C$L34}        ; |134| 
;** --------------------------------------------------------------------------*
;** 134	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     __c6xabi_llshl    ; |135| 
           MV      .L2X    A11,B4            ; |135| 
           ZERO    .L1     A5                ; |135| 
           MVK     .L1     0x1,A4            ; |135| 
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L31:    
;**	-----------------------g3:
;** 135	-----------------------    if ( (*((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+1432)&1uLL<<i) == 0uLL ) goto g17;
           ADDKPC  .S2     $C$RL19,B3,0      ; |135| 
$C$RL19:   ; CALL OCCURS {__c6xabi_llshl} {0}  ; |135| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(4),A3       ; |135| 
           ZERO    .L2     B4                ; |135| 
           NOP             3
           ADDK    .S1     512,A3            ; |135| 
           LDW     .D1T1   *A3,A3            ; |135| 
           NOP             4
           ADDK    .S1     1432,A3           ; |135| 
           LDDW    .D1T1   *A3,A7:A6         ; |135| 
           NOP             4
           AND     .L1     A5,A7,A3          ; |135| 
           AND     .L1     A4,A6,A31         ; |135| 
           CMPEQ   .L2X    A3,B4,B0          ; |135| 
   [ B0]   CMPEQ   .L2X    A31,B4,B0         ; |135| 

   [ B0]   BNOP    .S2     $C$L32,3          ; |135| 
|| [!B0]   LDW     .D1T1   *+A10(8),A14      ; |136| 
|| [!B0]   MVK     .S1     336,A4            ; |136| 

   [!B0]   ADD     .L2X    4,A4,B4
   [!B0]   LDW     .D1T1   *+A14[A11],A3     ; |136| 
           ; BRANCHCC OCCURS {$C$L32}        ; |135| 
;** --------------------------------------------------------------------------*
;** 136	-----------------------    U$31 = (*this).__b_22InterpolationAlgorithm.m_dynamic_info;
;** 136	-----------------------    U$30 = i*4;
;** 136	-----------------------    U$33 = U$31[i];
;** 136	-----------------------    C$7 = (*U$33).current_step;
;** 136	-----------------------    if ( C$7 >= (*U$33).step_number ) goto g17;
           SHL     .S1     A11,2,A12         ; |136| 
           MVK     .S2     340,B5            ; |137| 
           NOP             2

           ADD     .L2X    B4,A3,B4          ; |136| 
||         ADD     .L1     A4,A3,A4          ; |136| 

           LDW     .D2T2   *B4,B4            ; |136| 
||         LDW     .D1T1   *A4,A4            ; |136| 

           NOP             4
           CMPLTU  .L2X    B4,A4,B0          ; |136| 

   [!B0]   B       .S1     $C$L33            ; |136| 
|| [ B0]   ADD     .L1X    1,B4,A8           ; |137| 
||         ADD     .L2X    B5,A3,B4          ; |137| 
|| [ B0]   LDDW    .D1T1   *+A3(184),A7:A6   ; |138| 

   [ B0]   LDDW    .D1T1   *+A10(24),A5:A4   ; |138| 
   [ B0]   STW     .D2T1   A8,*B4            ; |137| 
   [ B0]   LDW     .D1T2   *+A10(12),B5      ; |140| 
   [!B0]   LDBU    .D1T1   *+A15(2),A3       ; |134| 
   [!B0]   ADD     .L1     1,A11,A11         ; |134| 
           ; BRANCHCC OCCURS {$C$L33}        ; |136| 
;** --------------------------------------------------------------------------*
;** 137	-----------------------    (*U$33).current_step = C$7+1u;
;** 138	-----------------------    v$4 = U$31;
;** 138	-----------------------    (*U$33).current_time = (*U$33).current_time+(*this).__b_22InterpolationAlgorithm.m_interpolation_cycle;
;** 140	-----------------------    C$6 = (*this).__b_22InterpolationAlgorithm.m_velocity_planning;
;** 140	-----------------------    (*v$4[i]).current_l = (*(double (*)())*((*C$6).__vptr+4))(C$6, v$4[i]);
;** 142	-----------------------    v$4 = (*this).__b_22InterpolationAlgorithm.m_dynamic_info;
;** 142	-----------------------    v$1 = v$4;
;**  	-----------------------    K$75 = (double * const)data+1440;
;**  	-----------------------    U$92 = (i<<3)+(double * const)data+2488;
;** 142	-----------------------    C$5 = v$1[i];
;** 142	-----------------------    if ( (*C$5).current_l >= 0.0 ) goto g7;
;** 143	-----------------------    (*C$5).current_l = 0.0;
;**	-----------------------g7:
;** 146	-----------------------    current_l = (**(U$30+v$1)).current_l;
;** 146	-----------------------    axis_index = i;
;** 176	-----------------------    if ( *((*this).m_is_axis_positive+axis_index) ) goto g9;  // [18]
;** 180	-----------------------    *(((int)axis_index<<3)+K$75) = *(((int)axis_index<<3)+(*this).__b_22InterpolationAlgorithm.m_geometry)-current_l;  // [18]
;** 180	-----------------------    goto g10;  // [18]
;**	-----------------------g9:
;** 177	-----------------------    *(((int)axis_index<<3)+K$75) = *(((int)axis_index<<3)+(*this).__b_22InterpolationAlgorithm.m_geometry)+current_l;  // [18]
;**	-----------------------g10:
;** 149	-----------------------    C$3 = v$4+U$30;
;** 149	-----------------------    C$4 = (*this).__b_22InterpolationAlgorithm.m_velocity_planning;
;** 149	-----------------------    (**C$3).current_f = (*(double (*)())*(*C$4).__vptr)(C$4, *C$3);
;** 150	-----------------------    v$4 = (*this).__b_22InterpolationAlgorithm.m_dynamic_info;
;** 150	-----------------------    *U$92 = C$2 = (**(U$30+v$4)).current_f;
;** 151	-----------------------    v$3 = (*this).m_channel_config;
;** 151	-----------------------    U$3 = v$3;
;** 151	-----------------------    if ( (**(U$30+(struct CCCTAxisConfig **)U$3+7896)).axis_type == 2 ) goto g13;
;** 151	-----------------------    if ( speed >= C$2 ) goto g13;
;** 153	-----------------------    speed = C$2;
;**	-----------------------g13:
;** 155	-----------------------    C$1 = *(U$30+v$4);
;** 155	-----------------------    if ( (*C$1).current_step != (*C$1).step_number ) goto g17;
;** 155	-----------------------    if ( (*C$1).run_state != 1 ) goto g17;
;** 155	-----------------------    if ( (*C$1).current_f >= 1.00000000000000002092e-8 ) goto g17;
;** 158	-----------------------    (*C$1).run_state = 2;
;** 158	-----------------------    v$3 = U$3;
           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |138| 
           NOP             2
           LDW     .D2T2   *B5,B4            ; |140| 
           NOP             3
           STDW    .D1T1   A5:A4,*+A3(184)   ; |138| 
           LDW     .D2T2   *+B4(4),B6        ; |140| 
           LDW     .D1T2   *+A14[A11],B4     ; |140| 
           MV      .L1X    B5,A4             ; |140| 
           NOP             2
           CALL    .S2     B6                ; |140| 
           ADDKPC  .S2     $C$RL20,B3,4      ; |140| 
$C$RL20:   ; CALL OCCURS {B6} {0}            ; |140| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(8),A6       ; |142| 
           LDW     .D1T1   *+A14[A11],A7     ; |140| 
           MVK     .S2     328,B4            ; |142| 
           LDW     .D1T1   *+A10(60),A31     ; |176| 
           MVK     .S2     328,B31           ; |143| 
           MV      .L1     A6,A3             ; |142| 
           LDW     .D1T1   *+A3[A11],A3      ; |142| 
           ADDK    .S1     328,A7            ; |140| 
           STDW    .D1T1   A5:A4,*A7         ; |140| 
           ADD     .L1     A6,A12,A30        ; |146| 
           LDW     .D1T1   *A30,A4           ; |146| 
           ADD     .L2X    B4,A3,B4          ; |142| 
           LDDW    .D2T2   *B4,B7:B6         ; |142| 
           ZERO    .L2     B5:B4             ; |142| 
           LDW     .D1T2   *+A10(12),B30     ; |149| 
           ADDK    .S1     328,A4            ; |146| 
           MVK     .S2     1440,B29
           CMPLTDP .S2     B7:B6,B5:B4,B0    ; |142| 
           ADD     .L2X    B31,A3,B6         ; |143| 
           ZERO    .L2     B5:B4             ; |143| 
           EXTU    .S1     A11,16,16,A3      ; |146| 
   [ B0]   STDW    .D2T2   B5:B4,*B6         ; |143| 
           LDB     .D1T1   *+A31[A3],A0      ; |176| 
           LDDW    .D1T1   *A4,A5:A4         ; |146| 
           LDW     .D2T2   *B30,B6           ; |149| 
           ADD     .L1X    B29,A13,A29
           ADD     .L1     A12,A6,A14        ; |149| 
   [!A0]   LDW     .D1T1   *+A10(4),A7       ; |180| 
   [ A0]   LDW     .D1T1   *+A10(4),A7       ; |177| 
           NOP             4
   [!A0]   LDDW    .D1T1   *+A7[A3],A9:A8    ; |180| 
   [ A0]   LDDW    .D1T1   *+A7[A3],A9:A8    ; |177| 
           NOP             3
   [!A0]   SUBDP   .L1     A9:A8,A5:A4,A9:A8 ; |180| 
   [ A0]   ADDDP   .S1     A5:A4,A9:A8,A9:A8 ; |177| 
           MV      .L1X    B30,A4            ; |149| 
           NOP             4
   [!A0]   STDW    .D1T1   A9:A8,*+A29[A3]   ; |180| 
   [ A0]   STDW    .D1T1   A9:A8,*+A29[A3]   ; |177| 
           LDW     .D2T2   *B6,B5            ; |149| 
           LDW     .D1T2   *A14,B4           ; |149| 
           NOP             3
           CALL    .S2     B5                ; |149| 
           ADDKPC  .S2     $C$RL21,B3,4      ; |149| 
$C$RL21:   ; CALL OCCURS {B5} {0}            ; |149| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A10(8),B4       ; |150| 
           LDW     .D1T1   *A14,A3           ; |149| 
           ADDAD   .D1     A13,A11,A31
           MVK     .S2     2488,B31
           LDW     .D1T1   *+A10(52),A15     ; |151| 
           ADD     .L2X    B4,A12,B5         ; |150| 
           LDW     .D2T2   *B5,B5            ; |150| 
           ADDK    .S1     320,A3            ; |149| 
           STDW    .D1T1   A5:A4,*A3         ; |149| 
           ADD     .L2X    B4,A12,B4         ; |155| 
           MVK     .S1     340,A4            ; |155| 
           ADDK    .S2     320,B5            ; |150| 
           LDDW    .D2T2   *B5,B9:B8         ; |150| 
           ADD     .L2X    B31,A31,B5
           ADD     .L1     A15,A12,A30       ; |151| 
           ADD     .L2X    -4,A4,B30
           ADDK    .S1     7896,A30          ; |151| 
           STDW    .D2T2   B9:B8,*B5         ; |150| 
           LDW     .D2T2   *B4,B4            ; |155| 
           LDW     .D1T2   *A30,B29          ; |151| 
           MVK     .S2     372,B16           ; |155| 
           MVK     .S1     320,A3            ; |155| 
           NOP             1
           ADD     .L2     B30,B4,B6         ; |155| 

           ADD     .L2X    A4,B4,B7          ; |155| 
||         LDW     .D2T2   *B6,B6            ; |155| 

           LDW     .D2T2   *B7,B7            ; |155| 
           LDBU    .D2T2   *B29,B5           ; |151| 
           NOP             3

           CMPEQ   .L2     B7,B6,B2          ; |155| 
||         ADD     .S2     B16,B4,B6         ; |155| 

   [ B2]   LDW     .D2T2   *B6,B6            ; |155| 
   [!B2]   ZERO    .L2     B0
           CMPEQ   .L1X    B5,2,A0           ; |151| 
   [!A0]   CMPLTDP .S2     B11:B10,B9:B8,B5  ; |151| 
   [ A0]   ZERO    .L2     B5

   [ B2]   CMPEQ   .L2     B6,1,B0           ; |155| 
||         ADD     .S2X    A3,B4,B6          ; |155| 

   [ B0]   LDDW    .D2T2   *B6,B17:B16       ; |155| 
   [ B0]   MVKL    .S2     0x3e45798e,B7
   [ B0]   MVKH    .S2     0x3e45798e,B7
   [ B0]   MVKL    .S2     0xe2308c3a,B6
   [ B0]   MVKH    .S2     0xe2308c3a,B6
   [ B0]   CMPLTDP .S2     B17:B16,B7:B6,B1  ; |155| 
   [!B2]   MVK     .L2     0x1,B0
   [!B0]   ZERO    .L2     B1
   [!B2]   ZERO    .L2     B1

           MV      .L1X    B5,A0             ; |155| 
|| [ B1]   MVK     .S2     372,B5            ; |158| 

   [ B1]   ADD     .L2     B5,B4,B4          ; |158| 
|| [ B1]   MVK     .L1     2,A3              ; |158| 

   [ B1]   STW     .D2T1   A3,*B4            ; |158| 
|| [ A0]   MV      .L2     B8,B10            ; |153| 
|| [ A0]   MV      .S2     B9,B11            ; |153| 

;** --------------------------------------------------------------------------*
$C$L32:    
           LDBU    .D1T1   *+A15(2),A3       ; |134| 
           ADD     .L1     1,A11,A11         ; |134| 
;** --------------------------------------------------------------------------*
$C$L33:    
;**	-----------------------g17:
;** 134	-----------------------    if ( (*v$3).axis_number > (++i) ) goto g3;
           NOP             3
           CMPGT   .L1     A3,A11,A0         ; |134| 
   [ A0]   B       .S1     $C$L31            ; |134| 
   [ A0]   CALL    .S1     __c6xabi_llshl    ; |135| 
   [ A0]   MVK     .L1     0x1,A4            ; |135| 
   [ A0]   ZERO    .L1     A5                ; |135| 
   [ A0]   MV      .L2X    A11,B4            ; |135| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L31}        ; |134| 
;** --------------------------------------------------------------------------*
$C$L34:    
;**	-----------------------g18:
;** 163	-----------------------    *((double * const)data+1384) = speed;
;**  	-----------------------    return;
           MVK     .S1     1384,A3           ; |163| 
           ADD     .L1     A3,A13,A3         ; |163| 
           STDW    .D1T2   B11:B10,*A3       ; |163| 
           LDDW    .D2T1   *++SP,A11:A10     ; |164| 
           LDDW    .D2T1   *++SP,A13:A12     ; |164| 

           LDDW    .D2T1   *++SP,A15:A14     ; |164| 
||         MV      .L2     B13,B3            ; |164| 

           LDDW    .D2T2   *++SP,B11:B10     ; |164| 
||         RET     .S2     B3                ; |164| 

           LDW     .D2T2   *++SP(8),B13      ; |164| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |164| 
;; Inlined function references:
;; [  7] QuickMoveInterpolation::~QuickMoveInterpolation()
;; [ 18] QuickMoveInterpolation::ComputePosition(double, unsigned short, LineData *)
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_ZdlPv
	.global	_Znaj
	.global	_ZdaPv
	.global	_ZN16VelocityPlanning12PlanVelocityEP11DynamicInfo
	.global	_ZN22InterpolationAlgorithmD2Ev
	.global	_ZN22InterpolationAlgorithm4InitE16SpeedProfileType
	.global	_ZTI22InterpolationAlgorithm
	.global	_ZTVN10__cxxabiv120__si_class_type_infoE
	.global	__c6xabi_llshl
;*****************************************************************************
;* SECTION GROUPS                                                            *
;*****************************************************************************
	.group    "_ZN22QuickMoveInterpolation15ValidateDynamicEv", 1
	.gmember  ".text:_ZN22QuickMoveInterpolation15ValidateDynamicEv"
	.endgroup
	.group    "_ZN22QuickMoveInterpolation21ComputeRemainDistanceEv", 1
	.gmember  ".text:_ZN22QuickMoveInterpolation21ComputeRemainDistanceEv"
	.endgroup
	.group    "_ZN22QuickMoveInterpolationD0Ev", 1
	.gmember  ".text:_ZN22QuickMoveInterpolationD0Ev"
	.endgroup
	.group    "_ZN22QuickMoveInterpolationD1Ev", 1
	.gmember  ".text:_ZN22QuickMoveInterpolationD1Ev"
	.endgroup
	.group    "_ZN22QuickMoveInterpolationD2Ev", 1
	.gmember  ".text:_ZN22QuickMoveInterpolationD2Ev"
	.endgroup
	.group    "_ZTI22QuickMoveInterpolation", 1
	.gmember  ".const:_ZTI22QuickMoveInterpolation"
	.endgroup
	.group    "_ZTS22QuickMoveInterpolation", 1
	.gmember  ".const:_ZTS22QuickMoveInterpolation"
	.endgroup
	.group    "_ZTV22QuickMoveInterpolation", 1
	.gmember  ".const:_ZTV22QuickMoveInterpolation"
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
