;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.3.4 *
;* Date/Time created: Sat Apr 22 16:21:57 2017                                *
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
	.symalias _ZN19CircleInterpolationD2Ev, _ZN19CircleInterpolationD1Ev
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
	.align	8
	.elfsym	PI,SYM_SIZE(8)
PI:
	.word	054442d18h,0400921fbh		; PI @ 0

	.sect	".rodata"
	.align	8
	.elfsym	TWO_PI,SYM_SIZE(8)
TWO_PI:
	.word	054442d18h,0401921fbh		; TWO_PI @ 0

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

	.global	_ZTV19CircleInterpolation
	.sect	".const:_ZTV19CircleInterpolation"
	.align	8
	.elfsym	_ZTV19CircleInterpolation,SYM_SIZE(56)
_ZTV19CircleInterpolation:
	.field	0,32			; _ZTV19CircleInterpolation[0] @ 0
	.field	_ZTI19CircleInterpolation,32		; _ZTV19CircleInterpolation[1] @ 32
	.field	_ZN19CircleInterpolationD1Ev,32		; _ZTV19CircleInterpolation[2] @ 64
	.field	_ZN19CircleInterpolationD0Ev,32		; _ZTV19CircleInterpolation[3] @ 96
	.field	_ZN19CircleInterpolation4InitE16SpeedProfileType,32		; _ZTV19CircleInterpolation[4] @ 128
	.field	_ZN22InterpolationAlgorithm15GetCurrentSpeedEv,32		; _ZTV19CircleInterpolation[5] @ 160
	.field	_ZN22InterpolationAlgorithm23IsInterpolationFinishedEv,32		; _ZTV19CircleInterpolation[6] @ 192
	.field	_ZN19CircleInterpolation15ComputeGeometryEv,32		; _ZTV19CircleInterpolation[7] @ 224
	.field	_ZN22InterpolationAlgorithm13HasReachedEndEv,32		; _ZTV19CircleInterpolation[8] @ 256
	.field	_ZN22InterpolationAlgorithm12PlanVelocityEddb,32		; _ZTV19CircleInterpolation[9] @ 288
	.field	_ZN22InterpolationAlgorithm11InterpolateEP8LineData,32		; _ZTV19CircleInterpolation[10] @ 320
	.field	_ZN19CircleInterpolation15ValidateDynamicEv,32		; _ZTV19CircleInterpolation[11] @ 352
	.field	_ZN19CircleInterpolation15ComputePositionEdP8LineData,32		; _ZTV19CircleInterpolation[12] @ 384
	.field	_ZN19CircleInterpolation21ComputeRemainDistanceEv,32		; _ZTV19CircleInterpolation[13] @ 416

	.global	_ZTI19CircleInterpolation
	.sect	".const:_ZTI19CircleInterpolation"
	.align	4
	.elfsym	_ZTI19CircleInterpolation,SYM_SIZE(12)
_ZTI19CircleInterpolation:
	.field	_ZTVN10__cxxabiv120__si_class_type_infoE+8,32		; _ZTI19CircleInterpolation.base.base.__vptr @ 0
	.field	_ZTS19CircleInterpolation,32		; _ZTI19CircleInterpolation.base.base.__name @ 32
	.field	_ZTI22InterpolationAlgorithm,32		; _ZTI19CircleInterpolation.base_type @ 64

	.global	_ZTS19CircleInterpolation
	.sect	".const:_ZTS19CircleInterpolation"
	.align	8
	.elfsym	_ZTS19CircleInterpolation,SYM_SIZE(22)
_ZTS19CircleInterpolation:
	.field	49,8			; _ZTS19CircleInterpolation[0] @ 0
	.field	57,8			; _ZTS19CircleInterpolation[1] @ 8
	.field	67,8			; _ZTS19CircleInterpolation[2] @ 16
	.field	105,8			; _ZTS19CircleInterpolation[3] @ 24
	.field	114,8			; _ZTS19CircleInterpolation[4] @ 32
	.field	99,8			; _ZTS19CircleInterpolation[5] @ 40
	.field	108,8			; _ZTS19CircleInterpolation[6] @ 48
	.field	101,8			; _ZTS19CircleInterpolation[7] @ 56
	.field	73,8			; _ZTS19CircleInterpolation[8] @ 64
	.field	110,8			; _ZTS19CircleInterpolation[9] @ 72
	.field	116,8			; _ZTS19CircleInterpolation[10] @ 80
	.field	101,8			; _ZTS19CircleInterpolation[11] @ 88
	.field	114,8			; _ZTS19CircleInterpolation[12] @ 96
	.field	112,8			; _ZTS19CircleInterpolation[13] @ 104
	.field	111,8			; _ZTS19CircleInterpolation[14] @ 112
	.field	108,8			; _ZTS19CircleInterpolation[15] @ 120
	.field	97,8			; _ZTS19CircleInterpolation[16] @ 128
	.field	116,8			; _ZTS19CircleInterpolation[17] @ 136
	.field	105,8			; _ZTS19CircleInterpolation[18] @ 144
	.field	111,8			; _ZTS19CircleInterpolation[19] @ 152
	.field	110,8			; _ZTS19CircleInterpolation[20] @ 160
	.field	0,8			; _ZTS19CircleInterpolation[21] @ 168

;	/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/opt6x --call_assumptions=0 --gen_opt_info=2 /tmp/05653ML7fnq /tmp/05653ETHfRW --opt_info_filename=src/interpolation/circle_interpolation.nfo 
	.sect	".text"
	.clink
	.global	_ZNK19CircleInterpolation21ComputeRotaryPositionEdPd

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::ComputeRotaryPosition(double, double *) const*
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
;*   Local Frame Size  : 0 Args + 8 Auto + 56 Save = 64 byte                  *
;******************************************************************************
_ZNK19CircleInterpolation21ComputeRotaryPositionEdPd:
;** --------------------------------------------------------------------------*
;** 268	-----------------------    sin_theta = sin(theta);
;** 269	-----------------------    cos_theta = cos(theta);
;** 271	-----------------------    one_minus_cos_theta = 1.0-cos_theta;
;** 273	-----------------------    switch ( (*this).m_surface_flag ) {case 0: goto g2;, case 1: goto g3;, case 2: goto g4;, DEFAULT goto g5};
           STW     .D2T1   A11,*SP--(8)      ; |267| 
           STW     .D2T1   A10,*SP--(8)      ; |267| 
           STDW    .D2T2   B13:B12,*SP--     ; |267| 

           STDW    .D2T2   B11:B10,*SP--     ; |267| 
||         MV      .L1X    B5,A5             ; |267| 

           STDW    .D2T1   A15:A14,*SP--     ; |267| 
||         MV      .L1     A4,A14            ; |267| 
||         MV      .S1X    B4,A4             ; |267| 

           STDW    .D2T1   A13:A12,*SP--     ; |267| 
||         MV      .L1X    B4,A13            ; |267| 

           STW     .D2T2   B3,*SP--(16)      ; |267| 
||         CALLP   .S2     sin,B3
||         MV      .L1X    B5,A12            ; |267| 
||         MV      .S1     A6,A15            ; |267| 

$C$RL0:    ; CALL OCCURS {sin} {0}           ; |268| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A10            ; |268| 

           CALLP   .S2     cos,B3
||         MV      .L1     A5,A11            ; |268| 
||         MV      .S1     A12,A5            ; |269| 
||         MV      .D1     A13,A4            ; |269| 

$C$RL1:    ; CALL OCCURS {cos} {0}           ; |269| 
;** --------------------------------------------------------------------------*

           MVK     .S1     196,A3            ; |273| 
||         ZERO    .L2     B5
||         MV      .L1     A5,A13            ; |269| 
||         MV      .D1     A4,A12            ; |269| 
||         ZERO    .D2     B4                ; |271| 
||         MVK     .S2     128,B17           ; |281| 

           MV      .L2     B17,B6            ; |281| 
||         LDBU    .D1T1   *+A3[A14],A0      ; |273| 

           MVK     .S1     3016,A6           ; |276| 
           SET     .S2     B5,0x14,0x1d,B5
           SUBDP   .L2X    B5:B4,A13:A12,B11:B10 ; |271| 
           MVK     .S2     3024,B18          ; |281| 

           CMPEQ   .L1     A0,1,A1           ; |273| 
||         MV      .S1     A0,A2             ; guard predicate rewrite
|| [ A0]   MV      .D1X    B17,A4
|| [!A0]   B       .S2     $C$L1             ; |273| 
|| [ A0]   MV      .L2X    A6,B5

   [!A2]   ZERO    .S1     A1                ; |307| nullify predicate
|| [ A2]   MVK     .S2     3032,B8           ; |307| 
|| [ A0]   MV      .D1X    B17,A8
|| [ A0]   CMPEQ   .L1     A0,2,A0           ; |273| 

   [ A1]   BNOP    .S1     $C$L2,3           ; |273| 
           ; BRANCHCC OCCURS {$C$L1}         ; |273| 
;** --------------------------------------------------------------------------*

   [ A1]   ZERO    .L1     A0                ; nullify predicate
|| [!A1]   MV      .L2     B18,B5
|| [ A1]   LDW     .D1T2   *+A14(4),B4       ; |302| 

   [ A0]   B       .S1     $C$L3             ; |273| 
           ; BRANCHCC OCCURS {$C$L2}         ; |273| 
;** --------------------------------------------------------------------------*

   [!A0]   BNOP    .S1     $C$L4,4           ; |273| 
|| [ A0]   LDW     .D1T2   *+A14(4),B4       ; |289| 

           ; BRANCHCC OCCURS {$C$L3}         ; |273| 
;** --------------------------------------------------------------------------*

           CALL    .S1     pow               ; |314| 
||         ZERO    .L2     B5

           ; BRANCH OCCURS {$C$L4}           ; |273| 
;** --------------------------------------------------------------------------*
$C$L1:    
;**	-----------------------g2:
;** 276	-----------------------    C$43 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 276	-----------------------    C$45 = (*C$43).end_data+3016;
;** 276	-----------------------    C$44 = *((const double * const)this+80);
;** 276	-----------------------    *end_point = *(double *)C$43*cos_theta-*((double *)C$43+8)*C$44*sin_theta+C$45[1]*C$44*sin_theta+*C$45*one_minus_cos_theta;
;** 281	-----------------------    C$40 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 281	-----------------------    C$42 = (*C$40).end_data+3024;
;** 281	-----------------------    C$41 = *((const double * const)this+80);
;** 281	-----------------------    end_point[1] = *(double *)C$40*C$41*sin_theta+*((double *)C$40+8)*cos_theta-C$42[-1]*C$41*sin_theta+*C$42*one_minus_cos_theta;
;** 345	-----------------------    return 0;
           LDW     .D1T2   *+A14(4),B8       ; |276| 
           LDDW    .D1T1   *+A14(80),A5:A4   ; |276| 
           NOP             3
           LDDW    .D2T2   *+B8(8),B5:B4     ; |276| 
           LDW     .D2T2   *+B8[B6],B6       ; |276| 
           LDDW    .D2T2   *B8,B9:B8         ; |276| 
           NOP             2
           MPYDP   .M2X    A5:A4,B5:B4,B5:B4 ; |276| 
           NOP             3
           ADD     .L2X    A6,B6,B16         ; |276| 
           LDDW    .D2T2   *+B16(8),B7:B6    ; |276| 
           NOP             4
           MPYDP   .M2X    A5:A4,B7:B6,B7:B6 ; |276| 
           MPYDP   .M1X    A13:A12,B9:B8,A5:A4 ; |276| 
           NOP             2
           MPYDP   .M2X    A11:A10,B5:B4,B5:B4 ; |276| 
           NOP             5
           MPYDP   .M2X    A11:A10,B7:B6,B7:B6 ; |276| 
           NOP             3

           LDDW    .D2T1   *B16,A5:A4        ; |276| 
||         SUBDP   .L2X    A5:A4,B5:B4,B5:B4 ; |276| 

           NOP             4
           MPYDP   .M1X    B11:B10,A5:A4,A5:A4 ; |276| 
           NOP             1
           ADDDP   .L2     B7:B6,B5:B4,B5:B4 ; |276| 
           NOP             7
           ADDDP   .L1X    A5:A4,B5:B4,A5:A4 ; |276| 
           NOP             6
           STDW    .D1T1   A5:A4,*A15        ; |276| 
           LDW     .D1T1   *+A14(4),A3       ; |281| 
           LDDW    .D1T1   *+A14(80),A5:A4   ; |281| 
           NOP             3

           MV      .L2X    A3,B4             ; |281| Define a twin register
||         LDDW    .D1T1   *A3,A9:A8         ; |281| 

           LDW     .D2T1   *+B4[B17],A6      ; |281| 
           LDDW    .D1T2   *+A3(8),B5:B4     ; |281| 
           NOP             2
           MPYDP   .M1     A5:A4,A9:A8,A17:A16 ; |281| 
           ADD     .L1X    B18,A6,A6         ; |281| 
           LDDW    .D1T1   *-A6(8),A9:A8     ; |281| 
           MPYDP   .M2X    A13:A12,B5:B4,B5:B4 ; |281| 
           NOP             3
           MPYDP   .M1     A5:A4,A9:A8,A5:A4 ; |281| 
           NOP             3
           MPYDP   .M1     A11:A10,A17:A16,A9:A8 ; |281| 
           NOP             6
           MPYDP   .M1     A11:A10,A5:A4,A17:A16 ; |281| 
           LDDW    .D1T1   *A6,A5:A4         ; |281| 
           NOP             2
           ADDDP   .L2X    B5:B4,A9:A8,B5:B4 ; |281| 
           NOP             2
           MPYDP   .M2X    B11:B10,A5:A4,B7:B6 ; |281| 
           NOP             3
           SUBDP   .L2X    B5:B4,A17:A16,B5:B4 ; |281| 
           ZERO    .L1     A4                ; |345| 
           NOP             5
           ADDDP   .L2     B7:B6,B5:B4,B5:B4 ; |281| 
           NOP             6
           STDW    .D1T2   B5:B4,*+A15(8)    ; |281| 
           LDW     .D2T2   *++SP(16),B3      ; |346| 
           LDDW    .D2T1   *++SP,A13:A12     ; |346| 
           LDDW    .D2T1   *++SP,A15:A14     ; |346| 
           LDDW    .D2T2   *++SP,B11:B10     ; |346| 
           LDDW    .D2T2   *++SP,B13:B12     ; |346| 

           LDW     .D2T1   *++SP(8),A10      ; |346| 
||         RET     .S2     B3                ; |346| 

           LDW     .D2T1   *++SP(8),A11      ; |346| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |346| 
;** --------------------------------------------------------------------------*
$C$L2:    
;**	-----------------------g3:
;** 302	-----------------------    C$37 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 302	-----------------------    C$39 = (*C$37).end_data+3016;
;** 302	-----------------------    C$38 = *((const double * const)this+72);
;** 302	-----------------------    *end_point = *(double *)C$37*cos_theta+*((double *)C$37+16)*C$38*sin_theta-C$39[2]*C$38*sin_theta+*C$39*one_minus_cos_theta;
;** 307	-----------------------    C$34 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 307	-----------------------    C$36 = (*C$34).end_data+3032;
;** 307	-----------------------    C$35 = *((const double * const)this+72);
;** 307	-----------------------    end_point[2] = *((double *)C$34+16)*cos_theta-*(double *)C$34*C$35*sin_theta+C$36[-2]*C$35*sin_theta+*C$36*one_minus_cos_theta;
;** 345	-----------------------    return 0;
           NOP             3

           MV      .L1X    B4,A3             ; |302| Define a twin register
||         LDDW    .D2T2   *+B4(16),B7:B6    ; |302| 

           LDW     .D1T1   *+A3[A4],A3       ; |302| 
           LDDW    .D1T1   *+A14(72),A5:A4   ; |302| 
           NOP             3
           ADD     .L1X    B5,A3,A3          ; |302| 

           MPYDP   .M2X    A5:A4,B7:B6,B7:B6 ; |302| 
||         LDDW    .D1T1   *+A3(16),A7:A6    ; |302| 

           LDDW    .D2T2   *B4,B5:B4         ; |302| 
           NOP             3
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |302| 
           NOP             3
           MPYDP   .M1X    A13:A12,B5:B4,A7:A6 ; |302| 
           MPYDP   .M2X    A11:A10,B7:B6,B7:B6 ; |302| 
           LDDW    .D1T2   *A3,B5:B4         ; |302| 
           NOP             4
           MPYDP   .M1     A11:A10,A5:A4,A5:A4 ; |302| 
           MPYDP   .M2     B11:B10,B5:B4,B5:B4 ; |302| 
           NOP             2
           ADDDP   .L2X    B7:B6,A7:A6,B7:B6 ; |302| 
           NOP             6
           SUBDP   .L2X    B7:B6,A5:A4,B7:B6 ; |302| 
           NOP             6
           ADDDP   .L2     B5:B4,B7:B6,B5:B4 ; |302| 
           NOP             6
           STDW    .D1T2   B5:B4,*A15        ; |302| 
           LDW     .D1T1   *+A14(4),A3       ; |307| 
           LDDW    .D1T1   *+A14(72),A5:A4   ; |307| 
           NOP             3
           LDW     .D1T1   *+A3[A8],A6       ; |307| 
           LDDW    .D1T1   *A3,A9:A8         ; |307| 
           LDDW    .D1T2   *+A3(16),B5:B4    ; |307| 
           NOP             2
           ADD     .L1X    B8,A6,A6          ; |307| 
           MPYDP   .M1     A5:A4,A9:A8,A9:A8 ; |307| 
           LDDW    .D1T1   *-A6(16),A17:A16  ; |307| 
           MPYDP   .M2X    A13:A12,B5:B4,B5:B4 ; |307| 
           NOP             3
           MPYDP   .M1     A5:A4,A17:A16,A5:A4 ; |307| 
           NOP             3
           MPYDP   .M1     A11:A10,A9:A8,A9:A8 ; |307| 
           NOP             6
           MPYDP   .M1     A11:A10,A5:A4,A17:A16 ; |307| 
           LDDW    .D1T1   *A6,A5:A4         ; |307| 
           NOP             2
           SUBDP   .L2X    B5:B4,A9:A8,B5:B4 ; |307| 
           NOP             2
           MPYDP   .M2X    B11:B10,A5:A4,B7:B6 ; |307| 
           NOP             3
           ADDDP   .L2X    A17:A16,B5:B4,B5:B4 ; |307| 
           ZERO    .L1     A4                ; |345| 
           NOP             5
           ADDDP   .L2     B7:B6,B5:B4,B5:B4 ; |307| 
           NOP             6
           STDW    .D1T2   B5:B4,*+A15(16)   ; |307| 
           LDW     .D2T2   *++SP(16),B3      ; |346| 
           LDDW    .D2T1   *++SP,A13:A12     ; |346| 
           LDDW    .D2T1   *++SP,A15:A14     ; |346| 
           LDDW    .D2T2   *++SP,B11:B10     ; |346| 
           LDDW    .D2T2   *++SP,B13:B12     ; |346| 

           RET     .S2     B3                ; |346| 
||         LDW     .D2T1   *++SP(8),A10      ; |346| 

           LDW     .D2T1   *++SP(8),A11      ; |346| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |346| 
;** --------------------------------------------------------------------------*
$C$L3:    
;**	-----------------------g4:
;** 289	-----------------------    C$31 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 289	-----------------------    C$33 = (*C$31).end_data+3024;
;** 289	-----------------------    C$32 = *((const double * const)this+64);
;** 289	-----------------------    end_point[1] = *((double *)C$31+8)*cos_theta-*((double *)C$31+16)*C$32*sin_theta+C$33[1]*C$32*sin_theta+*C$33*one_minus_cos_theta;
;** 294	-----------------------    C$28 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 294	-----------------------    C$30 = (*C$28).end_data+3032;
;** 294	-----------------------    C$29 = *((const double * const)this+64);
;** 294	-----------------------    end_point[2] = *((double *)C$28+8)*C$29*sin_theta+*((double *)C$28+16)*cos_theta-C$30[-1]*C$29*sin_theta+*C$30*one_minus_cos_theta;
;** 345	-----------------------    return 0;

           MV      .L1X    B4,A3             ; |289| Define a twin register
||         LDDW    .D2T2   *+B4(16),B7:B6    ; |289| 

           LDW     .D1T1   *+A3[A4],A3       ; |289| 
           LDDW    .D1T1   *+A14(64),A5:A4   ; |289| 
           NOP             3
           ADD     .L1X    B5,A3,A3          ; |289| 

           MPYDP   .M2X    A5:A4,B7:B6,B7:B6 ; |289| 
||         LDDW    .D1T1   *+A3(8),A7:A6     ; |289| 

           LDDW    .D2T2   *+B4(8),B5:B4     ; |289| 
           NOP             3
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |289| 
           NOP             3
           MPYDP   .M1X    A13:A12,B5:B4,A7:A6 ; |289| 
           MPYDP   .M2X    A11:A10,B7:B6,B7:B6 ; |289| 
           LDDW    .D1T2   *A3,B5:B4         ; |289| 
           NOP             4
           MPYDP   .M1     A11:A10,A5:A4,A5:A4 ; |289| 
           MPYDP   .M2     B11:B10,B5:B4,B5:B4 ; |289| 
           NOP             2
           SUBDP   .L2X    A7:A6,B7:B6,B7:B6 ; |289| 
           NOP             6
           ADDDP   .L2X    A5:A4,B7:B6,B7:B6 ; |289| 
           NOP             6
           ADDDP   .L2     B5:B4,B7:B6,B5:B4 ; |289| 
           NOP             6
           STDW    .D1T2   B5:B4,*+A15(8)    ; |289| 
           LDW     .D1T1   *+A14(4),A3       ; |294| 
           LDDW    .D1T1   *+A14(64),A5:A4   ; |294| 
           NOP             3
           LDW     .D1T1   *+A3[A8],A6       ; |294| 
           LDDW    .D1T1   *+A3(8),A9:A8     ; |294| 
           LDDW    .D1T2   *+A3(16),B5:B4    ; |294| 
           NOP             2
           ADD     .L1X    B8,A6,A6          ; |294| 
           MPYDP   .M1     A5:A4,A9:A8,A17:A16 ; |294| 
           LDDW    .D1T1   *-A6(8),A9:A8     ; |294| 
           MPYDP   .M2X    A13:A12,B5:B4,B5:B4 ; |294| 
           NOP             3
           MPYDP   .M1     A5:A4,A9:A8,A5:A4 ; |294| 
           NOP             3
           MPYDP   .M1     A11:A10,A17:A16,A9:A8 ; |294| 
           NOP             6
           MPYDP   .M1     A11:A10,A5:A4,A17:A16 ; |294| 
           LDDW    .D1T1   *A6,A5:A4         ; |294| 
           NOP             2
           ADDDP   .L2X    B5:B4,A9:A8,B5:B4 ; |294| 
           NOP             2
           MPYDP   .M2X    B11:B10,A5:A4,B7:B6 ; |294| 
           NOP             3
           SUBDP   .L2X    B5:B4,A17:A16,B5:B4 ; |294| 
           ZERO    .L1     A4                ; |345| 
           NOP             5
           ADDDP   .L2     B7:B6,B5:B4,B5:B4 ; |294| 
           NOP             6
           STDW    .D1T2   B5:B4,*+A15(16)   ; |294| 
           LDW     .D2T2   *++SP(16),B3      ; |346| 
           LDDW    .D2T1   *++SP,A13:A12     ; |346| 
           LDDW    .D2T1   *++SP,A15:A14     ; |346| 
           LDDW    .D2T2   *++SP,B11:B10     ; |346| 
           LDDW    .D2T2   *++SP,B13:B12     ; |346| 

           LDW     .D2T1   *++SP(8),A10      ; |346| 
||         RET     .S2     B3                ; |346| 

           LDW     .D2T1   *++SP(8),A11      ; |346| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |346| 
;** --------------------------------------------------------------------------*
$C$L4:    
;**	-----------------------g5:
;** 314	-----------------------    normal_vector_pow_0 = pow(*((const double * const)this+64), 2.0);
;** 315	-----------------------    normal_vector_pow_1 = pow(*((const double * const)this+72), 2.0);
;** 316	-----------------------    normal_vector_pow_2 = pow(*((const double * const)this+80), 2.0);
;** 317	-----------------------    C$22 = *((const double * const)this+72);
;** 317	-----------------------    C$19 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 317	-----------------------    C$27 = (*C$19).end_data+3032;
;** 317	-----------------------    C$26 = *C$27;
;** 317	-----------------------    C$23 = *((const double * const)this+80);
;** 317	-----------------------    C$25 = C$27[-1];
;** 317	-----------------------    C$24 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3024;
;** 317	-----------------------    C$21 = *((const double * const)this+64);
;** 317	-----------------------    C$20 = normal_vector_pow_1+normal_vector_pow_2;
;** 317	-----------------------    *end_point = *(double *)C$19*(normal_vector_pow_0+C$20*cos_theta)+*((double *)C$19+8)*(C$21*C$22*one_minus_cos_theta-C$23*sin_theta)+*((double *)C$19+16)*(C$21*C$23*one_minus_cos_theta+C$22*sin_theta)+(C$24[-1]*C$20-(C$25*C$22+C$26*C$23)*C$21)*one_minus_cos_theta+(C$25*C$23-C$26*C$22)*sin_theta;
;** 326	-----------------------    C$13 = *((const double * const)this+80);
;** 326	-----------------------    C$10 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 326	-----------------------    C$18 = (*C$10).end_data+3016;
;** 326	-----------------------    C$16 = *C$18;
;** 326	-----------------------    C$11 = *((const double * const)this+64);
;** 326	-----------------------    C$17 = C$18[2];
;** 326	-----------------------    C$15 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3032;
;** 326	-----------------------    C$12 = *((const double * const)this+72);
;** 326	-----------------------    C$14 = normal_vector_pow_0+normal_vector_pow_2;
;** 326	-----------------------    end_point[1] = *(double *)C$10*(C$11*C$12*one_minus_cos_theta+C$13*sin_theta)+*((double *)C$10+8)*(normal_vector_pow_1+C$14*cos_theta)+*((double *)C$10+16)*(C$12*C$13*one_minus_cos_theta-C$11*sin_theta)+(C$15[-1]*C$14-(C$16*C$11+C$17*C$13)*C$12)*one_minus_cos_theta+(C$17*C$11-C$16*C$13)*sin_theta;
;** 333	-----------------------    C$2 = *((const double * const)this+64);
;** 333	-----------------------    C$1 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 333	-----------------------    C$9 = (*C$1).end_data+3024;
;** 333	-----------------------    C$8 = *C$9;
;** 333	-----------------------    C$4 = *((const double * const)this+72);
;** 333	-----------------------    C$7 = C$9[-1];
;** 333	-----------------------    C$6 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3016;
;** 333	-----------------------    C$3 = *((const double * const)this+80);
;** 333	-----------------------    C$5 = normal_vector_pow_0+normal_vector_pow_1;
;** 333	-----------------------    end_point[2] = *(double *)C$1*(C$2*C$3*one_minus_cos_theta-C$4*sin_theta)+*((double *)C$1+8)*(C$4*C$3*one_minus_cos_theta+C$2*sin_theta)+*((double *)C$1+16)*(normal_vector_pow_2+C$5*cos_theta)+(C$6[2]*C$5-(C$7*C$2+C$8*C$4)*C$3)*one_minus_cos_theta+(C$7*C$4-C$8*C$2)*sin_theta;
;** 345	-----------------------    return 0;
           LDDW    .D1T1   *+A14(64),A5:A4   ; |314| 
           SET     .S2     B5,0x1e,0x1e,B5
           ADDKPC  .S2     $C$RL2,B3,2       ; |314| 
$C$RL2:    ; CALL OCCURS {pow} {0}           ; |314| 
;** --------------------------------------------------------------------------*

           STW     .D2T1   A4,*+SP(4)        ; |314| 
||         ZERO    .L2     B5

           STW     .D2T1   A5,*+SP(8)        ; |314| 
||         SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         LDDW    .D1T1   *+A14(72),A5:A4   ; |315| 
||         ZERO    .L2     B4                ; |315| 

$C$RL3:    ; CALL OCCURS {pow} {0}           ; |315| 
           ZERO    .L2     B5

           MV      .L2X    A4,B12            ; |315| 
||         SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         MV      .L2X    A5,B13            ; |315| 
||         LDDW    .D1T1   *+A14(80),A5:A4   ; |316| 
||         ZERO    .D2     B4                ; |316| 

$C$RL4:    ; CALL OCCURS {pow} {0}           ; |316| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A14(64),A19:A18 ; |317| 
           LDDW    .D1T1   *+A14(80),A9:A8   ; |317| 
           ADDDP   .L1X    A5:A4,B13:B12,A21:A20 ; |317| 
           LDDW    .D1T1   *+A14(72),A17:A16 ; |317| 
           LDW     .D1T2   *+A14(4),B18      ; |317| 
           MVK     .S2     128,B4            ; |317| 
           MPYDP   .M1     A9:A8,A19:A18,A7:A6 ; |317| 
           MVK     .S2     3032,B5           ; |317| 
           LDW     .D1T2   *+A14(4),B9       ; |317| 
           LDW     .D2T2   *+B18[B4],B4      ; |317| 
           MPYDP   .M1     A13:A12,A21:A20,A31:A30 ; |317| 
           MVK     .S2     128,B8            ; |317| 
           LDDW    .D2T2   *B18,B17:B16      ; |317| 
           LDW     .D2T2   *+B9[B8],B8       ; |317| 
           MPYDP   .M1     A17:A16,A19:A18,A23:A22 ; |317| 
           ADD     .L2     B5,B4,B4          ; |317| 
           LDDW    .D2T2   *-B4(8),B7:B6     ; |317| 
           LDDW    .D2T2   *B4,B5:B4         ; |317| 
           MPYDP   .M1     A11:A10,A9:A8,A1:A0 ; |317| 
           MVK     .S2     3024,B9           ; |317| 
           ADD     .L2     B9,B8,B8          ; |317| 
           LDDW    .D2T2   *-B8(8),B9:B8     ; |317| 
           MPYDP   .M1X    B11:B10,A7:A6,A25:A24 ; |317| 
           LDW     .D2T1   *+SP(4),A6        ; |317| 
           LDW     .D2T1   *+SP(8),A7        ; |317| 
           MVK     .S2     128,B23           ; |326| 
           MPYDP   .M1X    A17:A16,B7:B6,A3:A2 ; |317| 
           MPYDP   .M2X    A9:A8,B7:B6,B7:B6 ; |317| 
           NOP             2
           MPYDP   .M1X    A9:A8,B5:B4,A29:A28 ; |317| 
           ADDDP   .L1     A31:A30,A7:A6,A7:A6 ; |317| 
           MPYDP   .M2X    A17:A16,B5:B4,B5:B4 ; |317| 
           NOP             1
           MPYDP   .M1X    B11:B10,A23:A22,A23:A22 ; |317| 
           NOP             3
           MPYDP   .M1     A11:A10,A17:A16,A27:A26 ; |317| 
           NOP             3
           MPYDP   .M1X    A21:A20,B9:B8,A21:A20 ; |317| 
           ADDDP   .L1     A29:A28,A3:A2,A29:A28 ; |317| 
           SUBDP   .S1     A23:A22,A1:A0,A23:A22 ; |317| 
           LDDW    .D2T2   *+B18(8),B9:B8    ; |317| 
           MPYDP   .M1X    A7:A6,B17:B16,A7:A6 ; |317| 
           SUBDP   .L2     B7:B6,B5:B4,B5:B4 ; |317| 
           ADDDP   .L1     A27:A26,A25:A24,A17:A16 ; |317| 
           MVK     .S2     3016,B7           ; |326| 
           MPYDP   .M1     A19:A18,A29:A28,A19:A18 ; |317| 
           NOP             3
           MPYDP   .M1X    A23:A22,B9:B8,A23:A22 ; |317| 
           LDDW    .D2T2   *+B18(16),B9:B8   ; |317| 
           MPYDP   .M2X    A11:A10,B5:B4,B5:B4 ; |317| 
           NOP             4

           SUBDP   .L1     A21:A20,A19:A18,A9:A8 ; |317| 
||         MPYDP   .M1X    A17:A16,B9:B8,A17:A16 ; |317| 

           NOP             2
           ADDDP   .L1     A23:A22,A7:A6,A7:A6 ; |317| 
           MVK     .S1     128,A22           ; |333| 
           NOP             2
           MPYDP   .M1X    B11:B10,A9:A8,A9:A8 ; |317| 
           NOP             2
           ADDDP   .L1     A17:A16,A7:A6,A7:A6 ; |317| 
           NOP             6
           ADDDP   .L1     A9:A8,A7:A6,A7:A6 ; |317| 
           NOP             6
           ADDDP   .L1X    B5:B4,A7:A6,A7:A6 ; |317| 
           MVK     .S2     128,B4            ; |326| 
           NOP             5
           STDW    .D1T1   A7:A6,*A15        ; |317| 
           LDW     .D1T2   *+A14(4),B0       ; |326| 
           LDDW    .D1T2   *+A14(64),B9:B8   ; |326| 
           LDDW    .D1T1   *+A14(72),A9:A8   ; |326| 
           LDW     .D2T1   *+SP(4),A6        ; |326| 
           LDW     .D2T1   *+SP(8),A7        ; |326| 
           LDW     .D2T2   *+B0[B4],B6       ; |326| 
           LDDW    .D1T2   *+A14(80),B5:B4   ; |326| 
           MPYDP   .M2X    A9:A8,B9:B8,B19:B18 ; |326| 
           LDW     .D1T2   *+A14(4),B22      ; |326| 
           ADDDP   .L1     A5:A4,A7:A6,A7:A6 ; |326| 
           ADD     .L2     B7,B6,B16         ; |326| 
           MPYDP   .M2X    A11:A10,B5:B4,B25:B24 ; |326| 
           LDDW    .D2T2   *+B16(16),B7:B6   ; |326| 
           LDDW    .D2T2   *B16,B17:B16      ; |326| 
           LDW     .D2T2   *+B22[B23],B26    ; |326| 
           MPYDP   .M2X    B5:B4,A9:A8,B21:B20 ; |326| 
           MPYDP   .M1     A13:A12,A7:A6,A17:A16 ; |326| 
           NOP             2
           MPYDP   .M2     B5:B4,B7:B6,B31:B30 ; |326| 
           MPYDP   .M1X    A11:A10,B9:B8,A19:A18 ; |326| 
           NOP             2
           MPYDP   .M2     B9:B8,B17:B16,B29:B28 ; |326| 
           NOP             3
           MPYDP   .M2     B11:B10,B19:B18,B23:B22 ; |326| 
           ADDDP   .L1X    A17:A16,B13:B12,A17:A16 ; |326| 
           NOP             1
           MVK     .S2     3032,B18          ; |326| 
           ADD     .L2     B18,B26,B26       ; |326| 

           MPYDP   .M2     B11:B10,B21:B20,B27:B26 ; |326| 
||         LDDW    .D2T2   *-B26(8),B21:B20  ; |326| 

           ADDDP   .L2     B31:B30,B29:B28,B29:B28 ; |326| 
           LDDW    .D2T2   *+B0(8),B19:B18   ; |326| 
           NOP             1
           MPYDP   .M2     B9:B8,B7:B6,B7:B6 ; |326| 

           ADDDP   .L2     B25:B24,B23:B22,B21:B20 ; |326| 
||         MPYDP   .M1X    A7:A6,B21:B20,A7:A6 ; |326| 

           LDDW    .D2T2   *B0,B23:B22       ; |326| 
           NOP             1
           MPYDP   .M2X    A17:A16,B19:B18,B19:B18 ; |326| 
           MPYDP   .M1X    A9:A8,B29:B28,A9:A8 ; |326| 
           NOP             2
           MPYDP   .M2     B21:B20,B23:B22,B9:B8 ; |326| 
           SUBDP   .L2X    B27:B26,A19:A18,B21:B20 ; |326| 
           LDDW    .D2T2   *+B0(16),B23:B22  ; |326| 
           NOP             1
           MPYDP   .M2     B5:B4,B17:B16,B5:B4 ; |326| 
           NOP             2
           SUBDP   .L1     A7:A6,A9:A8,A7:A6 ; |326| 
           MPYDP   .M2     B21:B20,B23:B22,B17:B16 ; |326| 
           NOP             2
           ADDDP   .L2     B19:B18,B9:B8,B9:B8 ; |326| 
           NOP             3

           MPYDP   .M2X    B11:B10,A7:A6,B19:B18 ; |326| 
||         SUBDP   .L2     B7:B6,B5:B4,B5:B4 ; |326| 

           NOP             2
           ADDDP   .L2     B17:B16,B9:B8,B7:B6 ; |326| 
           MVK     .S2     128,B17           ; |333| 
           NOP             2
           MPYDP   .M2X    A11:A10,B5:B4,B9:B8 ; |326| 
           NOP             2
           ADDDP   .L2     B19:B18,B7:B6,B5:B4 ; |326| 
           NOP             6
           ADDDP   .L2     B9:B8,B5:B4,B5:B4 ; |326| 
           NOP             6
           STDW    .D1T2   B5:B4,*+A15(8)    ; |326| 
           LDDW    .D1T1   *+A14(72),A7:A6   ; |333| 
           LDDW    .D1T1   *+A14(80),A17:A16 ; |333| 
           LDW     .D1T1   *+A14(4),A3       ; |333| 
           LDDW    .D1T1   *+A14(64),A9:A8   ; |333| 
           MVK     .S2     3024,B4           ; |333| 
           LDW     .D2T2   *+SP(8),B5        ; |333| 
           MPYDP   .M1     A17:A16,A7:A6,A21:A20 ; |333| 
           LDW     .D1T1   *+A3[A22],A24     ; |333| 
           LDW     .D1T2   *+A14(4),B16      ; |333| 
           NOP             1
           MPYDP   .M1     A17:A16,A9:A8,A19:A18 ; |333| 
           NOP             3
           MPYDP   .M1     A11:A10,A9:A8,A23:A22 ; |333| 
           ADD     .L2X    B4,A24,B4         ; |333| 
           LDDW    .D2T2   *B4,B7:B6         ; |333| 
           LDDW    .D2T2   *-B4(8),B9:B8     ; |333| 

           LDW     .D2T2   *+SP(4),B4        ; |333| 
||         MPYDP   .M1X    B11:B10,A21:A20,A21:A20 ; |333| 

           LDW     .D2T2   *+B16[B17],B20    ; |333| 
           NOP             2
           MPYDP   .M1X    A7:A6,B7:B6,A25:A24 ; |333| 
           ADDDP   .L2     B13:B12,B5:B4,B5:B4 ; |333| 
           MPYDP   .M2X    A9:A8,B9:B8,B19:B18 ; |333| 
           NOP             1
           MPYDP   .M1X    B11:B10,A19:A18,A29:A28 ; |333| 
           NOP             3

           MPYDP   .M2X    A13:A12,B5:B4,B17:B16 ; |333| 
||         MPYDP   .M1     A11:A10,A7:A6,A27:A26 ; |333| 

           MVK     .S1     3016,A18          ; |333| 
           ADD     .L1X    A18,B20,A18       ; |333| 
           LDDW    .D1T1   *+A18(16),A19:A18 ; |333| 
           ADDDP   .L2X    A25:A24,B19:B18,B19:B18 ; |333| 
           ADDDP   .L1     A23:A22,A21:A20,A21:A20 ; |333| 
           LDDW    .D1T1   *+A3(8),A23:A22   ; |333| 
           LDDW    .D1T1   *A3,A25:A24       ; |333| 
           MPYDP   .M1X    B5:B4,A19:A18,A19:A18 ; |333| 
           NOP             1

           SUBDP   .L1     A29:A28,A27:A26,A5:A4 ; |333| 
||         ADDDP   .L2X    B17:B16,A5:A4,B5:B4 ; |333| 

           LDDW    .D1T1   *+A3(16),A27:A26  ; |333| 
           MPYDP   .M2X    A17:A16,B19:B18,B17:B16 ; |333| 
           MPYDP   .M1     A21:A20,A23:A22,A17:A16 ; |333| 
           NOP             3

           MPYDP   .M2X    A9:A8,B7:B6,B21:B20 ; |333| 
||         MPYDP   .M1     A5:A4,A25:A24,A5:A4 ; |333| 

           NOP             3
           MPYDP   .M2X    B5:B4,A27:A26,B19:B18 ; |333| 
           MPYDP   .M1X    A7:A6,B9:B8,A7:A6 ; |333| 
           NOP             2
           SUBDP   .L2X    A19:A18,B17:B16,B5:B4 ; |333| 
           NOP             1
           ADDDP   .L1     A17:A16,A5:A4,A5:A4 ; |333| 
           NOP             4
           MPYDP   .M2     B11:B10,B5:B4,B7:B6 ; |333| 
           SUBDP   .L1X    A7:A6,B21:B20,A7:A6 ; |333| 
           NOP             1
           ADDDP   .L2X    B19:B18,A5:A4,B5:B4 ; |333| 
           NOP             4
           MPYDP   .M1     A11:A10,A7:A6,A5:A4 ; |333| 
           NOP             1
           ADDDP   .L2     B7:B6,B5:B4,B5:B4 ; |333| 
           NOP             7
           ADDDP   .L1X    A5:A4,B5:B4,A5:A4 ; |333| 
           NOP             6
           STDW    .D1T1   A5:A4,*+A15(16)   ; |333| 
           LDW     .D2T2   *++SP(16),B3      ; |346| 
           LDDW    .D2T1   *++SP,A13:A12     ; |346| 
           LDDW    .D2T1   *++SP,A15:A14     ; |346| 
           LDDW    .D2T2   *++SP,B11:B10     ; |346| 
           LDDW    .D2T2   *++SP,B13:B12     ; |346| 

           LDW     .D2T1   *++SP(8),A10      ; |346| 
||         RET     .S2     B3                ; |346| 

           LDW     .D2T1   *++SP(8),A11      ; |346| 
           ZERO    .L1     A4                ; |345| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |346| 
	.sect	".text"
	.clink
	.global	_ZNK19CircleInterpolation18ComputeArcPositionEdPd

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::ComputeArcPosition(double, double *) const*
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,  *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,DP,SP,A16,A17,A18,A19,   *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************
_ZNK19CircleInterpolation18ComputeArcPositionEdPd:
;** --------------------------------------------------------------------------*
;** 227	-----------------------    CircleInterpolation::ComputeRotaryPosition(this, theta, end_position);
;** 229	-----------------------    U$8 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3016;
;** 229	-----------------------    current_radius_rate = (*this).m_current_radius/*((double (*)[12])U$8+48);
;** 231	-----------------------    switch ( (*this).m_surface_flag ) {case 0: goto g2;, case 1: goto g3;, case 2: goto g4;, DEFAULT goto g5};
           STW     .D2T1   A11,*SP--(8)      ; |225| 
           STDW    .D2T1   A13:A12,*SP--     ; |225| 

           MV      .L1X    B3,A13            ; |225| 
||         CALLP   .S2     _ZNK19CircleInterpolation21ComputeRotaryPositionEdPd,B3
||         STW     .D2T1   A10,*SP--(8)      ; |225| 
||         MV      .S1     A4,A10            ; |225| 
||         MV      .D1     A6,A11            ; |225| 

$C$RL5:    ; CALL OCCURS {_ZNK19CircleInterpolation21ComputeRotaryPositionEdPd} {0}  ; |227| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(4),A3       ; |229| 
           LDDW    .D1T1   *+A10(112),A5:A4  ; |229| 
           NOP             3
           ADDK    .S1     512,A3            ; |229| 
           LDW     .D1T1   *A3,A6            ; |229| 
           MVK     .S1     3016,A3           ; |229| 
           NOP             3
           ADD     .L1     A3,A6,A12         ; |229| 
           LDDW    .D1T1   *+A12(48),A7:A6   ; |229| 
           NOP             4
           MV      .L2X    A6,B4             ; |229| 

           MV      .L2X    A7,B5             ; |229| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL6:    ; CALL OCCURS {__c6xabi_divd} {0}  ; |229| 
;** --------------------------------------------------------------------------*
           MVK     .S1     196,A3            ; |231| 
           LDBU    .D1T1   *+A10[A3],A0      ; |231| 
           NOP             4

   [!A0]   B       .S1     $C$L5             ; |231| 
||         MV      .D1     A0,A2             ; guard predicate rewrite
||         CMPEQ   .L1     A0,1,A1           ; |231| 
||         ZERO    .L2     B7

   [!A2]   ZERO    .L1     A1                ; |247| nullify predicate
||         SET     .S2     B7,0x14,0x1d,B7
||         ZERO    .L2     B6                ; |233| 

   [ A1]   B       .S1     $C$L6             ; |231| 

   [ A2]   SUBDP   .L1X    B7:B6,A5:A4,A7:A6 ; |247| 
||         SUBDP   .S2X    B7:B6,A5:A4,B5:B4 ; |233| 

           NOP             1

   [ A0]   CMPEQ   .L1     A0,2,A0           ; |231| 
||         ZERO    .S1     A18               ; |233| 

           ; BRANCHCC OCCURS {$C$L5}         ; |231| 
;** --------------------------------------------------------------------------*

   [!A1]   SUBDP   .S1X    B7:B6,A5:A4,A7:A6 ; |240| 
|| [ A1]   LDDW    .D1T2   *A11,B5:B4        ; |247| 
|| [ A1]   ZERO    .L1     A0                ; |240| nullify predicate

   [ A0]   B       .S2     $C$L7             ; |231| 
|| [ A1]   LDDW    .D1T1   *A12,A9:A8        ; |247| 

           ; BRANCHCC OCCURS {$C$L6}         ; |231| 
;** --------------------------------------------------------------------------*

   [!A0]   B       .S1     $C$L8             ; |231| 
|| [ A0]   LDDW    .D1T2   *+A11(8),B5:B4    ; |240| 

   [ A0]   LDDW    .D1T1   *+A12(8),A9:A8    ; |240| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L7}         ; |231| 
;** --------------------------------------------------------------------------*

           SUBDP   .L1X    B7:B6,A5:A4,A17:A16 ; |255| 
||         LDDW    .D1T2   *A11,B5:B4        ; |255| 
||         MV      .L2X    A13,B3            ; |265| 

           ; BRANCH OCCURS {$C$L8}           ; |231| 
;** --------------------------------------------------------------------------*
$C$L5:    
;**	-----------------------g2:
;** 233	-----------------------    C$4 = 1.0-current_radius_rate;
;** 233	-----------------------    *end_position = *end_position*current_radius_rate+*(double *)U$8*C$4;
;** 235	-----------------------    end_position[1] = end_position[1]*current_radius_rate+*((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3024)*C$4;
;** 264	-----------------------    return 0;
           LDDW    .D1T2   *A11,B7:B6        ; |233| 
           LDDW    .D1T1   *A12,A7:A6        ; |233| 
           MV      .L2X    A13,B3            ; |265| 
           NOP             2
           MPYDP   .M2X    A5:A4,B7:B6,B7:B6 ; |233| 
           MPYDP   .M1X    B5:B4,A7:A6,A7:A6 ; |233| 
           NOP             9
           ADDDP   .L1X    A7:A6,B7:B6,A7:A6 ; |233| 
           NOP             6
           STDW    .D1T1   A7:A6,*A11        ; |233| 
           LDW     .D1T1   *+A10(4),A3       ; |235| 
           LDDW    .D1T1   *+A11(8),A7:A6    ; |235| 
           NOP             3
           ADDK    .S1     512,A3            ; |235| 
           LDW     .D1T1   *A3,A3            ; |235| 
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |235| 
           NOP             3
           ADDK    .S1     3024,A3           ; |235| 
           LDDW    .D1T1   *A3,A9:A8         ; |235| 
           NOP             4
           MPYDP   .M2X    B5:B4,A9:A8,B5:B4 ; |235| 
           NOP             9
           NOP             1
           ADDDP   .L1X    B5:B4,A5:A4,A5:A4 ; |235| 
           NOP             6
           STDW    .D1T1   A5:A4,*+A11(8)    ; |235| 
           LDW     .D2T1   *++SP(8),A10      ; |265| 

           LDDW    .D2T1   *++SP,A13:A12     ; |265| 
||         RET     .S2     B3                ; |265| 

           LDW     .D2T1   *++SP(8),A11      ; |265| 
           MV      .L1     A18,A4            ; |264| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |265| 
;** --------------------------------------------------------------------------*
$C$L6:    
;**	-----------------------g3:
;** 247	-----------------------    C$3 = 1.0-current_radius_rate;
;** 247	-----------------------    *end_position = *end_position*current_radius_rate+*(double *)U$8*C$3;
;** 249	-----------------------    end_position[2] = end_position[2]*current_radius_rate+*((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3032)*C$3;
;** 264	-----------------------    return 0;
           MV      .L2X    A13,B3            ; |265| 
           NOP             2
           MPYDP   .M2X    A5:A4,B5:B4,B5:B4 ; |247| 
           MPYDP   .M1     A7:A6,A9:A8,A9:A8 ; |247| 
           NOP             9
           ADDDP   .L1X    A9:A8,B5:B4,A9:A8 ; |247| 
           NOP             6
           STDW    .D1T1   A9:A8,*A11        ; |247| 
           LDW     .D1T1   *+A10(4),A3       ; |249| 
           LDDW    .D1T1   *+A11(16),A9:A8   ; |249| 
           NOP             3
           ADDK    .S1     512,A3            ; |249| 
           LDW     .D1T1   *A3,A3            ; |249| 
           MPYDP   .M1     A5:A4,A9:A8,A5:A4 ; |249| 
           NOP             3
           ADDK    .S1     3032,A3           ; |249| 
           LDDW    .D1T1   *A3,A17:A16       ; |249| 
           NOP             4
           MPYDP   .M1     A7:A6,A17:A16,A7:A6 ; |249| 
           NOP             9
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |249| 
           NOP             6
           STDW    .D1T1   A5:A4,*+A11(16)   ; |249| 
           LDW     .D2T1   *++SP(8),A10      ; |265| 

           LDDW    .D2T1   *++SP,A13:A12     ; |265| 
||         RET     .S2     B3                ; |265| 

           LDW     .D2T1   *++SP(8),A11      ; |265| 
           MV      .L1     A18,A4            ; |264| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |265| 
;** --------------------------------------------------------------------------*
$C$L7:    
;**	-----------------------g4:
;** 240	-----------------------    C$2 = 1.0-current_radius_rate;
;** 240	-----------------------    end_position[1] = end_position[1]*current_radius_rate+*((double *)U$8+8)*C$2;
;** 242	-----------------------    end_position[2] = end_position[2]*current_radius_rate+*((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3032)*C$2;
;** 264	-----------------------    return 0;
           MPYDP   .M2X    A5:A4,B5:B4,B5:B4 ; |240| 
           MPYDP   .M1     A7:A6,A9:A8,A9:A8 ; |240| 
           NOP             9
           ADDDP   .L1X    A9:A8,B5:B4,A9:A8 ; |240| 
           MV      .L2X    A13,B3            ; |265| 
           NOP             5
           STDW    .D1T1   A9:A8,*+A11(8)    ; |240| 
           LDW     .D1T1   *+A10(4),A3       ; |242| 
           LDDW    .D1T1   *+A11(16),A9:A8   ; |242| 
           NOP             3
           ADDK    .S1     512,A3            ; |242| 
           LDW     .D1T1   *A3,A3            ; |242| 
           MPYDP   .M1     A5:A4,A9:A8,A5:A4 ; |242| 
           NOP             3
           ADDK    .S1     3032,A3           ; |242| 
           LDDW    .D1T1   *A3,A17:A16       ; |242| 
           NOP             4
           MPYDP   .M1     A7:A6,A17:A16,A7:A6 ; |242| 
           NOP             9
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |242| 
           NOP             6
           STDW    .D1T1   A5:A4,*+A11(16)   ; |242| 
           LDW     .D2T1   *++SP(8),A10      ; |265| 

           LDDW    .D2T1   *++SP,A13:A12     ; |265| 
||         RET     .S2     B3                ; |265| 

           LDW     .D2T1   *++SP(8),A11      ; |265| 
           MV      .L1     A18,A4            ; |264| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |265| 
;** --------------------------------------------------------------------------*
$C$L8:    
;**	-----------------------g5:
;** 255	-----------------------    C$1 = 1.0-current_radius_rate;
;** 255	-----------------------    *end_position = *end_position*current_radius_rate+*(double *)U$8*C$1;
;** 257	-----------------------    end_position[1] = end_position[1]*current_radius_rate+*((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3024)*C$1;
;** 259	-----------------------    end_position[2] = end_position[2]*current_radius_rate+*((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3032)*C$1;
;** 264	-----------------------    return 0;
           LDDW    .D1T1   *A12,A7:A6        ; |255| 
           NOP             4
           MPYDP   .M2X    A5:A4,B5:B4,B5:B4 ; |255| 
           MPYDP   .M1     A17:A16,A7:A6,A7:A6 ; |255| 
           NOP             9
           ADDDP   .L1X    A7:A6,B5:B4,A7:A6 ; |255| 
           NOP             6
           STDW    .D1T1   A7:A6,*A11        ; |255| 
           LDW     .D1T2   *+A10(4),B4       ; |257| 
           LDDW    .D1T1   *+A11(16),A7:A6   ; |259| 
           NOP             3
           ADDK    .S2     512,B4            ; |257| 
           LDW     .D2T2   *B4,B6            ; |257| 
           LDDW    .D1T2   *+A11(8),B5:B4    ; |257| 
           MPYDP   .M1     A5:A4,A7:A6,A7:A6 ; |259| 
           NOP             2
           ADDK    .S2     3024,B6           ; |257| 
           LDDW    .D2T2   *B6,B7:B6         ; |257| 
           MPYDP   .M2X    A5:A4,B5:B4,B5:B4 ; |257| 
           NOP             3
           MPYDP   .M2X    A17:A16,B7:B6,B7:B6 ; |257| 
           MV      .L1     A18,A4            ; |264| 
           NOP             8
           ADDDP   .L2     B7:B6,B5:B4,B5:B4 ; |257| 
           NOP             6
           STDW    .D1T2   B5:B4,*+A11(8)    ; |257| 
           LDW     .D1T1   *+A10(4),A3       ; |259| 
           NOP             4
           ADDK    .S1     512,A3            ; |259| 
           LDW     .D1T1   *A3,A3            ; |259| 
           NOP             4
           ADDK    .S1     3032,A3           ; |259| 
           LDDW    .D1T1   *A3,A9:A8         ; |259| 
           NOP             4
           MPYDP   .M1     A17:A16,A9:A8,A9:A8 ; |259| 
           NOP             9
           ADDDP   .L1     A9:A8,A7:A6,A7:A6 ; |259| 
           NOP             6
           STDW    .D1T1   A7:A6,*+A11(16)   ; |259| 
           LDW     .D2T1   *++SP(8),A10      ; |265| 

           LDDW    .D2T1   *++SP,A13:A12     ; |265| 
||         RET     .S2     B3                ; |265| 

           LDW     .D2T1   *++SP(8),A11      ; |265| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |265| 
	.sect	".text:_ZN6VectorC2EPd"
	.clink
	.global	_ZN6VectorC2EPd

;******************************************************************************
;* FUNCTION NAME: Vector::Vector(double *) [subobject]                        *
;*                                                                            *
;*   Regs Modified     : B4,B5,B6,B7                                          *
;*   Regs Used         : A4,B3,B4,B5,B6,B7                                    *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN6VectorC2EPd:
;** --------------------------------------------------------------------------*
;** 18	-----------------------    *(double * const)this = *$P$T0;  // [18]
;** 19	-----------------------    *((double * const)this+8) = $P$T0[1];  // [18]
;** 20	-----------------------    *((double * const)this+16) = $P$T0[2];  // [18]
;**  	-----------------------    return this;
           LDDW    .D2T2   *B4,B7:B6         ; |18| 
           NOP             4
           STDW    .D1T2   B7:B6,*A4         ; |18| 
           LDDW    .D2T2   *+B4(8),B7:B6     ; |19| 
           NOP             4
           STDW    .D1T2   B7:B6,*+A4(8)     ; |19| 

           RETNOP  .S2     B3,4
||         LDDW    .D2T2   *+B4(16),B5:B4    ; |20| 

           STDW    .D1T2   B5:B4,*+A4(16)    ; |20| 
           ; BRANCH OCCURS {B3}  
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolationD1Ev

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::~CircleInterpolation()                 *
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
_ZN19CircleInterpolationD1Ev:
;** --------------------------------------------------------------------------*
;** 15	-----------------------    C$1 = (*this).m_slope;
;** 15	-----------------------    if ( C$1 == NULL ) goto g3;
           STW     .D2T1   A11,*SP--(8)      ; |14| 

           STW     .D2T1   A10,*+SP(4)       ; |14| 
||         MV      .L1     A4,A10            ; |14| 

           LDW     .D1T1   *+A10(88),A0      ; |15| 
           MV      .L1X    B3,A11            ; |14| 
           NOP             3
   [!A0]   B       .S1     $C$L9             ; |15| 
   [ A0]   CALL    .S1     _ZdaPv            ; |16| 
   [!A0]   CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |18| 
           MV      .L1     A0,A4             ; |16| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L9}         ; |15| 
;** --------------------------------------------------------------------------*
;** 16	-----------------------    operator delete[] ((void *)C$1);
           ADDKPC  .S2     $C$RL7,B3,0       ; |16| 
$C$RL7:    ; CALL OCCURS {_ZdaPv} {0}        ; |16| 
           CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |18| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L9:    
;**	-----------------------g3:
;** 18	-----------------------    InterpolationAlgorithm::~InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)this);
;** 18	-----------------------    return this;
           MV      .L1     A10,A4            ; |18| 
           ADDKPC  .S2     $C$RL8,B3,0       ; |18| 
$C$RL8:    ; CALL OCCURS {_ZN22InterpolationAlgorithmD2Ev} {0}  ; |18| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3            ; |18| 

           RET     .S2     B3                ; |18| 
||         MV      .L1     A10,A4            ; |18| 
||         LDW     .D2T1   *+SP(4),A10       ; |18| 

           LDW     .D2T1   *++SP(8),A11      ; |18| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |18| 
	.sect	".text:_ZN19CircleInterpolationD2Ev"
	.clink
	.global	_ZN19CircleInterpolationD2Ev

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::~CircleInterpolation() [subobject]     *
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
_ZN19CircleInterpolationD2Ev:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return CircleInterpolation::~CircleInterpolation(this);
           CALLRET .S1     _ZN19CircleInterpolationD1Ev
           NOP             5
$C$RL9:    ; CALL-RETURN OCCURS {_ZN19CircleInterpolationD1Ev} 0 
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolationD0Ev

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::~CircleInterpolation() [deleting]      *
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
_ZN19CircleInterpolationD0Ev:
;** --------------------------------------------------------------------------*
;**  	-----------------------    if ( this == NULL ) goto g5;

           STW     .D2T1   A11,*SP--(8)
||         MV      .L1     A4,A0

           STW     .D2T1   A10,*+SP(4)
|| [!A0]   B       .S1     $C$L11
||         MV      .L1     A4,A10

   [ A0]   LDW     .D1T1   *+A10(88),A0      ; |15| 
           MV      .L1X    B3,A11
           NOP             3
           ; BRANCHCC OCCURS {$C$L11}  
;** --------------------------------------------------------------------------*
;** 15	-----------------------    C$1 = (*this).m_slope;  // [28]
;** 15	-----------------------    if ( C$1 == NULL ) goto g4;  // [28]
   [!A0]   B       .S1     $C$L10            ; |15| 
   [ A0]   CALL    .S1     _ZdaPv            ; |16| 
   [!A0]   CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |18| 
           MV      .L1     A0,A4             ; |16| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L10}        ; |15| 
;** --------------------------------------------------------------------------*
;** 16	-----------------------    operator delete[] ((void *)C$1);  // [28]
           ADDKPC  .S2     $C$RL10,B3,0      ; |16| 
$C$RL10:   ; CALL OCCURS {_ZdaPv} {0}        ; |16| 
           CALL    .S1     _ZN22InterpolationAlgorithmD2Ev ; |18| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L10:    
;**	-----------------------g4:
;** 18	-----------------------    InterpolationAlgorithm::~InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)this);  // [28]
;**  	-----------------------    operator delete ((void * const)this);
;**	-----------------------g5:
;**  	-----------------------    return;
           MV      .L1     A10,A4            ; |18| 
           ADDKPC  .S2     $C$RL11,B3,0      ; |18| 
$C$RL11:   ; CALL OCCURS {_ZN22InterpolationAlgorithmD2Ev} {0}  ; |18| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZdlPv,B3
||         MV      .L1     A10,A4

$C$RL12:   ; CALL OCCURS {_ZdlPv} {0} 
;** --------------------------------------------------------------------------*
$C$L11:    
           MV      .L2X    A11,B3

           RET     .S2     B3
||         LDW     .D2T1   *+SP(4),A10

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolation4InitE16SpeedProfileType

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::Init(SpeedProfileType)                 *
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
_ZN19CircleInterpolation4InitE16SpeedProfileType:
;** --------------------------------------------------------------------------*
;** 21	-----------------------    InterpolationAlgorithm::Init((struct nterpolationAlgorithm *)this, speed_profile_type);
;** 22	-----------------------    U$4 = (*this).m_slope;
;** 22	-----------------------    if ( U$4 ) goto g3;
           STW     .D2T1   A11,*SP--(8)      ; |20| 

           MV      .L1X    B3,A11            ; |20| 
||         CALLP   .S2     _ZN22InterpolationAlgorithm4InitE16SpeedProfileType,B3
||         STW     .D2T1   A10,*+SP(4)       ; |20| 
||         MV      .S1     A4,A10            ; |20| 

$C$RL13:   ; CALL OCCURS {_ZN22InterpolationAlgorithm4InitE16SpeedProfileType} {0}  ; |21| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(88),A0      ; |22| 
           NOP             4

   [ A0]   BNOP    .S1     $C$L12,4          ; |22| 
|| [!A0]   LDW     .D1T1   *+A10(56),A3      ; |23| 

   [!A0]   CALL    .S1     _Znaj             ; |23| 
|| [!A0]   LDBU    .D1T1   *+A3(2),A3        ; |23| 

           ; BRANCHCC OCCURS {$C$L12}        ; |22| 
;** --------------------------------------------------------------------------*
;** 23	-----------------------    (*this).m_slope = operator new[] ((unsigned)(*(*this).m_channel_config).axis_number<<3);
;**  	-----------------------    U$4 = (*this).m_slope;
           ADDKPC  .S2     $C$RL14,B3,3      ; |23| 
           SHL     .S1     A3,3,A4           ; |23| 
$C$RL14:   ; CALL OCCURS {_Znaj} {0}         ; |23| 
;** --------------------------------------------------------------------------*
           STW     .D1T1   A4,*+A10(88)      ; |23| 
           LDW     .D1T1   *+A10(88),A0
           NOP             3
;** --------------------------------------------------------------------------*
$C$L12:    
;**	-----------------------g3:
;** 28	-----------------------    return (U$4 != NULL) ? 0 : 2700;

           MV      .L2X    A11,B3            ; |29| 
||         LDW     .D2T1   *+SP(4),A10       ; |29| 
||         ZERO    .L1     A4                ; |28| 

           RETNOP  .S2     B3,5              ; |29| 
||         LDW     .D2T1   *++SP(8),A11      ; |29| 
|| [!A0]   MVK     .S1     0xa8c,A4          ; |28| 

           ; BRANCH OCCURS {B3}              ; |29| 
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolation23ComputeAngleBeyondLimitEd

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::ComputeAngleBeyondLimit(double)        *
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
_ZN19CircleInterpolation23ComputeAngleBeyondLimitEd:
;** --------------------------------------------------------------------------*
;** 209	-----------------------    if ( (*this).m_is_reach_limit_radius ) goto g3;

           STW     .D2T1   A11,*SP--(8)      ; |207| 
||         MVK     .S1     176,A3            ; |209| 

           STDW    .D2T2   B11:B10,*SP--     ; |207| 
           STDW    .D2T1   A13:A12,*SP--     ; |207| 

           STW     .D2T1   A10,*SP--(8)      ; |207| 
||         MV      .L1     A4,A10            ; |207| 

           LDB     .D1T1   *+A10[A3],A0      ; |209| 
           MV      .L1X    B3,A11            ; |207| 
           MVK     .L2     1,B10             ; |211| 
           MVK     .S2     176,B11           ; |211| 
           MVK     .S1     36,A3             ; |210| 

   [ A0]   B       .S2     $C$L13            ; |209| 
|| [!A0]   LDBU    .D1T1   *+A10[A3],A4      ; |210| 
|| [ A0]   MVK     .S1     36,A3             ; |213| 

   [!A0]   LDW     .D1T1   *+A10(8),A3       ; |210| 
   [ A0]   LDBU    .D1T1   *+A10[A3],A3      ; |213| 
   [ A0]   LDW     .D1T1   *+A10(8),A4       ; |213| 
           MV      .L1X    B5,A13            ; |207| 
           MV      .L1X    B4,A12            ; |207| 
           ; BRANCHCC OCCURS {$C$L13}        ; |209| 
;** --------------------------------------------------------------------------*
;** 210	-----------------------    (*this).m_ratio_radius_l = ((*this).m_min_radius-(*this).m_current_radius)/((**(*((unsigned char * const)this+36)*4+(*this).__b_22InterpolationAlgorithm.m_dynamic_info)).le-(*this).m_pre_l);
;** 211	-----------------------    (*this).m_is_reach_limit_radius = 1;
           LDW     .D1T1   *+A3[A4],A3       ; |210| 
           LDDW    .D1T1   *+A10(184),A7:A6  ; |210| 
           LDDW    .D1T1   *+A10(104),A9:A8  ; |210| 
           LDDW    .D1T1   *+A10(112),A5:A4  ; |210| 
           NOP             1
           LDDW    .D1T1   *+A3(32),A17:A16  ; |210| 
           NOP             3
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |210| 
           SUBDP   .S1     A17:A16,A9:A8,A7:A6 ; |210| 
           NOP             3
           CALL    .S1     __c6xabi_divd     ; |210| 
           ADDKPC  .S2     $C$RL15,B3,2      ; |210| 
           MV      .L2X    A7,B5             ; |210| 
           MV      .L2X    A6,B4             ; |210| 
$C$RL15:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |210| 
;** --------------------------------------------------------------------------*
           STDW    .D1T1   A5:A4,*+A10(168)  ; |210| 

           LDW     .D1T1   *+A10(8),A4       ; |213| 
||         MVK     .S1     36,A3             ; |213| 

           LDBU    .D1T1   *+A10[A3],A3      ; |213| 
           MV      .L2X    A10,B4
           STB     .D2T2   B10,*+B4[B11]     ; |211| 
;** --------------------------------------------------------------------------*
$C$L13:    
;**	-----------------------g3:
;** 213	-----------------------    (*this).m_current_radius = (*this).m_min_radius+(*this).m_ratio_radius_l*(distance-(**(*((unsigned char * const)this+36)*4+(*this).__b_22InterpolationAlgorithm.m_dynamic_info)).le);
;** 216	-----------------------    C$1 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3080;
;** 216	-----------------------    return ((*this).m_current_radius-C$1[-2])*6.283185307179586232/*C$1;
           LDDW    .D1T1   *+A10(168),A7:A6  ; |213| 
           LDW     .D1T2   *+A10(4),B4       ; |216| 
           LDW     .D1T1   *+A4[A3],A3       ; |213| 
           MVKL    .S2     0x401921fb,B7
           MVKL    .S2     0x54442d18,B6
           MVKH    .S2     0x401921fb,B7
           ADDK    .S2     512,B4            ; |216| 
           LDDW    .D1T1   *+A3(32),A5:A4    ; |213| 
           LDW     .D2T2   *B4,B5            ; |216| 
           MVK     .S2     3080,B4           ; |216| 
           MVKH    .S2     0x54442d18,B6
           NOP             1
           SUBDP   .L1     A13:A12,A5:A4,A5:A4 ; |213| 
           ADD     .L2     B4,B5,B8          ; |216| 
           LDDW    .D2T2   *-B8(16),B5:B4    ; |216| 
           NOP             4
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |213| 
           LDDW    .D1T1   *+A10(184),A7:A6  ; |213| 
           NOP             8
           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |213| 
           NOP             6
           STDW    .D1T1   A5:A4,*+A10(112)  ; |213| 
           LDDW    .D1T1   *+A10(112),A5:A4  ; |216| 
           NOP             4
           SUBDP   .L2X    A5:A4,B5:B4,B5:B4 ; |216| 
           NOP             6
           MPYDP   .M2     B7:B6,B5:B4,B7:B6 ; |216| 
           LDDW    .D2T2   *B8,B5:B4         ; |216| 
           NOP             5
           CALL    .S1     __c6xabi_divd     ; |216| 
           ADDKPC  .S2     $C$RL16,B3,2      ; |216| 
           MV      .L1X    B7,A5             ; |216| 
           MV      .L1X    B6,A4             ; |216| 
$C$RL16:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |216| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *++SP(8),A10      ; |217| 

           LDDW    .D2T1   *++SP,A13:A12     ; |217| 
||         MV      .L2X    A11,B3            ; |217| 

           LDDW    .D2T2   *++SP,B11:B10     ; |217| 
||         RET     .S2     B3                ; |217| 

           LDW     .D2T1   *++SP(8),A11      ; |217| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |217| 
	.sect	".text:_ZN19CircleInterpolation21ComputeRemainDistanceEv"
	.clink
	.global	_ZN19CircleInterpolation21ComputeRemainDistanceEv

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::ComputeRemainDistance()                *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,A8,A9,B4,B5,B6                        *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,A9,B3,B4,B5,B6                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN19CircleInterpolation21ComputeRemainDistanceEv:
;** --------------------------------------------------------------------------*
;** 172	-----------------------    C$2 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data;
;** 172	-----------------------    (*C$2).axis_mov_data.dist = (*C$2).axis_mov_data.dist-(**((*this).__b_22InterpolationAlgorithm.m_trajectory_index*4+(*this).__b_22InterpolationAlgorithm.m_dynamic_info)).current_l;
;** 173	-----------------------    C$1 = (double *)C$2+3064;
;** 173	-----------------------    *C$1 = (*this).m_current_radius;
;** 174	-----------------------    C$1[1] = C$1[1]-(*this).m_current_angle;
;**  	-----------------------    return;
           LDW     .D1T1   *+A4(4),A3        ; |172| 

           MVK     .S1     36,A5             ; |172| 
||         LDW     .D1T1   *+A4(8),A7        ; |172| 

           LDBU    .D1T1   *+A4[A5],A6       ; |172| 
           MVK     .S2     2480,B4           ; |172| 
           MVK     .S2     2480,B6           ; |172| 
           ADDK    .S1     512,A3            ; |172| 
           LDW     .D1T1   *A3,A5            ; |172| 
           LDW     .D1T1   *+A7[A6],A3       ; |172| 
           NOP             4

           ADD     .L2X    B4,A5,B4          ; |172| 
||         ADDK    .S1     328,A3            ; |172| 

           LDDW    .D1T1   *A3,A7:A6         ; |172| 
||         LDDW    .D2T2   *B4,B5:B4         ; |172| 

           MVK     .S1     3064,A3           ; |173| 
           ADD     .L1     A3,A5,A3          ; |173| 
           ADD     .L1X    B6,A5,A5          ; |172| 
           LDDW    .D1T1   *+A3(8),A9:A8     ; |174| 
           SUBDP   .L2X    B5:B4,A7:A6,B5:B4 ; |172| 
           NOP             6
           STDW    .D1T2   B5:B4,*A5         ; |172| 
           LDDW    .D1T1   *+A4(120),A7:A6   ; |174| 
           LDDW    .D1T1   *+A4(112),A5:A4   ; |173| 
           NOP             3
           SUBDP   .L1     A9:A8,A7:A6,A7:A6 ; |174| 
           STDW    .D1T1   A5:A4,*A3         ; |173| 
           RETNOP  .S2     B3,4              ; |175| 
           STDW    .D1T1   A7:A6,*+A3(8)     ; |174| 
           ; BRANCH OCCURS {B3}              ; |175| 
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolation19GetMaxProjectVectorER6VectorS1_S1_

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::GetMaxProjectVector(Vector &, Vector &, Vector &)*
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,DP,SP,A16,A17,A18,A19,A20,*
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 100 Auto + 24 Save = 124 byte               *
;******************************************************************************
_ZN19CircleInterpolation19GetMaxProjectVectorER6VectorS1_S1_:
;** --------------------------------------------------------------------------*
;** 192	-----------------------    C$15 = *((const double * const)normal_vector+16);  // [25]
;** 192	-----------------------    C$9 = *((const double * const)projected_vector+16);  // [25]
;** 192	-----------------------    C$17 = *((const double * const)normal_vector+8);  // [25]
;** 192	-----------------------    C$11 = *((const double * const)projected_vector+8);  // [25]
;** 192	-----------------------    C$18 = *(double * const)normal_vector;  // [25]
;** 192	-----------------------    C$13 = *(double * const)projected_vector;  // [25]
;** 192	-----------------------    C$16 = C$13*C$18+C$11*C$17+C$9*C$15;  // [25]
;** 192	-----------------------    data[0] = C$14 = C$18*C$16;  // [25]
;** 192	-----------------------    data[1] = C$12 = C$17*C$16;  // [25]
;** 192	-----------------------    data[2] = C$10 = C$15*C$16;  // [25]
;** 18	-----------------------    *&$P$T5 = C$14;  // [18]
;** 19	-----------------------    *(&$P$T5+8) = C$12;  // [18]
;** 20	-----------------------    *(&$P$T5+16) = C$10;  // [18]
;** 145	-----------------------    data[0] = C$6 = C$13-C$14;  // [22]
;** 145	-----------------------    data[1] = C$8 = C$11-C$12;  // [22]
;** 145	-----------------------    data[2] = C$7 = C$9-C$10;  // [22]
;** 18	-----------------------    *&$P$T4 = C$6;  // [18]
;** 19	-----------------------    Y$10 = C$8;  // [18]
;** 19	-----------------------    *(&$P$T4+8) = Y$10;  // [18]
;** 20	-----------------------    Y$11 = C$7;  // [18]
;** 20	-----------------------    *(&$P$T4+16) = Y$11;  // [18]
;** 72	-----------------------    *(double * const)max_project_vector = C$3 = C$6;  // [20]
;** 73	-----------------------    *((double * const)max_project_vector+8) = C$4 = Y$10;  // [20]
;** 74	-----------------------    *((double * const)max_project_vector+16) = C$5 = Y$11;  // [20]
;** 234	-----------------------    length = sqrt(C$3*C$3+C$4*C$4+C$5*C$5);  // [27]
;** 352	-----------------------    if ( length <= 1.00000000000000002092e-8 ) goto g3;
           STW     .D2T1   A11,*SP--(8)      ; |348| 
           STDW    .D2T2   B11:B10,*SP--     ; |348| 
           STW     .D2T1   A10,*SP--(8)      ; |348| 

           LDDW    .D1T1   *+A6(8),A23:A22   ; |192| 
||         LDDW    .D2T2   *+B4(8),B17:B16   ; |192| 

           MV      .L2     B6,B10            ; |348| 
||         LDDW    .D2T2   *B4,B7:B6         ; |192| 
||         LDDW    .D1T1   *A6,A9:A8         ; |192| 

           LDDW    .D1T1   *+A6(16),A17:A16  ; |192| 
           LDDW    .D2T2   *+B4(16),B5:B4    ; |192| 
           ADDK    .S2     -104,SP           ; |348| 
           MPYDP   .M2X    B17:B16,A23:A22,B9:B8 ; |192| 
           MPYDP   .M1X    B7:B6,A9:A8,A5:A4 ; |192| 
           MV      .L2     B3,B11            ; |348| 
           NOP             4
           MPYDP   .M1X    B5:B4,A17:A16,A7:A6 ; |192| 
           NOP             3
           ADDDP   .L1X    B9:B8,A5:A4,A5:A4 ; |192| 
           NOP             6
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |192| 
           NOP             6
           MPYDP   .M1X    A5:A4,B17:B16,A21:A20 ; |192| 
           MPYDP   .M2X    A5:A4,B7:B6,B9:B8 ; |192| 
           NOP             8

           SUBDP   .L1     A23:A22,A21:A20,A7:A6 ; |145| 
||         MPYDP   .M1X    A5:A4,B5:B4,A19:A18 ; |192| 

           SUBDP   .L2X    A9:A8,B9:B8,B7:B6 ; |145| 
           STDW    .D2T1   A21:A20,*+SP(40)  ; |19| 
           STDW    .D2T1   A21:A20,*+SP(88)  ; |192| 
           STDW    .D2T2   B9:B8,*+SP(32)    ; |18| 
           STDW    .D2T2   B9:B8,*+SP(80)    ; |192| 
           NOP             1

           MV      .L1     A7,A23            ; |19| 
||         MV      .S1     A6,A22            ; |19| 

           MPYDP   .M1     A23:A22,A23:A22,A9:A8 ; |234| 
           MPYDP   .M2     B7:B6,B7:B6,B5:B4 ; |234| 
           SUBDP   .L1     A17:A16,A19:A18,A17:A16 ; |145| 
           STDW    .D2T1   A19:A18,*+SP(96)  ; |192| 
           STDW    .D2T1   A19:A18,*+SP(48)  ; |20| 
           STDW    .D2T2   B7:B6,*+SP(56)    ; |145| 
           STDW    .D2T2   B7:B6,*+SP(8)     ; |18| 
           STDW    .D2T1   A7:A6,*+SP(16)    ; |19| 
           STDW    .D2T1   A7:A6,*+SP(64)    ; |145| 
           MPYDP   .M1     A17:A16,A17:A16,A25:A24 ; |234| 
           STDW    .D2T1   A17:A16,*+SP(72)  ; |145| 
           ADDDP   .L2X    A9:A8,B5:B4,B5:B4 ; |234| 
           MV      .L1     A17,A5            ; |20| 

           MV      .L1     A16,A4            ; |20| 
||         STDW    .D2T1   A17:A16,*+B10(16) ; |74| 

           STDW    .D2T1   A5:A4,*+SP(24)    ; |20| 
           STDW    .D2T2   B7:B6,*B10        ; |72| 
           STDW    .D2T1   A23:A22,*+B10(8)  ; |73| 
           NOP             2
           ADDDP   .L1X    A25:A24,B5:B4,A5:A4 ; |234| 
           CALLP   .S2     sqrt,B3
$C$RL17:   ; CALL OCCURS {sqrt} {0}          ; |234| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A10            ; |234| 
||         MV      .D1     A5,A11            ; |234| 
||         MV      .L2X    A5,B5             ; |234| 
||         MVKL    .S1     0x3e45798e,A5

           MV      .L2X    A4,B4             ; |234| 
||         MVKL    .S1     0xe2308c3a,A4

           MVKH    .S1     0x3e45798e,A5
           MVKH    .S1     0xe2308c3a,A4
           CMPGTDP .S1     A11:A10,A5:A4,A0  ; |352| 

           ZERO    .L1     A5
||         ZERO    .D1     A4                ; |223| 

           SET     .S1     A5,0x14,0x1d,A5
|| [!A0]   ADDK    .S2     104,SP            ; |356| 
|| [!A0]   MV      .L2     B11,B3            ; |356| 

   [!A0]   ZERO    .L1     A5:A4             ; |355| 
|| [!A0]   B       .S1     $C$L14            ; |352| 

   [ A0]   CALL    .S2     __c6xabi_divd     ; |223| 
|| [!A0]   CMPEQDP .S1     A11:A10,A5:A4,A3  ; |355| 
|| [!A0]   LDW     .D2T1   *++SP(8),A10      ; |356| 

   [!A0]   RET     .S2     B3                ; |356| 
|| [!A0]   LDDW    .D2T2   *++SP,B11:B10     ; |356| 

   [!A0]   LDW     .D2T1   *++SP(8),A11      ; |356| 
   [!A0]   XOR     .L1     1,A3,A4           ; |355| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L14}        ; |352| 
;** --------------------------------------------------------------------------*
;** 223	-----------------------    C$2 = 1.0/length;  // [26]
;** 223	-----------------------    *(double * const)max_project_vector = *(double * const)max_project_vector*C$2;  // [26]
;** 224	-----------------------    *((double * const)max_project_vector+8) = *((double * const)max_project_vector+8)*C$2;  // [26]
;** 225	-----------------------    *((double * const)max_project_vector+16) = *((double * const)max_project_vector+16)*C$2;  // [26]
           ADDKPC  .S2     $C$RL18,B3,0      ; |223| 
$C$RL18:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |223| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *+B10(16),B5:B4   ; |225| 
           LDDW    .D2T2   *+B10(8),B7:B6    ; |224| 
           LDDW    .D2T2   *B10,B9:B8        ; |223| 
           ADDK    .S2     104,SP            ; |356| 
           MV      .L2     B11,B3            ; |356| 
           MPYDP   .M2X    A5:A4,B5:B4,B17:B16 ; |225| 
           MPYDP   .M1X    A5:A4,B7:B6,A7:A6 ; |224| 
           NOP             2
           MPYDP   .M2X    A5:A4,B9:B8,B5:B4 ; |223| 
           NOP             7
           STDW    .D2T2   B17:B16,*+B10(16) ; |225| 
           STDW    .D2T1   A7:A6,*+B10(8)    ; |224| 

           STDW    .D2T2   B5:B4,*B10        ; |223| 
||         ZERO    .L1     A5:A4             ; |355| 

           CMPEQDP .S1     A11:A10,A5:A4,A3  ; |355| 
||         LDW     .D2T1   *++SP(8),A10      ; |356| 

           LDDW    .D2T2   *++SP,B11:B10     ; |356| 
||         RET     .S2     B3                ; |356| 

           LDW     .D2T1   *++SP(8),A11      ; |356| 
           XOR     .L1     1,A3,A4           ; |355| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L14:    
;**	-----------------------g3:
;** 355	-----------------------    return length != 0.0;
           NOP             2
           ; BRANCH OCCURS {B3}              ; |356| 
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolation17ComputeCurveParamEv

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::ComputeCurveParam()                    *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 56 Save = 56 byte                  *
;******************************************************************************
_ZN19CircleInterpolation17ComputeCurveParamEv:
;** --------------------------------------------------------------------------*
;** 147	-----------------------    (*this).m_k_square = 0.0;
;** 149	-----------------------    if ( !(U$6 = (*(*this).m_channel_config).axis_number) ) goto g6;
           STW     .D2T1   A11,*SP--(8)      ; |145| 
           STW     .D2T1   A10,*SP--(8)      ; |145| 
           STDW    .D2T2   B13:B12,*SP--     ; |145| 
           STDW    .D2T2   B11:B10,*SP--     ; |145| 
           STDW    .D2T1   A15:A14,*SP--     ; |145| 
           STDW    .D2T1   A13:A12,*SP--     ; |145| 

           STW     .D2T2   B3,*SP--(8)       ; |145| 
||         MV      .L1     A4,A14            ; |145| 

           LDW     .D1T1   *+A14(56),A3      ; |149| 
           ZERO    .L1     A5:A4             ; |147| 
           STDW    .D1T1   A5:A4,*+A14(136)  ; |147| 
           ZERO    .L1     A12               ; |149| 
           NOP             1
           LDBU    .D1T1   *+A3(2),A0        ; |149| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L17,5          ; |149| 
           ; BRANCHCC OCCURS {$C$L17}        ; |149| 
;** --------------------------------------------------------------------------*
;** 149	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L15:    
;**	-----------------------g3:
;** 150	-----------------------    if ( !((*this).m_line_mask&1<<i) ) goto g5;
           ADDAD   .D1     A14,24,A3         ; |150| 
           LDHU    .D1T1   *A3,A3            ; |150| 
           MVK     .L1     1,A4              ; |150| 
           SHL     .S1     A4,A12,A4         ; |150| 
           NOP             2
           AND     .L1     A4,A3,A1          ; |150| 

   [ A1]   LDW     .D1T1   *+A14(4),A4       ; |151| 
|| [!A1]   B       .S2     $C$L16            ; |150| 
|| [!A1]   ADD     .L1     1,A12,A12         ; |149| 
||         MV      .S1     A1,A2             ; guard predicate rewrite

   [ A1]   MVK     .S1     512,A3            ; |151| 
|| [!A1]   CMPGT   .L1     A0,A12,A1         ; |149| 

   [ A2]   ZERO    .L1     A1                ; |149| nullify predicate
   [ A1]   BNOP    .S1     $C$L15,1          ; |149| 
           ADD     .L1     A3,A4,A3          ; |151| 
           ; BRANCHCC OCCURS {$C$L16}        ; |150| 
;** --------------------------------------------------------------------------*
;** 151	-----------------------    C$3 = (*this).__b_22InterpolationAlgorithm.m_geometry;
;** 151	-----------------------    distance = *((i<<3)+(*C$3).end_data+1440)-*((i<<3)+(double *)C$3);
;** 152	-----------------------    (*this).m_k_square = (*this).m_k_square+pow(distance, 2.0);
;** 154	-----------------------    *((i<<3)+(*this).m_slope) = distance/*((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3072);
;**  	-----------------------    U$6 = (*(*this).m_channel_config).axis_number;
           LDW     .D1T1   *A3,A3            ; |151| 
           LDDW    .D1T1   *+A4[A12],A5:A4   ; |151| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5
           ZERO    .L2     B4                ; |152| 
           ADDAD   .D1     A3,A12,A3         ; |151| 
           ADDK    .S1     1440,A3           ; |151| 
           LDDW    .D1T1   *A3,A7:A6         ; |151| 
           NOP             4
           SUBDP   .L1     A7:A6,A5:A4,A11:A10 ; |151| 
           NOP             1
           CALL    .S1     pow               ; |152| 
           ADDKPC  .S2     $C$RL20,B3,3      ; |152| 

           MV      .L1     A11,A5            ; |152| 
||         MV      .S1     A10,A4            ; |152| 

$C$RL20:   ; CALL OCCURS {pow} {0}           ; |152| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A14(4),B4       ; |154| 
           LDDW    .D1T1   *+A14(136),A7:A6  ; |152| 
           NOP             4

           ADDK    .S2     512,B4            ; |154| 
||         ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |152| 

           LDW     .D2T2   *B4,B4            ; |154| 
           NOP             4
           ADDK    .S2     3072,B4           ; |154| 

           CALLP   .S2     __c6xabi_divd,B3
||         LDDW    .D2T2   *B4,B5:B4         ; |154| 
||         STDW    .D1T1   A5:A4,*+A14(136)  ; |152| 
||         MV      .L1     A11,A5            ; |154| 
||         MV      .S1     A10,A4            ; |154| 

$C$RL21:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |154| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A14(56),A6
           LDW     .D1T1   *+A14(88),A3      ; |154| 
           NOP             3
           LDBU    .D1T1   *+A6(2),A0
           STDW    .D1T1   A5:A4,*+A3[A12]   ; |154| 
           ADD     .L1     1,A12,A12         ; |149| 
           NOP             2
           CMPGT   .L1     A0,A12,A1         ; |149| 
   [ A1]   BNOP    .S1     $C$L15,2          ; |149| 
;** --------------------------------------------------------------------------*
$C$L16:    
;**	-----------------------g5:
;** 149	-----------------------    if ( U$6 > (++i) ) goto g3;
           NOP             3
           ; BRANCHCC OCCURS {$C$L15}        ; |149| 
;** --------------------------------------------------------------------------*
$C$L17:    
;**	-----------------------g6:
;** 159	-----------------------    U$3 = (*this).m_k_square;
;** 159	-----------------------    if ( U$3 > 1.00000000000000002092e-8 ) goto g8;
;** 164	-----------------------    (*this).m_helix_const = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3064);
;** 164	-----------------------    goto g9;

           LDDW    .D1T2   *+A14(136),B11:B10 ; |159| 
||         MVKL    .S1     0x3e45798e,A11

           MVKL    .S1     0xe2308c3a,A10
           MVKH    .S1     0x3e45798e,A11
           MVKH    .S1     0xe2308c3a,A10
           ZERO    .L2     B4                ; |160| 
           CMPGTDP .S2X    B11:B10,A11:A10,B0 ; |159| 
           ZERO    .L2     B5
   [!B0]   LDW     .D1T1   *+A14(4),A3       ; |164| 
   [ B0]   LDW     .D1T2   *+A14(4),B6       ; |160| 
           SET     .S2     B5,0x1e,0x1e,B5
           NOP             2
   [!B0]   ADDK    .S1     512,A3            ; |164| 

   [!B0]   LDW     .D1T1   *A3,A3            ; |164| 
||         ADDK    .S2     512,B6            ; |160| 

   [ B0]   LDW     .D2T2   *B6,B6            ; |160| 
           NOP             3
   [!B0]   ADDK    .S1     3064,A3           ; |164| 

   [!B0]   LDDW    .D1T1   *A3,A5:A4         ; |164| 
||         ADDK    .S2     3064,B6           ; |160| 
|| [!B0]   B       .S1     $C$L18            ; |164| 

   [!B0]   LDW     .D1T1   *+A14(4),A3       ; |166| 
|| [ B0]   LDDW    .D2T2   *B6,B7:B6         ; |160| 

   [ B0]   CALL    .S1     pow               ; |160| 
           NOP             2
   [!B0]   STDW    .D1T1   A5:A4,*+A14(144)  ; |164| 
           ; BRANCHCC OCCURS {$C$L18}        ; |164| 
;** --------------------------------------------------------------------------*
;**	-----------------------g8:
;** 160	-----------------------    (*this).m_helix_const = sqrt(pow(*((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3064), 2.0)+U$3/pow(*((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3072), 2.0));
           MV      .L1X    B6,A4             ; |160| 

           ADDKPC  .S2     $C$RL24,B3,0      ; |160| 
||         MV      .L1X    B7,A5             ; |160| 

$C$RL24:   ; CALL OCCURS {pow} {0}           ; |160| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A14(4),A3       ; |160| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5
           MV      .L1     A4,A12            ; |160| 
           MV      .L1     A5,A13            ; |160| 
           ADDK    .S1     512,A3            ; |160| 
           LDW     .D1T1   *A3,A3            ; |160| 
           ZERO    .L2     B4                ; |160| 
           NOP             3
           ADDK    .S1     3072,A3           ; |160| 

           CALLP   .S2     pow,B3
||         LDDW    .D1T1   *A3,A5:A4         ; |160| 

$C$RL22:   ; CALL OCCURS {pow} {0}           ; |160| 

           MV      .L2X    A4,B4             ; |160| 
||         MV      .L1X    B10,A4            ; |160| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A5,B5             ; |160| 
||         MV      .L1X    B11,A5            ; |160| 

$C$RL23:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |160| 
           ADDDP   .L1     A5:A4,A13:A12,A5:A4 ; |160| 
           CALLP   .S2     sqrt,B3
$C$RL25:   ; CALL OCCURS {sqrt} {0}          ; |160| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A14(4),A3       ; |166| 
           STDW    .D1T1   A5:A4,*+A14(144)  ; |160| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L18:    
;**	-----------------------g9:
;** 166	-----------------------    U$20 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3064;
;** 166	-----------------------    C$2 = *((double *)U$20+16);
;** 166	-----------------------    if ( ABS(C$2) <= 1.00000000000000002092e-8 ) goto g11;

           ADDK    .S1     512,A3            ; |166| 
||         ZERO    .L2     B4                ; |173| 
||         ZERO    .S2     B11
||         ZERO    .D2     B12               ; |172| 

           SET     .S2     B4,31,31,B4       ; |173| 
||         ZERO    .L2     B10               ; |172| 
||         LDW     .D1T1   *A3,A6            ; |166| 

           MVK     .S1     3064,A31          ; |166| 
           SET     .S2     B11,0x14,0x1d,B11
           MVKL    .S1     0x54442d18,A4
           MV      .L2     B11,B13           ; |172| 
           ADD     .L1     A31,A6,A3         ; |166| 
           LDDW    .D1T1   *+A3(16),A7:A6    ; |166| 
           MV      .L1X    B4,A15            ; |173| 
           MVKL    .S1     0x401921fb,A5
           MVKH    .S1     0x54442d18,A4
           MVKH    .S1     0x401921fb,A5
           ABSDP   .S1     A7:A6,A9:A8       ; |166| 
           MV      .L1     A4,A12            ; |171| 
           CMPGTDP .S1     A9:A8,A11:A10,A0  ; |166| 
           MV      .L1     A5,A13            ; |171| 

   [!A0]   BNOP    .S1     $C$L19,4          ; |166| 
|| [ A0]   LDDW    .D1T1   *+A3(8),A9:A8     ; |167| 

           MPYDP   .M1     A7:A6,A9:A8,A7:A6 ; |167| 
           ; BRANCHCC OCCURS {$C$L19}        ; |166| 
;** --------------------------------------------------------------------------*
;** 167	-----------------------    (*this).m_k_square = (*this).m_k_square*pow(6.283185307179586232/(*((double *)U$20+8)*C$2), 2.0);
;** 168	-----------------------    (*this).m_k_square = (*this).m_k_square+1.0;
;** 169	-----------------------    (*this).m_k = sqrt((*this).m_k_square);
;** 170	-----------------------    (*this).m_q = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3080)*(*this).m_k_square/12.566370614359172464;
;** 171	-----------------------    C$1 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3080;
;** 171	-----------------------    (*this).m_pre_u = C$1[-2]*6.283185307179586232/((*this).m_k**C$1);
;** 172	-----------------------    calc = sqrt(pow((*this).m_pre_u, 2.0)+1.0);
;** 173	-----------------------    (*this).m_C = -(*this).m_q*((*this).m_pre_u*calc+log((*this).m_pre_u+calc));
;**  	-----------------------    U$20 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3064;
           NOP             6
           CALL    .S1     __c6xabi_divd     ; |167| 
           ADDKPC  .S2     $C$RL27,B3,2      ; |167| 
           MV      .L2X    A7,B5             ; |167| 
           MV      .L2X    A6,B4             ; |167| 
$C$RL27:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |167| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         MV      .L2     B10,B4            ; |167| 

$C$RL28:   ; CALL OCCURS {pow} {0}           ; |167| 
           LDDW    .D1T1   *+A14(136),A7:A6  ; |167| 
           NOP             4
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |167| 
           NOP             9
           STDW    .D1T1   A5:A4,*+A14(136)  ; |167| 
           LDDW    .D1T1   *+A14(136),A5:A4  ; |168| 
           NOP             4
           ADDDP   .L1X    B11:B10,A5:A4,A5:A4 ; |168| 
           NOP             6
           STDW    .D1T1   A5:A4,*+A14(136)  ; |168| 

           CALLP   .S2     sqrt,B3
||         LDDW    .D1T1   *+A14(136),A5:A4  ; |169| 

$C$RL29:   ; CALL OCCURS {sqrt} {0}          ; |169| 
           LDW     .D1T2   *+A14(4),B4       ; |170| 
           MV      .L1     A4,A6             ; |169| 
           MV      .L1     A5,A7             ; |169| 
           LDDW    .D1T1   *+A14(136),A5:A4  ; |170| 
           STDW    .D1T1   A7:A6,*+A14(128)  ; |169| 
           ADDK    .S2     512,B4            ; |170| 
           LDW     .D2T1   *B4,A3            ; |170| 
           NOP             4
           ADDK    .S1     3080,A3           ; |170| 
           LDDW    .D1T2   *A3,B5:B4         ; |170| 
           NOP             4
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |170| 
           NOP             2
           MVKL    .S2     0x402921fb,B5
           MVKH    .S2     0x402921fb,B5

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A12,B4            ; |170| 

$C$RL30:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |170| 
           LDW     .D1T2   *+A14(4),B4       ; |171| 
           MVK     .S2     3080,B31          ; |171| 
           LDDW    .D1T1   *+A14(128),A7:A6  ; |171| 
           STDW    .D1T1   A5:A4,*+A14(152)  ; |170| 
           NOP             1
           ADDK    .S2     512,B4            ; |171| 
           LDW     .D2T2   *B4,B5            ; |171| 
           NOP             4
           ADD     .L2     B31,B5,B4         ; |171| 
           LDDW    .D2T2   *-B4(16),B7:B6    ; |171| 
           LDDW    .D2T2   *B4,B5:B4         ; |171| 
           NOP             3
           MPYDP   .M2X    A13:A12,B7:B6,B7:B6 ; |171| 
           NOP             7
           MPYDP   .M2X    B5:B4,A7:A6,B5:B4 ; |171| 
           NOP             2
           MV      .L1X    B6,A4             ; |171| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L1X    B7,A5             ; |171| 

$C$RL31:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |171| 
           ZERO    .L2     B5

           STDW    .D1T1   A5:A4,*+A14(96)   ; |171| 
||         SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         LDDW    .D1T1   *+A14(96),A5:A4   ; |172| 
||         MV      .L2     B10,B4            ; |172| 

$C$RL32:   ; CALL OCCURS {pow} {0}           ; |172| 
           ADDDP   .L1X    B13:B12,A5:A4,A5:A4 ; |172| 
           CALLP   .S2     sqrt,B3
$C$RL33:   ; CALL OCCURS {sqrt} {0}          ; |172| 

           MV      .L1     A4,A10            ; |172| 
||         MV      .S1     A5,A11            ; |172| 
||         LDDW    .D1T1   *+A14(96),A5:A4   ; |173| 

           NOP             4
           ADDDP   .L1     A11:A10,A5:A4,A5:A4 ; |173| 
           CALLP   .S2     log,B3
$C$RL34:   ; CALL OCCURS {log} {0}           ; |173| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A14(96),A7:A6   ; |173| 
           MV      .L2X    A15,B4
           LDW     .D1T2   *+A14(4),B6
           MVK     .S1     3064,A31
           NOP             1
           MPYDP   .M1     A11:A10,A7:A6,A9:A8 ; |173| 
           LDDW    .D1T1   *+A14(152),A7:A6  ; |173| 
           ADDK    .S2     512,B6
           LDW     .D2T1   *B6,A3
           NOP             6
           ADDDP   .L1     A5:A4,A9:A8,A5:A4 ; |173| 
           XOR     .L2X    A7,B4,B5          ; |173| 
           MV      .L2X    A6,B4             ; |173| 
           ADD     .L1     A31,A3,A3
           NOP             3
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |173| 
           NOP             9
           STDW    .D1T1   A5:A4,*+A14(160)  ; |173| 
;** --------------------------------------------------------------------------*
$C$L19:    
;**	-----------------------g11:
;** 176	-----------------------    (*this).m_current_radius = *(double *)U$20;
;** 177	-----------------------    (*this).m_pre_l = 0.0;
;** 178	-----------------------    return 0;
           ZERO    .L1     A5:A4             ; |177| 
           NOP             4
           LDDW    .D1T1   *A3,A7:A6         ; |176| 
           STDW    .D1T1   A5:A4,*+A14(104)  ; |177| 
           ZERO    .L1     A4                ; |178| 
           NOP             2
           STDW    .D1T1   A7:A6,*+A14(112)  ; |176| 
           LDW     .D2T2   *++SP(8),B3       ; |179| 
           LDDW    .D2T1   *++SP,A13:A12     ; |179| 
           LDDW    .D2T1   *++SP,A15:A14     ; |179| 
           LDDW    .D2T2   *++SP,B11:B10     ; |179| 
           LDDW    .D2T2   *++SP,B13:B12     ; |179| 

           LDW     .D2T1   *++SP(8),A10      ; |179| 
||         RET     .S2     B3                ; |179| 

           LDW     .D2T1   *++SP(8),A11      ; |179| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |179| 
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolation15ValidateDynamicEv

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::ValidateDynamic()                      *
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
;*   Local Frame Size  : 0 Args + 12 Auto + 56 Save = 68 byte                 *
;******************************************************************************
_ZN19CircleInterpolation15ValidateDynamicEv:
;** --------------------------------------------------------------------------*
;** 66	-----------------------    (*this).m_min_radius = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3064);
;** 67	-----------------------    H$1 = (*this).__b_22InterpolationAlgorithm.m_dynamic_info;
;** 67	-----------------------    H$2 = *((unsigned char * const)this+36);
;** 67	-----------------------    H$3 = (*this).m_channel_config;
;** 67	-----------------------    U$5 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3072;
;** 67	-----------------------    C$6 = *((double *)U$5+8);
;** 67	-----------------------    if ( C$6 >= -1.00000000000000002092e-8 ) goto g3;
           STW     .D2T1   A11,*SP--(8)      ; |65| 
           STW     .D2T1   A10,*SP--(8)      ; |65| 
           STDW    .D2T2   B13:B12,*SP--     ; |65| 
           STDW    .D2T2   B11:B10,*SP--     ; |65| 

           STDW    .D2T1   A15:A14,*SP--     ; |65| 
||         MV      .L1     A4,A14            ; |65| 

           STDW    .D2T1   A13:A12,*SP--     ; |65| 
           STW     .D2T2   B3,*SP--(24)      ; |65| 
           LDW     .D1T2   *+A14(4),B4       ; |66| 
           LDW     .D1T1   *+A14(4),A3       ; |67| 
           LDW     .D1T2   *+A14(8),B13      ; |67| 
           NOP             2
           ADDK    .S2     512,B4            ; |66| 

           LDW     .D2T2   *B4,B4            ; |66| 
||         ADDK    .S1     512,A3            ; |67| 

           LDW     .D1T1   *A3,A4            ; |67| 
           MVK     .S1     3072,A3           ; |67| 
           NOP             2
           ADDK    .S2     3064,B4           ; |66| 

           LDDW    .D2T2   *B4,B5:B4         ; |66| 
||         ADD     .L1     A3,A4,A3          ; |67| 
||         LDW     .D1T1   *+A14(56),A4      ; |67| 

           NOP             4

           STW     .D2T1   A4,*+SP(4)        ; |67| 
||         MVK     .S1     36,A4             ; |67| 
||         STDW    .D1T2   B5:B4,*+A14(184)  ; |66| 

           LDDW    .D1T1   *+A3(8),A11:A10   ; |67| 
           MVKL    .S2     0xe2308c3a,B4
           MVKL    .S2     0xbe45798e,B5
           MVKH    .S2     0xe2308c3a,B4
           MVKH    .S2     0xbe45798e,B5
           CMPLTDP .S2X    A11:A10,B5:B4,B0  ; |67| 
           LDBU    .D1T2   *+A14[A4],B12     ; |67| 

   [!B0]   LDW     .D2T1   *+SP(4),A3        ; |71| 
|| [!B0]   B       .S1     $C$L20            ; |67| 
||         MVKL    .S2     0x54442d18,B4

           MVKL    .S2     0x401921fb,B5
|| [ B0]   CALL    .S1     __c6xabi_divd     ; |68| 

   [ B0]   LDDW    .D1T1   *A3,A5:A4         ; |68| 
           MVKH    .S2     0x54442d18,B4
           MVKH    .S2     0x401921fb,B5
   [!B0]   MV      .L1     A3,A5
           ; BRANCHCC OCCURS {$C$L20}        ; |67| 
;** --------------------------------------------------------------------------*
;** 68	-----------------------    (*this).m_min_radius = (*this).m_min_radius+*(double *)U$5/6.283185307179586232*C$6;
           ADDKPC  .S2     $C$RL35,B3,0      ; |68| 
$C$RL35:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |68| 
;** --------------------------------------------------------------------------*
           MPYDP   .M1     A11:A10,A5:A4,A5:A4 ; |68| 
           LDDW    .D1T1   *+A14(184),A7:A6  ; |68| 
           LDW     .D2T1   *+SP(4),A3        ; |71| 
           NOP             7
           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |68| 
           NOP             6

           STDW    .D1T1   A5:A4,*+A14(184)  ; |68| 
||         MV      .L1     A3,A5

;** --------------------------------------------------------------------------*
$C$L20:    
;**	-----------------------g3:
;** 71	-----------------------    min_radius = (*this).m_min_radius;
;** 72	-----------------------    C$5 = (*H$3).limit_radius;
;** 72	-----------------------    if ( min_radius >= C$5 ) goto g5;
;** 73	-----------------------    min_radius = C$5;
;**	-----------------------g5:
;** 76	-----------------------    U$43 = H$1[H$2];
;** 76	-----------------------    permit_speed = (*U$43).f;
;** 79	-----------------------    if ( !(C$4 = (*H$3).axis_number) ) goto g13;

           LDBU    .D1T1   *+A5(2),A0        ; |79| 
||         ZERO    .L1     A15               ; |79| 

           LDDW    .D1T2   *+A3(104),B5:B4   ; |72| 
||         LDW     .D2T1   *+B13[B12],A4     ; |76| 

           LDDW    .D1T1   *+A14(184),A11:A10 ; |71| 
           STW     .D2T1   A5,*+SP(12)
           ADDAD   .D1     A14,24,A3

   [ A0]   LDHU    .D1T1   *A3,A3
|| [!A0]   B       .S1     $C$L24            ; |79| 
||         MV      .L2X    A0,B10

           MV      .L2X    A4,B11            ; |76| 
           CMPLTDP .S2X    A11:A10,B5:B4,B0  ; |72| 
           LDDW    .D1T1   *+A4(16),A5:A4    ; |76| 
   [ B0]   MV      .L1X    B4,A10            ; |73| 

   [ A0]   STW     .D2T1   A3,*+SP(8)
|| [ B0]   MV      .L1X    B5,A11            ; |73| 

           ; BRANCHCC OCCURS {$C$L24}        ; |79| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    V$0 = H$3;
;**  	-----------------------    H$4 = (*this).m_line_mask;
;**  	-----------------------    L$1 = (int)C$4;
;** 79	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 255, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D2T1   *+SP(8),A31       ; |81| 
           MVK     .L1     1,A3              ; |81| 
           SHL     .S1     A3,A15,A6         ; |81| 
           NOP             2
           AND     .L1     A31,A6,A0         ; |81| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L21:    
;**	-----------------------g7:
;** 81	-----------------------    if ( !(1<<i&H$4) ) goto g12;

   [!A0]   BNOP    .S1     $C$L23,4          ; |81| 
|| [ A0]   LDW     .D1T1   *+A14(88),A3      ; |83| 

   [ A0]   LDDW    .D1T1   *+A3[A15],A7:A6   ; |83| 
           ; BRANCHCC OCCURS {$C$L23}        ; |81| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$45 = (*H$1[H$2]).f;
;** 83	-----------------------    C$3 = ABS(*((i<<3)+(*this).m_slope));
;** 83	-----------------------    if ( C$3 <= 1.00000000000000002092e-8 ) goto g10;
           NOP             4
           ABSDP   .S1     A7:A6,A7:A6       ; |83| 
           LDW     .D2T1   *+SP(12),A3

           LDW     .D2T2   *+B13[B12],B4
||         MVKL    .S1     0x3e45798e,A9

           MVKL    .S1     0xe2308c3a,A8
           MVKH    .S1     0x3e45798e,A9
           MVKH    .S1     0xe2308c3a,A8
           CMPGTDP .S1     A7:A6,A9:A8,A0    ; |83| 

           LDDW    .D2T1   *+B4(16),A13:A12
||         ADDAW   .D1     A3,A15,A3         ; |84| 

   [!A0]   B       .S2     $C$L22            ; |83| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
||         ADDK    .S1     7896,A3           ; |84| 

   [ A0]   LDW     .D1T1   *A3,A3            ; |84| 
|| [!A1]   MV      .L1X    B11,A3

           NOP             2

   [!A0]   CMPLTDP .S1     A5:A4,A13:A12,A0  ; |86| 
|| [ A0]   ADDDP   .L1     A11:A10,A7:A6,A9:A8 ; |84| 

           NOP             1
           ; BRANCHCC OCCURS {$C$L22}        ; |83| 
;** --------------------------------------------------------------------------*
;** 84	-----------------------    permit_speed = (**(i*4+(struct CCCTAxisConfig **)V$0+7896)).max_axis_speed*(C$3+min_radius)/C$3;
           LDDW    .D1T1   *+A3(56),A5:A4    ; |84| 
           MV      .L2X    A6,B4             ; |84| 
           MV      .L2X    A7,B5             ; |84| 
           NOP             2
           MPYDP   .M1     A9:A8,A5:A4,A5:A4 ; |84| 
           NOP             3
           CALL    .S1     __c6xabi_divd     ; |84| 
           ADDKPC  .S2     $C$RL36,B3,4      ; |84| 
$C$RL36:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |84| 
           CMPLTDP .S1     A5:A4,A13:A12,A0  ; |86| 
           MV      .L1X    B11,A3
;** --------------------------------------------------------------------------*
$C$L22:    
;**	-----------------------g10:
;** 86	-----------------------    if ( permit_speed >= U$45 ) goto g12;
;** 87	-----------------------    (*U$43).f = permit_speed;
   [ A0]   STDW    .D1T1   A5:A4,*+A3(16)    ; |87| 
;** --------------------------------------------------------------------------*
$C$L23:    
;**	-----------------------g12:
;** 79	-----------------------    ++i;
;** 79	-----------------------    if ( L$1 = L$1-1 ) goto g7;

           SUB     .L1X    B10,1,A0          ; |79| 
||         LDW     .D2T1   *+SP(8),A31       ; |81| 
||         ADD     .S1     1,A15,A15         ; |79| 
||         SUB     .L2     B10,1,B10         ; |79| 

   [ A0]   BNOP    .S1     $C$L21,3          ; |79| 
|| [ A0]   MVK     .L1     1,A3              ; |81| 

   [ A0]   SHL     .S1     A3,A15,A6         ; |81| 
           AND     .L1     A31,A6,A0         ; |81| 
           ; BRANCHCC OCCURS {$C$L21}        ; |79| 
;** --------------------------------------------------------------------------*
$C$L24:    
;**	-----------------------g13:
;**  	-----------------------    H$5 = (*this).m_arc_mask;
;**  	-----------------------    L$2 = 3;
;** 92	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(3, 3, 3)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g14:
;** 93	-----------------------    if ( !(1<<i&H$5) ) goto g17;
;** 94	-----------------------    C$2 = (**(i*4+(struct CCCTAxisConfig **)H$3+7896)).max_axis_speed;
;** 94	-----------------------    if ( C$2 >= (*U$43).f ) goto g17;
;** 95	-----------------------    (*U$43).f = C$2;
;**	-----------------------g17:
;** 92	-----------------------    ++i;
;** 92	-----------------------    if ( L$2 = L$2-1 ) goto g14;
;**  	-----------------------    return;
           MVK     .S1     194,A3

           ADD     .L1     A3,A14,A3
||         LDW     .D2T1   *+SP(4),A7

           LDHU    .D1T1   *A3,A6
           MVK     .L2     2,B4
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/circle_interpolation.cpp
;*      Loop source line                 : 92
;*      Loop opening brace source line   : 92
;*      Loop closing brace source line   : 98
;*      Known Minimum Trip Count         : 3                    
;*      Known Maximum Trip Count         : 3                    
;*      Known Max Trip Count Factor      : 3
;*      Loop Carried Dependency Bound(^) : 8
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     3*       1     
;*      .D units                     3*       2     
;*      .M units                     0        0     
;*      .X cross paths               2        0     
;*      .T address paths             3*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        1     
;*      Bound(.L .S .D .LS .LSD)     3*       2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 8  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L25:    ; PIPED LOOP PROLOG

           SPLOOPD 8       ;16               ; (P) 
||         MVK     .L1     1,A9              ; |93| 
||         ZERO    .S1     A3                ; |92| 
||         MVC     .S2     B4,ILC

;** --------------------------------------------------------------------------*
$C$L26:    ; PIPED LOOP KERNEL

           SHL     .S1     A9,A3,A8          ; |93| (P) <0,0> 
||         ADDAW   .D1     A7,A3,A16         ; |94| (P) <0,0> 

           AND     .L1     A6,A8,A1          ; |93| (P) <0,1> 
||         ADDK    .S1     7896,A16          ; |94| (P) <0,1> 

           MVD     .M1     A1,A0             ; |93| (P) <0,2> Split a long life
|| [ A1]   LDW     .D1T1   *A16,A8           ; |94| (P) <0,2> 

           NOP             3

           SPMASK          S2
||         MV      .S2     B11,B6
|| [!A0]   ZERO    .L2     B0                ; (P) <0,6> 

           ADD     .L1     1,A3,A3           ; |92| (P) <0,7> 
|| [ A0]   LDDW    .D1T1   *+A8(56),A5:A4    ; |94| (P) <0,7>  ^ 
|| [ A0]   LDDW    .D2T2   *+B6(16),B5:B4    ; |94| (P) <0,7>  ^ 

           NOP             4
   [ A0]   CMPLTDP .S2X    A5:A4,B5:B4,B0    ; |94| <0,12>  ^ 
           NOP             1

           SPKERNEL 0,7
|| [ B0]   STDW    .D2T1   A5:A4,*+B6(16)    ; |95| <0,14>  ^ 

;** --------------------------------------------------------------------------*
$C$L27:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(24),B3      ; |99| 
           LDDW    .D2T1   *++SP,A13:A12     ; |99| 
           LDDW    .D2T1   *++SP,A15:A14     ; |99| 
           LDDW    .D2T2   *++SP,B11:B10     ; |99| 
           LDDW    .D2T2   *++SP,B13:B12     ; |99| 

           LDW     .D2T1   *++SP(8),A10      ; |99| 
||         RET     .S2     B3                ; |99| 

           LDW     .D2T1   *++SP(8),A11      ; |99| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |99| 
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolation15SetChannelIndexEiP18NCCCTChannelConfig

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::SetChannelIndex(int, NCCCTChannelConfig *)*
;*                                                                            *
;*   Regs Modified     : A3                                                   *
;*   Regs Used         : A3,A4,A6,B3,B4                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN19CircleInterpolation15SetChannelIndexEiP18NCCCTChannelConfig:
;** --------------------------------------------------------------------------*
;** 381	-----------------------    (*this).m_channel_index = channel_index;
;** 382	-----------------------    (*this).m_channel_config = channel_config;
;**  	-----------------------    return;
           RETNOP  .S2     B3,3              ; |383| 

           MVK     .S1     52,A3             ; |381| 
||         STW     .D1T1   A6,*+A4(56)       ; |382| 

           STB     .D1T2   B4,*+A4[A3]       ; |381| 
           ; BRANCH OCCURS {B3}              ; |383| 
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolation15GetNormalVectorEv

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::GetNormalVector()                      *
;*                                                                            *
;*   Regs Modified     : A3,A6,A7,B4,B5,B6,B7                                 *
;*   Regs Used         : A3,A4,A6,A7,B3,B4,B5,B6,B7                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN19CircleInterpolation15GetNormalVectorEv:
;** --------------------------------------------------------------------------*
;** 140	-----------------------    *((double * const)this+64) = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3040);
;** 141	-----------------------    *((double * const)this+72) = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3048);
;** 142	-----------------------    *((double * const)this+80) = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3056);
;**  	-----------------------    return;
           LDW     .D1T2   *+A4(4),B5        ; |140| 
           LDW     .D1T1   *+A4(4),A3        ; |142| 
           LDW     .D1T2   *+A4(4),B4        ; |141| 
           NOP             2
           ADDK    .S2     512,B5            ; |140| 

           ADDK    .S1     512,A3            ; |142| 
||         LDW     .D2T2   *B5,B6            ; |140| 

           ADDK    .S2     512,B4            ; |141| 
||         LDW     .D1T1   *A3,A3            ; |142| 

           LDW     .D2T2   *B4,B4            ; |141| 
           NOP             2
           ADDK    .S2     3040,B6           ; |140| 

           ADDK    .S1     3056,A3           ; |142| 
||         LDDW    .D2T2   *B6,B7:B6         ; |140| 

           ADDK    .S2     3048,B4           ; |141| 
||         LDDW    .D1T1   *A3,A7:A6         ; |142| 

           RETNOP  .S2     B3,2              ; |143| 
||         LDDW    .D2T2   *B4,B5:B4         ; |141| 

           STDW    .D1T2   B7:B6,*+A4(64)    ; |140| 
           STDW    .D1T1   A7:A6,*+A4(80)    ; |142| 
           STDW    .D1T2   B5:B4,*+A4(72)    ; |141| 
           ; BRANCH OCCURS {B3}              ; |143| 
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolation15ComputeDistanceEd

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::ComputeDistance(double)                *
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
_ZN19CircleInterpolation15ComputeDistanceEd:
;** --------------------------------------------------------------------------*
;** 220	-----------------------    calc = sqrt(pow(param_u, 2.0)+1.0);
;** 221	-----------------------    l = ABS((*this).m_q*(param_u*calc+log(param_u+calc))+(*this).m_C);
;** 222	-----------------------    return l;
           STW     .D2T1   A11,*SP--(8)      ; |219| 

           STDW    .D2T2   B11:B10,*SP--     ; |219| 
||         MV      .L2     B5,B11            ; |219| 
||         MV      .L1X    B5,A5             ; |219| 
||         ZERO    .S2     B5

           STDW    .D2T1   A13:A12,*SP--     ; |219| 
||         MV      .L1X    B3,A13            ; |219| 
||         SET     .S2     B5,0x1e,0x1e,B5
||         MV      .L2     B4,B10            ; |219| 

           CALLP   .S2     pow,B3
||         STW     .D2T1   A10,*SP--(8)      ; |219| 
||         MV      .L1     A4,A12            ; |219| 
||         MV      .S1X    B4,A4             ; |219| 
||         ZERO    .L2     B4                ; |220| 

$C$RL37:   ; CALL OCCURS {pow} {0}           ; |220| 
;** --------------------------------------------------------------------------*
           ZERO    .L1     A7

           SET     .S1     A7,0x14,0x1d,A7
||         ZERO    .L1     A6                ; |220| 

           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |220| 
           CALLP   .S2     sqrt,B3
$C$RL38:   ; CALL OCCURS {sqrt} {0}          ; |220| 

           MV      .L1     A5,A11            ; |220| 
||         MV      .S1     A4,A10            ; |220| 

           ADDDP   .L1X    A11:A10,B11:B10,A5:A4 ; |221| 
           CALLP   .S2     log,B3
$C$RL39:   ; CALL OCCURS {log} {0}           ; |221| 
;** --------------------------------------------------------------------------*
           MPYDP   .M2X    A11:A10,B11:B10,B5:B4 ; |221| 
           NOP             9
           ADDDP   .L2X    A5:A4,B5:B4,B5:B4 ; |221| 
           LDDW    .D1T1   *+A12(152),A5:A4  ; |221| 
           MV      .L2X    A13,B3            ; |223| 
           NOP             4
           MPYDP   .M2X    B5:B4,A5:A4,B5:B4 ; |221| 
           LDDW    .D1T1   *+A12(160),A5:A4  ; |221| 
           LDW     .D2T1   *++SP(8),A10      ; |223| 
           LDDW    .D2T1   *++SP,A13:A12     ; |223| 
           LDDW    .D2T2   *++SP,B11:B10     ; |223| 
           LDW     .D2T1   *++SP(8),A11      ; |223| 
           NOP             5
           ADDDP   .L1X    A5:A4,B5:B4,A5:A4 ; |221| 
           NOP             2
           RETNOP  .S2     B3,3              ; |223| 
           ABSDP   .S1     A5:A4,A5:A4       ; |221| 
           NOP             1
           ; BRANCH OCCURS {B3}              ; |223| 
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolation12ComputeAngleEd

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::ComputeAngle(double)                   *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 56 Save = 56 byte                  *
;******************************************************************************
_ZN19CircleInterpolation12ComputeAngleEd:
;** --------------------------------------------------------------------------*
;** 183	-----------------------    if ( ABS(*((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3080)) > 1.00000000000000002092e-8 ) goto g3;
           STW     .D2T1   A11,*SP--(8)      ; |181| 
           STW     .D2T1   A10,*SP--(8)      ; |181| 
           STDW    .D2T2   B13:B12,*SP--     ; |181| 
           STDW    .D2T2   B11:B10,*SP--     ; |181| 

           STDW    .D2T1   A15:A14,*SP--     ; |181| 
||         MV      .L1     A4,A14            ; |181| 

           STDW    .D2T1   A13:A12,*SP--     ; |181| 
           STW     .D2T2   B3,*SP--(8)       ; |181| 
           LDW     .D1T1   *+A14(4),A3       ; |183| 
           MV      .L2     B5,B12            ; |181| 
           MV      .L2     B4,B13            ; |181| 
           ZERO    .L2     B4                ; |184| 
           ZERO    .L2     B5
           ADDK    .S1     512,A3            ; |183| 
           LDW     .D1T1   *A3,A3            ; |183| 
           MVKL    .S1     0xe2308c3a,A12
           MVKL    .S1     0x3e45798e,A13
           MVKH    .S1     0xe2308c3a,A12
           MVKH    .S1     0x3e45798e,A13
           ADDK    .S1     3080,A3           ; |183| 
           LDDW    .D1T1   *A3,A5:A4         ; |183| 
           SET     .S2     B5,0x14,0x1d,B5
           NOP             3
           ABSDP   .S1     A5:A4,A5:A4       ; |183| 
           NOP             1
           CMPGTDP .S1     A5:A4,A13:A12,A0  ; |183| 
           MV      .L1X    B12,A5            ; |184| 

   [ A0]   BNOP    .S1     $C$L28,4          ; |183| 
||         MV      .L1X    B13,A4            ; |204| 
|| [ A0]   LDDW    .D1T1   *+A14(96),A5:A4   ; |184| 

   [ A0]   MPYDP   .M1     A5:A4,A5:A4,A5:A4 ; |184| 
           ; BRANCHCC OCCURS {$C$L28}        ; |183| 
;** --------------------------------------------------------------------------*
;** 204	-----------------------    return distance/(*this).m_helix_const;
           LDDW    .D1T1   *+A14(144),A7:A6  ; |204| 
           CALL    .S1     __c6xabi_divd     ; |204| 
           ADDKPC  .S2     $C$RL40,B3,2      ; |204| 
           MV      .L2X    A7,B5             ; |204| 
           MV      .L2X    A6,B4             ; |204| 
$C$RL40:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |204| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(8),B3       ; |205| 
           LDDW    .D2T1   *++SP,A13:A12     ; |205| 
           LDDW    .D2T1   *++SP,A15:A14     ; |205| 
           LDDW    .D2T2   *++SP,B11:B10     ; |205| 
           LDDW    .D2T2   *++SP,B13:B12     ; |205| 

           LDW     .D2T1   *++SP(8),A10      ; |205| 
||         RET     .S2     B3                ; |205| 

           LDW     .D2T1   *++SP(8),A11      ; |205| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |205| 
;** --------------------------------------------------------------------------*
$C$L28:    
;**	-----------------------g3:
;** 184	-----------------------    C$4 = (*this).m_pre_u;
;** 184	-----------------------    C$3 = (*this).m_q;
;** 184	-----------------------    current_u = (*this).m_pre_u+(distance-(*this).m_pre_l)/ABS((C$3+C$3)*sqrt(C$4*C$4+1.0));
;** 185	-----------------------    current_l = CircleInterpolation::ComputeDistance(this, current_u);
;** 187	-----------------------    distance_error = current_l-distance;
;** 189	-----------------------    if ( ABS(distance_error) <= 1.00000000000000002092e-8 ) goto g7;
           LDDW    .D1T1   *+A14(152),A11:A10 ; |184| 
           NOP             8
           ADDDP   .L1X    B5:B4,A5:A4,A5:A4 ; |184| 
           CALL    .S1     sqrt              ; |184| 
           ADDKPC  .S2     $C$RL41,B3,4      ; |184| 
$C$RL41:   ; CALL OCCURS {sqrt} {0}          ; |184| 
;** --------------------------------------------------------------------------*
           ADDDP   .L1     A11:A10,A11:A10,A7:A6 ; |184| 
           LDDW    .D1T1   *+A14(104),A9:A8  ; |184| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A7:A6 ; |184| 
           NOP             9
           ABSDP   .S1     A7:A6,A7:A6       ; |184| 
           MV      .L1X    B13,A4
           MV      .L1X    B12,A5

           SUBDP   .L1     A5:A4,A9:A8,A5:A4 ; |184| 
||         MV      .L2X    A6,B4             ; |184| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A7,B5             ; |184| 

$C$RL42:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |184| 
           LDDW    .D1T1   *+A14(96),A7:A6   ; |184| 
           NOP             4
           ADDDP   .L1     A5:A4,A7:A6,A11:A10 ; |184| 
           MV      .S1     A14,A4            ; |185| 
           NOP             6
           MV      .L2X    A10,B4            ; |185| 

           CALLP   .S2     _ZN19CircleInterpolation15ComputeDistanceEd,B3
||         MV      .L2X    A11,B5            ; |185| 

$C$RL43:   ; CALL OCCURS {_ZN19CircleInterpolation15ComputeDistanceEd} {0}  ; |185| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B13,A6            ; |185| 
           MV      .L1X    B12,A7            ; |185| 
           SUBDP   .L1     A5:A4,A7:A6,A7:A6 ; |187| 
           ZERO    .S1     A15               ; |188| 
           NOP             6
           MV      .L2X    A6,B11            ; |187| 

           MV      .L2X    A7,B10            ; |187| 
||         ABSDP   .S1     A7:A6,A7:A6       ; |189| 

           NOP             1
           CMPGTDP .S1     A7:A6,A13:A12,A0  ; |189| 
           NOP             1

   [!A0]   BNOP    .S1     $C$L30,4          ; |189| 
|| [ A0]   LDW     .D1T1   *+A14(48),A3      ; |189| 

           CMPLT   .L1     A15,A3,A0         ; |189| 
           ; BRANCHCC OCCURS {$C$L30}        ; |189| 
;** --------------------------------------------------------------------------*
;** 188	-----------------------    iteration_count = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L29:    
;**	-----------------------g5:
;** 189	-----------------------    if ( iteration_count >= (*this).kMaxIterarionCount ) goto g7;

   [ A0]   ZERO    .L2     B4                ; |190| 
|| [!A0]   B       .S1     $C$L30            ; |189| 
|| [ A0]   LDDW    .D1T1   *+A14(152),A13:A12 ; |190| 

   [ A0]   CALL    .S1     pow               ; |190| 
   [ A0]   MV      .L1     A10,A4            ; |190| 
   [ A0]   MV      .L1     A11,A5            ; |190| 
   [ A0]   ZERO    .L2     B5
   [ A0]   SET     .S2     B5,0x1e,0x1e,B5
           ; BRANCHCC OCCURS {$C$L30}        ; |189| 
;** --------------------------------------------------------------------------*
;** 190	-----------------------    C$2 = (*this).m_q;
;** 190	-----------------------    a$1 = current_u-distance_error/ABS((C$2+C$2)*sqrt(pow(current_u, 2.0)+1.0));
;** 190	-----------------------    current_u = a$1;
;** 191	-----------------------    current_l = CircleInterpolation::ComputeDistance(this, current_u);
;** 192	-----------------------    distance_error = current_l-distance;
;** 193	-----------------------    ++iteration_count;
;** 189	-----------------------    if ( ABS(distance_error) > 1.00000000000000002092e-8 ) goto g5;
           ADDKPC  .S2     $C$RL44,B3,0      ; |190| 
$C$RL44:   ; CALL OCCURS {pow} {0}           ; |190| 
;** --------------------------------------------------------------------------*
           ZERO    .L1     A7

           SET     .S1     A7,0x14,0x1d,A7
||         ZERO    .L1     A6                ; |190| 

           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |190| 
           CALLP   .S2     sqrt,B3
$C$RL45:   ; CALL OCCURS {sqrt} {0}          ; |190| 
           ADDDP   .L1     A13:A12,A13:A12,A7:A6 ; |190| 
           NOP             6
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |190| 
           NOP             9
           ABSDP   .S1     A5:A4,A7:A6       ; |190| 
           MV      .L1X    B11,A4            ; |190| 
           MV      .L1X    B10,A5            ; |190| 
           MV      .L2X    A6,B4             ; |190| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A7,B5             ; |190| 

$C$RL46:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |190| 
           SUBDP   .L1     A11:A10,A5:A4,A11:A10 ; |190| 
           MV      .S1     A14,A4            ; |191| 
           NOP             6
           MV      .L2X    A10,B4            ; |191| 

           CALLP   .S2     _ZN19CircleInterpolation15ComputeDistanceEd,B3
||         MV      .L2X    A11,B5            ; |191| 

$C$RL47:   ; CALL OCCURS {_ZN19CircleInterpolation15ComputeDistanceEd} {0}  ; |191| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B12,A7            ; |191| 
           MV      .L1X    B13,A6            ; |191| 
           SUBDP   .L1     A5:A4,A7:A6,A7:A6 ; |192| 
           MVKL    .S2     0xe2308c3a,B4
           MVKL    .S2     0x3e45798e,B5
           MVKH    .S2     0xe2308c3a,B4
           MVKH    .S2     0x3e45798e,B5
           ADD     .S1     1,A15,A15         ; |193| 
           NOP             2
           MV      .L2X    A7,B10            ; |192| 

           MV      .L2X    A6,B11            ; |192| 
||         ABSDP   .S1     A7:A6,A7:A6       ; |189| 

           NOP             2
           CMPGTDP .S2X    A7:A6,B5:B4,B0    ; |189| 
           NOP             1

   [ B0]   BNOP    .S1     $C$L29,4          ; |189| 
|| [ B0]   LDW     .D1T1   *+A14(48),A3      ; |189| 

           CMPLT   .L1     A15,A3,A0         ; |189| 
           ; BRANCHCC OCCURS {$C$L29}        ; |189| 
;** --------------------------------------------------------------------------*
$C$L30:    
;**	-----------------------g7:
;** 195	-----------------------    (*this).m_pre_u = current_u;
;** 196	-----------------------    (*this).m_pre_l = current_l;
;** 197	-----------------------    (*this).m_current_radius = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3080)*current_u*(*this).m_k/6.283185307179586232;
;** 204	-----------------------    C$1 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3080;
;** 204	-----------------------    return ((*this).m_current_radius-C$1[-2])*6.283185307179586232/*C$1;
           LDW     .D1T1   *+A14(4),A3       ; |197| 
           MVKL    .S2     0x401921fb,B5
           MVKL    .S2     0x54442d18,B4
           MVKH    .S2     0x401921fb,B5
           MVKH    .S2     0x54442d18,B4
           ADDK    .S1     512,A3            ; |197| 
           LDW     .D1T1   *A3,A3            ; |197| 
           STDW    .D1T1   A5:A4,*+A14(104)  ; |196| 
           STDW    .D1T1   A11:A10,*+A14(96) ; |195| 
           NOP             2
           ADDK    .S1     3080,A3           ; |197| 
           LDDW    .D1T1   *A3,A7:A6         ; |197| 
           NOP             4
           MPYDP   .M1     A11:A10,A7:A6,A9:A8 ; |197| 
           LDDW    .D1T1   *+A14(128),A7:A6  ; |197| 
           NOP             8
           MPYDP   .M1     A7:A6,A9:A8,A7:A6 ; |197| 
           NOP             9

           MV      .L1     A6,A4             ; |197| 
||         MV      .S1     A7,A5             ; |197| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL48:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |197| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A14(4),B4       ; |204| 
           MVK     .S1     3080,A3           ; |204| 
           STDW    .D1T1   A5:A4,*+A14(112)  ; |197| 
           LDDW    .D1T1   *+A14(112),A5:A4  ; |204| 
           NOP             1
           ADDK    .S2     512,B4            ; |204| 
           LDW     .D2T2   *B4,B4            ; |204| 
           NOP             4
           ADD     .L2X    A3,B4,B6          ; |204| 
           LDDW    .D2T2   *-B6(16),B5:B4    ; |204| 
           NOP             4
           SUBDP   .L2X    A5:A4,B5:B4,B5:B4 ; |204| 
           MVKL    .S1     0x401921fb,A5
           MVKL    .S1     0x54442d18,A4
           MVKH    .S1     0x401921fb,A5
           MVKH    .S1     0x54442d18,A4
           NOP             2
           MPYDP   .M2X    A5:A4,B5:B4,B9:B8 ; |204| 
           LDDW    .D2T2   *B6,B5:B4         ; |204| 
           NOP             9
           MV      .L1X    B8,A4             ; |204| 

           MV      .L1X    B9,A5             ; |204| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL49:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |204| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(8),B3       ; |205| 
           LDDW    .D2T1   *++SP,A13:A12     ; |205| 
           LDDW    .D2T1   *++SP,A15:A14     ; |205| 
           LDDW    .D2T2   *++SP,B11:B10     ; |205| 
           LDDW    .D2T2   *++SP,B13:B12     ; |205| 

           LDW     .D2T1   *++SP(8),A10      ; |205| 
||         RET     .S2     B3                ; |205| 

           LDW     .D2T1   *++SP(8),A11      ; |205| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |205| 
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolation15ComputePositionEdP8LineData

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::ComputePosition(double, LineData *)    *
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
_ZN19CircleInterpolation15ComputePositionEdP8LineData:
;** --------------------------------------------------------------------------*
;** 111	-----------------------    C$4 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data;
;** 111	-----------------------    if ( *((double *)C$4+2480) < 1.00000000000000002092e-8 ) goto g3;
;** 111	-----------------------    if ( *((double *)C$4+3064) >= 1.00000000000000002092e-8 ) goto g8;
           STW     .D2T1   A14,*SP--(8)      ; |110| 
           STDW    .D2T2   B11:B10,*SP--     ; |110| 
           STDW    .D2T1   A13:A12,*SP--     ; |110| 

           STDW    .D2T1   A11:A10,*SP--     ; |110| 
||         MV      .L1     A4,A10            ; |110| 

           LDW     .D1T1   *+A10(4),A3       ; |111| 
           MVKL    .S2     0xe2308c3a,B6
           MVKL    .S2     0x3e45798e,B7
           MVK     .S1     2480,A4           ; |111| 
           MVKH    .S2     0xe2308c3a,B6
           ADDK    .S1     512,A3            ; |111| 
           LDW     .D1T1   *A3,A3            ; |111| 
           MV      .L1     A6,A11            ; |110| 
           MVKH    .S2     0x3e45798e,B7
           MVK     .S1     3064,A6           ; |111| 
           MV      .L1X    B4,A14            ; |110| 
           ADD     .L1     A4,A3,A4          ; |111| 
           LDDW    .D1T1   *A4,A5:A4         ; |111| 
           ADD     .L1     A6,A3,A3          ; |111| 
           MV      .L2     B3,B11            ; |110| 
           MV      .L1X    B5,A13            ; |110| 
           NOP             1
           CMPLTDP .S1X    A5:A4,B7:B6,A0    ; |111| 
           NOP             1
   [!A0]   LDDW    .D1T1   *A3,A5:A4         ; |111| 
   [ A0]   MVK     .L2     0x1,B0            ; |111| 
           NOP             3
   [!A0]   CMPLTDP .S2X    A5:A4,B7:B6,B0    ; |111| 
           NOP             1

   [!B0]   BNOP    .S1     $C$L33,3          ; |111| 
|| [ B0]   LDW     .D1T1   *+A10(56),A3      ; |113| 

   [!B0]   CALL    .S1     _ZN19CircleInterpolation12ComputeAngleEd ; |126| 
   [ B0]   LDBU    .D1T1   *+A3(2),A0        ; |113| 
           ; BRANCHCC OCCURS {$C$L33}        ; |111| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 113	-----------------------    if ( !(*(*this).m_channel_config).axis_number ) goto g8;
           ZERO    .L1     A12               ; |113| 
           NOP             3

   [!A0]   BNOP    .S1     $C$L32,4          ; |113| 
|| [ A0]   LDW     .D1T2   *+A10(4),B4       ; |114| 

           ADDK    .S2     512,B4            ; |114| 
           ; BRANCHCC OCCURS {$C$L32}        ; |113| 
;** --------------------------------------------------------------------------*
;** 113	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           MVK     .S2     1432,B10          ; |114| 
||         EXTU    .S1     A12,24,24,A3      ; |114| 
||         LDW     .D2T2   *B4,B4            ; |114| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L31:    
;**	-----------------------g5:
;** 114	-----------------------    if ( !AxisMovData::CheckMask((struct xisMovData *)(*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+1432, (unsigned char)i) ) goto g7;
;** 115	-----------------------    C$3 = i<<3;
;** 115	-----------------------    *(C$3+(double * const)data+1440) = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+C$3+1440);
;**	-----------------------g7:
;** 113	-----------------------    if ( (*(*this).m_channel_config).axis_number > (++i) ) goto g5;
           NOP             1
           CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |114| 
           ADDKPC  .S2     $C$RL50,B3,1      ; |114| 
           ADD     .L2     B10,B4,B5         ; |114| 
           MV      .L2X    A3,B4             ; |114| 
           MV      .L1X    B5,A4             ; |114| 
$C$RL50:   ; CALL OCCURS {_ZN11AxisMovData9CheckMaskEh} {0}  ; |114| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |114| 
   [ A0]   LDW     .D1T1   *+A10(4),A3       ; |115| 
           LDW     .D1T1   *+A10(56),A31     ; |113| 
           SHL     .S1     A12,3,A6          ; |115| 
           ADD     .L1     1,A12,A12         ; |113| 
           NOP             1
   [ A0]   ADDK    .S1     512,A3            ; |115| 
   [ A0]   LDW     .D1T1   *A3,A4            ; |115| 
           LDBU    .D1T1   *+A31(2),A3       ; |113| 
           NOP             3

   [ A0]   ADD     .L1     A6,A4,A4          ; |115| 
|| [ A0]   ADD     .S1     A11,A6,A6         ; |115| 

           CMPGT   .L1     A3,A12,A2         ; |113| 
|| [ A0]   ADDK    .S1     1440,A4           ; |115| 

   [ A2]   LDW     .D1T2   *+A10(4),B4       ; |114| 
|| [ A0]   ADDK    .S1     1440,A6           ; |115| 

   [ A2]   BNOP    .S2     $C$L31,3          ; |113| 
|| [ A0]   LDDW    .D1T1   *A4,A5:A4         ; |115| 
|| [ A2]   EXTU    .S1     A12,24,24,A3      ; |114| 

           ADDK    .S2     512,B4            ; |114| 

   [ A0]   STDW    .D1T1   A5:A4,*A6         ; |115| 
|| [ A2]   LDW     .D2T2   *B4,B4            ; |114| 

           ; BRANCHCC OCCURS {$C$L31}        ; |113| 
;** --------------------------------------------------------------------------*
$C$L32:    
           CALL    .S1     _ZN19CircleInterpolation12ComputeAngleEd ; |126| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L33:    
;**	-----------------------g8:
;** 126	-----------------------    (*this).m_current_angle = CircleInterpolation::ComputeAngle(this, current_l);
;**  	-----------------------    K$40 = (double * const)data+1440;
;** 129	-----------------------    if ( !(C$2 = (*(*this).m_channel_config).axis_number) ) goto g13;
           MV      .L2X    A14,B4            ; |126| 
           MV      .L1     A10,A4            ; |126| 
           MV      .L2X    A13,B5            ; |126| 
           ADDKPC  .S2     $C$RL51,B3,0      ; |126| 
$C$RL51:   ; CALL OCCURS {_ZN19CircleInterpolation12ComputeAngleEd} {0}  ; |126| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(56),A3      ; |129| 
           MVK     .S1     1440,A6
           ZERO    .L2     B8                ; |129| 
           ADD     .L1     A6,A11,A6
           STDW    .D1T1   A5:A4,*+A10(120)  ; |126| 
           LDBU    .D1T1   *+A3(2),A0        ; |129| 
           ADDAD   .D1     A10,24,A3
           NOP             3

   [!A0]   BNOP    .S1     $C$L37,3          ; |129| 
|| [ A0]   LDHU    .D1T2   *A3,B24
|| [ A0]   MV      .L2     B8,B23
|| [ A0]   MVK     .S2     1,B20             ; |130| 
|| [ A0]   MV      .D2X    A10,B22

   [ A0]   SHL     .S2     B20,B23,B4        ; |130| (P) <0,0> 
           AND     .L2     B24,B4,B1         ; |130| (P) <0,1> 
           ; BRANCHCC OCCURS {$C$L37}        ; |129| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    H$1 = (*this).m_line_mask;
;**  	-----------------------    L$1 = (int)C$2;
;** 129	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 255, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g10:
;** 130	-----------------------    if ( !(1<<i&H$1) ) goto g12;
;** 131	-----------------------    *((i<<3)+K$40) = *((i<<3)+(*this).__b_22InterpolationAlgorithm.m_geometry)+(*this).m_current_angle**((i<<3)+(*this).m_slope);
;**	-----------------------g12:
;** 129	-----------------------    ++i;
;** 129	-----------------------    if ( L$1 = L$1-1 ) goto g10;

   [ B1]   LDW     .D2T2   *+B22(88),B9      ; |131| (P) <0,2> 
||         MVD     .M2     B1,B0             ; |130| (P) <0,3> Split a long life

           DINT                              ; interrupts off
           SUB     .L1     A0,1,A0
           MV      .L2X    A6,B21
   [ B1]   LDDW    .D2T2   *+B22(120),B17:B16 ; |131| (P) <0,5> 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/circle_interpolation.cpp
;*      Loop source line                 : 129
;*      Loop opening brace source line   : 129
;*      Loop closing brace source line   : 133
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 255                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 23
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 6
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        1     
;*      .D units                     0        6*    
;*      .M units                     0        4     
;*      .X cross paths               0        0     
;*      .T address paths             0        6*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        2     (.L or .S unit)
;*      Addition ops (.LSD)          0        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        2     
;*      Bound(.L .S .D .LS .LSD)     1        4     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 23 Schedule found with 2 iterations in parallel
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
$C$L34:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L35:    ; PIPED LOOP KERNEL
   [ B0]   LDDW    .D2T2   *+B9[B23],B19:B18 ; |131| <0,7>  ^ 
           NOP             4

   [ B0]   LDW     .D2T2   *+B22(4),B4       ; |131| <0,12> 
||         MPYDP   .M2     B19:B18,B17:B16,B5:B4 ; |131| <0,12>  ^ 

           NOP             4
   [ B0]   LDDW    .D2T2   *+B4[B23],B7:B6   ; |131| <0,17> 
           NOP             4

           ADD     .S2     1,B23,B23         ; |129| <0,22> 
||         ADDDP   .L2     B5:B4,B7:B6,B5:B4 ; |131| <0,22>  ^ 

           SHL     .S2     B20,B23,B4        ; |130| <1,0> 

   [ A0]   BDEC    .S1     $C$L35,A0         ; |129| <0,24> 
||         AND     .L2     B24,B4,B1         ; |130| <1,1> 

   [ B1]   LDW     .D2T2   *+B22(88),B9      ; |131| <1,2> 
           MVD     .M2     B1,B0             ; |130| <1,3> Split a long life
           NOP             1
   [ B1]   LDDW    .D2T2   *+B22(120),B17:B16 ; |131| <1,5> 

           MV      .L2     B23,B8            ; |129| <0,29> Inserted to break DPG cycle
|| [ B0]   STDW    .D2T2   B5:B4,*+B21[B8]   ; |131| <0,29>  ^ 

;** --------------------------------------------------------------------------*
$C$L36:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MV      .L1X    B21,A6

           MV      .L1X    B22,A10
||         RINT                              ; interrupts on

;** --------------------------------------------------------------------------*
$C$L37:    
;**	-----------------------g13:
;** 136	-----------------------    CircleInterpolation::ComputeArcPosition(this, (*this).m_current_angle, K$40);
;**  	-----------------------    return;
           LDDW    .D1T1   *+A10(120),A9:A8  ; |136| 
           MV      .L1     A10,A4            ; |136| 
           NOP             3
           MV      .L2X    A8,B4             ; |136| 

           CALLP   .S2     _ZNK19CircleInterpolation18ComputeArcPositionEdPd,B3
||         MV      .L2X    A9,B5             ; |136| 

$C$RL52:   ; CALL OCCURS {_ZNK19CircleInterpolation18ComputeArcPositionEdPd} {0}  ; |136| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T1   *++SP,A11:A10     ; |137| 

           LDDW    .D2T1   *++SP,A13:A12     ; |137| 
||         MV      .L2     B11,B3            ; |137| 

           LDDW    .D2T2   *++SP,B11:B10     ; |137| 
||         RET     .S2     B3                ; |137| 

           LDW     .D2T1   *++SP(8),A14      ; |137| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |137| 
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolation15ComputeGeometryEv

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::ComputeGeometry()                      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,   *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP,*
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 48 Save = 48 byte                  *
;******************************************************************************
_ZN19CircleInterpolation15ComputeGeometryEv:
;** --------------------------------------------------------------------------*
;** 140	-----------------------    *((double * const)this+64) = C$5 = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3040);  // [35]
;** 141	-----------------------    *((double * const)this+72) = C$4 = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3048);  // [35]
;** 142	-----------------------    *((double * const)this+80) = C$6 = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3056);  // [35]
;** 35	-----------------------    (*this).m_surface_flag = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+1328);
;** 36	-----------------------    (*this).m_line_mask = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+1432);
;** 38	-----------------------    if ( ABS(ABS(C$6)-1.0) < 1.00000000000000002092e-8 ) goto g7;

           STW     .D2T1   A14,*SP--(8)      ; |31| 
||         MV      .L1     A4,A14            ; |31| 
||         MVKL    .S1     0xe2308c3a,A4

           STDW    .D2T2   B13:B12,*SP--     ; |31| 
||         ZERO    .L2     B13
||         ZERO    .S2     B12               ; |38| 
||         MVKL    .S1     0x3e45798e,A5

           STDW    .D2T2   B11:B10,*SP--     ; |31| 
||         SET     .S2     B13,0x14,0x1d,B13
||         MVKH    .S1     0xe2308c3a,A4

           STDW    .D2T1   A13:A12,*SP--     ; |31| 
||         MVKH    .S1     0x3e45798e,A5

           STDW    .D2T1   A11:A10,*SP--     ; |31| 
||         MV      .L2X    A4,B10            ; |43| 

           STW     .D2T2   B3,*SP--(8)       ; |31| 
           LDW     .D1T2   *+A14(4),B4       ; |142| 
           LDW     .D1T1   *+A14(4),A3       ; |140| 
           LDW     .D1T2   *+A14(4),B6       ; |36| 
           LDW     .D1T2   *+A14(4),B5       ; |35| 
           MV      .L2X    A5,B11            ; |43| 
           ADDK    .S2     512,B4            ; |142| 

           LDW     .D2T2   *B4,B4            ; |142| 
||         ADDK    .S1     512,A3            ; |140| 

           LDW     .D1T1   *A3,A3            ; |140| 
||         ADDK    .S2     512,B6            ; |36| 

           ADDK    .S2     512,B5            ; |35| 
           LDW     .D2T2   *B6,B6            ; |36| 
           LDW     .D2T2   *B5,B5            ; |35| 
           ADDK    .S2     3056,B4           ; |142| 

           LDDW    .D2T1   *B4,A19:A18       ; |142| 
||         ADDK    .S1     3040,A3           ; |140| 
||         LDW     .D1T2   *+A14(4),B4       ; |141| 

           MVK     .S1     196,A3            ; |35| 
||         LDDW    .D1T1   *A3,A21:A20       ; |140| 

           ADDK    .S2     1432,B6           ; |36| 
           LDHU    .D2T2   *B6,B7            ; |36| 
           MVK     .S2     1328,B6           ; |35| 

           ABSDP   .S1     A19:A18,A9:A8     ; |38| 
||         ADDK    .S2     512,B4            ; |141| 
||         STDW    .D1T1   A19:A18,*+A14(80) ; |142| 

           LDW     .D2T2   *B4,B4            ; |141| 
||         STDW    .D1T1   A21:A20,*+A14(64) ; |140| 

           SUBDP   .L1X    A9:A8,B13:B12,A17:A16 ; |38| 
||         ABSDP   .S1     A21:A20,A7:A6     ; |43| 
||         LDBU    .D2T1   *+B5[B6],A8       ; |35| 

           MVK     .S2     194,B6            ; |40| 
           ADD     .L2X    B6,A14,B6         ; |40| 
           SUBDP   .L2X    A7:A6,B13:B12,B9:B8 ; |43| 

           ADDAD   .D1     A14,24,A6         ; |36| 
||         ADDK    .S2     3048,B4           ; |141| 

           STH     .D1T2   B7,*A6            ; |36| 
||         MVK     .L2     3,B7              ; |40| 

           LDDW    .D2T2   *B4,B17:B16       ; |141| 
||         STB     .D1T1   A8,*+A14[A3]      ; |35| 

           ABSDP   .S1     A17:A16,A7:A6     ; |38| 
           MV      .L1X    B12,A3            ; |142| 
           CMPLTDP .S1     A7:A6,A5:A4,A0    ; |38| 
           ABSDP   .S2     B9:B8,B5:B4       ; |43| 

   [ A0]   B       .S1     $C$L38            ; |38| 
||         STDW    .D1T2   B17:B16,*+A14(72) ; |141| 

   [ A0]   STH     .D2T2   B7,*B6            ; |40| 
||         CMPLTDP .S2     B5:B4,B11:B10,B0  ; |43| 

           MVK     .S1     196,A4            ; |41| 
           ABSDP   .S2     B17:B16,B5:B4     ; |48| 
   [ A0]   STB     .D1T1   A3,*+A14[A4]      ; |41| 
           SUBDP   .L2     B5:B4,B13:B12,B5:B4 ; |48| 
           ; BRANCHCC OCCURS {$C$L38}        ; |38| 
;** --------------------------------------------------------------------------*
;** 43	-----------------------    if ( ABS(ABS(C$5)-1.0) < 1.00000000000000002092e-8 ) goto g6;
;** 48	-----------------------    if ( ABS(ABS(C$4)-1.0) < 1.00000000000000002092e-8 ) goto g5;
;** 54	-----------------------    (*this).m_arc_mask = 7u;
;** 55	-----------------------    (*this).m_surface_flag = 3u;
;** 55	-----------------------    goto g8;
   [!B0]   MV      .S2     B7,B6             ; |54| 
   [!B0]   MVK     .L2     5,B7              ; |50| 
   [!B0]   MVK     .L1     7,A6              ; |54| 
           MVK     .S1     194,A31           ; |45| 
           MV      .L1X    B10,A4            ; |48| 
           MVK     .S1     196,A8            ; |46| 
           ABSDP   .S2     B5:B4,B5:B4       ; |48| 
   [!B0]   MV      .L1     A8,A3             ; |45| 
   [!B0]   MV      .L2X    A8,B8             ; |51| 
           CMPLTDP .S1X    B5:B4,A5:A4,A0    ; |48| 

           ADD     .L1     A31,A14,A4        ; |45| 
||         MVK     .L2     2,B4              ; |46| 
||         MVK     .D1     6,A31             ; |45| 

   [!B0]   MVK     .S1     194,A4            ; |54| 
|| [ B0]   MVK     .L1     0x1,A0
|| [!B0]   MVK     .S2     194,B4            ; |50| 

   [!B0]   ADD     .L1     A4,A14,A7         ; |54| 
|| [!A0]   STB     .D1T2   B6,*+A14[A3]      ; |55| 
|| [!B0]   ADD     .L2X    B4,A14,B9         ; |50| 
|| [!B0]   MVK     .S2     1,B6              ; |51| 

   [!A0]   STH     .D1T1   A6,*A7            ; |54| 
|| [ B0]   MV      .L1X    B12,A0            ; |54| 

   [!A0]   B       .S2     $C$L40            ; |55| 
|| [!A0]   LDW     .D1T1   *+A14(56),A5      ; |149| 
|| [!A0]   MVK     .S1     176,A6            ; |59| 
|| [ A0]   STH     .D2T2   B7,*B9            ; |50| 

   [ A0]   BNOP    .S1     $C$L39,1          ; |52| 
|| [ B0]   STB     .D1T2   B4,*+A14[A8]      ; |46| 
|| [!A0]   MV      .L2     B12,B4            ; |59| 
|| [ A0]   MV      .S2X    A14,B4

   [!A0]   STB     .D1T2   B4,*+A14[A6]      ; |59| 
   [ B0]   STH     .D1T1   A31,*A4           ; |45| 
   [ A0]   STB     .D2T2   B6,*+B4[B8]       ; |51| 
           ; BRANCHCC OCCURS {$C$L40}        ; |55| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 50	-----------------------    (*this).m_arc_mask = 5u;
;** 51	-----------------------    (*this).m_surface_flag = 1u;
;** 52	-----------------------    goto g8;
;**	-----------------------g6:
;** 45	-----------------------    (*this).m_arc_mask = 6u;
;** 46	-----------------------    (*this).m_surface_flag = 2u;
;** 47	-----------------------    goto g8;

           LDW     .D1T1   *+A14(56),A5      ; |149| 
||         MVK     .S1     176,A6            ; |59| 
||         MV      .L2     B12,B4            ; |59| 

           ; BRANCH OCCURS {$C$L39}          ; |52| 
;** --------------------------------------------------------------------------*
$C$L38:    
;**	-----------------------g7:
;** 40	-----------------------    (*this).m_arc_mask = 3u;
;** 41	-----------------------    (*this).m_surface_flag = 0u;
           MVK     .S1     176,A6            ; |59| 
           LDW     .D1T1   *+A14(56),A5      ; |149| 
           NOP             4
           MV      .L2     B12,B4            ; |59| 
;** --------------------------------------------------------------------------*
$C$L39:    
           STB     .D1T2   B4,*+A14[A6]      ; |59| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L40:    
;**	-----------------------g8:
;** 57	-----------------------    (*this).m_line_mask = (*this).m_line_mask&~(*this).m_arc_mask;
;** 59	-----------------------    (*this).m_is_reach_limit_radius = 0;
;** 147	-----------------------    (*this).m_k_square = 0.0;  // [36]
;** 149	-----------------------    if ( !(U$71 = (*(*this).m_channel_config).axis_number) ) goto g13;  // [36]
;** 149	-----------------------    i = 0;  // [36]
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           LDBU    .D1T1   *+A5(2),A0        ; |149| 
||         MVK     .S1     194,A4            ; |57| 
||         ZERO    .L1     A7:A6             ; |147| 

           ADDAD   .D1     A14,24,A3         ; |57| 
||         ZERO    .L1     A12               ; |149| 

           LDHU    .D1T1   *A3,A4            ; |57| 
||         ADD     .L1     A4,A14,A3         ; |57| 

           LDHU    .D1T1   *A3,A3            ; |57| 
           ADDAD   .D1     A14,24,A31        ; |57| 

   [!A0]   BNOP    .S1     $C$L43,3          ; |149| 
||         STDW    .D1T1   A7:A6,*+A14(136)  ; |147| 

           ANDN    .L1     A4,A3,A3          ; |57| 
           STH     .D1T1   A3,*A31           ; |57| 
           ; BRANCHCC OCCURS {$C$L43}        ; |149| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L41:    
;**	-----------------------g10:
;** 150	-----------------------    if ( !((*this).m_line_mask&1<<i) ) goto g12;  // [36]
           ADDAD   .D1     A14,24,A3         ; |150| 
           LDHU    .D1T1   *A3,A3            ; |150| 
           MVK     .L1     1,A4              ; |150| 
           SHL     .S1     A4,A12,A4         ; |150| 
           NOP             2
           AND     .L1     A4,A3,A1          ; |150| 

   [ A1]   LDW     .D1T1   *+A14(4),A4       ; |151| 
|| [!A1]   B       .S2     $C$L42            ; |150| 
|| [!A1]   ADD     .L1     1,A12,A12         ; |149| 
||         MV      .S1     A1,A2             ; guard predicate rewrite

   [ A1]   MVK     .S1     512,A3            ; |151| 
|| [!A1]   CMPGT   .L1     A0,A12,A1         ; |149| 

   [ A2]   ZERO    .L1     A1                ; |149| nullify predicate
   [ A1]   BNOP    .S1     $C$L41,1          ; |149| 
           ADD     .L1     A3,A4,A3          ; |151| 
           ; BRANCHCC OCCURS {$C$L42}        ; |150| 
;** --------------------------------------------------------------------------*
;** 151	-----------------------    C$3 = (*this).__b_22InterpolationAlgorithm.m_geometry;  // [36]
;** 151	-----------------------    distance = *((i<<3)+(*C$3).end_data+1440)-*((i<<3)+(double *)C$3);  // [36]
;** 152	-----------------------    (*this).m_k_square = (*this).m_k_square+pow(distance, 2.0);  // [36]
;** 154	-----------------------    *((i<<3)+(*this).m_slope) = distance/*((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3072);  // [36]
;**  	-----------------------    U$71 = (*(*this).m_channel_config).axis_number;
           LDW     .D1T1   *A3,A3            ; |151| 
           LDDW    .D1T1   *+A4[A12],A5:A4   ; |151| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5
           MV      .L2     B12,B4            ; |152| 
           ADDAD   .D1     A3,A12,A3         ; |151| 
           ADDK    .S1     1440,A3           ; |151| 
           LDDW    .D1T1   *A3,A7:A6         ; |151| 
           NOP             4
           SUBDP   .L1     A7:A6,A5:A4,A11:A10 ; |151| 
           NOP             1
           CALL    .S1     pow               ; |152| 
           ADDKPC  .S2     $C$RL54,B3,3      ; |152| 

           MV      .L1     A11,A5            ; |152| 
||         MV      .S1     A10,A4            ; |152| 

$C$RL54:   ; CALL OCCURS {pow} {0}           ; |152| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A14(4),B4       ; |154| 
           LDDW    .D1T1   *+A14(136),A7:A6  ; |152| 
           NOP             4

           ADDK    .S2     512,B4            ; |154| 
||         ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |152| 

           LDW     .D2T2   *B4,B4            ; |154| 
           NOP             4
           ADDK    .S2     3072,B4           ; |154| 

           CALLP   .S2     __c6xabi_divd,B3
||         LDDW    .D2T2   *B4,B5:B4         ; |154| 
||         STDW    .D1T1   A5:A4,*+A14(136)  ; |152| 
||         MV      .L1     A11,A5            ; |154| 
||         MV      .S1     A10,A4            ; |154| 

$C$RL55:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |154| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A14(56),A6
           LDW     .D1T1   *+A14(88),A3      ; |154| 
           NOP             3
           LDBU    .D1T1   *+A6(2),A0
           STDW    .D1T1   A5:A4,*+A3[A12]   ; |154| 
           ADD     .L1     1,A12,A12         ; |149| 
           NOP             2
           CMPGT   .L1     A0,A12,A1         ; |149| 
   [ A1]   BNOP    .S1     $C$L41,2          ; |149| 
;** --------------------------------------------------------------------------*
$C$L42:    
;**	-----------------------g12:
;** 149	-----------------------    if ( U$71 > (++i) ) goto g10;  // [36]
           NOP             3
           ; BRANCHCC OCCURS {$C$L41}        ; |149| 
;** --------------------------------------------------------------------------*
$C$L43:    
;**	-----------------------g13:
;** 159	-----------------------    U$68 = (*this).m_k_square;  // [36]
;** 159	-----------------------    if ( U$68 > 1.00000000000000002092e-8 ) goto g15;  // [36]
;** 164	-----------------------    (*this).m_helix_const = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3064);  // [36]
;** 164	-----------------------    goto g16;  // [36]
           LDDW    .D1T1   *+A14(136),A11:A10 ; |159| 
           MV      .L1X    B11,A5
           MV      .L1X    B10,A4
           MV      .L2     B12,B4            ; |160| 
           ZERO    .L2     B5
           CMPGTDP .S1     A11:A10,A5:A4,A0  ; |159| 
           SET     .S2     B5,0x1e,0x1e,B5
   [!A0]   LDW     .D1T1   *+A14(4),A3       ; |164| 
   [ A0]   LDW     .D1T2   *+A14(4),B6       ; |160| 
           NOP             3
   [!A0]   ADDK    .S1     512,A3            ; |164| 

   [!A0]   LDW     .D1T1   *A3,A3            ; |164| 
||         ADDK    .S2     512,B6            ; |160| 

   [ A0]   LDW     .D2T2   *B6,B6            ; |160| 
           NOP             3
   [!A0]   ADDK    .S1     3064,A3           ; |164| 

   [!A0]   LDDW    .D1T1   *A3,A5:A4         ; |164| 
||         ADDK    .S2     3064,B6           ; |160| 
|| [!A0]   B       .S1     $C$L44            ; |164| 

   [!A0]   LDW     .D1T1   *+A14(4),A3       ; |166| 
|| [ A0]   LDDW    .D2T2   *B6,B7:B6         ; |160| 

   [ A0]   CALL    .S1     pow               ; |160| 
           NOP             2
   [!A0]   STDW    .D1T1   A5:A4,*+A14(144)  ; |164| 
           ; BRANCHCC OCCURS {$C$L44}        ; |164| 
;** --------------------------------------------------------------------------*
;**	-----------------------g15:
;** 160	-----------------------    (*this).m_helix_const = sqrt(pow(*((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3064), 2.0)+U$68/pow(*((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3072), 2.0));  // [36]
           MV      .L1X    B6,A4             ; |160| 

           ADDKPC  .S2     $C$RL58,B3,0      ; |160| 
||         MV      .L1X    B7,A5             ; |160| 

$C$RL58:   ; CALL OCCURS {pow} {0}           ; |160| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A14(4),A3       ; |160| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5
           MV      .L1     A4,A12            ; |160| 
           MV      .L1     A5,A13            ; |160| 
           ADDK    .S1     512,A3            ; |160| 
           LDW     .D1T1   *A3,A3            ; |160| 
           MV      .L2     B12,B4            ; |160| 
           NOP             3
           ADDK    .S1     3072,A3           ; |160| 

           CALLP   .S2     pow,B3
||         LDDW    .D1T1   *A3,A5:A4         ; |160| 

$C$RL56:   ; CALL OCCURS {pow} {0}           ; |160| 
           MV      .L2X    A4,B4             ; |160| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A5,B5             ; |160| 
||         MV      .L1     A11,A5            ; |160| 
||         MV      .S1     A10,A4            ; |160| 

$C$RL57:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |160| 
           ADDDP   .L1     A5:A4,A13:A12,A5:A4 ; |160| 
           CALLP   .S2     sqrt,B3
$C$RL59:   ; CALL OCCURS {sqrt} {0}          ; |160| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A14(4),A3       ; |166| 
           STDW    .D1T1   A5:A4,*+A14(144)  ; |160| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L44:    
;**	-----------------------g16:
;** 166	-----------------------    U$5 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3064;  // [36]
;** 166	-----------------------    C$2 = *((double *)U$5+16);  // [36]
;** 166	-----------------------    if ( ABS(C$2) <= 1.00000000000000002092e-8 ) goto g18;  // [36]

           ADDK    .S1     512,A3            ; |166| 
||         MV      .L1X    B11,A9
||         MV      .L2     B12,B4            ; |166| 
||         MV      .S2     B13,B11           ; |168| 

           LDW     .D1T1   *A3,A6            ; |166| 
||         MV      .L1X    B10,A8

           MV      .L2     B12,B10           ; |173| 
           SET     .S2     B4,31,31,B4       ; |173| 
           MVK     .S1     3064,A31          ; |166| 
           MVKL    .S1     0x54442d18,A4
           ADD     .L1     A31,A6,A3         ; |166| 
           LDDW    .D1T1   *+A3(16),A7:A6    ; |166| 
           MV      .L1X    B4,A12            ; |173| 
           MVKL    .S1     0x401921fb,A5
           MVKH    .S1     0x54442d18,A4
           MVKH    .S1     0x401921fb,A5
           ABSDP   .S1     A7:A6,A17:A16     ; |166| 
           MV      .L1     A4,A10            ; |171| 
           CMPGTDP .S1     A17:A16,A9:A8,A0  ; |166| 
           MV      .L1     A5,A11            ; |171| 

   [!A0]   BNOP    .S1     $C$L45,4          ; |166| 
|| [ A0]   LDDW    .D1T1   *+A3(8),A9:A8     ; |167| 

           MPYDP   .M1     A7:A6,A9:A8,A7:A6 ; |167| 
           ; BRANCHCC OCCURS {$C$L45}        ; |166| 
;** --------------------------------------------------------------------------*
;** 167	-----------------------    (*this).m_k_square = (*this).m_k_square*pow(6.283185307179586232/(*((double *)U$5+8)*C$2), 2.0);  // [36]
;** 168	-----------------------    (*this).m_k_square = (*this).m_k_square+1.0;  // [36]
;** 169	-----------------------    (*this).m_k = sqrt((*this).m_k_square);  // [36]
;** 170	-----------------------    (*this).m_q = *((*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3080)*(*this).m_k_square/12.566370614359172464;  // [36]
;** 171	-----------------------    C$1 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3080;  // [36]
;** 171	-----------------------    (*this).m_pre_u = C$1[-2]*6.283185307179586232/((*this).m_k**C$1);  // [36]
;** 172	-----------------------    calc = sqrt(pow((*this).m_pre_u, 2.0)+1.0);  // [36]
;** 173	-----------------------    (*this).m_C = -(*this).m_q*((*this).m_pre_u*calc+log((*this).m_pre_u+calc));  // [36]
;**  	-----------------------    U$5 = (*(*this).__b_22InterpolationAlgorithm.m_geometry).end_data+3064;
           NOP             6
           CALL    .S1     __c6xabi_divd     ; |167| 
           ADDKPC  .S2     $C$RL61,B3,2      ; |167| 
           MV      .L2X    A7,B5             ; |167| 
           MV      .L2X    A6,B4             ; |167| 
$C$RL61:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |167| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         MV      .L2     B12,B4            ; |167| 

$C$RL62:   ; CALL OCCURS {pow} {0}           ; |167| 
           LDDW    .D1T1   *+A14(136),A7:A6  ; |167| 
           NOP             4
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |167| 
           NOP             9
           STDW    .D1T1   A5:A4,*+A14(136)  ; |167| 
           LDDW    .D1T1   *+A14(136),A5:A4  ; |168| 
           NOP             4
           ADDDP   .L1X    B13:B12,A5:A4,A5:A4 ; |168| 
           NOP             6
           STDW    .D1T1   A5:A4,*+A14(136)  ; |168| 

           CALLP   .S2     sqrt,B3
||         LDDW    .D1T1   *+A14(136),A5:A4  ; |169| 

$C$RL63:   ; CALL OCCURS {sqrt} {0}          ; |169| 
           LDW     .D1T2   *+A14(4),B4       ; |170| 
           MV      .L1     A4,A6             ; |169| 
           MV      .L1     A5,A7             ; |169| 
           LDDW    .D1T1   *+A14(136),A5:A4  ; |170| 
           STDW    .D1T1   A7:A6,*+A14(128)  ; |169| 
           ADDK    .S2     512,B4            ; |170| 
           LDW     .D2T1   *B4,A3            ; |170| 
           NOP             4
           ADDK    .S1     3080,A3           ; |170| 
           LDDW    .D1T2   *A3,B5:B4         ; |170| 
           NOP             4
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |170| 
           NOP             2
           MVKL    .S2     0x402921fb,B5
           MVKH    .S2     0x402921fb,B5

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A10,B4            ; |170| 

$C$RL64:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |170| 
           LDW     .D1T2   *+A14(4),B4       ; |171| 
           MVK     .S2     3080,B31          ; |171| 
           LDDW    .D1T1   *+A14(128),A7:A6  ; |171| 
           STDW    .D1T1   A5:A4,*+A14(152)  ; |170| 
           NOP             1
           ADDK    .S2     512,B4            ; |171| 
           LDW     .D2T2   *B4,B5            ; |171| 
           NOP             4
           ADD     .L2     B31,B5,B4         ; |171| 
           LDDW    .D2T2   *-B4(16),B7:B6    ; |171| 
           LDDW    .D2T2   *B4,B5:B4         ; |171| 
           NOP             3
           MPYDP   .M2X    A11:A10,B7:B6,B7:B6 ; |171| 
           NOP             7
           MPYDP   .M2X    B5:B4,A7:A6,B5:B4 ; |171| 
           NOP             2
           MV      .L1X    B6,A4             ; |171| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L1X    B7,A5             ; |171| 

$C$RL65:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |171| 
           ZERO    .L2     B5

           STDW    .D1T1   A5:A4,*+A14(96)   ; |171| 
||         SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         LDDW    .D1T1   *+A14(96),A5:A4   ; |172| 
||         MV      .L2     B12,B4            ; |172| 

$C$RL66:   ; CALL OCCURS {pow} {0}           ; |172| 
           ADDDP   .L1X    B11:B10,A5:A4,A5:A4 ; |172| 
           CALLP   .S2     sqrt,B3
$C$RL67:   ; CALL OCCURS {sqrt} {0}          ; |172| 

           MV      .L1     A5,A11            ; |172| 
||         MV      .S1     A4,A10            ; |172| 
||         LDDW    .D1T1   *+A14(96),A5:A4   ; |173| 

           NOP             4
           ADDDP   .L1     A11:A10,A5:A4,A5:A4 ; |173| 
           CALLP   .S2     log,B3
$C$RL68:   ; CALL OCCURS {log} {0}           ; |173| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A14(96),A7:A6   ; |173| 
           MV      .L2X    A12,B4
           LDW     .D1T2   *+A14(4),B31
           MVK     .S1     3064,A31
           NOP             1
           MPYDP   .M1     A11:A10,A7:A6,A9:A8 ; |173| 
           LDDW    .D1T1   *+A14(152),A7:A6  ; |173| 
           ADDK    .S2     512,B31
           LDW     .D2T1   *B31,A3
           NOP             6
           ADDDP   .L1     A5:A4,A9:A8,A5:A4 ; |173| 
           MV      .L2X    A6,B6             ; |173| 
           XOR     .L2X    A7,B4,B7          ; |173| 
           ADD     .L1     A31,A3,A3
           NOP             3
           MPYDP   .M1X    A5:A4,B7:B6,A5:A4 ; |173| 
           NOP             9
           STDW    .D1T1   A5:A4,*+A14(160)  ; |173| 
;** --------------------------------------------------------------------------*
$C$L45:    
;**	-----------------------g18:
;** 176	-----------------------    (*this).m_current_radius = *(double *)U$5;  // [36]
;** 177	-----------------------    (*this).m_pre_l = 0.0;  // [36]
;**  	-----------------------    return;
           ZERO    .L1     A5:A4             ; |177| 
           NOP             4
           LDDW    .D1T1   *A3,A7:A6         ; |176| 
           STDW    .D1T1   A5:A4,*+A14(104)  ; |177| 
           NOP             3
           STDW    .D1T1   A7:A6,*+A14(112)  ; |176| 
           LDW     .D2T2   *++SP(8),B3       ; |63| 
           LDDW    .D2T1   *++SP,A11:A10     ; |63| 
           LDDW    .D2T1   *++SP,A13:A12     ; |63| 
           LDDW    .D2T2   *++SP,B11:B10     ; |63| 
           LDDW    .D2T2   *++SP,B13:B12     ; |63| 

           RETNOP  .S2     B3,5              ; |63| 
||         LDW     .D2T1   *++SP(8),A14      ; |63| 

           ; BRANCH OCCURS {B3}              ; |63| 
	.sect	".text"
	.clink
	.global	_ZN19CircleInterpolation14IsMiddleVectorER6VectorS1_S1_S1_

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::IsMiddleVector(Vector &, Vector &, Vector &, Vector &)*
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,A19,A20, *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,A19,A20, *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 100 Auto + 24 Save = 124 byte               *
;******************************************************************************
_ZN19CircleInterpolation14IsMiddleVectorER6VectorS1_S1_S1_:
;** --------------------------------------------------------------------------*
;** 165	-----------------------    C$30 = *((const double * const)middle_vector+16);  // [23]
;** 165	-----------------------    C$26 = *((const double * const)first_vector+16);  // [23]
;** 165	-----------------------    C$28 = *((const double * const)middle_vector+8);  // [23]
;** 165	-----------------------    C$24 = *((const double * const)first_vector+8);  // [23]
;** 165	-----------------------    C$29 = *(double * const)middle_vector;  // [23]
;** 165	-----------------------    C$22 = *(double * const)first_vector;  // [23]
;** 165	-----------------------    cos_angle_1 = C$22*C$29+C$24*C$28+C$26*C$30;  // [23]
;** 165	-----------------------    C$27 = *((const double * const)second_vector+16);  // [23]
;** 165	-----------------------    C$23 = *((const double * const)second_vector+8);  // [23]
;** 165	-----------------------    C$25 = *(double * const)second_vector;  // [23]
;** 165	-----------------------    cos_angle_2 = C$22*C$25+C$24*C$23+C$26*C$27;  // [23]
;** 174	-----------------------    data[0] = C$14 = C$24*C$30-C$26*C$28;  // [24]
;** 174	-----------------------    data[1] = C$16 = C$26*C$29-C$22*C$30;  // [24]
;** 174	-----------------------    data[2] = C$18 = C$22*C$28-C$24*C$29;  // [24]
;** 18	-----------------------    *&cross_product_1 = C$14;  // [18]
;** 19	-----------------------    *(&cross_product_1+8) = C$16;  // [18]
;** 20	-----------------------    *(&cross_product_1+16) = C$18;  // [18]
;** 174	-----------------------    data[0] = C$19 = C$24*C$27-C$26*C$23;  // [24]
;** 174	-----------------------    data[1] = C$20 = C$26*C$25-C$22*C$27;  // [24]
;** 174	-----------------------    data[2] = C$21 = C$22*C$23-C$24*C$25;  // [24]
;** 18	-----------------------    *&cross_product_2 = C$19;  // [18]
;** 19	-----------------------    *(&cross_product_2+8) = C$20;  // [18]
;** 20	-----------------------    *(&cross_product_2+16) = C$21;  // [18]
;** 165	-----------------------    C$17 = *((const double * const)normal_vector+16);  // [23]
;** 165	-----------------------    C$15 = *((const double * const)normal_vector+8);  // [23]
;** 165	-----------------------    C$13 = *(double * const)normal_vector;  // [23]
;** 165	-----------------------    sin_angle_2 = C$13*C$19+C$15*C$20+C$17*C$21;  // [23]
;** 366	-----------------------    if ( C$13*C$14+C$15*C$16+C$17*C$18 > 1.00000000000000002092e-8 ) goto g3;
           STW     .D2T2   B11,*SP--(8)      ; |358| 
           STDW    .D2T2   B13:B12,*SP--     ; |358| 
           STW     .D2T2   B10,*SP--(8)      ; |358| 

           LDDW    .D2T2   *B4,B19:B18       ; |165| 
||         LDDW    .D1T1   *A6,A23:A22       ; |165| 

           LDDW    .D1T1   *+A6(16),A5:A4    ; |165| 
           LDDW    .D2T2   *+B4(8),B17:B16   ; |165| 
           LDDW    .D2T2   *+B4(16),B9:B8    ; |165| 
           LDDW    .D1T1   *+A6(8),A21:A20   ; |165| 
           MPYDP   .M2X    A23:A22,B19:B18,B5:B4 ; |165| 
           MPYDP   .M1X    A5:A4,B19:B18,A7:A6 ; |174| 
           LDDW    .D2T2   *+B6(16),B21:B20  ; |165| 
           LDDW    .D2T2   *B6,B23:B22       ; |165| 
           MPYDP   .M2X    A5:A4,B17:B16,B27:B26 ; |174| 
           MPYDP   .M1X    A21:A20,B9:B8,A17:A16 ; |174| 
           LDDW    .D2T2   *+B6(8),B7:B6     ; |165| 
           ADDK    .S2     -104,SP           ; |358| 
           MPYDP   .M2X    A23:A22,B9:B8,B25:B24 ; |174| 
           MV      .L1X    B3,A2             ; |358| 
           NOP             1
           MV      .L1X    B4,A26            ; |165| 

           MV      .L1X    B5,A3             ; |165| 
||         MPYDP   .M2X    A21:A20,B17:B16,B5:B4 ; |165| 

           MPYDP   .M1X    A21:A20,B19:B18,A19:A18 ; |174| 
           NOP             2
           MPYDP   .M2     B21:B20,B19:B18,B29:B28 ; |174| 
           SUBDP   .L1X    B27:B26,A17:A16,A25:A24 ; |174| 
           SUBDP   .L2X    B25:B24,A7:A6,B25:B24 ; |174| 
           LDDW    .D1T1   *+A8(8),A7:A6     ; |165| 
           MPYDP   .M2     B23:B22,B9:B8,B31:B30 ; |174| 
           LDDW    .D1T1   *A8,A17:A16       ; |165| 
           LDDW    .D1T1   *+A8(16),A9:A8    ; |165| 
           MV      .S1X    B4,A28            ; |165| 
           MPYDP   .M2     B7:B6,B9:B8,B1:B0 ; |174| 
           STDW    .D2T1   A25:A24,*+SP(32)  ; |18| 
           MPYDP   .M1X    B25:B24,A7:A6,A21:A20 ; |165| 
           STDW    .D2T1   A25:A24,*+SP(56)  ; |174| 
           MPYDP   .M2     B21:B20,B17:B16,B3:B2 ; |174| 
           STDW    .D2T2   B25:B24,*+SP(40)  ; |19| 
           MV      .L1X    B5,A27            ; |165| 
           SUBDP   .L2     B31:B30,B29:B28,B5:B4 ; |174| 
           MPYDP   .M2     B23:B22,B17:B16,B27:B26 ; |174| 
           STDW    .D2T2   B25:B24,*+SP(64)  ; |174| 
           MPYDP   .M1X    A5:A4,B9:B8,A5:A4 ; |165| 
           NOP             1
           MPYDP   .M2X    A23:A22,B17:B16,B11:B10 ; |174| 
           NOP             2
           MPYDP   .M1     A25:A24,A17:A16,A23:A22 ; |165| 
           MPYDP   .M2     B7:B6,B19:B18,B13:B12 ; |174| 
           STDW    .D2T2   B5:B4,*+SP(16)    ; |19| 
           STDW    .D2T2   B5:B4,*+SP(88)    ; |174| 
           MPYDP   .M1X    B5:B4,A7:A6,A7:A6 ; |366| 

           SUBDP   .L2     B3:B2,B1:B0,B17:B16 ; |174| 
||         MPYDP   .M2     B7:B6,B17:B16,B7:B6 ; |165| 

           NOP             3
           MPYDP   .M2     B21:B20,B9:B8,B29:B28 ; |165| 
           ADDDP   .L1     A21:A20,A23:A22,A21:A20 ; |165| 
           SUBDP   .L2     B13:B12,B27:B26,B27:B26 ; |174| 

           MV      .S2X    A27,B9            ; |165| 
||         STDW    .D2T2   B17:B16,*+SP(8)   ; |18| 

           MPYDP   .M2     B23:B22,B19:B18,B19:B18 ; |165| 
||         SUBDP   .L2X    A19:A18,B11:B10,B23:B22 ; |174| 

           STDW    .D2T2   B17:B16,*+SP(80)  ; |174| 
           MPYDP   .M1X    B17:B16,A17:A16,A17:A16 ; |366| 
           MV      .S2X    A28,B8            ; |165| 
           MV      .S2X    A3,B21            ; |165| 
           MV      .S2X    A26,B20           ; |165| 
           STDW    .D2T2   B27:B26,*+SP(24)  ; |20| 
           ADDDP   .L2     B9:B8,B21:B20,B9:B8 ; |165| 
           MPYDP   .M1X    B23:B22,A9:A8,A19:A18 ; |165| 
           STDW    .D2T2   B27:B26,*+SP(96)  ; |174| 
           ADDDP   .L2     B7:B6,B19:B18,B7:B6 ; |165| 
           STDW    .D2T2   B23:B22,*+SP(72)  ; |174| 
           MPYDP   .M1X    B27:B26,A9:A8,A9:A8 ; |366| 
           STDW    .D2T2   B23:B22,*+SP(48)  ; |20| 
           ADDDP   .L2X    A5:A4,B9:B8,B9:B8 ; |165| 
           ADDDP   .L1     A7:A6,A17:A16,A5:A4 ; |366| 
           MVKL    .S2     0xe2308c3a,B18
           ADDDP   .L2     B29:B28,B7:B6,B7:B6 ; |165| 
           MVKL    .S2     0x3e45798e,B19
           MVKH    .S2     0xe2308c3a,B18
           ADDDP   .S1     A19:A18,A21:A20,A17:A16 ; |165| 
           MVKH    .S2     0x3e45798e,B19
           ADDDP   .L1     A9:A8,A5:A4,A5:A4 ; |366| 
           MV      .S1X    B19,A7            ; |366| 
           CMPLTDP .S2     B7:B6,B9:B8,B5    ; |367| 
           MV      .L1X    B18,A6            ; |366| 
           CMPLTDP .S2     B7:B6,B9:B8,B6    ; |373| 
           CMPLTDP .S1     A17:A16,A7:A6,A3  ; |373| 
           CMPGTDP .S2X    A17:A16,B19:B18,B4 ; |367| 
           CMPGTDP .S1X    A5:A4,B19:B18,A1  ; |366| 
           AND     .L2     B5,B4,B0          ; |367| 

   [ A1]   B       .S1     $C$L46            ; |366| 
||         AND     .L1X    B6,A3,A0          ; |373| 
|| [!A1]   MVK     .L2     0x1,B0            ; nullify predicate

   [ A1]   MVK     .L1     0x1,A0            ; nullify predicate
   [!A0]   B       .S1     $C$L47            ; |373| 
   [!B0]   BNOP    .S1     $C$L49,2          ; |367| 
           ; BRANCHCC OCCURS {$C$L46}        ; |366| 
;** --------------------------------------------------------------------------*
;** 373	-----------------------    if ( !((sin_angle_2 < 1.00000000000000002092e-8)&(cos_angle_1 < cos_angle_2)) ) goto g4;

   [ A0]   B       .S1     $C$L48            ; |373| 
|| [!A0]   ADDK    .S2     104,SP            ; |378| 

   [!A0]   LDW     .D2T2   *++SP(8),B10      ; |378| 
           ; BRANCHCC OCCURS {$C$L47}        ; |373| 
;** --------------------------------------------------------------------------*
;** 373	-----------------------    goto g5;
           ADDK    .S2     104,SP            ; |378| 
           LDW     .D2T2   *++SP(8),B10      ; |378| 
           LDDW    .D2T2   *++SP,B13:B12     ; |378| 
           NOP             1
           ; BRANCH OCCURS {$C$L48}          ; |373| 
;** --------------------------------------------------------------------------*
$C$L46:    
;**	-----------------------g3:
;** 367	-----------------------    if ( !((sin_angle_2 > 1.00000000000000002092e-8)&(cos_angle_1 < cos_angle_2)) ) goto g5;
   [!B0]   ADDK    .S2     104,SP            ; |378| 
   [!B0]   LDW     .D2T2   *++SP(8),B10      ; |378| 

   [!B0]   LDDW    .D2T2   *++SP,B13:B12     ; |378| 
|| [!B0]   RET     .S2X    A2                ; |378| 

           ; BRANCHCC OCCURS {$C$L49}        ; |367| 
;** --------------------------------------------------------------------------*
           ADDK    .S2     104,SP            ; |378| 
           LDW     .D2T2   *++SP(8),B10      ; |378| 
;** --------------------------------------------------------------------------*
$C$L47:    
;**	-----------------------g4:
;** 368	-----------------------    return 0;

           RET     .S2X    A2                ; |378| 
||         LDDW    .D2T2   *++SP,B13:B12     ; |378| 

           LDW     .D2T2   *++SP(8),B11      ; |378| 
           ZERO    .L1     A4                ; |368| 
           NOP             3
           ; BRANCH OCCURS {A2}              ; |378| 
;** --------------------------------------------------------------------------*
$C$L48:    
           RET     .S2X    A2                ; |378| 
;** --------------------------------------------------------------------------*
$C$L49:    
;**	-----------------------g5:
;** 370	-----------------------    return 1;
           LDW     .D2T2   *++SP(8),B11      ; |378| 
           MVK     .L1     0x1,A4            ; |370| 
           NOP             3
           ; BRANCH OCCURS {A2}              ; |378| 
;; Inlined function references:
;; [ 18] Vector::Vector(double *)
;; [ 20] Vector::operator =(Vector&)
;; [ 22] Vector::operator -(Vector&) const
;; [ 23] Vector::operator *(Vector&) const
;; [ 24] Vector::Cross(Vector&) const
;; [ 25] Vector::operator *(double) const
;; [ 26] Vector::operator /=(double)
;; [ 27] Vector::Norm() const
;; [ 28] CircleInterpolation::~CircleInterpolation()
;; [ 35] CircleInterpolation::GetNormalVector()
;; [ 36] CircleInterpolation::ComputeCurveParam()
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_ZdlPv
	.global	_Znaj
	.global	_ZdaPv
	.global	sqrt
	.global	log
	.global	pow
	.global	sin
	.global	cos
	.global	_ZN11AxisMovData9CheckMaskEh
	.global	_ZN22InterpolationAlgorithmD2Ev
	.global	_ZN22InterpolationAlgorithm4InitE16SpeedProfileType
	.global	_ZN22InterpolationAlgorithm15GetCurrentSpeedEv
	.global	_ZN22InterpolationAlgorithm23IsInterpolationFinishedEv
	.global	_ZN22InterpolationAlgorithm13HasReachedEndEv
	.global	_ZN22InterpolationAlgorithm12PlanVelocityEddb
	.global	_ZN22InterpolationAlgorithm11InterpolateEP8LineData
	.global	_ZTI22InterpolationAlgorithm
	.global	_ZTVN10__cxxabiv120__si_class_type_infoE
	.global	__c6xabi_divd
;*****************************************************************************
;* SECTION GROUPS                                                            *
;*****************************************************************************
	.group    "_ZN19CircleInterpolation21ComputeRemainDistanceEv", 1
	.gmember  ".text:_ZN19CircleInterpolation21ComputeRemainDistanceEv"
	.endgroup
	.group    "_ZN6VectorC2EPd", 1
	.gmember  ".text:_ZN6VectorC2EPd"
	.endgroup
	.group    "_ZTI19CircleInterpolation", 1
	.gmember  ".const:_ZTI19CircleInterpolation"
	.endgroup
	.group    "_ZTS19CircleInterpolation", 1
	.gmember  ".const:_ZTS19CircleInterpolation"
	.endgroup
	.group    "_ZTV19CircleInterpolation", 1
	.gmember  ".const:_ZTV19CircleInterpolation"
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
