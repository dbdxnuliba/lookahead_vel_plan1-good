;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.3.4 *
;* Date/Time created: Sat Apr 22 16:22:08 2017                                *
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
	.align	8
	.elfsym	ZERO,SYM_SIZE(8)
ZERO:
	.word	0e2308c3ah,03e45798eh		; ZERO @ 0

	.global	_ZTV17SVelocityPlanning
	.sect	".const:_ZTV17SVelocityPlanning"
	.align	8
	.elfsym	_ZTV17SVelocityPlanning,SYM_SIZE(40)
_ZTV17SVelocityPlanning:
	.field	0,32			; _ZTV17SVelocityPlanning[0] @ 0
	.field	_ZTI17SVelocityPlanning,32		; _ZTV17SVelocityPlanning[1] @ 32
	.field	_ZN17SVelocityPlanning8GetSpeedEP11DynamicInfo,32		; _ZTV17SVelocityPlanning[2] @ 64
	.field	_ZN17SVelocityPlanning11GetDistanceEP11DynamicInfo,32		; _ZTV17SVelocityPlanning[3] @ 96
	.field	_ZN17SVelocityPlanning19ComputePlaningParamEP11DynamicInfo,32		; _ZTV17SVelocityPlanning[4] @ 128
	.field	_ZN17SVelocityPlanning15GetCurveContourEP11DynamicInfo,32		; _ZTV17SVelocityPlanning[5] @ 160
	.field	_ZN17SVelocityPlanning17AdjustTimeToRoundEP11DynamicInfo,32		; _ZTV17SVelocityPlanning[6] @ 192
	.field	_ZN17SVelocityPlanning20GetLastPhaseDistanceEP11DynamicInfo,32		; _ZTV17SVelocityPlanning[7] @ 224
	.field	_ZN17SVelocityPlanning17GetLastPhaseSpeedEP11DynamicInfo,32		; _ZTV17SVelocityPlanning[8] @ 256
	.field	_ZN17SVelocityPlanning20ComputePhaseDistanceEP11DynamicInfo,32		; _ZTV17SVelocityPlanning[9] @ 288

	.sect	".rodata"
	.align	8
	.elfsym	SIX_DEVIDE_ONE,SYM_SIZE(8)
SIX_DEVIDE_ONE:
	.word	055572a75h,03fc55555h		; SIX_DEVIDE_ONE @ 0

	.sect	".rodata"
	.align	8
	.elfsym	UNIFORM_DIS_RATIO,SYM_SIZE(8)
UNIFORM_DIS_RATIO:
	.word	047ae147bh,03f847ae1h		; UNIFORM_DIS_RATIO @ 0

	.global	_ZTI17SVelocityPlanning
	.sect	".const:_ZTI17SVelocityPlanning"
	.align	4
	.elfsym	_ZTI17SVelocityPlanning,SYM_SIZE(12)
_ZTI17SVelocityPlanning:
	.field	_ZTVN10__cxxabiv120__si_class_type_infoE+8,32		; _ZTI17SVelocityPlanning.base.base.__vptr @ 0
	.field	_ZTS17SVelocityPlanning,32		; _ZTI17SVelocityPlanning.base.base.__name @ 32
	.field	_ZTI16VelocityPlanning,32		; _ZTI17SVelocityPlanning.base_type @ 64

	.global	_ZTI16VelocityPlanning
	.sect	".const:_ZTI16VelocityPlanning"
	.align	4
	.elfsym	_ZTI16VelocityPlanning,SYM_SIZE(8)
_ZTI16VelocityPlanning:
	.field	_ZTVN10__cxxabiv117__class_type_infoE+8,32		; _ZTI16VelocityPlanning.base.__vptr @ 0
	.field	_ZTS16VelocityPlanning,32		; _ZTI16VelocityPlanning.base.__name @ 32

	.global	_ZTS16VelocityPlanning
	.sect	".const:_ZTS16VelocityPlanning"
	.align	8
	.elfsym	_ZTS16VelocityPlanning,SYM_SIZE(19)
_ZTS16VelocityPlanning:
	.field	49,8			; _ZTS16VelocityPlanning[0] @ 0
	.field	54,8			; _ZTS16VelocityPlanning[1] @ 8
	.field	86,8			; _ZTS16VelocityPlanning[2] @ 16
	.field	101,8			; _ZTS16VelocityPlanning[3] @ 24
	.field	108,8			; _ZTS16VelocityPlanning[4] @ 32
	.field	111,8			; _ZTS16VelocityPlanning[5] @ 40
	.field	99,8			; _ZTS16VelocityPlanning[6] @ 48
	.field	105,8			; _ZTS16VelocityPlanning[7] @ 56
	.field	116,8			; _ZTS16VelocityPlanning[8] @ 64
	.field	121,8			; _ZTS16VelocityPlanning[9] @ 72
	.field	80,8			; _ZTS16VelocityPlanning[10] @ 80
	.field	108,8			; _ZTS16VelocityPlanning[11] @ 88
	.field	97,8			; _ZTS16VelocityPlanning[12] @ 96
	.field	110,8			; _ZTS16VelocityPlanning[13] @ 104
	.field	110,8			; _ZTS16VelocityPlanning[14] @ 112
	.field	105,8			; _ZTS16VelocityPlanning[15] @ 120
	.field	110,8			; _ZTS16VelocityPlanning[16] @ 128
	.field	103,8			; _ZTS16VelocityPlanning[17] @ 136
	.field	0,8			; _ZTS16VelocityPlanning[18] @ 144

	.global	_ZTS17SVelocityPlanning
	.sect	".const:_ZTS17SVelocityPlanning"
	.align	8
	.elfsym	_ZTS17SVelocityPlanning,SYM_SIZE(20)
_ZTS17SVelocityPlanning:
	.field	49,8			; _ZTS17SVelocityPlanning[0] @ 0
	.field	55,8			; _ZTS17SVelocityPlanning[1] @ 8
	.field	83,8			; _ZTS17SVelocityPlanning[2] @ 16
	.field	86,8			; _ZTS17SVelocityPlanning[3] @ 24
	.field	101,8			; _ZTS17SVelocityPlanning[4] @ 32
	.field	108,8			; _ZTS17SVelocityPlanning[5] @ 40
	.field	111,8			; _ZTS17SVelocityPlanning[6] @ 48
	.field	99,8			; _ZTS17SVelocityPlanning[7] @ 56
	.field	105,8			; _ZTS17SVelocityPlanning[8] @ 64
	.field	116,8			; _ZTS17SVelocityPlanning[9] @ 72
	.field	121,8			; _ZTS17SVelocityPlanning[10] @ 80
	.field	80,8			; _ZTS17SVelocityPlanning[11] @ 88
	.field	108,8			; _ZTS17SVelocityPlanning[12] @ 96
	.field	97,8			; _ZTS17SVelocityPlanning[13] @ 104
	.field	110,8			; _ZTS17SVelocityPlanning[14] @ 112
	.field	110,8			; _ZTS17SVelocityPlanning[15] @ 120
	.field	105,8			; _ZTS17SVelocityPlanning[16] @ 128
	.field	110,8			; _ZTS17SVelocityPlanning[17] @ 136
	.field	103,8			; _ZTS17SVelocityPlanning[18] @ 144
	.field	0,8			; _ZTS17SVelocityPlanning[19] @ 152

;	/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/opt6x --call_assumptions=0 --gen_opt_info=2 /tmp/05708YLlfhL /tmp/05708cnn5uX --opt_info_filename=src/interpolation/s_velocity_planning.nfo 
	.sect	".text"
	.clink
	.global	_ZN17SVelocityPlanning8GetSpeedEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::GetSpeed(DynamicInfo *)                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A14,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17, *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A14,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP,A16,  *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_ZN17SVelocityPlanning8GetSpeedEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 22	-----------------------    U$6 = *((double * const)dynamic_info+128);
;** 22	-----------------------    U$3 = (*dynamic_info).current_time;
;** 22	-----------------------    if ( U$3 >= U$6 ) goto g3;

           STW     .D2T1   A14,*SP--(8)      ; |18| 
||         ZERO    .L2     B5
||         MV      .L1X    B3,A14            ; |18| 
||         MV      .S1     A4,A3             ; |18| 

           STDW    .D2T2   B13:B12,*SP--     ; |18| 
           STDW    .D2T2   B11:B10,*SP--     ; |18| 
           STDW    .D2T1   A11:A10,*SP--     ; |18| 
           LDDW    .D2T2   *+B4(128),B17:B16 ; |22| 
           LDDW    .D2T2   *+B4(184),B7:B6   ; |22| 
           SET     .S2     B5,0x1e,0x1e,B5
           ZERO    .L2     B13
           ZERO    .L2     B12               ; |24| 
           MV      .L1X    B4,A10            ; |18| 
           CMPLTDP .S2     B7:B6,B17:B16,B0  ; |22| 
           ZERO    .L2     B4                ; |24| 

   [!B0]   MV      .L2X    A10,B4
|| [!B0]   B       .S1     $C$L1             ; |22| 

   [ B0]   CALL    .S1     pow               ; |24| 
|| [!B0]   LDDW    .D2T2   *+B4(136),B9:B8   ; |25| 

           SET     .S2     B13,0x15,0x1d,B13
           MVK     .S1     36,A11            ; |24| 
           MV      .L1X    B7,A5             ; |24| 
           MV      .L1X    B6,A4             ; |24| 
           ; BRANCHCC OCCURS {$C$L1}         ; |22| 
;** --------------------------------------------------------------------------*
;** 24	-----------------------    speed = (*dynamic_info).fs+(*dynamic_info).Ja*0.5*pow(U$3, 2.0);
;** 46	-----------------------    return speed;
           ADDKPC  .S2     $C$RL0,B3,0       ; |24| 
$C$RL0:    ; CALL OCCURS {pow} {0}           ; |24| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B4
           MV      .L2X    A10,B6
           LDDW    .D2T2   *+B6[B4],B5:B4    ; |24| 
           MV      .L2X    A14,B3            ; |47| 
           NOP             3
           MPYDP   .M2     B13:B12,B5:B4,B5:B4 ; |24| 
           NOP             9
           NOP             1
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |24| 
           LDDW    .D2T2   *B6,B5:B4         ; |24| 
           LDDW    .D2T1   *++SP,A11:A10     ; |47| 
           LDDW    .D2T2   *++SP,B11:B10     ; |47| 
           LDDW    .D2T2   *++SP,B13:B12     ; |47| 
           LDW     .D2T1   *++SP(8),A14      ; |47| 
           NOP             4
           ADDDP   .L1X    A5:A4,B5:B4,A5:A4 ; |24| 
           RETNOP  .S2     B3,5              ; |47| 
           ; BRANCH OCCURS {B3}              ; |47| 
;** --------------------------------------------------------------------------*
$C$L1:    
;**	-----------------------g3:
;** 25	-----------------------    U$17 = *((double * const)dynamic_info+136);
;** 25	-----------------------    if ( U$3 >= U$17 ) goto g5;
;** 46	-----------------------    return *((double * const)dynamic_info+192)+(*dynamic_info).acceleration*(U$3-U$6);

           SUBDP   .L2     B7:B6,B17:B16,B17:B16 ; |46| 
||         CMPLTDP .S2     B7:B6,B9:B8,B0    ; |25| 

           NOP             1
   [ B0]   LDDW    .D2T2   *+B4(48),B19:B18  ; |46| 
   [!B0]   SUBDP   .S2     B7:B6,B9:B8,B11:B10 ; |30| 
   [!B0]   MV      .L2X    A10,B4
   [!B0]   LDDW    .D2T2   *+B4(144),B9:B8   ; |28| 
   [!B0]   MV      .S2     B12,B4            ; |28| 
   [ B0]   MPYDP   .M2     B17:B16,B19:B18,B17:B16 ; |46| 
   [ B0]   LDDW    .D2T1   *+B4(192),A5:A4   ; |46| 
           NOP             4
   [ B0]   BNOP    .S1     $C$L4,4           ; |46| 

   [ B0]   ADDDP   .L1X    B17:B16,A5:A4,A7:A6 ; |46| 
||         CMPLTDP .S2     B7:B6,B9:B8,B0    ; |28| 

           ; BRANCHCC OCCURS {$C$L4}         ; |46| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 28	-----------------------    if ( U$3 >= *((double * const)dynamic_info+144) ) goto g7;
           NOP             1

   [!B0]   B       .S1     $C$L2             ; |28| 
|| [!B0]   MV      .L2X    A10,B4

   [ B0]   CALL    .S1     pow               ; |30| 
|| [!B0]   LDDW    .D2T2   *+B4(152),B9:B8   ; |31| 

           MV      .L1X    B10,A4            ; |30| 
           MV      .S1X    B11,A5            ; |30| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L2}         ; |28| 
;** --------------------------------------------------------------------------*
;** 30	-----------------------    C$74 = U$3-U$17;
;** 30	-----------------------    speed = *((double * const)dynamic_info+200)+(*dynamic_info).acceleration*C$74-(*dynamic_info).Ja*0.5*pow(C$74, 2.0);
;** 46	-----------------------    return speed;
           ADDKPC  .S2     $C$RL1,B3,0       ; |30| 
$C$RL1:    ; CALL OCCURS {pow} {0}           ; |30| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B4
           MV      .L2X    A10,B6
           LDDW    .D2T2   *+B6[B4],B5:B4    ; |30| 
           LDDW    .D2T1   *+B6(48),A7:A6    ; |30| 
           LDDW    .D2T2   *+B6(200),B7:B6   ; |30| 
           LDDW    .D2T1   *++SP,A11:A10     ; |47| 
           MV      .L2X    A14,B3            ; |47| 
           MPYDP   .M2     B13:B12,B5:B4,B5:B4 ; |30| 
           MPYDP   .M1X    B11:B10,A7:A6,A7:A6 ; |30| 
           LDDW    .D2T2   *++SP,B11:B10     ; |47| 
           LDDW    .D2T2   *++SP,B13:B12     ; |47| 
           LDW     .D2T1   *++SP(8),A14      ; |47| 
           NOP             6
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |30| 
           ADDDP   .L2X    A7:A6,B7:B6,B5:B4 ; |30| 
           NOP             8
           SUBDP   .L1X    B5:B4,A5:A4,A7:A6 ; |30| 
           NOP             1
           RETNOP  .S2     B3,4              ; |47| 

           MV      .L1     A7,A5             ; |46| 
||         MV      .S1     A6,A4             ; |46| 

           ; BRANCH OCCURS {B3}              ; |47| 
;** --------------------------------------------------------------------------*
$C$L2:    
;**	-----------------------g7:
;** 31	-----------------------    U$41 = *((double * const)dynamic_info+152);
;** 31	-----------------------    if ( U$3 >= U$41 ) goto g9;
;** 46	-----------------------    return (*dynamic_info).f;
           CMPLTDP .S2     B7:B6,B9:B8,B0    ; |31| 
           NOP             1

   [!B0]   SUBDP   .L2     B7:B6,B9:B8,B17:B16 ; |35| 
|| [ B0]   LDDW    .D2T1   *+B4(16),A7:A6    ; |46| 
|| [ B0]   B       .S1     $C$L4             ; |46| 
||         MV      .S2X    A10,B4

   [!B0]   LDDW    .D2T2   *+B4(160),B9:B8   ; |33| 
   [!B0]   MV      .L2     B12,B4            ; |33| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L4}         ; |46| 
;** --------------------------------------------------------------------------*
;**	-----------------------g9:
;** 33	-----------------------    U$47 = *((double * const)dynamic_info+160);
;** 33	-----------------------    if ( U$3 >= U$47 ) goto g11;
           CMPLTDP .S2     B7:B6,B9:B8,B0    ; |33| 
           MV      .L1X    B16,A4            ; |35| 

   [!B0]   B       .S1     $C$L3             ; |33| 
|| [!B0]   MV      .L2X    A10,B4
||         MV      .L1X    B17,A5            ; |35| 

   [ B0]   CALL    .S1     pow               ; |35| 
|| [!B0]   LDDW    .D2T2   *+B4(168),B17:B16 ; |36| 

           MVK     .S1     37,A11            ; |35| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L3}         ; |33| 
;** --------------------------------------------------------------------------*
;** 35	-----------------------    speed = (*dynamic_info).f-(*dynamic_info).Jd*0.5*pow(U$3-U$41, 2.0);
;** 46	-----------------------    return speed;
           ADDKPC  .S2     $C$RL2,B3,0       ; |35| 
$C$RL2:    ; CALL OCCURS {pow} {0}           ; |35| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B5
           MV      .L2X    A10,B4
           LDDW    .D2T2   *+B4[B5],B7:B6    ; |35| 
           LDDW    .D2T2   *+B4(16),B5:B4    ; |35| 
           LDDW    .D2T1   *++SP,A11:A10     ; |47| 
           LDDW    .D2T2   *++SP,B11:B10     ; |47| 
           MV      .L2X    A14,B3            ; |47| 
           MPYDP   .M2     B13:B12,B7:B6,B7:B6 ; |35| 
           LDDW    .D2T2   *++SP,B13:B12     ; |47| 
           LDW     .D2T1   *++SP(8),A14      ; |47| 
           NOP             8
           MPYDP   .M1X    A5:A4,B7:B6,A5:A4 ; |35| 
           NOP             9
           SUBDP   .L1X    B5:B4,A5:A4,A7:A6 ; |35| 
           NOP             1
           RETNOP  .S2     B3,4              ; |47| 

           MV      .L1     A7,A5             ; |46| 
||         MV      .S1     A6,A4             ; |46| 

           ; BRANCH OCCURS {B3}              ; |47| 
;** --------------------------------------------------------------------------*
$C$L3:    
;**	-----------------------g11:
;** 36	-----------------------    U$55 = *((double * const)dynamic_info+168);
;** 36	-----------------------    if ( U$3 >= U$55 ) goto g13;
;** 46	-----------------------    return *((double * const)dynamic_info+224)-(*dynamic_info).deceleration*(U$3-U$47);

           SUBDP   .L2     B7:B6,B9:B8,B9:B8 ; |46| 
||         CMPLTDP .S2     B7:B6,B17:B16,B0  ; |36| 

           NOP             1
   [ B0]   LDDW    .D2T2   *+B4(56),B19:B18  ; |46| 
   [!B0]   LDDW    .D1T1   *+A3(16),A5:A4    ; |39| 
   [!B0]   MV      .L2X    A10,B4
   [!B0]   LDDW    .D2T2   *+B4(176),B9:B8   ; |39| 
   [!B0]   SUBDP   .L2     B7:B6,B17:B16,B11:B10 ; |41| 
   [ B0]   MPYDP   .M2     B9:B8,B19:B18,B9:B8 ; |46| 
   [!B0]   MV      .L2     B12,B4            ; |39| 
   [ B0]   LDDW    .D2T1   *+B4(224),A5:A4   ; |46| 
   [!B0]   SUBDP   .L2X    B9:B8,A5:A4,B9:B8 ; |39| 
           NOP             2
   [ B0]   BNOP    .S1     $C$L4,4           ; |46| 

   [ B0]   SUBDP   .L1X    A5:A4,B9:B8,A7:A6 ; |46| 
||         CMPLTDP .S2     B7:B6,B9:B8,B0    ; |39| 

           ; BRANCHCC OCCURS {$C$L4}         ; |46| 
;** --------------------------------------------------------------------------*
;**	-----------------------g13:
;** 39	-----------------------    if ( U$3 >= (*dynamic_info).total_time-(*this).__b_16VelocityPlanning.m_half_interpolation_cycle ) goto g15;
           NOP             1
   [!B0]   B       .S1     $C$L4             ; |39| 
   [ B0]   CALL    .S1     pow               ; |41| 
           MV      .L1X    B11,A5            ; |41| 
   [!B0]   MV      .L2X    A10,B4
           MV      .S1X    B10,A4            ; |41| 
   [!B0]   LDDW    .D2T1   *+B4(8),A7:A6     ; |46| 
           ; BRANCHCC OCCURS {$C$L4}         ; |39| 
;** --------------------------------------------------------------------------*
;** 41	-----------------------    C$73 = U$3-U$55;
;** 41	-----------------------    speed = *((double * const)dynamic_info+232)-(*dynamic_info).deceleration*C$73+(*dynamic_info).Jd*0.5*pow(C$73, 2.0);
;** 46	-----------------------    return speed;
           ADDKPC  .S2     $C$RL3,B3,0       ; |41| 
$C$RL3:    ; CALL OCCURS {pow} {0}           ; |41| 
;** --------------------------------------------------------------------------*
;**	-----------------------g15:
;** 46	-----------------------    return (*dynamic_info).fe;
           MV      .L2X    A11,B5
           MV      .L2X    A10,B4
           LDDW    .D2T2   *+B4[B5],B7:B6    ; |41| 
           LDDW    .D2T1   *+B4(56),A7:A6    ; |41| 
           LDDW    .D2T2   *+B4(232),B5:B4   ; |41| 
           LDDW    .D2T1   *++SP,A11:A10     ; |47| 
           MV      .L2X    A14,B3            ; |47| 
           MPYDP   .M2     B13:B12,B7:B6,B7:B6 ; |41| 
           MPYDP   .M1X    B11:B10,A7:A6,A7:A6 ; |41| 
           LDDW    .D2T2   *++SP,B11:B10     ; |47| 
           LDDW    .D2T2   *++SP,B13:B12     ; |47| 
           LDW     .D2T1   *++SP(8),A14      ; |47| 
           NOP             6
           MPYDP   .M1X    A5:A4,B7:B6,A5:A4 ; |41| 
           SUBDP   .L2X    B5:B4,A7:A6,B5:B4 ; |41| 
           NOP             8
           ADDDP   .L1X    A5:A4,B5:B4,A7:A6 ; |41| 
           NOP             1
           RETNOP  .S2     B3,4              ; |47| 

           MV      .L1     A7,A5             ; |46| 
||         MV      .S1     A6,A4             ; |46| 

           ; BRANCH OCCURS {B3}              ; |47| 
;** --------------------------------------------------------------------------*
$C$L4:    
           LDDW    .D2T1   *++SP,A11:A10     ; |47| 
           LDDW    .D2T2   *++SP,B11:B10     ; |47| 

           LDDW    .D2T2   *++SP,B13:B12     ; |47| 
||         RET     .S2     B3                ; |47| 

           LDW     .D2T1   *++SP(8),A14      ; |47| 
           NOP             3

           MV      .L1     A7,A5             ; |46| 
||         MV      .S1     A6,A4             ; |46| 

           ; BRANCH OCCURS {B3}              ; |47| 
	.sect	".text"
	.clink
	.global	_ZN17SVelocityPlanning22ComputeUniformDistanceEP11DynamicInfod

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::ComputeUniformDistance(DynamicInfo *, double)*
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
_ZN17SVelocityPlanning22ComputeUniformDistanceEP11DynamicInfod:
;** --------------------------------------------------------------------------*
;** 250	-----------------------    U$3 = (*dynamic_info).acceleration;
;** 250	-----------------------    if ( ABS(U$3) > 1.00000000000000002092e-8 ) goto g3;
;** 255	-----------------------    distance_for_A = 0.0;
;** 255	-----------------------    goto g4;

           STW     .D2T1   A11,*SP--(8)      ; |246| 
||         MVK     .S1     288,A3            ; |251| 

           STW     .D2T1   A10,*SP--(8)      ; |246| 
||         ZERO    .L1     A11:A10           ; |255| 

           STDW    .D2T2   B13:B12,*SP--     ; |246| 
||         MVKL    .S2     0xe2308c3a,B12

           STDW    .D2T2   B11:B10,*SP--     ; |246| 
||         MVKL    .S2     0x3e45798e,B13

           STDW    .D2T1   A15:A14,*SP--     ; |246| 
           STDW    .D2T1   A13:A12,*SP--     ; |246| 
           STW     .D2T2   B3,*SP--(16)      ; |246| 
           LDDW    .D2T2   *+B4(48),B11:B10  ; |250| 
           MV      .L1     A7,A15            ; |246| 
           MVKH    .S2     0xe2308c3a,B12
           MV      .L1X    B4,A14            ; |246| 
           MVKH    .S2     0x3e45798e,B13
           ABSDP   .S2     B11:B10,B5:B4     ; |250| 
           ADD     .L1     A3,A14,A3         ; |251| 
           CMPGTDP .S2     B5:B4,B13:B12,B0  ; |250| 
           MV      .L2X    A14,B4

   [ B0]   LDDW    .D2T2   *B4,B5:B4         ; |251| 
|| [!B0]   MV      .L2X    A14,B4
|| [!B0]   B       .S1     $C$L5             ; |255| 

   [!B0]   LDDW    .D2T2   *+B4(56),B11:B10  ; |257| 
           STW     .D2T1   A6,*+SP(4)        ; |246| 
   [ B0]   MV      .L1     A6,A4             ; |251| 
   [ B0]   MV      .L1     A15,A5
           MV      .L1X    B5,A12            ; |251| 
           ; BRANCHCC OCCURS {$C$L5}         ; |255| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 251	-----------------------    C$2 = (*dynamic_info).fs;
;** 251	-----------------------    distance_for_A = (pow(speed, 2.0)-pow(C$2, 2.0))/U$3+(speed+C$2)*U$3/(*dynamic_info).Ja;

           MV      .L1X    B4,A13            ; |251| 
||         ADDDP   .L2X    B5:B4,A5:A4,B5:B4 ; |251| 

           NOP             6
           MPYDP   .M2     B11:B10,B5:B4,B7:B6 ; |251| 
           LDDW    .D1T2   *A3,B5:B4         ; |251| 
           NOP             5
           CALL    .S1     __c6xabi_divd     ; |251| 
           ADDKPC  .S2     $C$RL4,B3,2       ; |251| 
           MV      .L1X    B6,A4             ; |251| 
           MV      .L1X    B7,A5             ; |251| 
$C$RL4:    ; CALL OCCURS {__c6xabi_divd} {0}  ; |251| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B5

           SET     .S2     B5,0x1e,0x1e,B5
||         MV      .L1     A4,A10            ; |251| 

           CALLP   .S2     pow,B3
||         ZERO    .L2     B4                ; |251| 
||         MV      .L1     A5,A11            ; |251| 
||         MV      .S1     A12,A5            ; |251| 
||         MV      .D1     A13,A4            ; |251| 

$C$RL6:    ; CALL OCCURS {pow} {0}           ; |251| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         MV      .L1     A4,A12            ; |251| 
||         LDW     .D2T1   *+SP(4),A4        ; |251| 
||         MV      .S1     A5,A13            ; |251| 
||         MV      .D1     A15,A5            ; |251| 
||         ZERO    .L2     B4                ; |251| 

$C$RL5:    ; CALL OCCURS {pow} {0}           ; |251| 
           SUBDP   .L1     A5:A4,A13:A12,A5:A4 ; |251| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2     B10,B4            ; |251| 
||         MV      .D2     B11,B5            ; |251| 

$C$RL7:    ; CALL OCCURS {__c6xabi_divd} {0}  ; |251| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A14,B4
           LDDW    .D2T2   *+B4(56),B11:B10  ; |257| 
           ADDDP   .S1     A11:A10,A5:A4,A11:A10 ; |251| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L5:    
;**	-----------------------g4:
;** 257	-----------------------    U$16 = (*dynamic_info).deceleration;
;** 257	-----------------------    if ( ABS(U$16) > 1.00000000000000002092e-8 ) goto g6;
;** 260	-----------------------    distance_for_D = 0.0;
;** 260	-----------------------    goto g7;

           ABSDP   .S2     B11:B10,B5:B4     ; |257| 
||         ZERO    .L1     A5:A4             ; |260| 
||         MVK     .S1     296,A3            ; |258| 

           ADD     .L1     A3,A14,A3         ; |258| 
           CMPGTDP .S2     B5:B4,B13:B12,B0  ; |257| 
           MV      .L2X    A14,B4

   [!B0]   ADDDP   .L1     A5:A4,A11:A10,A5:A4 ; |262| 
|| [!B0]   B       .S1     $C$L6             ; |260| 
|| [ B0]   LDDW    .D2T2   *+B4(8),B13:B12   ; |258| 

   [ B0]   LDW     .D2T1   *+SP(4),A4
   [!B0]   ZERO    .L1     A6                ; |262| 
   [!B0]   ZERO    .L1     A7
   [ B0]   MV      .L1     A15,A5
   [!B0]   SET     .S1     A7,0x15,0x1d,A7
           ; BRANCHCC OCCURS {$C$L6}         ; |260| 
;** --------------------------------------------------------------------------*
;**	-----------------------g6:
;** 258	-----------------------    C$1 = (*dynamic_info).fe;
;** 258	-----------------------    distance_for_D = (pow(speed, 2.0)-pow(C$1, 2.0))/U$16+(speed+C$1)*U$16/(*dynamic_info).Jd;
           ADDDP   .L2X    B13:B12,A5:A4,B5:B4 ; |258| 
           NOP             6
           MPYDP   .M2     B11:B10,B5:B4,B7:B6 ; |258| 
           LDDW    .D1T2   *A3,B5:B4         ; |258| 
           NOP             5
           CALL    .S1     __c6xabi_divd     ; |258| 
           ADDKPC  .S2     $C$RL8,B3,2       ; |258| 
           MV      .L1X    B7,A5             ; |258| 
           MV      .L1X    B6,A4             ; |258| 
$C$RL8:    ; CALL OCCURS {__c6xabi_divd} {0}  ; |258| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B5

           SET     .S2     B5,0x1e,0x1e,B5
||         MV      .L1     A4,A12            ; |258| 
||         MV      .S1X    B12,A4            ; |258| 

           CALLP   .S2     pow,B3
||         ZERO    .L2     B4                ; |258| 
||         MV      .L1     A5,A13            ; |258| 
||         MV      .S1X    B13,A5            ; |258| 

$C$RL10:   ; CALL OCCURS {pow} {0}           ; |258| 
           ZERO    .L2     B5

           SET     .S2     B5,0x1e,0x1e,B5
||         MV      .L2X    A5,B12            ; |258| 
||         ZERO    .D2     B4                ; |258| 

           CALLP   .S2     pow,B3
||         MV      .L2X    A4,B13            ; |258| 
||         LDW     .D2T1   *+SP(4),A4        ; |258| 
||         MV      .L1     A15,A5            ; |258| 

$C$RL9:    ; CALL OCCURS {pow} {0}           ; |258| 
           MV      .L1X    B12,A7            ; |258| 
           MV      .L1X    B13,A6            ; |258| 
           SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |258| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2     B10,B4            ; |258| 
||         MV      .D2     B11,B5            ; |258| 

$C$RL11:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |258| 
;** --------------------------------------------------------------------------*
           ADDDP   .L1     A13:A12,A5:A4,A5:A4 ; |258| 
           ZERO    .S1     A7
           SET     .S1     A7,0x15,0x1d,A7
           ZERO    .L1     A6                ; |262| 
           NOP             3
           ADDDP   .L1     A5:A4,A11:A10,A5:A4 ; |262| 
           NOP             5
;** --------------------------------------------------------------------------*
$C$L6:    
;**	-----------------------g7:
;** 262	-----------------------    return (*dynamic_info).distance-(distance_for_A+distance_for_D)*0.5;
           MV      .L2X    A14,B4
           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |262| 
           LDDW    .D2T2   *+B4(40),B5:B4    ; |262| 
           LDW     .D2T2   *++SP(16),B3      ; |263| 
           LDDW    .D2T1   *++SP,A13:A12     ; |263| 
           LDDW    .D2T1   *++SP,A15:A14     ; |263| 
           LDDW    .D2T2   *++SP,B11:B10     ; |263| 
           LDDW    .D2T2   *++SP,B13:B12     ; |263| 
           LDW     .D2T1   *++SP(8),A10      ; |263| 
           LDW     .D2T1   *++SP(8),A11      ; |263| 
           NOP             1
           SUBDP   .L1X    B5:B4,A5:A4,A5:A4 ; |262| 
           RETNOP  .S2     B3,5              ; |263| 
           ; BRANCH OCCURS {B3}              ; |263| 
	.sect	".text"
	.clink
	.global	_ZN17SVelocityPlanning20GetLastPhaseDistanceEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::GetLastPhaseDistance(DynamicInfo *)      *
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
;*   Local Frame Size  : 0 Args + 20 Auto + 56 Save = 76 byte                 *
;******************************************************************************
_ZN17SVelocityPlanning20GetLastPhaseDistanceEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 348	-----------------------    U$5 = *((double * const)dynamic_info+128);
;** 348	-----------------------    U$2 = (*dynamic_info).current_time;
;** 348	-----------------------    if ( U$2 >= U$5 ) goto g3;

           STW     .D2T1   A11,*SP--(8)      ; |344| 
||         MVKL    .S1     0x3fc55555,A11
||         ZERO    .L2     B5

           STW     .D2T1   A10,*SP--(8)      ; |344| 
||         MVKL    .S1     0x55572a75,A10
||         MVKH    .S2     0x40080000,B5

           STDW    .D2T2   B13:B12,*SP--     ; |344| 
||         MVKH    .S1     0x55572a75,A10

           STDW    .D2T2   B11:B10,*SP--     ; |344| 
           STDW    .D2T1   A15:A14,*SP--     ; |344| 
           STDW    .D2T1   A13:A12,*SP--     ; |344| 
           STW     .D2T2   B3,*SP--(32)      ; |344| 
           LDDW    .D2T2   *+B4(128),B17:B16 ; |348| 
           LDDW    .D2T2   *+B4(184),B7:B6   ; |348| 
           MV      .L1X    B4,A14            ; |344| 
           MVK     .S2     288,B4            ; |350| 
           ADD     .L2X    B4,A14,B12        ; |350| 
           ZERO    .L2     B4                ; |350| 

           MV      .L2     B6,B10            ; |349| 
||         CMPLTDP .S2     B7:B6,B17:B16,B0  ; |348| 

           MV      .L2     B7,B11            ; |349| 

   [!B0]   MV      .L2X    A14,B4
|| [!B0]   B       .S1     $C$L7             ; |348| 
|| [!B0]   SUBDP   .S2     B7:B6,B17:B16,B11:B10 ; |353| 

   [!B0]   LDDW    .D2T2   *+B4(136),B9:B8   ; |351| 
   [ B0]   CALL    .S1     pow               ; |350| 
           MVKH    .S1     0x3fc55555,A11
           MV      .L1X    B6,A4             ; |349| 
           MV      .L1X    B7,A5             ; |349| 
           ; BRANCHCC OCCURS {$C$L7}         ; |348| 
;** --------------------------------------------------------------------------*
;** 349	-----------------------    relative_time = U$2;
;** 350	-----------------------    l = (*dynamic_info).ls+(*dynamic_info).fs*relative_time+(*dynamic_info).Ja*pow(relative_time, 3.0)*0.166666666669999991024;
;** 372	-----------------------    return l;
           NOP             1
           ADDKPC  .S2     $C$RL12,B3,0      ; |350| 
$C$RL12:   ; CALL OCCURS {pow} {0}           ; |350| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *B12,B5:B4        ; |350| 
           MV      .L2X    A14,B6
           LDDW    .D2T2   *B6,B7:B6         ; |350| 
           NOP             2
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |350| 
           NOP             1
           MPYDP   .M2     B11:B10,B7:B6,B5:B4 ; |350| 
           NOP             3
           MV      .L2X    A14,B6
           LDDW    .D2T2   *+B6(24),B7:B6    ; |350| 
           LDW     .D2T2   *++SP(32),B3      ; |373| 
           LDDW    .D2T1   *++SP,A13:A12     ; |373| 
           MPYDP   .M1     A11:A10,A5:A4,A5:A4 ; |350| 
           LDDW    .D2T1   *++SP,A15:A14     ; |373| 
           ADDDP   .L2     B5:B4,B7:B6,B5:B4 ; |350| 
           LDDW    .D2T2   *++SP,B11:B10     ; |373| 
           LDDW    .D2T2   *++SP,B13:B12     ; |373| 
           LDW     .D2T1   *++SP(8),A10      ; |373| 
           LDW     .D2T1   *++SP(8),A11      ; |373| 
           NOP             3
           ADDDP   .L1X    A5:A4,B5:B4,A5:A4 ; |350| 
           RETNOP  .S2     B3,5              ; |373| 
           ; BRANCH OCCURS {B3}              ; |373| 
;** --------------------------------------------------------------------------*
$C$L7:    
;**	-----------------------g3:
;** 351	-----------------------    U$19 = *((double * const)dynamic_info+136);
;** 351	-----------------------    if ( U$2 >= U$19 ) goto g5;

           CMPLTDP .S2     B7:B6,B9:B8,B0    ; |351| 
||         ZERO    .L2     B4                ; |353| 
||         ZERO    .D2     B5

           MV      .L1X    B10,A4            ; |353| 

   [!B0]   B       .S1     $C$L8             ; |351| 
|| [!B0]   MV      .S2X    A14,B4
||         MV      .L1X    B11,A5            ; |353| 
|| [!B0]   SUBDP   .L2     B7:B6,B9:B8,B11:B10 ; |356| 

   [ B0]   CALL    .S1     pow               ; |353| 
|| [!B0]   LDDW    .D2T2   *+B4(144),B17:B16 ; |354| 

           ZERO    .L2     B12               ; |353| 
           ZERO    .L2     B13
           SET     .S2     B5,0x1e,0x1e,B5
           SET     .S2     B13,0x15,0x1d,B13
           ; BRANCHCC OCCURS {$C$L8}         ; |351| 
;** --------------------------------------------------------------------------*
;** 353	-----------------------    C$9 = U$2-U$5;
;** 353	-----------------------    l = *((double * const)dynamic_info+240)+*((double * const)dynamic_info+192)*C$9+(*dynamic_info).acceleration*0.5*pow(C$9, 2.0);
;** 372	-----------------------    return l;
           ADDKPC  .S2     $C$RL13,B3,0      ; |353| 
$C$RL13:   ; CALL OCCURS {pow} {0}           ; |353| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A14,B4            ; |353| 
           LDDW    .D2T2   *+B4(48),B5:B4    ; |353| 
           MV      .L2X    A14,B6
           LDDW    .D2T1   *+B6(192),A7:A6   ; |353| 
           LDDW    .D2T2   *+B6(240),B7:B6   ; |353| 
           LDW     .D2T2   *++SP(32),B3      ; |373| 
           MPYDP   .M2     B13:B12,B5:B4,B5:B4 ; |353| 
           LDDW    .D2T1   *++SP,A13:A12     ; |373| 
           MPYDP   .M1X    B11:B10,A7:A6,A7:A6 ; |353| 
           LDDW    .D2T1   *++SP,A15:A14     ; |373| 
           LDDW    .D2T2   *++SP,B11:B10     ; |373| 
           LDDW    .D2T2   *++SP,B13:B12     ; |373| 
           LDW     .D2T1   *++SP(8),A10      ; |373| 
           LDW     .D2T1   *++SP(8),A11      ; |373| 
           NOP             3
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |353| 
           NOP             1
           ADDDP   .L2X    A7:A6,B7:B6,B5:B4 ; |353| 
           NOP             7
           ADDDP   .L1X    A5:A4,B5:B4,A5:A4 ; |353| 
           RETNOP  .S2     B3,5              ; |373| 
           ; BRANCH OCCURS {B3}              ; |373| 
;** --------------------------------------------------------------------------*
$C$L8:    
;**	-----------------------g5:
;** 354	-----------------------    U$37 = *((double * const)dynamic_info+144);
;** 354	-----------------------    if ( U$2 >= U$37 ) goto g7;

           CMPLTDP .S2     B7:B6,B17:B16,B0  ; |354| 
||         MV      .D2     B12,B31           ; |356| 

           MV      .L1X    B10,A4            ; |356| 
||         STW     .D2T2   B31,*+SP(4)       ; |356| 

   [!B0]   B       .S1     $C$L9             ; |354| 
||         MVK     .S2     288,B4            ; |356| 
||         MV      .L1X    B11,A5            ; |356| 
||         STW     .D2T2   B13,*+SP(8)       ; |356| 

           STW     .D2T1   A10,*+SP(16)      ; |356| 

           ADD     .L1X    B4,A14,A15        ; |356| 
||         MV      .L2     B31,B4            ; |354| 

   [ B0]   CALL    .S1     pow               ; |356| 
|| [!B0]   MV      .L2X    A14,B4

   [!B0]   LDDW    .D2T2   *+B4(152),B19:B18 ; |358| 
           STW     .D2T1   A11,*+SP(20)      ; |356| 
           ; BRANCHCC OCCURS {$C$L9}         ; |354| 
;** --------------------------------------------------------------------------*
;** 356	-----------------------    C$8 = U$2-U$19;
;** 356	-----------------------    l = *((double * const)dynamic_info+248)+*((double * const)dynamic_info+200)*C$8+(*dynamic_info).acceleration*0.5*pow(C$8, 2.0)-(*dynamic_info).Ja*pow(C$8, 3.0)*0.166666666669999991024;
;** 372	-----------------------    return l;
           ADDKPC  .S2     $C$RL14,B3,2      ; |356| 
$C$RL14:   ; CALL OCCURS {pow} {0}           ; |356| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A14,B4            ; |356| 
           LDDW    .D2T2   *+B4(48),B13:B12  ; |356| 
           LDDW    .D2T1   *+B4(200),A11:A10 ; |356| 
           LDDW    .D2T2   *+B4(248),B5:B4   ; |356| 
           MV      .L1     A4,A12            ; |356| 
           MV      .L1X    B10,A4            ; |356| 
           MV      .L1     A5,A13            ; |356| 
           MV      .L1X    B11,A5            ; |356| 

           MV      .L1X    B5,A14            ; |356| 
||         ZERO    .L2     B5

           MVKH    .S2     0x40080000,B5

           CALLP   .S2     pow,B3
||         STW     .D2T2   B4,*+SP(12)       ; |356| 
||         ZERO    .L2     B4                ; |356| 

$C$RL15:   ; CALL OCCURS {pow} {0}           ; |356| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(8),B5        ; |356| 
           LDW     .D2T2   *+SP(4),B4        ; |356| 
           MPYDP   .M1X    B11:B10,A11:A10,A7:A6 ; |356| 
           MV      .L2X    A15,B6
           LDDW    .D2T2   *B6,B7:B6         ; |356| 
           NOP             1
           MPYDP   .M2     B5:B4,B13:B12,B5:B4 ; |356| 
           NOP             9
           NOP             1

           MPYDP   .M2X    A5:A4,B7:B6,B7:B6 ; |356| 
||         MPYDP   .M1X    A13:A12,B5:B4,A5:A4 ; |356| 
||         LDW     .D2T2   *+SP(12),B4

           NOP             3
           MV      .L2X    A14,B5

           ADDDP   .L2X    A7:A6,B5:B4,B5:B4 ; |356| 
||         LDW     .D2T1   *+SP(20),A7

           LDW     .D2T1   *+SP(16),A6
           LDW     .D2T2   *++SP(32),B3      ; |373| 
           LDDW    .D2T1   *++SP,A13:A12     ; |373| 
           LDDW    .D2T1   *++SP,A15:A14     ; |373| 
           LDDW    .D2T2   *++SP,B11:B10     ; |373| 
           MPYDP   .M2X    A7:A6,B7:B6,B7:B6 ; |356| 
           LDDW    .D2T2   *++SP,B13:B12     ; |373| 
           LDW     .D2T1   *++SP(8),A10      ; |373| 
           LDW     .D2T1   *++SP(8),A11      ; |373| 
           ADDDP   .L2X    A5:A4,B5:B4,B5:B4 ; |356| 
           NOP             6
           SUBDP   .L2     B5:B4,B7:B6,B5:B4 ; |356| 
           NOP             3
           RETNOP  .S2     B3,3              ; |373| 
           MV      .L1X    B5,A5             ; |372| 
           MV      .L1X    B4,A4             ; |372| 
           ; BRANCH OCCURS {B3}              ; |373| 
;** --------------------------------------------------------------------------*
$C$L9:    
;**	-----------------------g7:
;** 358	-----------------------    U$51 = *((double * const)dynamic_info+152);
;** 358	-----------------------    if ( U$2 >= U$51 ) goto g9;
;** 372	-----------------------    C$7 = (double * const)dynamic_info+208;
;** 372	-----------------------    return C$7[6]+*C$7*(U$2-U$37);
           MV      .L2X    A14,B8            ; |358| 
           SUBDP   .L2     B7:B6,B17:B16,B5:B4 ; |372| 
           ADDAD   .D2     B8,26,B31         ; |372| 
           CMPLTDP .S2     B7:B6,B19:B18,B0  ; |358| 
           NOP             1
   [ B0]   LDDW    .D2T2   *B31,B9:B8        ; |372| 
   [!B0]   SUBDP   .L2     B7:B6,B19:B18,B11:B10 ; |363| 
   [ B0]   LDDW    .D2T1   *+B31(48),A7:A6   ; |372| 
   [!B0]   MV      .L2X    A14,B4
   [!B0]   LDDW    .D2T2   *+B4(160),B17:B16 ; |361| 
   [ B0]   MPYDP   .M2     B5:B4,B9:B8,B5:B4 ; |372| 
           NOP             5
   [ B0]   BNOP    .S1     $C$L12,4          ; |372| 

   [ B0]   ADDDP   .L1X    B5:B4,A7:A6,A5:A4 ; |372| 
||         CMPLTDP .S2     B7:B6,B17:B16,B0  ; |361| 

           ; BRANCHCC OCCURS {$C$L12}        ; |372| 
;** --------------------------------------------------------------------------*
;**	-----------------------g9:
;** 361	-----------------------    U$65 = *((double * const)dynamic_info+160);
;** 361	-----------------------    if ( U$2 >= U$65 ) goto g11;

           ZERO    .L2     B4                ; |363| 
||         MV      .D2X    A14,B5            ; |363| 

   [!B0]   MV      .L2X    A14,B4
||         ADDAD   .D2     B5,27,B12         ; |363| 
||         MVK     .S2     296,B31           ; |363| 

   [!B0]   BNOP    .S1     $C$L10,2          ; |361| 
|| [!B0]   LDDW    .D2T2   *+B4(168),B9:B8   ; |364| 
||         ZERO    .L2     B5
||         ADD     .S2X    B31,A14,B13       ; |363| 

           MVKH    .S2     0x40080000,B5
           MV      .L1X    B11,A5            ; |363| 

           MV      .L1X    B10,A4            ; |363| 
|| [!B0]   SUBDP   .L2     B7:B6,B17:B16,B11:B10 ; |366| 

           ; BRANCHCC OCCURS {$C$L10}        ; |361| 
;** --------------------------------------------------------------------------*
;** 363	-----------------------    C$6 = U$2-U$51;
;** 363	-----------------------    C$5 = (double * const)dynamic_info+216;
;** 363	-----------------------    l = C$5[6]+*C$5*C$6-(*dynamic_info).Jd*pow(C$6, 3.0)*0.166666666669999991024;
;** 372	-----------------------    return l;
           CALL    .S1     pow               ; |363| 
           ADDKPC  .S2     $C$RL16,B3,4      ; |363| 
$C$RL16:   ; CALL OCCURS {pow} {0}           ; |363| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *B13,B5:B4        ; |363| 
           LDDW    .D2T2   *B12,B7:B6        ; |363| 
           NOP             3
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |363| 
           MPYDP   .M2     B11:B10,B7:B6,B5:B4 ; |363| 
           LDDW    .D2T2   *+B12(48),B7:B6   ; |363| 
           LDW     .D2T2   *++SP(32),B3      ; |373| 
           LDDW    .D2T1   *++SP,A13:A12     ; |373| 
           LDDW    .D2T1   *++SP,A15:A14     ; |373| 
           LDDW    .D2T2   *++SP,B11:B10     ; |373| 
           LDDW    .D2T2   *++SP,B13:B12     ; |373| 
           NOP             2
           MPYDP   .M1     A11:A10,A5:A4,A5:A4 ; |363| 
           ADDDP   .L2     B5:B4,B7:B6,B5:B4 ; |363| 
           LDW     .D2T1   *++SP(8),A10      ; |373| 
           LDW     .D2T1   *++SP(8),A11      ; |373| 
           NOP             6
           SUBDP   .L1X    B5:B4,A5:A4,A5:A4 ; |363| 
           RETNOP  .S2     B3,5              ; |373| 
           ; BRANCH OCCURS {B3}              ; |373| 
;** --------------------------------------------------------------------------*
$C$L10:    
;**	-----------------------g11:
;** 364	-----------------------    U$80 = *((double * const)dynamic_info+168);
;** 364	-----------------------    if ( U$2 >= U$80 ) goto g13;

           CMPLTDP .S2     B7:B6,B9:B8,B0    ; |364| 
||         LDW     .D2T1   *+SP(8),A13       ; |369| 
||         ZERO    .L1     A12               ; |366| 

           ADDAD   .D2     B4,28,B5          ; |366| 
||         SUBDP   .L2     B7:B6,B9:B8,B7:B6 ; |369| 

           MV      .D2X    A14,B30           ; |366| 
||         MVK     .S2     296,B31           ; |369| 

           ADDAD   .D2     B30,29,B4         ; |369| 
||         ZERO    .L2     B29
||         ZERO    .S2     B12               ; |366| 

           STW     .D2T1   A10,*+SP(12)      ; |369| 
||         MV      .L1X    B5,A10            ; |366| 
||         ADD     .S2     B31,B30,B5        ; |369| 
|| [!B0]   B       .S1     $C$L11            ; |364| 

           STW     .D2T2   B5,*+SP(20)       ; |369| 
|| [ B0]   CALL    .S1     pow               ; |366| 
||         MV      .L1X    B4,A15            ; |369| 
||         SET     .S2     B29,0x1e,0x1e,B5

           STW     .D2T1   A11,*+SP(16)      ; |369| 
||         MV      .S2X    A13,B13           ; |369| 
|| [!B0]   CALL    .S1     pow               ; |369| 

           MV      .L1X    B10,A4            ; |366| 
||         ZERO    .S2     B4                ; |366| 

           MV      .L1X    B11,A5            ; |366| 
||         STW     .D2T2   B7,*+SP(8)        ; |369| 

           STW     .D2T2   B6,*+SP(4)        ; |369| 
           ; BRANCHCC OCCURS {$C$L11}        ; |364| 
;** --------------------------------------------------------------------------*
;** 366	-----------------------    C$4 = U$2-U$65;
;** 366	-----------------------    C$3 = (double * const)dynamic_info+224;
;** 366	-----------------------    l = C$3[6]+*C$3*C$4-(*dynamic_info).deceleration*0.5*pow(C$4, 2.0);
;** 372	-----------------------    return l;
           ADDKPC  .S2     $C$RL17,B3,0      ; |366| 
$C$RL17:   ; CALL OCCURS {pow} {0}           ; |366| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A14,B4            ; |366| 
           LDDW    .D2T2   *+B4(56),B7:B6    ; |366| 
           MV      .L2X    A10,B4
           LDDW    .D2T1   *B4,A7:A6         ; |366| 
           LDDW    .D2T2   *+B4(48),B5:B4    ; |366| 
           LDW     .D2T2   *++SP(32),B3      ; |373| 
           MPYDP   .M2     B13:B12,B7:B6,B7:B6 ; |366| 
           LDDW    .D2T1   *++SP,A13:A12     ; |373| 
           MPYDP   .M1X    B11:B10,A7:A6,A7:A6 ; |366| 
           LDDW    .D2T1   *++SP,A15:A14     ; |373| 
           LDDW    .D2T2   *++SP,B11:B10     ; |373| 
           LDDW    .D2T2   *++SP,B13:B12     ; |373| 
           LDW     .D2T1   *++SP(8),A10      ; |373| 
           LDW     .D2T1   *++SP(8),A11      ; |373| 
           NOP             3
           MPYDP   .M1X    A5:A4,B7:B6,A5:A4 ; |366| 
           NOP             1
           ADDDP   .L2X    A7:A6,B5:B4,B5:B4 ; |366| 
           NOP             7
           SUBDP   .L1X    B5:B4,A5:A4,A5:A4 ; |366| 
           RETNOP  .S2     B3,5              ; |373| 
           ; BRANCH OCCURS {B3}              ; |373| 
;** --------------------------------------------------------------------------*
$C$L11:    
;**	-----------------------g13:
;** 369	-----------------------    C$2 = U$2-U$80;
;** 369	-----------------------    C$1 = (double * const)dynamic_info+232;
;** 369	-----------------------    l = C$1[6]+*C$1*C$2-(*dynamic_info).deceleration*0.5*pow(C$2, 2.0)+(*dynamic_info).Jd*pow(C$2, 3.0)*0.166666666669999991024;
;** 372	-----------------------    return l;
           MV      .L1X    B7,A5             ; |369| 

           MV      .L1X    B6,A4             ; |369| 
||         ADDKPC  .S2     $C$RL19,B3,0      ; |369| 

$C$RL19:   ; CALL OCCURS {pow} {0}           ; |369| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A14,B4            ; |369| 

           MV      .L2X    A15,B31           ; |369| 
||         LDDW    .D2T2   *+B4(56),B11:B10  ; |369| 

           LDDW    .D2T2   *+B31(48),B5:B4   ; |369| 
           MV      .L1     A4,A10            ; |369| 
           LDW     .D2T1   *+SP(4),A4        ; |369| 
           MV      .L1     A5,A11            ; |369| 
           LDW     .D2T1   *+SP(8),A5        ; |369| 

           MV      .L1X    B5,A14            ; |369| 
||         ZERO    .L2     B5

           MVKH    .S2     0x40080000,B5

           CALLP   .S2     pow,B3
||         LDDW    .D2T2   *B31,B13:B12      ; |369| 
||         MV      .L1X    B4,A15            ; |369| 
||         MV      .L2X    A12,B4            ; |369| 

$C$RL18:   ; CALL OCCURS {pow} {0}           ; |369| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(20),B4
           LDW     .D2T2   *+SP(8),B5        ; |369| 
           MPYDP   .M1X    A13:A12,B11:B10,A7:A6 ; |369| 
           NOP             2
           LDDW    .D2T2   *B4,B7:B6         ; |369| 
           LDW     .D2T2   *+SP(4),B4        ; |369| 
           NOP             4
           MPYDP   .M2     B5:B4,B13:B12,B9:B8 ; |369| 
           MPYDP   .M1     A11:A10,A7:A6,A7:A6 ; |369| 
           NOP             2
           MPYDP   .M2X    A5:A4,B7:B6,B7:B6 ; |369| 
           LDW     .D2T1   *+SP(12),A4
           LDW     .D2T1   *+SP(16),A5
           NOP             2
           MV      .L2X    A14,B5
           MV      .L2X    A15,B4
           ADDDP   .L2     B9:B8,B5:B4,B5:B4 ; |369| 
           NOP             2
           MPYDP   .M2X    A5:A4,B7:B6,B7:B6 ; |369| 
           NOP             3
           SUBDP   .L2X    B5:B4,A7:A6,B5:B4 ; |369| 
           NOP             6
           ADDDP   .L2     B7:B6,B5:B4,B5:B4 ; |369| 
           NOP             7
           MV      .L1X    B5,A5             ; |372| 
           MV      .L1X    B4,A4             ; |372| 
;** --------------------------------------------------------------------------*
$C$L12:    
           LDW     .D2T2   *++SP(32),B3      ; |373| 
           LDDW    .D2T1   *++SP,A13:A12     ; |373| 
           LDDW    .D2T1   *++SP,A15:A14     ; |373| 
           LDDW    .D2T2   *++SP,B11:B10     ; |373| 
           LDDW    .D2T2   *++SP,B13:B12     ; |373| 

           LDW     .D2T1   *++SP(8),A10      ; |373| 
||         RET     .S2     B3                ; |373| 

           LDW     .D2T1   *++SP(8),A11      ; |373| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |373| 
	.sect	".text"
	.clink
	.global	_ZN17SVelocityPlanning20ComputePhaseDistanceEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::ComputePhaseDistance(DynamicInfo *)      *
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
;*   Local Frame Size  : 0 Args + 20 Auto + 56 Save = 76 byte                 *
;******************************************************************************
_ZN17SVelocityPlanning20ComputePhaseDistanceEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 285	-----------------------    *((double * const)dynamic_info+240) = (*dynamic_info).ls+(*dynamic_info).fs**((double * const)dynamic_info+72)+(*dynamic_info).Ja*pow(*((double * const)dynamic_info+72), 3.0)*0.166666666669999991024;
;** 286	-----------------------    *((double * const)dynamic_info+248) = *((double * const)dynamic_info+240)+*((double * const)dynamic_info+192)**((double * const)dynamic_info+80)+(*dynamic_info).acceleration*0.5*pow(*((double * const)dynamic_info+80), 2.0);
;** 287	-----------------------    C$5 = (double * const)dynamic_info+200;
;** 287	-----------------------    C$5[7] = C$4 = *((double * const)dynamic_info+248)+*C$5**((double * const)dynamic_info+88)+(*dynamic_info).acceleration*0.5*pow(*((double * const)dynamic_info+88), 2.0)-(*dynamic_info).Ja*pow(*((double * const)dynamic_info+88), 3.0)*0.166666666669999991024;
;** 288	-----------------------    C$3 = (double * const)dynamic_info+256;
;** 288	-----------------------    C$3[1] = C$4+*((double * const)dynamic_info+208)**((double * const)dynamic_info+96);
;** 289	-----------------------    C$2 = (double * const)dynamic_info+216;
;** 289	-----------------------    C$2[7] = C$2[6]+*C$2**((double * const)dynamic_info+104)-(*dynamic_info).Jd*pow(*((double * const)dynamic_info+104), 3.0)*0.166666666669999991024;
;** 290	-----------------------    C$1 = (double * const)dynamic_info+224;
;** 290	-----------------------    C$1[7] = C$1[6]+*C$1**((double * const)dynamic_info+112)-(*dynamic_info).deceleration*0.5*pow(*((double * const)dynamic_info+112), 2.0);
;**  	-----------------------    return;
           STW     .D2T1   A11,*SP--(8)      ; |284| 
           STW     .D2T1   A10,*SP--(8)      ; |284| 
           STDW    .D2T2   B13:B12,*SP--     ; |284| 
           STDW    .D2T2   B11:B10,*SP--     ; |284| 
           STDW    .D2T1   A15:A14,*SP--     ; |284| 
           STDW    .D2T1   A13:A12,*SP--     ; |284| 

           STW     .D2T2   B3,*SP--(32)      ; |284| 
||         MV      .L2     B4,B10            ; |284| 

           LDDW    .D2T2   *+B10(72),B7:B6   ; |285| 
           ZERO    .L2     B5
           MVKH    .S2     0x40080000,B5
           ZERO    .L2     B4                ; |285| 
           NOP             1
           MV      .L1X    B6,A4             ; |285| 

           CALLP   .S2     pow,B3
||         MV      .L1X    B7,A5             ; |285| 

$C$RL20:   ; CALL OCCURS {pow} {0}           ; |285| 
;** --------------------------------------------------------------------------*
           MVK     .S1     288,A3            ; |285| 
           ADD     .L1X    A3,B10,A3         ; |285| 
           LDDW    .D1T1   *A3,A7:A6         ; |285| 
           LDDW    .D2T1   *B10,A9:A8        ; |285| 
           LDDW    .D2T1   *+B10(72),A17:A16 ; |285| 
           MVKL    .S1     0x55572a75,A12
           MVKL    .S1     0x3fc55555,A13
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |285| 
           MVKH    .S1     0x55572a75,A12
           MVKH    .S1     0x3fc55555,A13
           LDDW    .D2T2   *+B10(24),B5:B4   ; |285| 
           MPYDP   .M1     A17:A16,A9:A8,A7:A6 ; |285| 
           LDDW    .D2T2   *+B10(80),B7:B6   ; |286| 
           NOP             5
           MPYDP   .M1     A13:A12,A5:A4,A5:A4 ; |285| 
           NOP             3
           ADDDP   .L2X    A7:A6,B5:B4,B5:B4 ; |285| 
           NOP             6
           ADDDP   .L2X    A5:A4,B5:B4,B5:B4 ; |285| 
           MV      .L1X    B6,A4             ; |286| 
           MV      .L1X    B7,A5             ; |286| 
           NOP             4

           STDW    .D2T2   B5:B4,*+B10(240)  ; |285| 
||         ZERO    .L2     B5

           SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         ZERO    .L2     B4                ; |286| 

$C$RL21:   ; CALL OCCURS {pow} {0}           ; |286| 
           MV      .L2X    A4,B6             ; |286| 

           MV      .L2X    A5,B7             ; |286| 
||         LDDW    .D2T1   *+B10(48),A5:A4   ; |286| 

           ZERO    .L1     A11
           LDDW    .D2T1   *+B10(192),A7:A6  ; |286| 
           SET     .S1     A11,0x15,0x1d,A11

           ZERO    .L1     A10               ; |286| 
||         LDDW    .D2T2   *+B10(80),B5:B4   ; |286| 

           MPYDP   .M1     A11:A10,A5:A4,A5:A4 ; |286| 
           LDDW    .D2T2   *+B10(240),B9:B8  ; |286| 
           NOP             2
           MPYDP   .M2X    B5:B4,A7:A6,B5:B4 ; |286| 
           NOP             6
           MPYDP   .M2X    B7:B6,A5:A4,B7:B6 ; |286| 
           NOP             2
           ADDDP   .L2     B5:B4,B9:B8,B5:B4 ; |286| 
           NOP             6
           ADDDP   .L2     B7:B6,B5:B4,B5:B4 ; |286| 
           LDDW    .D2T2   *+B10(88),B7:B6   ; |287| 
           NOP             5

           STDW    .D2T2   B5:B4,*+B10(248)  ; |286| 
||         ZERO    .L2     B5

           SET     .S2     B5,0x1e,0x1e,B5
||         MV      .L1X    B6,A4             ; |287| 

           CALLP   .S2     pow,B3
||         MV      .L2X    A10,B4            ; |287| 
||         MV      .L1X    B7,A5             ; |287| 

$C$RL22:   ; CALL OCCURS {pow} {0}           ; |287| 
           LDDW    .D2T2   *+B10(48),B5:B4   ; |287| 
           STW     .D2T1   A5,*+SP(8)        ; |287| 
           STW     .D2T1   A4,*+SP(4)        ; |287| 
           ADDAD   .D2     B10,25,B11        ; |287| 
           LDDW    .D2T2   *+B10(88),B7:B6   ; |287| 
           STW     .D2T2   B5,*+SP(16)       ; |287| 
           STW     .D2T2   B4,*+SP(12)       ; |287| 
           LDDW    .D2T1   *B11,A5:A4        ; |287| 
           LDDW    .D2T2   *+B10(248),B5:B4  ; |287| 
           LDDW    .D2T2   *+B10(88),B13:B12 ; |287| 
           NOP             2

           STW     .D2T1   A4,*+SP(20)       ; |287| 
||         MV      .L1X    B6,A4             ; |287| 

           MV      .L1X    B5,A14            ; |287| 
||         ZERO    .L2     B5

           MVKH    .S2     0x40080000,B5
||         MV      .L1X    B4,A15            ; |287| 

           ZERO    .L2     B4                ; |287| 
||         MV      .L1     A5,A10            ; |287| 
||         MV      .S1X    B7,A5             ; |287| 
||         CALLP   .S2     pow,B3

$C$RL23:   ; CALL OCCURS {pow} {0}           ; |287| 
           LDW     .D2T2   *+SP(12),B4
           LDW     .D2T2   *+SP(16),B5
           MV      .L1     A11,A7            ; |287| 
           ZERO    .L1     A6                ; |287| 
           MVK     .S1     288,A3            ; |287| 
           ADD     .L1X    A3,B10,A3         ; |287| 

           MPYDP   .M2X    A7:A6,B5:B4,B7:B6 ; |287| 
||         LDW     .D2T1   *+SP(20),A6
||         LDDW    .D1T2   *A3,B5:B4         ; |287| 

           MVK     .S1     256,A3            ; |288| 
           ADD     .L1X    A3,B10,A3         ; |288| 
           MV      .L1     A10,A7
           NOP             1

           MPYDP   .M1X    B13:B12,A7:A6,A7:A6 ; |287| 
||         MPYDP   .M2X    A5:A4,B5:B4,B5:B4 ; |287| 
||         LDW     .D2T1   *+SP(8),A5

           LDW     .D2T1   *+SP(4),A4
           NOP             4
           MPYDP   .M1X    A5:A4,B7:B6,A9:A8 ; |287| 
           LDDW    .D2T2   *+B10(104),B7:B6  ; |289| 
           NOP             1

           MV      .L1     A14,A5
||         MV      .S1     A15,A4

           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |287| 
           MPYDP   .M1X    A13:A12,B5:B4,A7:A6 ; |287| 
           LDDW    .D2T2   *+B10(96),B5:B4   ; |288| 
           NOP             4

           ADDDP   .L1     A9:A8,A5:A4,A5:A4 ; |287| 
||         LDDW    .D2T1   *+B10(208),A9:A8  ; |288| 

           NOP             4
           MPYDP   .M2X    B5:B4,A9:A8,B5:B4 ; |288| 
           NOP             1
           SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |287| 
           NOP             7
           ADDDP   .L2X    B5:B4,A5:A4,B5:B4 ; |288| 
           STDW    .D2T1   A5:A4,*+B11(56)   ; |287| 
           MV      .L1X    B6,A4             ; |289| 
           MV      .L1X    B7,A5             ; |289| 
           NOP             3

           STDW    .D1T2   B5:B4,*+A3(8)     ; |288| 
||         ZERO    .L2     B5

           MVKH    .S2     0x40080000,B5

           CALLP   .S2     pow,B3
||         ZERO    .L2     B4                ; |289| 

$C$RL24:   ; CALL OCCURS {pow} {0}           ; |289| 
           MVK     .S1     296,A3            ; |289| 
           ADD     .L1X    A3,B10,A3         ; |289| 
           LDDW    .D1T1   *A3,A7:A6         ; |289| 
           ADDAD   .D2     B10,27,B4         ; |289| 
           LDDW    .D2T2   *B4,B7:B6         ; |289| 
           LDDW    .D2T2   *+B10(104),B9:B8  ; |289| 
           ZERO    .L2     B5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |289| 
           SET     .S2     B5,0x1e,0x1e,B5
           NOP             3
           MPYDP   .M2     B9:B8,B7:B6,B7:B6 ; |289| 
           LDDW    .D2T2   *+B4(48),B9:B8    ; |289| 
           NOP             4
           MPYDP   .M1     A13:A12,A5:A4,A5:A4 ; |289| 
           NOP             3
           ADDDP   .L2     B7:B6,B9:B8,B7:B6 ; |289| 
           NOP             6
           SUBDP   .L2X    B7:B6,A5:A4,B9:B8 ; |289| 
           LDDW    .D2T2   *+B10(112),B7:B6  ; |290| 
           NOP             4
           MV      .L1X    B6,A4             ; |290| 

           CALLP   .S2     pow,B3
||         STDW    .D2T2   B9:B8,*+B4(56)    ; |289| 
||         ZERO    .L2     B4                ; |290| 
||         MV      .L1X    B7,A5             ; |290| 

$C$RL25:   ; CALL OCCURS {pow} {0}           ; |290| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T1   *+B10(56),A7:A6   ; |290| 
           ADDAD   .D2     B10,28,B4         ; |290| 
           LDDW    .D2T2   *+B10(112),B17:B16 ; |290| 
           LDDW    .D2T2   *B4,B9:B8         ; |290| 

           ZERO    .L2     B6                ; |290| 
||         MV      .S2X    A11,B7            ; |287| 

           MPYDP   .M2X    B7:B6,A7:A6,B7:B6 ; |290| 
           NOP             3
           MPYDP   .M2     B17:B16,B9:B8,B9:B8 ; |290| 
           LDDW    .D2T2   *+B4(48),B17:B16  ; |290| 
           NOP             5
           MPYDP   .M2X    A5:A4,B7:B6,B7:B6 ; |290| 
           NOP             2
           ADDDP   .L2     B9:B8,B17:B16,B9:B8 ; |290| 
           NOP             6
           SUBDP   .L2     B9:B8,B7:B6,B7:B6 ; |290| 
           NOP             6
           STDW    .D2T2   B7:B6,*+B4(56)    ; |290| 
           LDW     .D2T2   *++SP(32),B3      ; |291| 
           LDDW    .D2T1   *++SP,A13:A12     ; |291| 
           LDDW    .D2T1   *++SP,A15:A14     ; |291| 
           LDDW    .D2T2   *++SP,B11:B10     ; |291| 
           LDDW    .D2T2   *++SP,B13:B12     ; |291| 

           LDW     .D2T1   *++SP(8),A10      ; |291| 
||         RET     .S2     B3                ; |291| 

           LDW     .D2T1   *++SP(8),A11      ; |291| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |291| 
	.sect	".text"
	.clink
	.global	_ZN17SVelocityPlanning18AdjustAccelerationEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::AdjustAcceleration(DynamicInfo *)        *
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
_ZN17SVelocityPlanning18AdjustAccelerationEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 118	-----------------------    C$5 = (*dynamic_info).acceleration;
;** 118	-----------------------    *((double * const)dynamic_info+80) = C$3 = ((*dynamic_info).f-(*dynamic_info).fs)/C$5-C$5/(*dynamic_info).Ja;
;** 119	-----------------------    C$4 = (*dynamic_info).deceleration;
;** 119	-----------------------    *((double * const)dynamic_info+112) = ((*dynamic_info).f-(*dynamic_info).fe)/C$4-C$4/(*dynamic_info).Jd;
;** 122	-----------------------    if ( C$3 >= 0.0 ) goto g6;
           STW     .D2T1   A11,*SP--(8)      ; |117| 
           STDW    .D2T2   B11:B10,*SP--     ; |117| 
           STDW    .D2T1   A15:A14,*SP--     ; |117| 
           STDW    .D2T1   A13:A12,*SP--     ; |117| 

           MV      .L1X    B4,A14            ; |117| 
||         STW     .D2T1   A10,*SP--(8)      ; |117| 

           LDDW    .D1T1   *+A14(48),A13:A12 ; |118| 
           MVK     .S2     288,B4            ; |118| 
           ADD     .L2X    B4,A14,B4         ; |118| 
           MV      .L2     B3,B11            ; |117| 
           LDDW    .D2T2   *B4,B5:B4         ; |118| 

           MV      .L1     A12,A4            ; |118| 
||         MV      .S1     A13,A5            ; |118| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL27:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |118| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A14(16),A7:A6   ; |118| 

           MV      .L1     A4,A10            ; |118| 
||         MV      .S1     A5,A11            ; |118| 
||         LDDW    .D1T1   *A14,A5:A4        ; |118| 

           MV      .L2X    A12,B4            ; |118| 
           MV      .L2X    A13,B5            ; |118| 
           NOP             2
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |118| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL26:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |118| 
           SUBDP   .L1     A5:A4,A11:A10,A11:A10 ; |118| 
           LDDW    .D1T1   *+A14(56),A5:A4   ; |119| 
           MVK     .S2     296,B4            ; |119| 
           ADD     .L2X    B4,A14,B4         ; |119| 
           LDDW    .D2T2   *B4,B5:B4         ; |119| 
           NOP             2

           STDW    .D1T1   A11:A10,*+A14(80) ; |118| 
||         MV      .L2X    A4,B10            ; |119| 
||         MV      .L1     A5,A15            ; |119| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL29:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |119| 
           LDDW    .D1T1   *+A14(16),A7:A6   ; |119| 

           MV      .L1     A4,A12            ; |119| 
||         MV      .S1     A5,A13            ; |119| 
||         LDDW    .D1T1   *+A14(8),A5:A4    ; |119| 

           MV      .L2     B10,B4            ; |119| 
           MV      .L2X    A15,B5            ; |119| 
           NOP             2
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |119| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL28:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |119| 
;** --------------------------------------------------------------------------*

           ZERO    .L1     A7:A6             ; |122| 
||         MVK     .S1     64,A3             ; |124| 

           CMPLTDP .S1     A11:A10,A7:A6,A0  ; |122| 
||         SUBDP   .L1     A5:A4,A13:A12,A5:A4 ; |119| 

           ZERO    .L2     B5:B4             ; |123| 

           MV      .L1     A0,A1             ; guard predicate rewrite
|| [!A0]   B       .S1     $C$L15            ; |122| 
|| [ A0]   LDB     .D1T1   *+A14[A3],A0      ; |124| 

   [ A1]   MVK     .S2     288,B7            ; |124| 
|| [ A1]   ZERO    .L2     B6                ; |124| 
|| [!A1]   ZERO    .L1     A0                ; |124| nullify predicate
|| [ A1]   STDW    .D1T2   B5:B4,*+A14(80)   ; |123| 

   [ A1]   SET     .S2     B6,31,31,B10      ; |124| 
   [ A1]   ADD     .S1X    B7,A14,A3         ; |124| 
   [ A1]   ADD     .S1X    B7,A14,A8         ; |124| 

   [ A0]   B       .S1     $C$L13            ; |124| 
||         STDW    .D1T1   A5:A4,*+A14(112)  ; |119| 

           ; BRANCHCC OCCURS {$C$L15}        ; |122| 
;** --------------------------------------------------------------------------*
;** 123	-----------------------    *((double (* const)[7])dynamic_info+80) = 0.0;
;** 124	-----------------------    if ( (*dynamic_info).is_acc_positive ) goto g4;
   [!A0]   LDDW    .D1T1   *+A14(16),A5:A4   ; |124| 
   [!A0]   LDDW    .D1T1   *A14,A7:A6        ; |124| 
   [ A0]   LDDW    .D1T1   *A14,A5:A4        ; |124| 
   [ A0]   LDDW    .D1T1   *+A14(16),A7:A6   ; |124| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L13}        ; |124| 
;** --------------------------------------------------------------------------*
;** 124	-----------------------    S$2 = -sqrt((*dynamic_info).Ja*((*dynamic_info).f-(*dynamic_info).fs));
;** 124	-----------------------    goto g5;
           NOP             1
           SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |124| 
           LDDW    .D1T1   *A3,A7:A6         ; |124| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |124| 
           NOP             3
           CALL    .S1     sqrt              ; |124| 
           ADDKPC  .S2     $C$RL30,B3,4      ; |124| 
$C$RL30:   ; CALL OCCURS {sqrt} {0}          ; |124| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L14,4          ; |124| 
||         XOR     .L1X    A5,B10,A5         ; |124| 

           STDW    .D1T1   A5:A4,*+A14(48)   ; |124| 
           ; BRANCH OCCURS {$C$L14}          ; |124| 
;** --------------------------------------------------------------------------*
$C$L13:    
;**	-----------------------g4:
;** 124	-----------------------    S$2 = sqrt((*dynamic_info).Ja*((*dynamic_info).f-(*dynamic_info).fs));
           NOP             3
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |124| 
           LDDW    .D1T1   *A8,A7:A6         ; |124| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |124| 
           NOP             3
           CALL    .S1     sqrt              ; |124| 
           ADDKPC  .S2     $C$RL31,B3,4      ; |124| 
$C$RL31:   ; CALL OCCURS {sqrt} {0}          ; |124| 
           STDW    .D1T1   A5:A4,*+A14(48)   ; |124| 
;** --------------------------------------------------------------------------*
$C$L14:    
;**	-----------------------g5:
;** 124	-----------------------    (*dynamic_info).acceleration = S$2;
;** --------------------------------------------------------------------------*
$C$L15:    
;**	-----------------------g6:
;** 128	-----------------------    if ( *((double * const)dynamic_info+112) >= 0.0 ) goto g11;
           LDDW    .D1T1   *+A14(112),A7:A6  ; |128| 
           MVK     .S1     65,A3             ; |130| 
           ZERO    .L1     A5:A4             ; |128| 
           ZERO    .L2     B5:B4             ; |129| 
           NOP             1
           CMPLTDP .S1     A7:A6,A5:A4,A0    ; |128| 
           NOP             1

   [!A0]   B       .S1     $C$L18            ; |128| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
|| [ A0]   LDB     .D1T1   *+A14[A3],A0      ; |130| 

   [ A1]   MVK     .S2     296,B7            ; |130| 
|| [!A1]   ZERO    .L1     A0                ; |129| nullify predicate
|| [ A1]   ZERO    .L2     B6                ; |130| 
|| [ A1]   STDW    .D1T2   B5:B4,*+A14(112)  ; |129| 

   [ A1]   SET     .S2     B6,31,31,B10      ; |130| 
   [ A1]   ADD     .L1X    B7,A14,A6         ; |130| 
   [ A1]   ADD     .L1X    B7,A14,A3         ; |130| 
   [ A0]   B       .S1     $C$L16            ; |130| 
           ; BRANCHCC OCCURS {$C$L18}        ; |128| 
;** --------------------------------------------------------------------------*
;** 129	-----------------------    *((double (* const)[7])dynamic_info+112) = 0.0;
;** 130	-----------------------    if ( (*dynamic_info).is_dec_positive ) goto g9;
   [!A0]   LDDW    .D1T1   *+A14(8),A5:A4    ; |130| 
   [!A0]   LDDW    .D1T1   *+A14(16),A9:A8   ; |130| 
   [ A0]   LDDW    .D1T1   *+A14(16),A7:A6   ; |130| 
   [ A0]   LDDW    .D1T1   *+A14(8),A5:A4    ; |130| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L16}        ; |130| 
;** --------------------------------------------------------------------------*
;** 130	-----------------------    S$1 = -sqrt((*dynamic_info).Jd*((*dynamic_info).f-(*dynamic_info).fe));
;** 130	-----------------------    goto g10;
           LDDW    .D1T1   *A6,A7:A6         ; |130| 
           SUBDP   .L1     A9:A8,A5:A4,A5:A4 ; |130| 
           NOP             6
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |130| 
           NOP             3
           CALL    .S1     sqrt              ; |130| 
           ADDKPC  .S2     $C$RL32,B3,4      ; |130| 
$C$RL32:   ; CALL OCCURS {sqrt} {0}          ; |130| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L17,4          ; |130| 
||         XOR     .L1X    A5,B10,A5         ; |130| 

           STDW    .D1T1   A5:A4,*+A14(56)   ; |130| 
           ; BRANCH OCCURS {$C$L17}          ; |130| 
;** --------------------------------------------------------------------------*
$C$L16:    
;**	-----------------------g9:
;** 130	-----------------------    S$1 = sqrt((*dynamic_info).Jd*((*dynamic_info).f-(*dynamic_info).fe));
           NOP             3
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |130| 
           LDDW    .D1T1   *A3,A7:A6         ; |130| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |130| 
           NOP             3
           CALL    .S1     sqrt              ; |130| 
           ADDKPC  .S2     $C$RL33,B3,4      ; |130| 
$C$RL33:   ; CALL OCCURS {sqrt} {0}          ; |130| 
           STDW    .D1T1   A5:A4,*+A14(56)   ; |130| 
;** --------------------------------------------------------------------------*
$C$L17:    
;**	-----------------------g10:
;** 130	-----------------------    (*dynamic_info).deceleration = S$1;
;**	-----------------------g11:
;**  	-----------------------    return;
;** --------------------------------------------------------------------------*
$C$L18:    
           LDW     .D2T1   *++SP(8),A10      ; |133| 
           LDDW    .D2T1   *++SP,A13:A12     ; |133| 

           LDDW    .D2T1   *++SP,A15:A14     ; |133| 
||         MV      .L2     B11,B3            ; |133| 

           LDDW    .D2T2   *++SP,B11:B10     ; |133| 
||         RET     .S2     B3                ; |133| 

           LDW     .D2T1   *++SP(8),A11      ; |133| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |133| 
	.sect	".text"
	.clink
	.global	_ZN17SVelocityPlanning17ComputeTimeLengthEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::ComputeTimeLength(DynamicInfo *)         *
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
;*   Local Frame Size  : 0 Args + 24 Auto + 56 Save = 80 byte                 *
;******************************************************************************
_ZN17SVelocityPlanning17ComputeTimeLengthEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 137	-----------------------    W$1 = (double * const)dynamic_info+8;
;** 143	-----------------------    uniform_displacement = SVelocityPlanning::ComputeUniformDistance(this, dynamic_info, *((double * const)dynamic_info+16));
;** 145	-----------------------    if ( uniform_displacement >= 0.0 ) goto g62;
           STW     .D2T1   A11,*SP--(8)      ; |135| 
           STW     .D2T1   A10,*SP--(8)      ; |135| 
           STDW    .D2T2   B13:B12,*SP--     ; |135| 
           STDW    .D2T2   B11:B10,*SP--     ; |135| 
           STDW    .D2T1   A15:A14,*SP--     ; |135| 
           STDW    .D2T1   A13:A12,*SP--     ; |135| 

           STW     .D2T2   B3,*SP--(32)      ; |135| 
||         MV      .L1X    B4,A10            ; |135| 

           CALLP   .S2     _ZN17SVelocityPlanning22ComputeUniformDistanceEP11DynamicInfod,B3
||         LDDW    .D1T1   *+A10(16),A7:A6   ; |143| 
||         MV      .L1     A4,A14            ; |135| 

$C$RL34:   ; CALL OCCURS {_ZN17SVelocityPlanning22ComputeUniformDistanceEP11DynamicInfod} {0}  ; |143| 
;** --------------------------------------------------------------------------*

           MV      .S1     A4,A12            ; |143| 
||         MV      .D1     A5,A13            ; |143| 
||         ZERO    .L1     A5:A4             ; |145| 
||         MVK     .S2     288,B4            ; |232| 

           ADD     .L2X    B4,A10,B4         ; |232| 
||         CMPLTDP .S1     A13:A12,A5:A4,A0  ; |145| 

           ADD     .L1     8,A10,A15         ; |137| 

   [!A0]   B       .S2     $C$L49            ; |145| 
||         MVK     .S1     296,A4            ; |233| 
|| [ A0]   LDDW    .D1T1   *A10,A7:A6        ; |148| 
|| [!A0]   LDDW    .D2T2   *B4,B5:B4         ; |232| 

   [!A0]   CALL    .S2     __c6xabi_divd     ; |232| 
||         ADD     .L1     A4,A10,A11        ; |233| 
||         ADD     .S1     A4,A10,A3         ; |148| 
|| [ A0]   LDDW    .D1T1   *A15,A5:A4        ; |148| 

   [!A0]   LDDW    .D1T1   *+A15(40),A5:A4   ; |232| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L49}        ; |145| 
;** --------------------------------------------------------------------------*
;** 148	-----------------------    U$20 = (*dynamic_info).Jd;
;** 148	-----------------------    single_acc = sqrt(ABS((*(double * const)dynamic_info-*W$1)*U$20));
;** 149	-----------------------    U$21 = *(double * const)dynamic_info;
;** 149	-----------------------    C$19 = *((double * const)dynamic_info+16);
;** 149	-----------------------    if ( ABS(C$19-U$21) < ABS(C$19-*W$1) ) goto g10;
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |148| 
           LDDW    .D1T1   *A3,A7:A6         ; |148| 
           NOP             5
           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |148| 
           STW     .D2T1   A6,*+SP(4)        ; |148| 
           STW     .D2T1   A7,*+SP(8)        ; |148| 
           NOP             3
           CALL    .S1     sqrt              ; |148| 
           ADDKPC  .S2     $C$RL35,B3,2      ; |148| 
           ABSDP   .S1     A5:A4,A5:A4       ; |148| 
           NOP             1
$C$RL35:   ; CALL OCCURS {sqrt} {0}          ; |148| 
;** --------------------------------------------------------------------------*

           LDDW    .D1T1   *A15,A7:A6        ; |149| 
||         MV      .L1     A4,A12            ; |148| 
||         MV      .S1     A5,A13            ; |148| 

           LDDW    .D1T1   *+A10(16),A5:A4   ; |149| 
           LDDW    .D1T2   *A10,B13:B12      ; |149| 
           NOP             3
           SUBDP   .L1     A5:A4,A7:A6,A7:A6 ; |149| 
           SUBDP   .L2X    A5:A4,B13:B12,B5:B4 ; |149| 
           NOP             5
           ABSDP   .S1     A7:A6,A5:A4       ; |149| 
           ABSDP   .S2     B5:B4,B5:B4       ; |149| 
           NOP             1
           CMPLTDP .S2X    B5:B4,A5:A4,B0    ; |149| 
           NOP             1

   [ B0]   BNOP    .S1     $C$L20,4          ; |149| 
|| [!B0]   LDDW    .D1T1   *+A10(48),A5:A4   ; |166| 

           ABSDP   .S1     A5:A4,A5:A4       ; |166| 
|| [ B0]   LDDW    .D1T1   *+A15(48),A5:A4   ; |151| 

           ; BRANCHCC OCCURS {$C$L20}        ; |149| 
;** --------------------------------------------------------------------------*
;** 166	-----------------------    if ( single_acc > ABS(*((double * const)dynamic_info+48)) ) goto g6;
;** 169	-----------------------    if ( (*dynamic_info).is_acc_positive ) goto g7;
;** 170	-----------------------    single_acc = -single_acc;
;** 170	-----------------------    goto g7;
;**	-----------------------g6:
;** 167	-----------------------    single_acc = W$1[5];
;**	-----------------------g7:
;** 172	-----------------------    if ( ABS(single_acc) < 1.00000000000000002092e-8 ) goto g9;

           ZERO    .L2     B4                ; |170| 
||         ZERO    .D2     B30               ; |176| 
||         MVK     .S2     288,B31           ; |176| 

           ADD     .L2X    B31,A10,B6        ; |176| 
||         CMPGTDP .S1     A13:A12,A5:A4,A0  ; |166| 

           SET     .S2     B4,31,31,B4       ; |170| 

           MVK     .S1     64,A3             ; |169| 
|| [ A0]   LDDW    .D1T1   *+A15(40),A13:A12 ; |167| 
|| [ A0]   MVK     .L1     0x1,A1            ; |170| 

           STW     .D2T2   B30,*+SP(16)      ; |176| 
|| [!A0]   LDB     .D1T1   *+A10[A3],A1      ; |169| 

           MVKL    .S1     0x3e45798e,A7
           MVKL    .S1     0xe2308c3a,A6
           MVKH    .S1     0x3e45798e,A7
           MVKH    .S1     0xe2308c3a,A6

   [!A1]   XOR     .L1X    A13,B4,A13        ; |170| 
||         ZERO    .L2     B4

           ABSDP   .S1     A13:A12,A5:A4     ; |172| 
           SET     .S2     B4,0x15,0x1d,B4
           CMPLTDP .S1     A5:A4,A7:A6,A0    ; |172| 
           STW     .D2T2   B4,*+SP(20)       ; |176| 

   [ A0]   BNOP    .S1     $C$L19,4          ; |172| 
|| [!A0]   LDDW    .D1T2   *A15,B11:B10      ; |176| 

           ADDDP   .L2     B13:B12,B11:B10,B5:B4 ; |176| 
           ; BRANCHCC OCCURS {$C$L19}        ; |172| 
;** --------------------------------------------------------------------------*
;** 176	-----------------------    U$49 = *W$1;
;** 176	-----------------------    l_critical = (*dynamic_info).distance-((pow(*W$1, 2.0)-pow(U$21, 2.0))/single_acc+(U$49+U$21)*single_acc/(*dynamic_info).Ja)*0.5;
;** 176	-----------------------    goto g17;
           LDDW    .D2T1   *B6,A7:A6         ; |176| 
           NOP             6
           MPYDP   .M1X    A13:A12,B5:B4,A5:A4 ; |176| 
           NOP             3
           CALL    .S1     __c6xabi_divd     ; |176| 
           MV      .L2X    A7,B5             ; |176| 
           MV      .L2X    A6,B4             ; |176| 
           ADDKPC  .S2     $C$RL36,B3,2      ; |176| 
$C$RL36:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |176| 
;** --------------------------------------------------------------------------*

           STW     .D2T1   A4,*+SP(8)        ; |176| 
||         ZERO    .L2     B5

           STW     .D2T1   A5,*+SP(12)       ; |176| 
||         SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         LDDW    .D1T1   *A15,A5:A4        ; |176| 
||         ZERO    .L2     B4                ; |176| 

$C$RL37:   ; CALL OCCURS {pow} {0}           ; |176| 
           ZERO    .L2     B5

           SET     .S2     B5,0x1e,0x1e,B5
||         MV      .L1     A4,A11            ; |176| 
||         MV      .S1X    B12,A4            ; |176| 

           CALLP   .S2     pow,B3
||         STW     .D2T1   A5,*+SP(4)        ; |176| 
||         MV      .L1X    B13,A5            ; |176| 
||         ZERO    .L2     B4                ; |176| 

$C$RL38:   ; CALL OCCURS {pow} {0}           ; |176| 
           LDW     .D2T1   *+SP(4),A7        ; |176| 
           MV      .L1     A11,A6            ; |176| 
           MV      .L2X    A12,B4            ; |176| 
           MV      .L2X    A13,B5            ; |176| 
           NOP             1
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |176| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL39:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |176| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(12),A7       ; |176| 
           LDW     .D2T1   *+SP(8),A6        ; |176| 
           NOP             4
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |176| 
           LDW     .D2T1   *+SP(20),A7
           LDW     .D2T1   *+SP(16),A6
           NOP             4
           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |176| 
           LDDW    .D1T1   *+A10(40),A7:A6   ; |176| 
           NOP             3
           BNOP    .S1     $C$L22,4          ; |176| 
           SUBDP   .S1     A7:A6,A5:A4,A5:A4 ; |176| 
           ; BRANCH OCCURS {$C$L22}          ; |176| 
;** --------------------------------------------------------------------------*
$C$L19:    
;**	-----------------------g9:
;** 173	-----------------------    l_critical = (*dynamic_info).distance;
;**  	-----------------------    U$49 = *W$1;
;** 174	-----------------------    goto g17;

           BNOP    .S2     $C$L23,2          ; |174| 
||         MVK     .S1     64,A3             ; |183| 
||         LDDW    .D1T1   *+A10(40),A5:A4   ; |173| 

           LDDW    .D1T2   *A15,B11:B10
           ZERO    .L1     A7:A6             ; |180| 
           CMPGTDP .S1     A5:A4,A7:A6,A0    ; |180| 
           ; BRANCH OCCURS {$C$L23}          ; |174| 
;** --------------------------------------------------------------------------*
$C$L20:    
;**	-----------------------g10:
;** 151	-----------------------    U$56 = W$1[6];
;** 151	-----------------------    if ( single_acc > ABS(U$56) ) goto g13;
;** 154	-----------------------    if ( (*dynamic_info).is_dec_positive ) goto g14;
;** 155	-----------------------    single_acc = -single_acc;
;** 155	-----------------------    goto g14;
;**	-----------------------g13:
;** 152	-----------------------    single_acc = U$56;
;**	-----------------------g14:
;** 157	-----------------------    if ( ABS(single_acc) < 1.00000000000000002092e-8 ) goto g16;
           ZERO    .L2     B5
           ZERO    .L2     B4                ; |155| 
           MVK     .S1     65,A3             ; |154| 
           SET     .S2     B4,31,31,B4       ; |155| 
           ABSDP   .S1     A5:A4,A7:A6       ; |151| 
           SET     .S2     B5,0x1e,0x1e,B5
           CMPGTDP .S1     A13:A12,A7:A6,A0  ; |151| 
           NOP             1

   [!A0]   LDB     .D1T1   *+A10[A3],A1      ; |154| 
|| [ A0]   MV      .L1     A5,A13            ; |152| 
|| [ A0]   MVK     .S1     0x1,A1            ; |155| 

   [ A0]   MV      .L1     A4,A12            ; |152| 
||         MVKL    .S1     0xe2308c3a,A6

           MVKL    .S1     0x3e45798e,A7
           MVKH    .S1     0xe2308c3a,A6
           MVKH    .S1     0x3e45798e,A7

   [!A1]   XOR     .L1X    A13,B4,A13        ; |155| 
||         ZERO    .L2     B4

           ABSDP   .S1     A13:A12,A5:A4     ; |157| 
||         SET     .S2     B4,0x15,0x1d,B4

           STW     .D2T2   B4,*+SP(20)       ; |161| 
           CMPLTDP .S1     A5:A4,A7:A6,A0    ; |157| 
           ZERO    .L2     B4                ; |161| 

   [ A0]   BNOP    .S1     $C$L21,1          ; |157| 
|| [!A0]   LDDW    .D1T2   *A15,B11:B10      ; |161| 

   [!A0]   CALL    .S1     pow               ; |161| 
           STW     .D2T2   B4,*+SP(16)       ; |161| 
   [ A0]   LDDW    .D1T1   *+A10(40),A5:A4   ; |158| 
   [ A0]   LDDW    .D1T2   *A15,B11:B10
           ; BRANCHCC OCCURS {$C$L21}        ; |157| 
;** --------------------------------------------------------------------------*
;** 161	-----------------------    U$49 = *W$1;
;** 161	-----------------------    l_critical = (*dynamic_info).distance-((pow(U$21, 2.0)-pow(U$49, 2.0))/single_acc+(U$21+U$49)*single_acc/U$20)*0.5;
;** 161	-----------------------    goto g17;
           MV      .L1X    B11,A5            ; |161| 

           MV      .L1X    B10,A4            ; |161| 
||         ADDKPC  .S2     $C$RL42,B3,0      ; |161| 

$C$RL42:   ; CALL OCCURS {pow} {0}           ; |161| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B5

           SET     .S2     B5,0x1e,0x1e,B5
||         MV      .L1     A4,A11            ; |161| 
||         MV      .S1X    B12,A4            ; |161| 

           CALLP   .S2     pow,B3
||         ZERO    .L2     B4                ; |161| 
||         STW     .D2T1   A5,*+SP(12)       ; |161| 
||         MV      .L1X    B13,A5            ; |161| 

$C$RL41:   ; CALL OCCURS {pow} {0}           ; |161| 
           LDW     .D2T1   *+SP(12),A7       ; |161| 
           MV      .L1     A11,A6            ; |161| 
           MV      .L2X    A12,B4            ; |161| 
           MV      .L2X    A13,B5            ; |161| 
           NOP             1
           SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |161| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL43:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |161| 
           ADDDP   .L2     B11:B10,B13:B12,B5:B4 ; |161| 
           MV      .L1     A4,A11            ; |161| 
           STW     .D2T1   A5,*+SP(12)       ; |161| 
           NOP             5
           MPYDP   .M1X    A13:A12,B5:B4,A5:A4 ; |161| 
           LDW     .D2T2   *+SP(4),B4        ; |161| 
           LDW     .D2T2   *+SP(8),B5        ; |161| 
           NOP             1
           CALLP   .S2     __c6xabi_divd,B3
$C$RL40:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |161| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(12),A7       ; |161| 
           MV      .L1     A11,A6            ; |161| 
           NOP             3
           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |161| 
           LDW     .D2T1   *+SP(20),A7
           LDW     .D2T1   *+SP(16),A6
           NOP             4
           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |161| 
           LDDW    .D1T1   *+A10(40),A7:A6   ; |161| 
           NOP             3
           BNOP    .S1     $C$L22,4          ; |161| 
           SUBDP   .S1     A7:A6,A5:A4,A5:A4 ; |161| 
           ; BRANCH OCCURS {$C$L22}          ; |161| 
;** --------------------------------------------------------------------------*
$C$L21:    
;**	-----------------------g16:
;** 158	-----------------------    l_critical = (*dynamic_info).distance;
;**  	-----------------------    U$49 = *W$1;
;** --------------------------------------------------------------------------*
$C$L22:    
           ZERO    .L1     A7:A6             ; |180| 
           MVK     .S1     64,A3             ; |183| 
           NOP             4
           CMPGTDP .S1     A5:A4,A7:A6,A0    ; |180| 
;** --------------------------------------------------------------------------*
$C$L23:    
;**	-----------------------g17:
;** 180	-----------------------    if ( l_critical > 0.0 ) goto g22;
           MVK     .S2     65,B4             ; |183| 

   [ A0]   B       .S1     $C$L26            ; |180| 
|| [!A0]   ZERO    .L1     A3
|| [!A0]   ZERO    .D1     A5                ; |215| 
|| [!A0]   MVK     .S2     288,B4            ; |222| 
|| [!A0]   ZERO    .L2     B31

   [!A0]   SET     .S1     A3,0x14,0x1d,A3
||         CMPGTDP .S2     B13:B12,B11:B10,B0 ; |211| 
|| [!A0]   STW     .D2T1   A5,*+SP(20)       ; |222| 
|| [!A0]   ADD     .L2X    B4,A10,B6         ; |222| 
|| [!A0]   ZERO    .L1     A6                ; |223| 

   [!A0]   STW     .D2T1   A3,*+SP(16)       ; |223| 
|| [!A0]   ADD     .L1X    B4,A10,A3         ; |222| 
|| [!A0]   MVK     .S1     296,A4            ; |214| 

           LDW     .D2T1   *+SP(16),A5       ; |222| 
|| [ A0]   ZERO    .L2     B0                ; |223| nullify predicate
|| [!A0]   MVK     .S2     304,B5            ; |223| 

   [ B0]   B       .S1     $C$L24            ; |211| 
|| [!A0]   SET     .S2     B31,0x1e,0x1e,B5
|| [!A0]   ADD     .L2X    B5,A10,B10        ; |223| 

   [!A0]   MVK     .S2     312,B31           ; |215| 
           ; BRANCHCC OCCURS {$C$L26}        ; |180| 
;** --------------------------------------------------------------------------*
;** 211	-----------------------    if ( U$21 > U$49 ) goto g20;

           ZERO    .L1     A13:A12           ; |220| 
||         STW     .D2T1   A6,*+SP(12)       ; |222| 
||         ZERO    .L2     B13:B12           ; |212| 
||         ZERO    .S2     B4                ; |221| 
||         ADD     .S1     A4,A10,A11        ; |214| 
||         ADD     .D1     A4,A10,A14        ; |214| 

           ADD     .L2X    B31,A10,B11       ; |215| 
|| [!B0]   STDW    .D1T1   A13:A12,*+A15(48) ; |220| 
||         STW     .D2T2   B6,*+SP(8)        ; |222| 

           STW     .D2T1   A5,*+SP(24)       ; |215| 
|| [ B0]   STDW    .D1T2   B13:B12,*+A15(40) ; |212| 

           STW     .D2T1   A3,*+SP(4)        ; |214| 
           ; BRANCHCC OCCURS {$C$L24}        ; |211| 
;** --------------------------------------------------------------------------*
;** 220	-----------------------    W$1[6] = C$17 = 0.0;
;** 221	-----------------------    C$18 = (*dynamic_info).distance;
;** 221	-----------------------    W$1[5] = (pow(*W$1, 2.0)-pow(*(double * const)dynamic_info, 2.0))/(C$18+C$18);
;** 222	-----------------------    (*dynamic_info).Ja = ABS((*dynamic_info).Ja);
;** 223	-----------------------    (*dynamic_info).is_acceleration_positive = 1.0;
;** 224	-----------------------    W$1[1] = *W$1;
;** 225	-----------------------    *((double * const)dynamic_info+120) = C$17;
;** 225	-----------------------    *((double * const)dynamic_info+112) = C$17;
;** 225	-----------------------    *((double * const)dynamic_info+104) = C$17;
;** 225	-----------------------    *((double * const)dynamic_info+96) = C$17;
;** 225	-----------------------    *((double * const)dynamic_info+88) = C$17;
;** 225	-----------------------    *((double * const)dynamic_info+72) = C$17;
;** 226	-----------------------    *((double * const)dynamic_info+80) = (*W$1-*(double * const)dynamic_info)/W$1[5];
;** 226	-----------------------    goto g21;

           CALL    .S1     pow               ; |221| 
||         LDDW    .D1T1   *+A10(40),A7:A6   ; |221| 

           LDDW    .D1T1   *A10,A5:A4        ; |221| 
           ADDKPC  .S2     $C$RL45,B3,2      ; |221| 

           MV      .L1     A6,A14            ; |221| 
||         MV      .S1     A7,A11            ; |221| 

$C$RL45:   ; CALL OCCURS {pow} {0}           ; |221| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B5

           MV      .L2X    A4,B12            ; |221| 
||         SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         MV      .L2X    A5,B11            ; |221| 
||         LDDW    .D1T1   *A15,A5:A4        ; |221| 
||         ZERO    .D2     B4                ; |221| 

$C$RL44:   ; CALL OCCURS {pow} {0}           ; |221| 
           MV      .L1     A11,A9            ; |221| 

           MV      .L1     A14,A6            ; |221| 
||         MV      .S1     A11,A7            ; |221| 
||         MV      .D1     A14,A8            ; |221| 

           ADDDP   .L1     A9:A8,A7:A6,A9:A8 ; |221| 
           MV      .S1X    B12,A6
           MV      .L1X    B11,A7
           SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |221| 
           NOP             4
           MV      .L2X    A8,B4             ; |221| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A9,B5             ; |221| 

$C$RL46:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |221| 
           LDW     .D2T2   *+SP(8),B4        ; |221| 
           STDW    .D1T1   A5:A4,*+A15(40)   ; |221| 
           LDW     .D2T1   *+SP(4),A3
           LDW     .D2T1   *+SP(12),A4
           LDW     .D2T1   *+SP(16),A5
           LDDW    .D2T2   *B4,B5:B4         ; |222| 
           NOP             4
           ABSDP   .S2     B5:B4,B5:B4       ; |222| 
           STDW    .D2T1   A5:A4,*B10        ; |223| 
           STDW    .D1T2   B5:B4,*A3         ; |222| 
           LDDW    .D1T1   *A15,A5:A4        ; |224| 
           NOP             4
           STDW    .D1T1   A5:A4,*+A15(8)    ; |224| 
           STDW    .D1T1   A13:A12,*+A10(120) ; |225| 
           STDW    .D1T1   A13:A12,*+A10(112) ; |225| 
           STDW    .D1T1   A13:A12,*+A10(104) ; |225| 
           STDW    .D1T1   A13:A12,*+A10(96) ; |225| 
           STDW    .D1T1   A13:A12,*+A10(88) ; |225| 
           STDW    .D1T1   A13:A12,*+A10(72) ; |225| 
           LDDW    .D1T1   *A10,A5:A4        ; |226| 
           LDDW    .D1T2   *A15,B5:B4        ; |226| 
           LDDW    .D1T1   *+A15(40),A7:A6   ; |226| 
           NOP             3
           SUBDP   .L1X    B5:B4,A5:A4,A5:A4 ; |226| 
           MV      .L2X    A6,B4             ; |226| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A7,B5             ; |226| 

$C$RL47:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |226| 
;** --------------------------------------------------------------------------*

           B       .S1     $C$L25            ; |226| 
||         ZERO    .L1     A13:A12           ; |228| 
||         STDW    .D1T1   A5:A4,*+A10(80)   ; |226| 

           BNOP    .S1     $C$L50,4          ; |228| 
           ; BRANCH OCCURS {$C$L25}          ; |226| 
;** --------------------------------------------------------------------------*
$C$L24:    
;**	-----------------------g20:
;** 212	-----------------------    W$1[5] = C$15 = 0.0;
;** 213	-----------------------    C$16 = (*dynamic_info).distance;
;** 213	-----------------------    W$1[6] = (pow(*(double * const)dynamic_info, 2.0)-pow(*W$1, 2.0))/(C$16+C$16);
;** 214	-----------------------    (*dynamic_info).Jd = ABS((*dynamic_info).Jd);
;** 215	-----------------------    (*dynamic_info).is_deceleration_positive = 1.0;
;** 216	-----------------------    W$1[1] = *(double * const)dynamic_info;
;** 217	-----------------------    *((double * const)dynamic_info+120) = C$15;
;** 217	-----------------------    *((double * const)dynamic_info+104) = C$15;
;** 217	-----------------------    *((double * const)dynamic_info+96) = C$15;
;** 217	-----------------------    *((double * const)dynamic_info+88) = C$15;
;** 217	-----------------------    *((double * const)dynamic_info+80) = C$15;
;** 217	-----------------------    *((double * const)dynamic_info+72) = C$15;
;** 218	-----------------------    *((double * const)dynamic_info+112) = (*(double * const)dynamic_info-*W$1)/W$1[6];

           CALL    .S1     pow               ; |213| 
||         LDDW    .D1T1   *A15,A5:A4        ; |213| 

           LDDW    .D1T1   *+A10(40),A13:A12 ; |213| 
           ADDKPC  .S2     $C$RL49,B3,2      ; |213| 
           ZERO    .L2     B4                ; |213| 
$C$RL49:   ; CALL OCCURS {pow} {0}           ; |213| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B5

           STW     .D2T1   A5,*+SP(4)        ; |213| 
||         SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         MV      .L2X    A4,B10            ; |213| 
||         LDDW    .D1T1   *A10,A5:A4        ; |213| 
||         ZERO    .D2     B4                ; |213| 

$C$RL48:   ; CALL OCCURS {pow} {0}           ; |213| 
           ADDDP   .L1     A13:A12,A13:A12,A9:A8 ; |213| 
           LDW     .D2T1   *+SP(4),A7
           MV      .L1X    B10,A6
           NOP             5

           SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |213| 
||         MV      .L2X    A8,B4             ; |213| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A9,B5             ; |213| 

$C$RL50:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |213| 
           STDW    .D1T1   A5:A4,*+A15(48)   ; |213| 
           LDDW    .D1T2   *A11,B5:B4        ; |214| 
           LDW     .D2T1   *+SP(20),A4
           LDW     .D2T1   *+SP(24),A5
           LDDW    .D1T1   *A10,A7:A6        ; |216| 
           NOP             1
           ABSDP   .S2     B5:B4,B5:B4       ; |214| 
           NOP             1

           STDW    .D1T2   B5:B4,*A14        ; |214| 
||         STDW    .D2T1   A5:A4,*B11        ; |215| 

           STDW    .D1T1   A7:A6,*+A15(8)    ; |216| 
           STDW    .D1T2   B13:B12,*+A10(120) ; |217| 
           STDW    .D1T2   B13:B12,*+A10(104) ; |217| 
           STDW    .D1T2   B13:B12,*+A10(96) ; |217| 
           STDW    .D1T2   B13:B12,*+A10(88) ; |217| 
           STDW    .D1T2   B13:B12,*+A10(80) ; |217| 
           STDW    .D1T2   B13:B12,*+A10(72) ; |217| 
           LDDW    .D1T2   *A10,B5:B4        ; |218| 
           LDDW    .D1T1   *A15,A5:A4        ; |218| 
           LDDW    .D1T1   *+A15(48),A7:A6   ; |218| 
           NOP             3
           SUBDP   .L1X    B5:B4,A5:A4,A5:A4 ; |218| 
           MV      .L2X    A6,B4             ; |218| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A7,B5             ; |218| 

$C$RL51:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |218| 
;** --------------------------------------------------------------------------*
           BNOP    .S1     $C$L50,3          ; |228| 

           ZERO    .L1     A13:A12           ; |228| 
||         STDW    .D1T1   A5:A4,*+A10(112)  ; |218| 

;** --------------------------------------------------------------------------*
$C$L25:    
;**	-----------------------g21:
;** 228	-----------------------    uniform_displacement = 0.0;
;** 228	-----------------------    goto g63;

           LDDW    .D1T1   *+A15(8),A7:A6    ; |236| 
||         MVKL    .S1     0x3e45798e,A5
||         ZERO    .L2     B7:B6             ; |237| 

           ; BRANCH OCCURS {$C$L50}          ; |228| 
;** --------------------------------------------------------------------------*
$C$L26:    
;**	-----------------------g22:
;** 183	-----------------------    if ( (*dynamic_info).is_acc_positive == (*dynamic_info).is_dec_positive ) goto g34;
           LDB     .D1T1   *+A10[A3],A4      ; |183| 
           MVK     .S1     296,A3            ; |119| 

           MV      .L1X    B4,A5
||         MVK     .S2     288,B4            ; |118| 

           LDB     .D1T1   *+A10[A5],A5      ; |183| 
           ADD     .L2X    B4,A10,B6         ; |118| 
           ZERO    .L2     B5:B4             ; |122| 
           STW     .D2T2   B4,*+SP(4)        ; |118| 
           STW     .D2T2   B5,*+SP(8)        ; |118| 
           CMPEQ   .L1     A4,A5,A0          ; |183| 

   [!A0]   STDW    .D1T2   B11:B10,*+A15(8)  ; |202| 
|| [ A0]   B       .S1     $C$L33            ; |183| 

   [!A0]   LDDW    .D1T1   *+A10(48),A5:A4   ; |118| 

   [!A0]   CALL    .S1     __c6xabi_divd     ; |118| 
|| [ A0]   LDDW    .D1T1   *+A15(8),A5:A4    ; |184| 

   [!A0]   LDDW    .D2T2   *B6,B5:B4         ; |118| 
           ADD     .L1     A3,A10,A11        ; |119| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L33}        ; |183| 
;** --------------------------------------------------------------------------*
;** 202	-----------------------    W$1[1] = U$49;
;** 118	-----------------------    C$14 = (*dynamic_info).acceleration;  // [8]
;** 118	-----------------------    *((double * const)dynamic_info+80) = C$12 = ((*dynamic_info).f-(*dynamic_info).fs)/C$14-C$14/(*dynamic_info).Ja;  // [8]
;** 119	-----------------------    C$13 = (*dynamic_info).deceleration;  // [8]
;** 119	-----------------------    *((double * const)dynamic_info+112) = ((*dynamic_info).f-(*dynamic_info).fe)/C$13-C$13/(*dynamic_info).Jd;  // [8]
;** 122	-----------------------    if ( C$12 >= 0.0 ) goto g28;  // [8]
           MV      .L2X    A5,B11            ; |118| 

           ADDKPC  .S2     $C$RL53,B3,0      ; |118| 
||         MV      .L2X    A4,B10            ; |118| 

$C$RL53:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |118| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A10(16),A7:A6   ; |118| 

           MV      .L1     A4,A12            ; |118| 
||         MV      .S1     A5,A13            ; |118| 
||         LDDW    .D1T1   *A10,A5:A4        ; |118| 

           MV      .L2     B10,B4            ; |118| 
           MV      .L2     B11,B5            ; |118| 
           NOP             2
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |118| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL52:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |118| 
           LDDW    .D1T1   *A11,A7:A6        ; |119| 
           SUBDP   .L1     A5:A4,A13:A12,A13:A12 ; |118| 
           LDDW    .D1T1   *+A10(56),A5:A4   ; |119| 
           NOP             2
           MV      .L2X    A7,B5             ; |119| 
           MV      .L2X    A6,B4             ; |119| 
           MV      .L2X    A4,B13            ; |119| 

           CALLP   .S2     __c6xabi_divd,B3
||         STDW    .D1T1   A13:A12,*+A10(80) ; |118| 
||         MV      .L2X    A5,B12            ; |119| 

$C$RL55:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |119| 

           MV      .L2X    A4,B10            ; |119| 
||         LDDW    .D1T1   *+A10(8),A7:A6    ; |119| 

           MV      .L2X    A5,B11            ; |119| 
||         LDDW    .D1T1   *+A10(16),A5:A4   ; |119| 

           MV      .L2     B12,B5            ; |119| 
           MV      .L2     B13,B4            ; |119| 
           NOP             2
           SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |119| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL54:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |119| 
;** --------------------------------------------------------------------------*

           LDW     .D2T2   *+SP(4),B4
||         SUBDP   .L1X    A5:A4,B11:B10,A5:A4 ; |119| 

           LDW     .D2T2   *+SP(8),B5
           MVK     .S1     64,A3             ; |124| 
           NOP             3
           CMPLTDP .S2X    A13:A12,B5:B4,B0  ; |122| 

           STDW    .D1T1   A5:A4,*+A10(112)  ; |119| 
||         ZERO    .L2     B5:B4             ; |123| 

   [ B0]   LDB     .D1T1   *+A10[A3],A0      ; |124| 
|| [!B0]   B       .S1     $C$L29            ; |122| 
|| [ B0]   MVK     .S2     288,B7            ; |124| 
|| [ B0]   ZERO    .L2     B6                ; |124| 
|| [!B0]   ZERO    .L1     A5:A4             ; |128| 

   [!B0]   LDDW    .D1T1   *+A10(112),A7:A6  ; |128| 
|| [!B0]   ZERO    .L1     A0                ; |124| nullify predicate
|| [ B0]   SET     .S2     B6,31,31,B10      ; |124| 

   [ B0]   STDW    .D1T2   B5:B4,*+A10(80)   ; |123| 
   [ B0]   ADD     .L1X    B7,A10,A8         ; |124| 
   [ B0]   ADD     .L1X    B7,A10,A3         ; |124| 
   [ A0]   B       .S1     $C$L27            ; |124| 
           ; BRANCHCC OCCURS {$C$L29}        ; |122| 
;** --------------------------------------------------------------------------*
;** 123	-----------------------    ((double *)dynamic_info)[10] = 0.0;  // [8]
;** 124	-----------------------    if ( (*dynamic_info).is_acc_positive ) goto g26;  // [8]
   [!A0]   LDDW    .D1T1   *A10,A5:A4        ; |124| 
   [!A0]   LDDW    .D1T1   *+A10(16),A7:A6   ; |124| 
   [ A0]   LDDW    .D1T1   *+A10(16),A7:A6   ; |124| 
   [ A0]   LDDW    .D1T1   *A10,A5:A4        ; |124| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L27}        ; |124| 
;** --------------------------------------------------------------------------*
;** 124	-----------------------    S$2 = -sqrt((*dynamic_info).Ja*((*dynamic_info).f-(*dynamic_info).fs));  // [8]
;** 124	-----------------------    goto g27;  // [8]
           NOP             1
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |124| 
           LDDW    .D1T1   *A3,A7:A6         ; |124| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |124| 
           NOP             3
           CALL    .S1     sqrt              ; |124| 
           ADDKPC  .S2     $C$RL56,B3,4      ; |124| 
$C$RL56:   ; CALL OCCURS {sqrt} {0}          ; |124| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L28,3          ; |124| 
||         LDDW    .D1T1   *+A10(112),A7:A6  ; |128| 
||         XOR     .L1X    A5,B10,A5         ; |124| 

           STDW    .D1T1   A5:A4,*+A10(48)   ; |124| 
           ZERO    .L1     A5:A4             ; |128| 
           ; BRANCH OCCURS {$C$L28}          ; |124| 
;** --------------------------------------------------------------------------*
$C$L27:    
;**	-----------------------g26:
;** 124	-----------------------    S$2 = sqrt((*dynamic_info).Ja*((*dynamic_info).f-(*dynamic_info).fs));  // [8]
           NOP             3
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |124| 
           LDDW    .D1T1   *A8,A7:A6         ; |124| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |124| 
           NOP             3
           CALL    .S1     sqrt              ; |124| 
           ADDKPC  .S2     $C$RL57,B3,4      ; |124| 
$C$RL57:   ; CALL OCCURS {sqrt} {0}          ; |124| 
           LDDW    .D1T1   *+A10(112),A7:A6  ; |128| 
           STDW    .D1T1   A5:A4,*+A10(48)   ; |124| 
           ZERO    .L1     A5:A4             ; |128| 
           NOP             2
;** --------------------------------------------------------------------------*
$C$L28:    
;**	-----------------------g27:
;** 124	-----------------------    (*dynamic_info).acceleration = S$2;  // [8]
;** --------------------------------------------------------------------------*
$C$L29:    
;**	-----------------------g28:
;** 128	-----------------------    if ( *((double * const)dynamic_info+112) >= 0.0 ) goto g33;  // [8]
           CMPLTDP .S1     A7:A6,A5:A4,A0    ; |128| 
           ZERO    .L2     B5:B4             ; |129| 

   [!A0]   B       .S2     $C$L32            ; |128| 
||         MV      .L1     A0,A1             ; branch predicate copy
||         MVK     .S1     65,A3             ; |130| 

   [!A1]   CALL    .S1     _ZN17SVelocityPlanning22ComputeUniformDistanceEP11DynamicInfod ; |204| 
|| [ A0]   LDB     .D1T1   *+A10[A3],A0      ; |130| 

   [!A1]   LDDW    .D1T1   *+A15(8),A7:A6    ; |204| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L32}        ; |128| 
;** --------------------------------------------------------------------------*
;** 129	-----------------------    ((double *)dynamic_info)[14] = 0.0;  // [8]
;** 130	-----------------------    if ( (*dynamic_info).is_dec_positive ) goto g31;  // [8]

   [ A0]   B       .S1     $C$L30            ; |130| 
|| [!A0]   LDDW    .D1T1   *+A10(8),A5:A4    ; |130| 
||         MVK     .S2     296,B7            ; |130| 
||         ZERO    .L2     B6                ; |130| 

   [!A0]   LDDW    .D1T1   *+A10(16),A7:A6   ; |130| 
||         SET     .S2     B6,31,31,B10      ; |130| 

   [ A0]   LDDW    .D1T1   *+A10(16),A7:A6   ; |130| 
||         ADD     .L1X    B7,A10,A3         ; |130| 

   [ A0]   LDDW    .D1T1   *+A10(8),A5:A4    ; |130| 
           ADD     .L1X    B7,A10,A8         ; |130| 
           STDW    .D1T2   B5:B4,*+A10(112)  ; |129| 
           ; BRANCHCC OCCURS {$C$L30}        ; |130| 
;** --------------------------------------------------------------------------*
;** 130	-----------------------    S$1 = -sqrt((*dynamic_info).Jd*((*dynamic_info).f-(*dynamic_info).fe));  // [8]
;** 130	-----------------------    goto g32;  // [8]
           SUBDP   .L1     A7:A6,A5:A4,A7:A6 ; |130| 
           LDDW    .D1T1   *A3,A5:A4         ; |130| 
           NOP             5
           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |130| 
           NOP             3
           CALL    .S1     sqrt              ; |130| 
           ADDKPC  .S2     $C$RL58,B3,4      ; |130| 
$C$RL58:   ; CALL OCCURS {sqrt} {0}          ; |130| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L31,5          ; |130| 
||         XOR     .L1X    A5,B10,A5         ; |130| 

           ; BRANCH OCCURS {$C$L31}          ; |130| 
;** --------------------------------------------------------------------------*
$C$L30:    
;**	-----------------------g31:
;** 130	-----------------------    S$1 = sqrt((*dynamic_info).Jd*((*dynamic_info).f-(*dynamic_info).fe));  // [8]
           NOP             2
           SUBDP   .L1     A7:A6,A5:A4,A7:A6 ; |130| 
           LDDW    .D1T1   *A8,A5:A4         ; |130| 
           NOP             5
           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |130| 
           NOP             3
           CALL    .S1     sqrt              ; |130| 
           ADDKPC  .S2     $C$RL59,B3,4      ; |130| 
$C$RL59:   ; CALL OCCURS {sqrt} {0}          ; |130| 
;** --------------------------------------------------------------------------*
$C$L31:    
;**	-----------------------g32:
;** 130	-----------------------    (*dynamic_info).deceleration = S$1;  // [8]

           CALL    .S1     _ZN17SVelocityPlanning22ComputeUniformDistanceEP11DynamicInfod ; |204| 
||         STDW    .D1T1   A5:A4,*+A10(56)   ; |130| 

           LDDW    .D1T1   *+A15(8),A7:A6    ; |204| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L32:    
;**	-----------------------g33:
;** 204	-----------------------    uniform_displacement = SVelocityPlanning::ComputeUniformDistance(this, dynamic_info, W$1[1]);
;** 204	-----------------------    goto g61;

           MV      .L2X    A10,B4            ; |204| 
||         MV      .L1     A14,A4            ; |204| 
||         ADDKPC  .S2     $C$RL60,B3,0      ; |204| 

$C$RL60:   ; CALL OCCURS {_ZN17SVelocityPlanning22ComputeUniformDistanceEP11DynamicInfod} {0}  ; |204| 
;** --------------------------------------------------------------------------*

           B       .S1     $C$L48            ; |204| 
||         MVK     .S2     288,B4            ; |207| 

           CALL    .S1     __c6xabi_divd     ; |207| 
||         ADD     .L2X    B4,A10,B4         ; |207| 

           LDDW    .D2T2   *B4,B5:B4         ; |207| 
||         MV      .L1     A5,A13            ; |204| 
||         MV      .S1     A4,A12            ; |204| 
||         LDDW    .D1T1   *+A15(40),A5:A4   ; |207| 

           NOP             3
           ; BRANCH OCCURS {$C$L48}          ; |204| 
;** --------------------------------------------------------------------------*
$C$L33:    
;**	-----------------------g34:
;** 184	-----------------------    U$73 = W$1[1];
;** 184	-----------------------    (ABS(U$73-U$21) < ABS(U$73-U$49)) ? (left_point = U$21) : (left_point = U$49);
;** 185	-----------------------    right_point = U$73;
;** 186	-----------------------    W$1[1] = (left_point+right_point)*0.5;
;** 118	-----------------------    C$11 = (*dynamic_info).acceleration;  // [8]
;** 118	-----------------------    *((double * const)dynamic_info+80) = C$9 = ((*dynamic_info).f-(*dynamic_info).fs)/C$11-C$11/(*dynamic_info).Ja;  // [8]
;** 119	-----------------------    C$10 = (*dynamic_info).deceleration;  // [8]
;** 119	-----------------------    *((double * const)dynamic_info+112) = ((*dynamic_info).f-(*dynamic_info).fe)/C$10-C$10/(*dynamic_info).Jd;  // [8]
;** 122	-----------------------    if ( C$9 >= 0.0 ) goto g39;  // [8]
           STW     .D2T2   B13,*+SP(8)       ; |184| 
           SUBDP   .L2X    A5:A4,B13:B12,B5:B4 ; |184| 
           MV      .L1     A4,A11            ; |185| 
           SUBDP   .L2X    A5:A4,B11:B10,B7:B6 ; |184| 
           MV      .L1     A4,A6             ; |185| 
           MV      .L1     A5,A7             ; |184| 
           STW     .D2T2   B12,*+SP(4)       ; |184| 
           STW     .D2T1   A5,*+SP(12)       ; |185| 
           ABSDP   .S2     B5:B4,B5:B4       ; |184| 
           ZERO    .L1     A31
           ABSDP   .S2     B7:B6,B7:B6       ; |184| 
           NOP             1
           CMPLTDP .S2     B5:B4,B7:B6,B0    ; |184| 
           NOP             1
   [!B0]   STW     .D2T2   B11,*+SP(8)       ; |184| 
   [!B0]   STW     .D2T2   B10,*+SP(4)       ; |184| 
           LDW     .D2T1   *+SP(8),A5        ; |184| 
           LDW     .D2T1   *+SP(4),A4        ; |184| 
           MVK     .S2     288,B31           ; |118| 
           ADD     .L2X    B31,A10,B4        ; |118| 
           NOP             2
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |186| 
           ZERO    .S1     A6                ; |186| 
           SET     .S1     A31,0x15,0x1d,A7
           NOP             4
           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |186| 
           NOP             9
           STDW    .D1T1   A5:A4,*+A15(8)    ; |186| 
           LDDW    .D1T1   *+A10(48),A5:A4   ; |118| 
           CALL    .S1     __c6xabi_divd     ; |118| 
           LDDW    .D2T2   *B4,B5:B4         ; |118| 
           ADDKPC  .S2     $C$RL62,B3,1      ; |118| 
           MV      .L2X    A4,B11            ; |118| 
           MV      .L2X    A5,B10            ; |118| 
$C$RL62:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |118| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *A10,A7:A6        ; |118| 

           MV      .L1     A4,A12            ; |118| 
||         MV      .S1     A5,A13            ; |118| 
||         LDDW    .D1T1   *+A10(16),A5:A4   ; |118| 

           MV      .L2     B11,B4            ; |118| 
           MV      .L2     B10,B5            ; |118| 
           NOP             2
           SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |118| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL61:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |118| 
           SUBDP   .L1     A5:A4,A13:A12,A5:A4 ; |118| 
           MVK     .S2     296,B4            ; |119| 
           ADD     .L2X    B4,A10,B4         ; |119| 
           LDDW    .D2T2   *B4,B5:B4         ; |119| 
           NOP             4
           MV      .L2X    A4,B13            ; |118| 

           MV      .L2X    A5,B12            ; |118| 
||         LDDW    .D1T1   *+A10(56),A5:A4   ; |119| 

           NOP             4

           MV      .L2X    A4,B11            ; |119| 
||         MV      .L1X    B13,A4

           MV      .L2X    A5,B10            ; |119| 
||         MV      .L1X    B12,A5

           STDW    .D1T1   A5:A4,*+A10(80)   ; |118| 
||         MV      .L1X    B11,A4            ; |119| 

           MV      .L1X    B10,A5            ; |119| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL64:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |119| 
           LDDW    .D1T1   *+A10(16),A7:A6   ; |119| 

           MV      .L1     A4,A12            ; |119| 
||         MV      .S1     A5,A13            ; |119| 
||         LDDW    .D1T1   *+A10(8),A5:A4    ; |119| 

           MV      .L2     B10,B5            ; |119| 
           MV      .L2     B11,B4            ; |119| 
           NOP             2
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |119| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL63:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |119| 
;** --------------------------------------------------------------------------*

           SUBDP   .L1     A5:A4,A13:A12,A5:A4 ; |119| 
||         MV      .S1X    B13,A6            ; |122| 
||         ZERO    .L2     B5:B4             ; |122| 

           MV      .S1X    B12,A7            ; |122| 
           MVK     .S1     64,A3             ; |124| 
           CMPLTDP .S2X    A7:A6,B5:B4,B0    ; |122| 
           ZERO    .L2     B5:B4             ; |123| 

   [!B0]   B       .S1     $C$L36            ; |122| 
|| [ B0]   LDB     .D1T1   *+A10[A3],A0      ; |124| 
|| [ B0]   MVK     .S2     288,B7            ; |124| 
|| [ B0]   ZERO    .L2     B6                ; |124| 

   [!B0]   ZERO    .S1     A0                ; |123| nullify predicate
|| [ B0]   SET     .S2     B6,31,31,B10      ; |124| 
|| [ B0]   STDW    .D1T2   B5:B4,*+A10(80)   ; |123| 

           STDW    .D1T1   A5:A4,*+A10(112)  ; |119| 
|| [!B0]   ZERO    .L1     A5:A4             ; |128| 
|| [ B0]   ADD     .S1X    B7,A10,A3         ; |124| 

   [!B0]   LDDW    .D1T1   *+A10(112),A7:A6  ; |128| 
   [ B0]   ADD     .L1X    B7,A10,A8         ; |124| 
   [ A0]   B       .S1     $C$L34            ; |124| 
           ; BRANCHCC OCCURS {$C$L36}        ; |122| 
;** --------------------------------------------------------------------------*
;** 123	-----------------------    ((double *)dynamic_info)[10] = 0.0;  // [8]
;** 124	-----------------------    if ( (*dynamic_info).is_acc_positive ) goto g37;  // [8]
   [!A0]   LDDW    .D1T1   *A10,A5:A4        ; |124| 
   [!A0]   LDDW    .D1T1   *+A10(16),A7:A6   ; |124| 
   [ A0]   LDDW    .D1T1   *+A10(16),A7:A6   ; |124| 
   [ A0]   LDDW    .D1T1   *A10,A5:A4        ; |124| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L34}        ; |124| 
;** --------------------------------------------------------------------------*
;** 124	-----------------------    S$2 = -sqrt((*dynamic_info).Ja*((*dynamic_info).f-(*dynamic_info).fs));  // [8]
;** 124	-----------------------    goto g38;  // [8]
           NOP             1
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |124| 
           LDDW    .D1T1   *A8,A7:A6         ; |124| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |124| 
           NOP             3
           CALL    .S1     sqrt              ; |124| 
           ADDKPC  .S2     $C$RL65,B3,4      ; |124| 
$C$RL65:   ; CALL OCCURS {sqrt} {0}          ; |124| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L35,3          ; |124| 
||         LDDW    .D1T1   *+A10(112),A7:A6  ; |128| 
||         XOR     .L1X    A5,B10,A5         ; |124| 

           STDW    .D1T1   A5:A4,*+A10(48)   ; |124| 
           ZERO    .L1     A5:A4             ; |128| 
           ; BRANCH OCCURS {$C$L35}          ; |124| 
;** --------------------------------------------------------------------------*
$C$L34:    
;**	-----------------------g37:
;** 124	-----------------------    S$2 = sqrt((*dynamic_info).Ja*((*dynamic_info).f-(*dynamic_info).fs));  // [8]
           NOP             3
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |124| 
           LDDW    .D1T1   *A3,A7:A6         ; |124| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |124| 
           NOP             3
           CALL    .S1     sqrt              ; |124| 
           ADDKPC  .S2     $C$RL66,B3,4      ; |124| 
$C$RL66:   ; CALL OCCURS {sqrt} {0}          ; |124| 
           LDDW    .D1T1   *+A10(112),A7:A6  ; |128| 
           STDW    .D1T1   A5:A4,*+A10(48)   ; |124| 
           ZERO    .L1     A5:A4             ; |128| 
;** --------------------------------------------------------------------------*
$C$L35:    
;**	-----------------------g38:
;** 124	-----------------------    (*dynamic_info).acceleration = S$2;  // [8]
;** --------------------------------------------------------------------------*
$C$L36:    
;**	-----------------------g39:
;** 128	-----------------------    if ( *((double * const)dynamic_info+112) >= 0.0 ) goto g44;  // [8]
           MVK     .S1     65,A3             ; |130| 
           ZERO    .L2     B5:B4             ; |129| 
           CMPLTDP .S1     A7:A6,A5:A4,A0    ; |128| 
           NOP             1

   [!A0]   B       .S1     $C$L39            ; |128| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
|| [ A0]   LDB     .D1T1   *+A10[A3],A0      ; |130| 

   [ A1]   MVK     .S2     296,B7            ; |130| 
|| [!A1]   ZERO    .L1     A0                ; |129| nullify predicate
|| [ A1]   ZERO    .L2     B6                ; |130| 
|| [ A1]   STDW    .D1T2   B5:B4,*+A10(112)  ; |129| 

   [ A1]   SET     .S2     B6,31,31,B10      ; |130| 
   [ A1]   ADD     .L1X    B7,A10,A3         ; |130| 
   [ A1]   ADD     .L1X    B7,A10,A8         ; |130| 
   [ A0]   B       .S1     $C$L37            ; |130| 
           ; BRANCHCC OCCURS {$C$L39}        ; |128| 
;** --------------------------------------------------------------------------*
;** 129	-----------------------    ((double *)dynamic_info)[14] = 0.0;  // [8]
;** 130	-----------------------    if ( (*dynamic_info).is_dec_positive ) goto g42;  // [8]
   [!A0]   LDDW    .D1T1   *+A10(8),A5:A4    ; |130| 
   [!A0]   LDDW    .D1T1   *+A10(16),A7:A6   ; |130| 
   [ A0]   LDDW    .D1T1   *+A10(16),A7:A6   ; |130| 
   [ A0]   LDDW    .D1T1   *+A10(8),A5:A4    ; |130| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L37}        ; |130| 
;** --------------------------------------------------------------------------*
;** 130	-----------------------    S$1 = -sqrt((*dynamic_info).Jd*((*dynamic_info).f-(*dynamic_info).fe));  // [8]
;** 130	-----------------------    goto g43;  // [8]
           NOP             1
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |130| 
           LDDW    .D1T1   *A8,A7:A6         ; |130| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |130| 
           NOP             3
           CALL    .S1     sqrt              ; |130| 
           ADDKPC  .S2     $C$RL67,B3,4      ; |130| 
$C$RL67:   ; CALL OCCURS {sqrt} {0}          ; |130| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L38,4          ; |130| 
||         XOR     .L1X    A5,B10,A5         ; |130| 

           STDW    .D1T1   A5:A4,*+A10(56)   ; |130| 
           ; BRANCH OCCURS {$C$L38}          ; |130| 
;** --------------------------------------------------------------------------*
$C$L37:    
;**	-----------------------g42:
;** 130	-----------------------    S$1 = sqrt((*dynamic_info).Jd*((*dynamic_info).f-(*dynamic_info).fe));  // [8]
           NOP             3
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |130| 
           LDDW    .D1T1   *A3,A7:A6         ; |130| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |130| 
           NOP             3
           CALL    .S1     sqrt              ; |130| 
           ADDKPC  .S2     $C$RL68,B3,4      ; |130| 
$C$RL68:   ; CALL OCCURS {sqrt} {0}          ; |130| 
           STDW    .D1T1   A5:A4,*+A10(56)   ; |130| 
;** --------------------------------------------------------------------------*
$C$L38:    
;**	-----------------------g43:
;** 130	-----------------------    (*dynamic_info).deceleration = S$1;  // [8]
;** --------------------------------------------------------------------------*
$C$L39:    
;**	-----------------------g44:
;** 188	-----------------------    uniform_displacement = SVelocityPlanning::ComputeUniformDistance(this, dynamic_info, W$1[1]);
           CALL    .S1     _ZN17SVelocityPlanning22ComputeUniformDistanceEP11DynamicInfod ; |188| 
           LDDW    .D1T1   *+A15(8),A7:A6    ; |188| 
           MV      .L2X    A10,B4            ; |188| 
           ADDKPC  .S2     $C$RL69,B3,1      ; |188| 
           MV      .L1     A14,A4            ; |188| 
$C$RL69:   ; CALL OCCURS {_ZN17SVelocityPlanning22ComputeUniformDistanceEP11DynamicInfod} {0}  ; |188| 
;** --------------------------------------------------------------------------*

           MV      .L1     A5,A13            ; |188| 
||         MV      .S1     A4,A12            ; |188| 

           ZERO    .L2     B5:B4             ; |200| 
           CMPLTDP .S2X    A13:A12,B5:B4,B0  ; |200| 
           NOP             1

   [!B0]   LDDW    .D1T1   *+A10(40),A5:A4   ; |200| 
|| [!B0]   MVKL    .S1     0x47ae147b,A6

   [ B0]   MVK     .L1     0x1,A0            ; |200| 
|| [!B0]   MVKL    .S1     0x3f847ae1,A7

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L40:    
;**	-----------------------g45:
;** 200	-----------------------    if ( uniform_displacement < 0.0 ) goto g47;
;** 200	-----------------------    if ( uniform_displacement <= (*dynamic_info).distance*0.0100000000000000002082 ) goto g61;
   [!B0]   MVKH    .S1     0x3f847ae1,A7
   [!B0]   MVKH    .S1     0x47ae147b,A6
           NOP             1
   [!B0]   MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |200| 
           NOP             9
   [!B0]   CMPGTDP .S1     A13:A12,A5:A4,A0  ; |200| 
           NOP             1
   [!A0]   B       .S1     $C$L47            ; |200| 
   [ A0]   CALL    .S1     _ZN17SVelocityPlanning22ComputeUniformDistanceEP11DynamicInfod ; |191| 
   [ A0]   LDW     .D2T1   *+SP(12),A7       ; |191| 
   [ A0]   MV      .L1     A11,A6            ; |191| 
   [ A0]   MV      .L1     A14,A4            ; |191| 
   [ A0]   MV      .L2X    A10,B4            ; |191| 
           ; BRANCHCC OCCURS {$C$L47}        ; |200| 
;** --------------------------------------------------------------------------*
;**	-----------------------g47:
;** 191	-----------------------    if ( SVelocityPlanning::ComputeUniformDistance(this, dynamic_info, right_point)*uniform_displacement > 0.0 ) goto g49;
;** 194	-----------------------    left_point = W$1[1];
;** 194	-----------------------    goto g50;
;**	-----------------------g49:
;** 192	-----------------------    right_point = W$1[1];
;**	-----------------------g50:
;** 196	-----------------------    W$1[1] = (left_point+right_point)*0.5;
;** 118	-----------------------    C$8 = (*dynamic_info).acceleration;  // [8]
;** 118	-----------------------    *((double * const)dynamic_info+80) = C$6 = ((*dynamic_info).f-(*dynamic_info).fs)/C$8-C$8/(*dynamic_info).Ja;  // [8]
;** 119	-----------------------    C$7 = (*dynamic_info).deceleration;  // [8]
;** 119	-----------------------    *((double * const)dynamic_info+112) = ((*dynamic_info).f-(*dynamic_info).fe)/C$7-C$7/(*dynamic_info).Jd;  // [8]
;** 122	-----------------------    if ( C$6 >= 0.0 ) goto g55;  // [8]
           ADDKPC  .S2     $C$RL70,B3,0      ; |191| 
$C$RL70:   ; CALL OCCURS {_ZN17SVelocityPlanning22ComputeUniformDistanceEP11DynamicInfod} {0}  ; |191| 
;** --------------------------------------------------------------------------*
           MPYDP   .M1     A13:A12,A5:A4,A5:A4 ; |191| 
           ZERO    .L2     B5:B4             ; |191| 
           ZERO    .L1     A31
           MVK     .S2     288,B31           ; |118| 
           NOP             7
           CMPGTDP .S2X    A5:A4,B5:B4,B0    ; |191| 
           NOP             1
   [ B0]   LDDW    .D1T1   *+A15(8),A5:A4    ; |192| 
   [!B0]   LDDW    .D1T1   *+A15(8),A5:A4    ; |194| 
           ADD     .L2X    B31,A10,B4        ; |118| 
           NOP             2
   [ B0]   STW     .D2T1   A5,*+SP(12)       ; |192| 
   [!B0]   STW     .D2T1   A5,*+SP(8)        ; |194| 
   [!B0]   STW     .D2T1   A4,*+SP(4)        ; |194| 
           LDW     .D2T1   *+SP(12),A7
           LDW     .D2T1   *+SP(8),A5
   [ B0]   MV      .L1     A4,A11            ; |192| 
           LDW     .D2T1   *+SP(4),A4
           MV      .L1     A11,A6
           NOP             3
           ADDDP   .L1     A7:A6,A5:A4,A7:A6 ; |196| 
           SET     .S1     A31,0x15,0x1d,A5
           ZERO    .L1     A4                ; |196| 
           NOP             4
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |196| 
           NOP             9
           STDW    .D1T1   A5:A4,*+A15(8)    ; |196| 
           LDDW    .D1T1   *+A10(48),A5:A4   ; |118| 
           LDDW    .D2T2   *B4,B5:B4         ; |118| 
           NOP             3
           MV      .L2X    A4,B11            ; |118| 

           MV      .L2X    A5,B10            ; |118| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL72:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |118| 
           LDDW    .D1T1   *+A10(16),A7:A6   ; |118| 

           MV      .L1     A4,A12            ; |118| 
||         MV      .S1     A5,A13            ; |118| 
||         LDDW    .D1T1   *A10,A5:A4        ; |118| 

           MV      .L2     B10,B5            ; |118| 
           MV      .L2     B11,B4            ; |118| 
           NOP             2
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |118| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL71:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |118| 
           SUBDP   .L1     A5:A4,A13:A12,A13:A12 ; |118| 
           LDDW    .D1T1   *+A10(56),A5:A4   ; |119| 
           MVK     .S2     296,B4            ; |119| 
           ADD     .L2X    B4,A10,B4         ; |119| 
           LDDW    .D2T2   *B4,B5:B4         ; |119| 
           NOP             1
           MV      .L2X    A4,B11            ; |119| 

           STDW    .D1T1   A13:A12,*+A10(80) ; |118| 
||         MV      .L2X    A5,B10            ; |119| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL74:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |119| 

           MV      .L2X    A4,B13            ; |119| 
||         LDDW    .D1T1   *+A10(16),A7:A6   ; |119| 

           MV      .L2X    A5,B12            ; |119| 
||         LDDW    .D1T1   *+A10(8),A5:A4    ; |119| 

           MV      .L2     B10,B5            ; |119| 
           MV      .L2     B11,B4            ; |119| 
           NOP             2
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |119| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL73:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |119| 
;** --------------------------------------------------------------------------*

           MV      .L1X    B12,A7            ; |119| 
||         MVK     .S1     64,A3             ; |124| 

           MV      .L1X    B13,A6            ; |119| 
           SUBDP   .S1     A5:A4,A7:A6,A5:A4 ; |119| 
           ZERO    .L1     A7:A6             ; |122| 
           CMPLTDP .S1     A13:A12,A7:A6,A0  ; |122| 
           NOP             1

   [!A0]   BNOP    .S2     $C$L43,1          ; |122| 
||         MV      .L1     A0,A2             ; branch predicate copy
||         MV      .S1     A0,A1             ; guard predicate rewrite
|| [ A0]   LDB     .D1T1   *+A10[A3],A0      ; |124| 

   [!A1]   ZERO    .L1     A0                ; |123| nullify predicate

           STDW    .D1T1   A5:A4,*+A10(112)  ; |119| 
|| [!A2]   ZERO    .L1     A5:A4             ; |128| 

   [!A2]   LDDW    .D1T1   *+A10(112),A7:A6  ; |128| 
|| [ A1]   ZERO    .L1     A5:A4             ; |123| 

   [ A0]   B       .S1     $C$L41            ; |124| 
|| [ A1]   STDW    .D1T1   A5:A4,*+A10(80)   ; |123| 

           ; BRANCHCC OCCURS {$C$L43}        ; |122| 
;** --------------------------------------------------------------------------*
;** 123	-----------------------    ((double *)dynamic_info)[10] = 0.0;  // [8]
;** 124	-----------------------    if ( (*dynamic_info).is_acc_positive ) goto g53;  // [8]
   [!A0]   LDDW    .D1T1   *A10,A5:A4        ; |124| 
   [!A0]   LDDW    .D1T1   *+A10(16),A7:A6   ; |124| 
   [ A0]   LDDW    .D1T1   *A10,A5:A4        ; |124| 
   [ A0]   LDDW    .D1T1   *+A10(16),A7:A6   ; |124| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L41}        ; |124| 
;** --------------------------------------------------------------------------*
;** 124	-----------------------    S$2 = -sqrt((*dynamic_info).Ja*((*dynamic_info).f-(*dynamic_info).fs));  // [8]
;** 124	-----------------------    goto g54;  // [8]
           MVK     .S1     288,A3            ; |124| 
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |124| 
           ADD     .S1     A3,A10,A3         ; |124| 
           LDDW    .D1T1   *A3,A7:A6         ; |124| 
           NOP             4
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |124| 
           NOP             3
           CALL    .S1     sqrt              ; |124| 
           ADDKPC  .S2     $C$RL75,B3,4      ; |124| 
$C$RL75:   ; CALL OCCURS {sqrt} {0}          ; |124| 
;** --------------------------------------------------------------------------*

           B       .S1     $C$L42            ; |124| 
||         ZERO    .L2     B4                ; |124| 

           SET     .S2     B4,31,31,B4       ; |124| 
           LDDW    .D1T1   *+A10(112),A7:A6  ; |128| 
           XOR     .L1X    A5,B4,A5          ; |124| 
           STDW    .D1T1   A5:A4,*+A10(48)   ; |124| 
           ZERO    .L1     A5:A4             ; |128| 
           ; BRANCH OCCURS {$C$L42}          ; |124| 
;** --------------------------------------------------------------------------*
$C$L41:    
;**	-----------------------g53:
;** 124	-----------------------    S$2 = sqrt((*dynamic_info).Ja*((*dynamic_info).f-(*dynamic_info).fs));  // [8]
           MVK     .S1     288,A3            ; |124| 
           ADD     .L1     A3,A10,A3         ; |124| 
           NOP             1
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |124| 
           LDDW    .D1T1   *A3,A7:A6         ; |124| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |124| 
           NOP             3
           CALL    .S1     sqrt              ; |124| 
           ADDKPC  .S2     $C$RL76,B3,4      ; |124| 
$C$RL76:   ; CALL OCCURS {sqrt} {0}          ; |124| 
           LDDW    .D1T1   *+A10(112),A7:A6  ; |128| 

           STDW    .D1T1   A5:A4,*+A10(48)   ; |124| 
||         ZERO    .L1     A5:A4             ; |128| 

;** --------------------------------------------------------------------------*
$C$L42:    
;**	-----------------------g54:
;** 124	-----------------------    (*dynamic_info).acceleration = S$2;  // [8]
;** --------------------------------------------------------------------------*
$C$L43:    
;**	-----------------------g55:
;** 128	-----------------------    if ( *((double * const)dynamic_info+112) >= 0.0 ) goto g60;  // [8]
           MVK     .S1     65,A3             ; |130| 
           NOP             2
           CMPLTDP .S1     A7:A6,A5:A4,A0    ; |128| 
           NOP             1

   [!A0]   BNOP    .S1     $C$L46,1          ; |128| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
|| [ A0]   LDB     .D1T1   *+A10[A3],A0      ; |130| 

   [!A1]   ZERO    .L1     A0                ; |129| nullify predicate
   [ A1]   ZERO    .L1     A5:A4             ; |129| 
   [ A1]   STDW    .D1T1   A5:A4,*+A10(112)  ; |129| 
   [ A0]   B       .S1     $C$L44            ; |130| 
           ; BRANCHCC OCCURS {$C$L46}        ; |128| 
;** --------------------------------------------------------------------------*
;** 129	-----------------------    ((double *)dynamic_info)[14] = 0.0;  // [8]
;** 130	-----------------------    if ( (*dynamic_info).is_dec_positive ) goto g58;  // [8]
   [!A0]   LDDW    .D1T1   *+A10(8),A5:A4    ; |130| 
   [!A0]   LDDW    .D1T1   *+A10(16),A7:A6   ; |130| 
   [ A0]   LDDW    .D1T1   *+A10(16),A7:A6   ; |130| 
   [ A0]   LDDW    .D1T1   *+A10(8),A5:A4    ; |130| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L44}        ; |130| 
;** --------------------------------------------------------------------------*
;** 130	-----------------------    S$1 = -sqrt((*dynamic_info).Jd*((*dynamic_info).f-(*dynamic_info).fe));  // [8]
;** 130	-----------------------    goto g59;  // [8]
           MVK     .S1     296,A3            ; |130| 
           SUBDP   .L1     A7:A6,A5:A4,A7:A6 ; |130| 
           ADD     .S1     A3,A10,A3         ; |130| 
           LDDW    .D1T1   *A3,A5:A4         ; |130| 
           NOP             4
           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |130| 
           NOP             3
           CALL    .S1     sqrt              ; |130| 
           ADDKPC  .S2     $C$RL77,B3,4      ; |130| 
$C$RL77:   ; CALL OCCURS {sqrt} {0}          ; |130| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L45,1          ; |130| 
||         ZERO    .L2     B4                ; |130| 

           SET     .S2     B4,31,31,B4       ; |130| 
           NOP             1
           XOR     .L1X    A5,B4,A5          ; |130| 
           STDW    .D1T1   A5:A4,*+A10(56)   ; |130| 
           ; BRANCH OCCURS {$C$L45}          ; |130| 
;** --------------------------------------------------------------------------*
$C$L44:    
;**	-----------------------g58:
;** 130	-----------------------    S$1 = sqrt((*dynamic_info).Jd*((*dynamic_info).f-(*dynamic_info).fe));  // [8]
           MVK     .S1     296,A3            ; |130| 
           ADD     .L1     A3,A10,A3         ; |130| 
           NOP             1
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |130| 
           LDDW    .D1T1   *A3,A7:A6         ; |130| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |130| 
           NOP             3
           CALL    .S1     sqrt              ; |130| 
           ADDKPC  .S2     $C$RL78,B3,4      ; |130| 
$C$RL78:   ; CALL OCCURS {sqrt} {0}          ; |130| 
           STDW    .D1T1   A5:A4,*+A10(56)   ; |130| 
;** --------------------------------------------------------------------------*
$C$L45:    
;**	-----------------------g59:
;** 130	-----------------------    (*dynamic_info).deceleration = S$1;  // [8]
;** --------------------------------------------------------------------------*
$C$L46:    
;**	-----------------------g60:
;** 198	-----------------------    uniform_displacement = SVelocityPlanning::ComputeUniformDistance(this, dynamic_info, W$1[1]);
;** 200	-----------------------    goto g45;
           CALL    .S1     _ZN17SVelocityPlanning22ComputeUniformDistanceEP11DynamicInfod ; |198| 
           LDDW    .D1T1   *+A15(8),A7:A6    ; |198| 
           MV      .L1     A14,A4            ; |198| 
           ADDKPC  .S2     $C$RL79,B3,1      ; |198| 
           MV      .L2X    A10,B4            ; |198| 
$C$RL79:   ; CALL OCCURS {_ZN17SVelocityPlanning22ComputeUniformDistanceEP11DynamicInfod} {0}  ; |198| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L40,1          ; |200| 
||         MV      .L1     A5,A13            ; |198| 
||         MV      .D1     A4,A12            ; |198| 
||         ZERO    .L2     B5:B4             ; |200| 

           CMPLTDP .S2X    A13:A12,B5:B4,B0  ; |200| 
           NOP             1

   [!B0]   LDDW    .D1T1   *+A10(40),A5:A4   ; |200| 
|| [ B0]   MVK     .L1     0x1,A0            ; |200| 
|| [!B0]   MVKL    .S1     0x3f847ae1,A7

   [!B0]   MVKL    .S1     0x47ae147b,A6
           ; BRANCH OCCURS {$C$L40}          ; |200| 
;** --------------------------------------------------------------------------*
$C$L47:    
           MVK     .S2     288,B4            ; |207| 

           ADD     .L2X    B4,A10,B4         ; |207| 
||         CALL    .S1     __c6xabi_divd     ; |207| 

           LDDW    .D2T2   *B4,B5:B4         ; |207| 
||         LDDW    .D1T1   *+A15(40),A5:A4   ; |207| 

           NOP             3
;** --------------------------------------------------------------------------*
$C$L48:    
;**	-----------------------g61:
;** 207	-----------------------    T$2 = W$1[5]/(*dynamic_info).Ja;
;** 207	-----------------------    *((double * const)dynamic_info+88) = T$2;
;** 207	-----------------------    *((double * const)dynamic_info+72) = T$2;
;** 208	-----------------------    T$1 = W$1[6]/(*dynamic_info).Jd;
;** 208	-----------------------    *((double * const)dynamic_info+120) = T$1;
;** 208	-----------------------    *((double * const)dynamic_info+104) = T$1;
;** 209	-----------------------    goto g63;
           ADDKPC  .S2     $C$RL80,B3,0      ; |207| 
$C$RL80:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |207| 
;** --------------------------------------------------------------------------*
           MVK     .S1     296,A3            ; |208| 
           ADD     .L1     A3,A10,A3         ; |208| 
           LDDW    .D1T1   *A3,A7:A6         ; |208| 
           STDW    .D1T1   A5:A4,*+A10(72)   ; |207| 
           STDW    .D1T1   A5:A4,*+A10(88)   ; |207| 
           LDDW    .D1T1   *+A15(48),A5:A4   ; |208| 
           NOP             1
           MV      .L2X    A6,B4             ; |208| 

           MV      .L2X    A7,B5             ; |208| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL81:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |208| 
;** --------------------------------------------------------------------------*

           B       .S1     $C$L51            ; |209| 
||         STDW    .D1T1   A5:A4,*+A10(120)  ; |208| 
||         ZERO    .L2     B7:B6             ; |237| 

           STDW    .D1T1   A5:A4,*+A10(104)  ; |208| 
||         MVKL    .S1     0x3e45798e,A5

           LDDW    .D1T1   *+A15(8),A7:A6    ; |236| 
           MVKL    .S1     0xe2308c3a,A4
           MVKH    .S1     0x3e45798e,A5
           MVKH    .S1     0xe2308c3a,A4
           ; BRANCH OCCURS {$C$L51}          ; |209| 
;** --------------------------------------------------------------------------*
$C$L49:    
;**	-----------------------g62:
;** 232	-----------------------    T$4 = W$1[5]/(*dynamic_info).Ja;
;** 232	-----------------------    *((double * const)dynamic_info+88) = T$4;
;** 232	-----------------------    *((double * const)dynamic_info+72) = T$4;
;** 233	-----------------------    T$3 = W$1[6]/(*dynamic_info).Jd;
;** 233	-----------------------    *((double * const)dynamic_info+120) = T$3;
;** 233	-----------------------    *((double * const)dynamic_info+104) = T$3;
           ADDKPC  .S2     $C$RL82,B3,0      ; |232| 
$C$RL82:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |232| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *A11,A7:A6        ; |233| 
           STDW    .D1T1   A5:A4,*+A10(72)   ; |232| 
           STDW    .D1T1   A5:A4,*+A10(88)   ; |232| 
           LDDW    .D1T1   *+A15(48),A5:A4   ; |233| 
           NOP             1
           MV      .L2X    A6,B4             ; |233| 

           MV      .L2X    A7,B5             ; |233| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL83:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |233| 
;** --------------------------------------------------------------------------*
           STDW    .D1T1   A5:A4,*+A10(120)  ; |233| 
           STDW    .D1T1   A5:A4,*+A10(104)  ; |233| 
;** --------------------------------------------------------------------------*

           LDDW    .D1T1   *+A15(8),A7:A6    ; |236| 
||         MVKL    .S1     0x3e45798e,A5
||         ZERO    .L2     B7:B6             ; |237| 

;** --------------------------------------------------------------------------*
$C$L50:    
           MVKL    .S1     0xe2308c3a,A4
           MVKH    .S1     0xe2308c3a,A4
           MVKH    .S1     0x3e45798e,A5
;** --------------------------------------------------------------------------*
$C$L51:    
;**	-----------------------g63:
;** 236	-----------------------    C$5 = W$1[1];
;** 236	-----------------------    if ( C$5 < 1.00000000000000002092e-8 ) goto g65;
           NOP             1

           CMPLTDP .S1     A7:A6,A5:A4,A0    ; |236| 
||         MV      .L2X    A7,B5             ; |242| 

           MV      .L2X    A6,B4             ; |242| 
||         MV      .L1     A13,A5            ; |242| 
||         MV      .D1     A12,A4            ; |242| 

   [ A0]   B       .S1     $C$L52            ; |236| 
|| [ A0]   LDDW    .D1T1   *+A10(32),A7:A6   ; |238| 

   [!A0]   CALL    .S1     __c6xabi_divd     ; |242| 
|| [ A0]   LDDW    .D1T1   *+A10(40),A5:A4   ; |239| 

           NOP             4
           ; BRANCHCC OCCURS {$C$L52}        ; |236| 
;** --------------------------------------------------------------------------*
;** 242	-----------------------    *((double * const)dynamic_info+96) = uniform_displacement/C$5;
;** 242	-----------------------    goto g66;
           ADDKPC  .S2     $C$RL84,B3,0      ; |242| 
$C$RL84:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |242| 
;** --------------------------------------------------------------------------*
           STDW    .D1T1   A5:A4,*+A10(96)   ; |242| 
           LDW     .D2T2   *++SP(32),B3      ; |244| 
           LDDW    .D2T1   *++SP,A13:A12     ; |244| 
           LDDW    .D2T1   *++SP,A15:A14     ; |244| 
           LDDW    .D2T2   *++SP,B11:B10     ; |244| 
           LDDW    .D2T2   *++SP,B13:B12     ; |244| 

           LDW     .D2T1   *++SP(8),A10      ; |244| 
||         RET     .S2     B3                ; |244| 

           LDW     .D2T1   *++SP(8),A11      ; |244| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |244| 
;** --------------------------------------------------------------------------*
$C$L52:    
;**	-----------------------g65:
;** 237	-----------------------    *((double * const)dynamic_info+96) = 0.0;
;** 238	-----------------------    (*dynamic_info).le = (*dynamic_info).le-uniform_displacement;
;** 239	-----------------------    (*dynamic_info).distance = (*dynamic_info).distance-uniform_displacement;
;**	-----------------------g66:
;**  	-----------------------    return;
           SUBDP   .L1     A7:A6,A13:A12,A7:A6 ; |238| 
           SUBDP   .S1     A5:A4,A13:A12,A5:A4 ; |239| 
           STDW    .D1T2   B7:B6,*+A10(96)   ; |237| 
           NOP             4
           STDW    .D1T1   A7:A6,*+A10(32)   ; |238| 
           STDW    .D1T1   A5:A4,*+A10(40)   ; |239| 
           LDW     .D2T2   *++SP(32),B3      ; |244| 
           LDDW    .D2T1   *++SP,A13:A12     ; |244| 
           LDDW    .D2T1   *++SP,A15:A14     ; |244| 
           LDDW    .D2T2   *++SP,B11:B10     ; |244| 
           LDDW    .D2T2   *++SP,B13:B12     ; |244| 

           LDW     .D2T1   *++SP(8),A10      ; |244| 
||         RET     .S2     B3                ; |244| 

           LDW     .D2T1   *++SP(8),A11      ; |244| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |244| 
	.sect	".text"
	.clink
	.global	_ZN17SVelocityPlanning16ComputePhaseTimeEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::ComputePhaseTime(DynamicInfo *)          *
;*                                                                            *
;*   Regs Modified     : B6,B7,B8,B9,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25  *
;*   Regs Used         : B3,B4,B6,B7,B8,B9,B16,B17,B18,B19,B20,B21,B22,B23,   *
;*                           B24,B25                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN17SVelocityPlanning16ComputePhaseTimeEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 266	-----------------------    *((double * const)dynamic_info+128) = C$6 = *((double * const)dynamic_info+72);
;** 267	-----------------------    *((double * const)dynamic_info+136) = C$5 = C$6+*((double * const)dynamic_info+80);
;** 268	-----------------------    *((double * const)dynamic_info+144) = C$4 = C$5+*((double * const)dynamic_info+88);
;** 269	-----------------------    *((double * const)dynamic_info+152) = C$3 = C$4+*((double * const)dynamic_info+96);
;** 270	-----------------------    *((double * const)dynamic_info+160) = C$2 = C$3+*((double * const)dynamic_info+104);
;** 271	-----------------------    *((double * const)dynamic_info+168) = C$1 = C$2+*((double * const)dynamic_info+112);
;** 272	-----------------------    (*dynamic_info).total_time = C$1+*((double * const)dynamic_info+120);
;**  	-----------------------    return;
           LDDW    .D2T2   *+B4(72),B21:B20  ; |266| 
           LDDW    .D2T2   *+B4(80),B7:B6    ; |267| 
           LDDW    .D2T2   *+B4(88),B9:B8    ; |268| 
           LDDW    .D2T2   *+B4(96),B17:B16  ; |269| 
           LDDW    .D2T2   *+B4(104),B19:B18 ; |270| 
           LDDW    .D2T2   *+B4(112),B23:B22 ; |271| 
           ADDDP   .L2     B7:B6,B21:B20,B7:B6 ; |267| 
           STDW    .D2T2   B21:B20,*+B4(128) ; |266| 
           NOP             5
           ADDDP   .L2     B9:B8,B7:B6,B9:B8 ; |268| 
           STDW    .D2T2   B7:B6,*+B4(136)   ; |267| 
           NOP             5
           ADDDP   .L2     B17:B16,B9:B8,B17:B16 ; |269| 
           STDW    .D2T2   B9:B8,*+B4(144)   ; |268| 
           NOP             5
           ADDDP   .L2     B19:B18,B17:B16,B19:B18 ; |270| 
           STDW    .D2T2   B17:B16,*+B4(152) ; |269| 
           NOP             5
           ADDDP   .L2     B23:B22,B19:B18,B25:B24 ; |271| 
           LDDW    .D2T2   *+B4(120),B23:B22 ; |272| 
           STDW    .D2T2   B19:B18,*+B4(160) ; |270| 
           NOP             4
           ADDDP   .L2     B23:B22,B25:B24,B23:B22 ; |272| 
           STDW    .D2T2   B25:B24,*+B4(168) ; |271| 
           RETNOP  .S2     B3,4              ; |273| 
           STDW    .D2T2   B23:B22,*+B4(176) ; |272| 
           ; BRANCH OCCURS {B3}              ; |273| 
	.sect	".text"
	.clink
	.global	_ZN17SVelocityPlanning17ComputePhaseSpeedEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::ComputePhaseSpeed(DynamicInfo *)         *
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
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************
_ZN17SVelocityPlanning17ComputePhaseSpeedEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 276	-----------------------    *((double * const)dynamic_info+192) = C$2 = (*dynamic_info).fs+(*dynamic_info).Ja*0.5*pow(*((double * const)dynamic_info+72), 2.0);
;** 277	-----------------------    *((double * const)dynamic_info+200) = C$2+(*dynamic_info).acceleration**((double * const)dynamic_info+80);
;** 278	-----------------------    *((double * const)dynamic_info+208) = (*dynamic_info).f;
;** 279	-----------------------    *((double * const)dynamic_info+216) = (*dynamic_info).f;
;** 280	-----------------------    *((double * const)dynamic_info+224) = C$1 = *((double * const)dynamic_info+216)-(*dynamic_info).Jd*0.5*pow(*((double * const)dynamic_info+104), 2.0);
;** 281	-----------------------    *((double * const)dynamic_info+232) = C$1-(*dynamic_info).deceleration**((double * const)dynamic_info+112);
;**  	-----------------------    return;

           STW     .D2T1   A11,*SP--(8)      ; |275| 
||         ZERO    .L2     B5

           STDW    .D2T2   B11:B10,*SP--     ; |275| 
||         SET     .S2     B5,0x1e,0x1e,B5

           STW     .D2T1   A10,*SP--(8)      ; |275| 
||         MV      .L2     B4,B10            ; |275| 
||         MV      .S2     B3,B11            ; |275| 

           CALLP   .S2     pow,B3
||         LDDW    .D2T1   *+B10(72),A5:A4   ; |276| 
||         ZERO    .L2     B4                ; |276| 

$C$RL85:   ; CALL OCCURS {pow} {0}           ; |276| 
;** --------------------------------------------------------------------------*
           MVK     .S1     288,A3            ; |276| 
           ADD     .L1X    A3,B10,A3         ; |276| 
           LDDW    .D1T1   *A3,A7:A6         ; |276| 
           ZERO    .L1     A11
           SET     .S1     A11,0x15,0x1d,A11
           ZERO    .L1     A10               ; |276| 
           LDDW    .D2T2   *+B10(48),B5:B4   ; |277| 
           MPYDP   .M1     A11:A10,A7:A6,A7:A6 ; |276| 
           LDDW    .D2T2   *+B10(80),B7:B6   ; |277| 
           LDDW    .D2T2   *B10,B9:B8        ; |276| 
           LDDW    .D2T2   *+B10(16),B17:B16 ; |279| 
           LDDW    .D2T2   *+B10(104),B19:B18 ; |280| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |276| 
           MPYDP   .M2     B7:B6,B5:B4,B7:B6 ; |277| 
           STDW    .D2T2   B17:B16,*+B10(216) ; |279| 
           NOP             8
           ADDDP   .L2X    A5:A4,B9:B8,B5:B4 ; |276| 
           LDDW    .D2T2   *+B10(16),B9:B8   ; |278| 
           MV      .L1X    B18,A4            ; |280| 
           MV      .L1X    B19,A5            ; |280| 
           NOP             3
           ADDDP   .L2     B7:B6,B5:B4,B7:B6 ; |277| 
           STDW    .D2T2   B5:B4,*+B10(192)  ; |276| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5
           STDW    .D2T2   B9:B8,*+B10(208)  ; |278| 
           MV      .S2X    A10,B4            ; |280| 
           NOP             2

           CALLP   .S2     pow,B3
||         STDW    .D2T2   B7:B6,*+B10(200)  ; |277| 

$C$RL86:   ; CALL OCCURS {pow} {0}           ; |280| 
;** --------------------------------------------------------------------------*
           MVK     .S2     296,B4            ; |280| 
           ADD     .L2     B4,B10,B4         ; |280| 
           LDDW    .D2T2   *B4,B5:B4         ; |280| 
           LDDW    .D2T2   *+B10(112),B7:B6  ; |281| 
           LDDW    .D2T2   *+B10(216),B9:B8  ; |280| 
           MV      .L2     B11,B3            ; |282| 
           NOP             1
           MPYDP   .M1X    A11:A10,B5:B4,A7:A6 ; |280| 
           LDDW    .D2T2   *+B10(56),B5:B4   ; |281| 
           NOP             8
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |280| 
           MPYDP   .M2     B7:B6,B5:B4,B5:B4 ; |281| 
           NOP             9
           SUBDP   .L2X    B9:B8,A5:A4,B7:B6 ; |280| 
           NOP             6
           SUBDP   .L2     B7:B6,B5:B4,B5:B4 ; |281| 
           STDW    .D2T2   B7:B6,*+B10(224)  ; |280| 
           NOP             5
           STDW    .D2T2   B5:B4,*+B10(232)  ; |281| 
           LDW     .D2T1   *++SP(8),A10      ; |282| 

           LDDW    .D2T2   *++SP,B11:B10     ; |282| 
||         RET     .S2     B3                ; |282| 

           LDW     .D2T1   *++SP(8),A11      ; |282| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |282| 
	.sect	".text"
	.clink
	.global	_ZN17SVelocityPlanning17GetLastPhaseSpeedEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::GetLastPhaseSpeed(DynamicInfo *)         *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A14,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17, *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A14,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP,A16,  *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_ZN17SVelocityPlanning17GetLastPhaseSpeedEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 380	-----------------------    U$5 = *((double * const)dynamic_info+128);
;** 380	-----------------------    U$2 = (*dynamic_info).current_time;
;** 380	-----------------------    if ( U$2 >= U$5 ) goto g3;

           STW     .D2T1   A14,*SP--(8)      ; |375| 
||         ZERO    .L2     B5
||         MV      .L1X    B3,A14            ; |375| 

           STDW    .D2T2   B13:B12,*SP--     ; |375| 
||         MV      .L2     B4,B12            ; |375| 
||         MVK     .S2     288,B4            ; |382| 

           STDW    .D2T2   B11:B10,*SP--     ; |375| 
||         ADD     .L2     B4,B12,B10        ; |382| 
||         SET     .S2     B5,0x1e,0x1e,B5

           ZERO    .L2     B4                ; |382| 
||         STDW    .D2T1   A11:A10,*SP--     ; |375| 

           LDDW    .D2T2   *+B12(184),B17:B16 ; |380| 
           LDDW    .D2T2   *+B12(128),B9:B8  ; |380| 
           ZERO    .L1     A10               ; |382| 
           ZERO    .L1     A11
           SET     .S1     A11,0x15,0x1d,A11
           MV      .L1X    B16,A4            ; |382| 
           CMPLTDP .S2     B17:B16,B9:B8,B0  ; |380| 
           MV      .L1X    B17,A5            ; |382| 

   [!B0]   BNOP    .S1     $C$L53,3          ; |380| 
|| [!B0]   LDDW    .D2T2   *+B12(136),B7:B6  ; |383| 
||         MV      .L2     B0,B1             ; guard predicate rewrite

   [!B1]   SUBDP   .L2     B17:B16,B9:B8,B9:B8 ; |401| 
           CMPLTDP .S2     B17:B16,B7:B6,B0  ; |383| 
           ; BRANCHCC OCCURS {$C$L53}        ; |380| 
;** --------------------------------------------------------------------------*
;** 382	-----------------------    speed = (*dynamic_info).fs+(*dynamic_info).Ja*0.5*pow(U$2, 2.0);
;** 401	-----------------------    return speed;
           NOP             1
           CALLP   .S2     pow,B3
$C$RL87:   ; CALL OCCURS {pow} {0}           ; |382| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *B10,B5:B4        ; |382| 
           MV      .L2X    A14,B3            ; |402| 
           NOP             3
           MPYDP   .M1X    A11:A10,B5:B4,A7:A6 ; |382| 
           LDDW    .D2T2   *B12,B5:B4        ; |382| 
           LDDW    .D2T1   *++SP,A11:A10     ; |402| 
           LDDW    .D2T2   *++SP,B11:B10     ; |402| 
           LDDW    .D2T2   *++SP,B13:B12     ; |402| 
           LDW     .D2T1   *++SP(8),A14      ; |402| 
           NOP             4
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |382| 
           NOP             9
           ADDDP   .L1X    A5:A4,B5:B4,A7:A6 ; |382| 
           NOP             1
           RETNOP  .S2     B3,4              ; |402| 

           MV      .L1     A7,A5             ; |401| 
||         MV      .S1     A6,A4             ; |401| 

           ; BRANCH OCCURS {B3}              ; |402| 
;** --------------------------------------------------------------------------*
$C$L53:    
;**	-----------------------g3:
;** 383	-----------------------    U$16 = *((double * const)dynamic_info+136);
;** 383	-----------------------    if ( U$2 >= U$16 ) goto g5;
;** 401	-----------------------    return *((double * const)dynamic_info+192)+(*dynamic_info).acceleration*(U$2-U$5);
           NOP             1
   [ B0]   LDDW    .D2T2   *+B12(48),B19:B18 ; |401| 
   [!B0]   MVK     .S2     288,B4            ; |388| 
   [!B0]   SUBDP   .L2     B17:B16,B7:B6,B11:B10 ; |388| 
   [ B0]   LDDW    .D2T1   *+B12(192),A5:A4  ; |401| 
   [!B0]   LDDW    .D2T2   *+B12(144),B7:B6  ; |386| 
   [ B0]   MPYDP   .M2     B9:B8,B19:B18,B9:B8 ; |401| 
           NOP             5
   [ B0]   BNOP    .S1     $C$L56,4          ; |401| 

   [ B0]   ADDDP   .L1X    B9:B8,A5:A4,A7:A6 ; |401| 
||         CMPLTDP .S2     B17:B16,B7:B6,B0  ; |386| 

           ; BRANCHCC OCCURS {$C$L56}        ; |401| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 386	-----------------------    if ( U$2 >= *((double * const)dynamic_info+144) ) goto g7;

           ADD     .L2     B4,B12,B13        ; |388| 
||         MV      .D2X    A10,B4            ; |388| 

   [!B0]   BNOP    .S1     $C$L54,3          ; |386| 
|| [!B0]   LDDW    .D2T2   *+B12(152),B7:B6  ; |389| 
||         MV      .L1X    B11,A5            ; |388| 

           MV      .S1X    B10,A4            ; |388| 
           CMPLTDP .S2     B17:B16,B7:B6,B0  ; |389| 
           ; BRANCHCC OCCURS {$C$L54}        ; |386| 
;** --------------------------------------------------------------------------*
;** 388	-----------------------    C$2 = U$2-U$16;
;** 388	-----------------------    speed = *((double * const)dynamic_info+200)+(*dynamic_info).acceleration*C$2-(*dynamic_info).Ja*0.5*pow(C$2, 2.0);
;** 401	-----------------------    return speed;
           NOP             1
           CALLP   .S2     pow,B3
$C$RL88:   ; CALL OCCURS {pow} {0}           ; |388| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *B13,B5:B4        ; |388| 
           LDDW    .D2T2   *+B12(48),B7:B6   ; |388| 
           MV      .L2X    A14,B3            ; |402| 
           NOP             2
           MPYDP   .M1X    A11:A10,B5:B4,A7:A6 ; |388| 
           MPYDP   .M2     B11:B10,B7:B6,B5:B4 ; |388| 
           LDDW    .D2T2   *+B12(200),B7:B6  ; |388| 
           LDDW    .D2T1   *++SP,A11:A10     ; |402| 
           LDDW    .D2T2   *++SP,B11:B10     ; |402| 
           LDDW    .D2T2   *++SP,B13:B12     ; |402| 
           LDW     .D2T1   *++SP(8),A14      ; |402| 
           NOP             3
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |388| 
           ADDDP   .L2     B5:B4,B7:B6,B5:B4 ; |388| 
           NOP             8
           SUBDP   .L1X    B5:B4,A5:A4,A7:A6 ; |388| 
           NOP             1
           RETNOP  .S2     B3,4              ; |402| 

           MV      .L1     A7,A5             ; |401| 
||         MV      .S1     A6,A4             ; |401| 

           ; BRANCH OCCURS {B3}              ; |402| 
;** --------------------------------------------------------------------------*
$C$L54:    
;**	-----------------------g7:
;** 389	-----------------------    U$40 = *((double * const)dynamic_info+152);
;** 389	-----------------------    if ( U$2 >= U$40 ) goto g9;
;** 401	-----------------------    return (*dynamic_info).f;
           NOP             1

   [ B0]   BNOP    .S1     $C$L56,3          ; |401| 
|| [!B0]   SUBDP   .L2     B17:B16,B7:B6,B7:B6 ; |393| 
|| [!B0]   LDDW    .D2T2   *+B12(160),B9:B8  ; |391| 
|| [!B0]   MVK     .S2     296,B4            ; |393| 

   [ B0]   LDDW    .D2T1   *+B12(16),A7:A6   ; |401| 
           CMPLTDP .S2     B17:B16,B9:B8,B0  ; |391| 
           ; BRANCHCC OCCURS {$C$L56}        ; |401| 
;** --------------------------------------------------------------------------*
;**	-----------------------g9:
;** 391	-----------------------    U$46 = *((double * const)dynamic_info+160);
;** 391	-----------------------    if ( U$2 >= U$46 ) goto g11;
           ADD     .D2     B4,B12,B10        ; |393| 

   [!B0]   B       .S1     $C$L55            ; |391| 
||         MV      .L1X    B6,A4             ; |393| 

   [ B0]   CALL    .S1     pow               ; |393| 
||         MV      .L1X    B7,A5             ; |393| 
|| [!B0]   LDDW    .D2T2   *+B12(168),B7:B6  ; |394| 

           MV      .L2X    A10,B4            ; |393| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L55}        ; |391| 
;** --------------------------------------------------------------------------*
;** 393	-----------------------    speed = (*dynamic_info).f-(*dynamic_info).Jd*0.5*pow(U$2-U$40, 2.0);
;** 401	-----------------------    return speed;
           ADDKPC  .S2     $C$RL89,B3,0      ; |393| 
$C$RL89:   ; CALL OCCURS {pow} {0}           ; |393| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *B10,B5:B4        ; |393| 
           MV      .L2X    A14,B3            ; |402| 
           NOP             3
           MPYDP   .M1X    A11:A10,B5:B4,A7:A6 ; |393| 
           LDDW    .D2T2   *+B12(16),B5:B4   ; |393| 
           LDDW    .D2T1   *++SP,A11:A10     ; |402| 
           LDDW    .D2T2   *++SP,B11:B10     ; |402| 
           LDDW    .D2T2   *++SP,B13:B12     ; |402| 
           LDW     .D2T1   *++SP(8),A14      ; |402| 
           NOP             4
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |393| 
           NOP             9
           SUBDP   .L1X    B5:B4,A5:A4,A7:A6 ; |393| 
           NOP             1
           RETNOP  .S2     B3,4              ; |402| 

           MV      .L1     A7,A5             ; |401| 
||         MV      .S1     A6,A4             ; |401| 

           ; BRANCH OCCURS {B3}              ; |402| 
;** --------------------------------------------------------------------------*
$C$L55:    
;**	-----------------------g11:
;** 394	-----------------------    U$54 = *((double * const)dynamic_info+168);
;** 394	-----------------------    if ( U$2 >= U$54 ) goto g13;
;** 401	-----------------------    return *((double * const)dynamic_info+224)-(*dynamic_info).deceleration*(U$2-U$46);

           CMPLTDP .S2     B17:B16,B7:B6,B0  ; |394| 
||         SUBDP   .L2     B17:B16,B9:B8,B9:B8 ; |401| 

           NOP             1
   [ B0]   LDDW    .D2T2   *+B12(56),B19:B18 ; |401| 
           MVK     .S2     296,B4            ; |399| 
           SUBDP   .L2     B17:B16,B7:B6,B11:B10 ; |399| 
   [ B0]   MV      .S2X    A14,B3            ; |402| 
   [ B0]   LDDW    .D2T1   *+B12(224),A5:A4  ; |401| 
   [ B0]   MPYDP   .M2     B9:B8,B19:B18,B9:B8 ; |401| 
           ADD     .L2     B4,B12,B13        ; |399| 
           MV      .S2X    A10,B4            ; |399| 
   [ B0]   LDDW    .D2T1   *++SP,A11:A10     ; |402| 
           NOP             5
   [ B0]   BNOP    .S1     $C$L57,1          ; |401| 
   [ B0]   SUBDP   .L1X    A5:A4,B9:B8,A7:A6 ; |401| 
   [!B0]   CALL    .S1     pow               ; |399| 
           MV      .L1X    B11,A5            ; |399| 

           MV      .L1X    B10,A4            ; |399| 
|| [ B0]   LDDW    .D2T2   *++SP,B11:B10     ; |402| 

           ; BRANCHCC OCCURS {$C$L57}        ; |401| 
;** --------------------------------------------------------------------------*
;**	-----------------------g13:
;** 399	-----------------------    C$1 = U$2-U$54;
;** 399	-----------------------    speed = *((double * const)dynamic_info+232)-(*dynamic_info).deceleration*C$1+(*dynamic_info).Jd*0.5*pow(C$1, 2.0);
;** 401	-----------------------    return speed;
           ADDKPC  .S2     $C$RL90,B3,2      ; |399| 
$C$RL90:   ; CALL OCCURS {pow} {0}           ; |399| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *B13,B7:B6        ; |399| 
           LDDW    .D2T2   *+B12(56),B5:B4   ; |399| 
           NOP             3
           MPYDP   .M1X    A11:A10,B7:B6,A7:A6 ; |399| 
           MPYDP   .M2     B11:B10,B5:B4,B5:B4 ; |399| 
           LDDW    .D2T2   *+B12(232),B7:B6  ; |399| 
           NOP             7
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |399| 
           SUBDP   .L2     B7:B6,B5:B4,B5:B4 ; |399| 
           NOP             8
           ADDDP   .L1X    A5:A4,B5:B4,A7:A6 ; |399| 
;** --------------------------------------------------------------------------*
$C$L56:    
           LDDW    .D2T1   *++SP,A11:A10     ; |402| 
           LDDW    .D2T2   *++SP,B11:B10     ; |402| 
           MV      .L2X    A14,B3            ; |402| 
;** --------------------------------------------------------------------------*
$C$L57:    

           LDDW    .D2T2   *++SP,B13:B12     ; |402| 
||         RET     .S2     B3                ; |402| 

           LDW     .D2T1   *++SP(8),A14      ; |402| 
           NOP             2
           MV      .L1     A7,A5             ; |401| 
           MV      .L1     A6,A4             ; |401| 
           ; BRANCH OCCURS {B3}              ; |402| 
	.sect	".text"
	.clink
	.global	_ZN17SVelocityPlanning17AdjustTimeToRoundEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::AdjustTimeToRound(DynamicInfo *)         *
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
;*   Local Frame Size  : 0 Args + 20 Auto + 56 Save = 76 byte                 *
;******************************************************************************
_ZN17SVelocityPlanning17AdjustTimeToRoundEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 295	-----------------------    (*dynamic_info).total_time = *((double * const)dynamic_info+72)+*((double * const)dynamic_info+80)+*((double * const)dynamic_info+88)+*((double * const)dynamic_info+96)+*((double * const)dynamic_info+104)+*((double * const)dynamic_info+112)+*((double * const)dynamic_info+120);
;** 297	-----------------------    U$30 = (*dynamic_info).total_time;
;** 297	-----------------------    if ( U$30 > (*this).__b_16VelocityPlanning.m_round_time_limit ) goto g6;
           STW     .D2T1   A11,*SP--(8)      ; |293| 
           STW     .D2T1   A10,*SP--(8)      ; |293| 
           STDW    .D2T2   B13:B12,*SP--     ; |293| 

           STDW    .D2T2   B11:B10,*SP--     ; |293| 
||         MV      .L2X    A4,B10            ; |293| 

           STDW    .D2T1   A15:A14,*SP--     ; |293| 
||         MV      .L1X    B4,A14            ; |293| 

           STDW    .D2T1   A13:A12,*SP--     ; |293| 
           STW     .D2T2   B3,*SP--(32)      ; |293| 
           LDDW    .D1T1   *+A14(72),A5:A4   ; |295| 
           LDDW    .D1T1   *+A14(80),A7:A6   ; |295| 
           ZERO    .L1     A11:A10           ; |221| 
           ZERO    .L2     B13:B12           ; |215| 
           NOP             2
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |295| 
           LDDW    .D1T1   *+A14(88),A7:A6   ; |295| 
           NOP             5
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |295| 
           LDDW    .D1T1   *+A14(96),A7:A6   ; |295| 
           NOP             5
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |295| 
           LDDW    .D1T1   *+A14(104),A7:A6  ; |295| 
           NOP             5
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |295| 
           LDDW    .D1T1   *+A14(112),A7:A6  ; |295| 
           NOP             5
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |295| 
           LDDW    .D1T1   *+A14(120),A7:A6  ; |295| 
           NOP             5
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |295| 
           NOP             6
           STDW    .D1T1   A5:A4,*+A14(176)  ; |295| 

           LDDW    .D1T1   *+A14(176),A5:A4  ; |297| 
||         LDDW    .D2T2   *+B10(24),B5:B4   ; |297| 

           NOP             4
           CMPGTDP .S2X    A5:A4,B5:B4,B0    ; |297| 
           NOP             1
   [ B0]   B       .S1     $C$L58            ; |297| 

   [!B0]   CALL    .S1     __c6xabi_divd     ; |221| 
|| [!B0]   LDDW    .D2T2   *+B10(8),B5:B4    ; |221| 

   [ B0]   CALL    .S1     __c6xabi_divd     ; |215| 
   [ B0]   LDDW    .D2T2   *+B10(8),B5:B4    ; |215| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L58}        ; |297| 
;** --------------------------------------------------------------------------*
;** 221	-----------------------    if ( modf(U$30/(*this).__b_16VelocityPlanning.m_interpolation_cycle, &y) > 0.0 ) goto g4;  // [18]
;** 221	-----------------------    R$1 = y;  // [18]
;** 221	-----------------------    goto g5;  // [18]
;**	-----------------------g4:
;** 221	-----------------------    R$1 = y+1.0;  // [18]
;**	-----------------------g5:
;** 317	-----------------------    *((double * const)dynamic_info+96) = *((double * const)dynamic_info+96)+((*this).__b_16VelocityPlanning.m_interpolation_cycle*R$1-(*dynamic_info).total_time);
;** 317	-----------------------    goto g10;
           ADDKPC  .S2     $C$RL94,B3,0      ; |221| 
$C$RL94:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |221| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     modf,B3
||         ADD     .L2     8,SP,B4           ; |221| 

$C$RL95:   ; CALL OCCURS {modf} {0}          ; |221| 
;** --------------------------------------------------------------------------*

           ZERO    .L2     B8                ; |221| 
||         LDDW    .D2T2   *+SP(8),B7:B6     ; |221| 

           CMPGTDP .S1     A5:A4,A11:A10,A0  ; |221| 
           ZERO    .L2     B9
           LDDW    .D2T2   *+SP(8),B5:B4     ; |221| 
           SET     .S2     B9,0x14,0x1d,B9
   [ A0]   ADDDP   .L2     B9:B8,B7:B6,B5:B4 ; |221| 
           LDDW    .D2T2   *+B10(8),B7:B6    ; |317| 
           LDDW    .D1T1   *+A14(176),A5:A4  ; |317| 
           LDDW    .D1T1   *+A14(72),A11:A10 ; |266| 
           LDDW    .D1T1   *+A14(96),A7:A6   ; |317| 
           LDDW    .D1T1   *A14,A13:A12      ; |322| 
           NOP             1
           MPYDP   .M2     B5:B4,B7:B6,B5:B4 ; |317| 
           STDW    .D1T1   A11:A10,*+A14(128) ; |266| 
           NOP             9
           SUBDP   .L1X    B5:B4,A5:A4,A5:A4 ; |317| 
           LDDW    .D1T2   *+A14(40),B5:B4   ; |322| 
           NOP             5
           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |317| 
           ADDDP   .L2     B5:B4,B5:B4,B5:B4 ; |322| 
           BNOP    .S1     $C$L59,4          ; |317| 
           STDW    .D1T1   A5:A4,*+A14(96)   ; |317| 
           ; BRANCH OCCURS {$C$L59}          ; |317| 
;** --------------------------------------------------------------------------*
$C$L58:    
;**	-----------------------g6:
;** 215	-----------------------    if ( modf(U$30/(*this).__b_16VelocityPlanning.m_interpolation_cycle, &y) < 0.0 ) goto g8;  // [17]
;** 215	-----------------------    R$2 = y;  // [17]
;** 215	-----------------------    goto g9;  // [17]
;**	-----------------------g8:
;** 215	-----------------------    R$2 = y-1.0;  // [17]
;**	-----------------------g9:
;** 302	-----------------------    C$22 = (*dynamic_info).total_time;
;** 302	-----------------------    ratio_time = (C$22-(*this).__b_16VelocityPlanning.m_interpolation_cycle*R$2)/C$22;
;** 304	-----------------------    C$21 = *((double * const)dynamic_info+72);
;** 304	-----------------------    round_time = C$21*ratio_time;
;** 305	-----------------------    *((double * const)dynamic_info+72) = C$21-round_time;
;** 306	-----------------------    C$20 = *((double * const)dynamic_info+80);
;** 306	-----------------------    *((double * const)dynamic_info+80) = C$20-C$20*ratio_time;
;** 307	-----------------------    *((double * const)dynamic_info+88) = *((double * const)dynamic_info+88)-round_time;
;** 308	-----------------------    C$19 = *((double * const)dynamic_info+96);
;** 308	-----------------------    *((double * const)dynamic_info+96) = C$19-C$19*ratio_time;
;** 309	-----------------------    C$18 = *((double * const)dynamic_info+104);
;** 309	-----------------------    round_time = C$18*ratio_time;
;** 310	-----------------------    *((double * const)dynamic_info+104) = C$18-round_time;
;** 311	-----------------------    C$17 = *((double * const)dynamic_info+112);
;** 311	-----------------------    *((double * const)dynamic_info+112) = C$17-C$17*ratio_time;
;** 312	-----------------------    *((double * const)dynamic_info+120) = *((double * const)dynamic_info+120)-round_time;
           ADDKPC  .S2     $C$RL97,B3,1      ; |215| 
$C$RL97:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |215| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     modf,B3
||         ADDAW   .D2     SP,4,B4           ; |215| 

$C$RL98:   ; CALL OCCURS {modf} {0}          ; |215| 
           LDDW    .D2T2   *+SP(16),B7:B6    ; |215| 
           ZERO    .L2     B9
           CMPLTDP .S1X    A5:A4,B13:B12,A0  ; |215| 
           SET     .S2     B9,0x14,0x1d,B9
           ZERO    .L2     B8                ; |215| 

           LDDW    .D2T2   *+SP(16),B5:B4    ; |215| 
|| [ A0]   SUBDP   .L2     B7:B6,B9:B8,B5:B4 ; |215| 

           LDDW    .D2T2   *+B10(8),B7:B6    ; |302| 
           LDDW    .D1T1   *+A14(176),A7:A6  ; |302| 
           NOP             4
           MPYDP   .M2     B5:B4,B7:B6,B5:B4 ; |302| 
           NOP             9
           NOP             1
           SUBDP   .L1X    A7:A6,B5:B4,A5:A4 ; |302| 
           MV      .L2X    A6,B4             ; |302| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A7,B5             ; |302| 

$C$RL99:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |302| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A14(104),A7:A6  ; |309| 
           LDDW    .D1T2   *+A14(96),B5:B4   ; |308| 
           LDDW    .D1T1   *+A14(72),A17:A16 ; |304| 
           LDDW    .D1T2   *+A14(80),B7:B6   ; |306| 
           LDDW    .D1T2   *+A14(112),B9:B8  ; |311| 
           MPYDP   .M1     A5:A4,A7:A6,A9:A8 ; |309| 
           MPYDP   .M2X    A5:A4,B5:B4,B19:B18 ; |308| 
           LDDW    .D1T1   *+A14(88),A21:A20 ; |307| 
           LDDW    .D1T1   *+A14(120),A23:A22 ; |312| 
           MPYDP   .M1     A5:A4,A17:A16,A19:A18 ; |304| 
           MPYDP   .M2X    A5:A4,B7:B6,B21:B20 ; |306| 
           LDDW    .D1T1   *A14,A13:A12      ; |322| 
           NOP             2
           MPYDP   .M2X    A5:A4,B9:B8,B17:B16 ; |311| 
           SUBDP   .L1     A7:A6,A9:A8,A7:A6 ; |310| 
           SUBDP   .L2     B5:B4,B19:B18,B5:B4 ; |308| 
           SUBDP   .L1     A23:A22,A9:A8,A5:A4 ; |312| 
           NOP             1
           SUBDP   .L1     A21:A20,A19:A18,A21:A20 ; |307| 
           SUBDP   .S1     A17:A16,A19:A18,A9:A8 ; |305| 
           SUBDP   .L2     B7:B6,B21:B20,B7:B6 ; |306| 
           STDW    .D1T1   A7:A6,*+A14(104)  ; |310| 
           STDW    .D1T2   B5:B4,*+A14(96)   ; |308| 
           SUBDP   .L2     B9:B8,B17:B16,B9:B8 ; |311| 
           LDDW    .D1T2   *+A14(40),B5:B4   ; |322| 
           STDW    .D1T1   A21:A20,*+A14(88) ; |307| 
           STDW    .D1T1   A9:A8,*+A14(72)   ; |305| 
           LDDW    .D1T1   *+A14(72),A11:A10 ; |266| 
           STDW    .D1T2   B7:B6,*+A14(80)   ; |306| 
           STDW    .D1T1   A5:A4,*+A14(120)  ; |312| 
           STDW    .D1T2   B9:B8,*+A14(112)  ; |311| 
           ADDDP   .L2     B5:B4,B5:B4,B5:B4 ; |322| 
           STDW    .D1T1   A11:A10,*+A14(128) ; |266| 
;** --------------------------------------------------------------------------*
$C$L59:    
;**	-----------------------g10:
;** 266	-----------------------    C$5 = *((double * const)dynamic_info+72);  // [11]
;** 266	-----------------------    *((double * const)dynamic_info+128) = C$16 = C$5;  // [11]
;** 267	-----------------------    C$7 = *((double * const)dynamic_info+80);  // [11]
;** 267	-----------------------    *((double * const)dynamic_info+136) = C$15 = C$16+C$7;  // [11]
;** 268	-----------------------    *((double * const)dynamic_info+144) = C$9 = C$15+*((double * const)dynamic_info+88);  // [11]
;** 269	-----------------------    C$12 = *((double * const)dynamic_info+96);  // [11]
;** 269	-----------------------    *((double * const)dynamic_info+152) = C$11 = C$9+C$12;  // [11]
;** 270	-----------------------    *((double * const)dynamic_info+160) = C$14 = C$11+*((double * const)dynamic_info+104);  // [11]
;** 271	-----------------------    *((double * const)dynamic_info+168) = C$13 = C$14+*((double * const)dynamic_info+112);  // [11]
;** 272	-----------------------    (*dynamic_info).total_time = C$13+*((double * const)dynamic_info+120);  // [11]
;** 322	-----------------------    U$98 = (*dynamic_info).fe;
;** 322	-----------------------    U$94 = (*dynamic_info).fs;
;** 322	-----------------------    C$10 = (*dynamic_info).total_time;
;** 322	-----------------------    C$8 = (*dynamic_info).distance;
;** 322	-----------------------    (*dynamic_info).f = (C$8+C$8-C$9*U$94-(C$10-C$11)*U$98)/(C$10+C$12);
;** 327	-----------------------    C$6 = C$5+C$7;
;** 327	-----------------------    if ( C$6 == 0.0 ) goto g13;
           LDDW    .D1T1   *+A14(80),A5:A4   ; |267| 
           LDDW    .D1T1   *+A14(96),A23:A22 ; |269| 
           NOP             3

           ADDDP   .L1     A5:A4,A11:A10,A17:A16 ; |267| 
||         MV      .L2X    A4,B11            ; |267| 

           MV      .L2X    A5,B10            ; |267| 
           LDDW    .D1T1   *+A14(88),A5:A4   ; |268| 
           NOP             4
           ADDDP   .L1     A5:A4,A17:A16,A7:A6 ; |268| 
           LDDW    .D1T1   *+A14(104),A5:A4  ; |270| 
           STDW    .D1T1   A17:A16,*+A14(136) ; |267| 
           NOP             4
           ADDDP   .L1     A23:A22,A7:A6,A9:A8 ; |269| 
           MPYDP   .M1     A13:A12,A7:A6,A27:A26 ; |322| 
           STDW    .D1T1   A7:A6,*+A14(144)  ; |268| 
           NOP             4
           ADDDP   .L1     A5:A4,A9:A8,A19:A18 ; |270| 
           LDDW    .D1T1   *+A14(112),A5:A4  ; |271| 
           STDW    .D1T1   A9:A8,*+A14(152)  ; |269| 
           NOP             4
           ADDDP   .L1     A5:A4,A19:A18,A21:A20 ; |271| 
           LDDW    .D1T1   *+A14(120),A5:A4  ; |272| 
           SUBDP   .L1X    B5:B4,A27:A26,A27:A26 ; |322| 
           STDW    .D1T1   A19:A18,*+A14(160) ; |270| 
           NOP             3
           ADDDP   .L1     A5:A4,A21:A20,A5:A4 ; |272| 
           STDW    .D1T1   A21:A20,*+A14(168) ; |271| 
           NOP             5
           STDW    .D1T1   A5:A4,*+A14(176)  ; |272| 
           LDDW    .D1T1   *+A14(176),A25:A24 ; |322| 
           LDDW    .D1T1   *+A14(8),A5:A4    ; |322| 
           NOP             3
           SUBDP   .L1     A25:A24,A9:A8,A29:A28 ; |322| 
           MV      .S1     A5,A15            ; |322| 
           MV      .L2X    A4,B12            ; |322| 
           ADDDP   .L1     A23:A22,A25:A24,A23:A22 ; |322| 
           NOP             3
           MPYDP   .M1     A5:A4,A29:A28,A5:A4 ; |322| 
           NOP             9
           SUBDP   .L1     A27:A26,A5:A4,A5:A4 ; |322| 
           CALL    .S1     __c6xabi_divd     ; |322| 
           MV      .L2X    A22,B4            ; |322| 
           MV      .L2X    A23,B5            ; |322| 
           ADDKPC  .S2     $C$RL100,B3,2     ; |322| 
$C$RL100:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |322| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B11,A6            ; |322| 
           MV      .L1X    B10,A7            ; |322| 
           ADDDP   .S1     A7:A6,A11:A10,A7:A6 ; |327| 
           ZERO    .L2     B5:B4             ; |329| 
           STDW    .D1T1   A5:A4,*+A14(16)   ; |322| 
           ZERO    .L1     A9:A8             ; |327| 
           CMPEQDP .S2X    A11:A10,B5:B4,B10 ; |329| 
           NOP             2
           CMPEQDP .S1     A7:A6,A9:A8,A0    ; |327| 
           MV      .L2X    A7,B5             ; |328| 

   [ A0]   BNOP    .S1     $C$L60,4          ; |327| 
|| [!A0]   LDDW    .D1T1   *+A14(16),A5:A4   ; |328| 
||         MV      .L2X    A6,B4             ; |328| 

           SUBDP   .L1     A5:A4,A13:A12,A5:A4 ; |328| 
           ; BRANCHCC OCCURS {$C$L60}        ; |327| 
;** --------------------------------------------------------------------------*
;** 328	-----------------------    (*dynamic_info).acceleration = ((*dynamic_info).f-U$94)/C$6;
;** 329	-----------------------    if ( C$5 == 0.0 ) goto g13;
           CALL    .S1     __c6xabi_divd     ; |328| 
           ADDKPC  .S2     $C$RL101,B3,4     ; |328| 
$C$RL101:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |328| 
;** --------------------------------------------------------------------------*

           MV      .L1X    B10,A0            ; |330| 
||         STDW    .D1T1   A5:A4,*+A14(48)   ; |328| 
||         MV      .L2X    A11,B5            ; |330| 

   [ A0]   B       .S1     $C$L61            ; |329| 
|| [ A0]   LDDW    .D1T1   *+A14(112),A5:A4  ; |336| 
||         MV      .L2X    A10,B4            ; |330| 

   [!A0]   CALL    .S1     __c6xabi_divd     ; |330| 
|| [ A0]   LDDW    .D1T1   *+A14(104),A11:A10 ; |336| 

   [!A0]   LDDW    .D1T1   *+A14(48),A5:A4   ; |330| 
           MVK     .S1     288,A3            ; |330| 
           ADD     .L1     A3,A14,A12        ; |330| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L61}        ; |329| 
;** --------------------------------------------------------------------------*
;** 330	-----------------------    (*dynamic_info).Ja = (*dynamic_info).acceleration/C$5;
           ADDKPC  .S2     $C$RL102,B3,0     ; |330| 
$C$RL102:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |330| 
;** --------------------------------------------------------------------------*
           STDW    .D1T1   A5:A4,*A12        ; |330| 
;** --------------------------------------------------------------------------*
$C$L60:    
           LDDW    .D1T1   *+A14(104),A11:A10 ; |336| 
           NOP             1
           LDDW    .D1T1   *+A14(112),A5:A4  ; |336| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L61:    
;**	-----------------------g13:
;** 336	-----------------------    C$3 = *((double * const)dynamic_info+104);
;** 336	-----------------------    C$4 = C$3+*((double * const)dynamic_info+112);
;** 336	-----------------------    if ( C$4 == 0.0 ) goto g16;
           ADDDP   .S1     A5:A4,A11:A10,A5:A4 ; |336| 
           ZERO    .L2     B5:B4             ; |338| 
           CMPEQDP .S2X    A11:A10,B5:B4,B4  ; |338| 
           ZERO    .L1     A7:A6             ; |336| 
           NOP             2
           MV      .L1X    B4,A13            ; |338| 
           CMPEQDP .S1     A5:A4,A7:A6,A0    ; |336| 
           MV      .L2X    A4,B4             ; |337| 

   [ A0]   BNOP    .S2     $C$L62,4          ; |336| 
||         MV      .L2X    A5,B5             ; |337| 
|| [!A0]   LDDW    .D1T1   *+A14(16),A5:A4   ; |337| 
|| [!A0]   MV      .L1     A15,A7
|| [!A0]   MV      .S1X    B12,A6

           SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |337| 
           ; BRANCHCC OCCURS {$C$L62}        ; |336| 
;** --------------------------------------------------------------------------*
;** 337	-----------------------    (*dynamic_info).deceleration = ((*dynamic_info).f-U$98)/C$4;
;** 338	-----------------------    if ( C$3 == 0.0 ) goto g16;
           CALL    .S1     __c6xabi_divd     ; |337| 
           ADDKPC  .S2     $C$RL103,B3,4     ; |337| 
$C$RL103:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |337| 
;** --------------------------------------------------------------------------*

           MV      .L1     A13,A0            ; |339| 
||         STDW    .D1T1   A5:A4,*+A14(56)   ; |337| 
||         MVK     .S1     296,A3            ; |339| 
||         MV      .L2X    A11,B5            ; |339| 

   [ A0]   B       .S1     $C$L63            ; |338| 
|| [!A0]   LDDW    .D1T1   *+A14(56),A5:A4   ; |339| 
||         ADD     .L1     A3,A14,A12        ; |339| 
||         MV      .L2X    A10,B4            ; |339| 
|| [ A0]   LDW     .D2T2   *++SP(32),B3      ; |342| 

   [!A0]   CALL    .S1     __c6xabi_divd     ; |339| 
|| [ A0]   LDDW    .D2T1   *++SP,A13:A12     ; |342| 

   [ A0]   LDDW    .D2T1   *++SP,A15:A14     ; |342| 
   [ A0]   LDDW    .D2T2   *++SP,B11:B10     ; |342| 
   [ A0]   LDDW    .D2T2   *++SP,B13:B12     ; |342| 

   [ A0]   RET     .S2     B3                ; |342| 
|| [ A0]   LDW     .D2T1   *++SP(8),A10      ; |342| 

           ; BRANCHCC OCCURS {$C$L63}        ; |338| 
;** --------------------------------------------------------------------------*
;** 339	-----------------------    (*dynamic_info).Jd = (*dynamic_info).deceleration/C$3;
;**	-----------------------g16:
;**  	-----------------------    return;
           ADDKPC  .S2     $C$RL104,B3,0     ; |339| 
$C$RL104:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |339| 
;** --------------------------------------------------------------------------*
           STDW    .D1T1   A5:A4,*A12        ; |339| 
;** --------------------------------------------------------------------------*
$C$L62:    
           LDW     .D2T2   *++SP(32),B3      ; |342| 
           LDDW    .D2T1   *++SP,A13:A12     ; |342| 
           LDDW    .D2T1   *++SP,A15:A14     ; |342| 
           LDDW    .D2T2   *++SP,B11:B10     ; |342| 
           LDDW    .D2T2   *++SP,B13:B12     ; |342| 

           RET     .S2     B3                ; |342| 
||         LDW     .D2T1   *++SP(8),A10      ; |342| 

;** --------------------------------------------------------------------------*
$C$L63:    
           LDW     .D2T1   *++SP(8),A11      ; |342| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |342| 
	.sect	".text"
	.clink
	.global	_ZN17SVelocityPlanning15GetCurveContourEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::GetCurveContour(DynamicInfo *)           *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,B0,B1,B5,B6,B7,B8,B9,B16,B17,B18,B19  *
;*   Regs Used         : A3,A4,A5,A6,A7,B0,B1,B3,B4,B5,B6,B7,B8,B9,B16,B17,   *
;*                           B18,B19                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN17SVelocityPlanning15GetCurveContourEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 100	-----------------------    (*dynamic_info).is_acc_positive = (*dynamic_info).f > (*dynamic_info).fs;
;** 101	-----------------------    (*dynamic_info).is_dec_positive = (*dynamic_info).f > (*dynamic_info).fe;
;** 103	-----------------------    max_acc = (*dynamic_info).acceleration;
;** 106	-----------------------    if ( (*dynamic_info).is_acc_positive ) goto g3;
;** 107	-----------------------    (*dynamic_info).acceleration = -(*dynamic_info).deceleration;
;** 108	-----------------------    (*dynamic_info).Ja = -(*dynamic_info).Ja;
;**	-----------------------g3:
;** 111	-----------------------    if ( (*dynamic_info).is_dec_positive ) goto g5;
;** 112	-----------------------    (*dynamic_info).deceleration = -max_acc;
;** 113	-----------------------    (*dynamic_info).Jd = -(*dynamic_info).Jd;
;**	-----------------------g5:
;**  	-----------------------    return;
           LDDW    .D2T2   *+B4(8),B9:B8     ; |101| 
           LDDW    .D2T2   *+B4(16),B17:B16  ; |101| 
           LDDW    .D2T2   *B4,B7:B6         ; |100| 
           LDDW    .D2T1   *+B4(16),A5:A4    ; |100| 
           MVK     .S1     296,A7            ; |113| 
           NOP             2
           CMPGTDP .S2     B17:B16,B9:B8,B5  ; |101| 
           CMPGTDP .S1X    A5:A4,B7:B6,A3    ; |100| 
           MVK     .S2     64,B6             ; |100| 

           STB     .D2T1   A3,*+B4[B6]       ; |100| 
||         MVK     .S2     65,B6             ; |101| 

           STB     .D2T2   B5,*+B4[B6]       ; |101| 
||         MVK     .S2     64,B5             ; |106| 

           LDB     .D2T2   *+B4[B5],B0       ; |106| 
||         MV      .L2     B6,B5             ; |106| 

           LDB     .D2T2   *+B4[B5],B1       ; |111| 
           MVK     .S1     288,A3            ; |108| 
           MVK     .S2     296,B5            ; |113| 
           ADD     .L1X    A3,B4,A3          ; |108| 

           LDDW    .D2T2   *+B4(48),B9:B8    ; |103| 
||         ADD     .L2     B5,B4,B5          ; |113| 

   [!B0]   LDDW    .D1T1   *A3,A5:A4         ; |108| 
|| [!B1]   LDDW    .D2T2   *B5,B19:B18       ; |113| 

           ZERO    .L1     A3                ; |112| 

   [!B0]   LDDW    .D2T2   *+B4(56),B7:B6    ; |107| 
||         SET     .S1     A3,31,31,A6       ; |112| 

           RET     .S2     B3                ; |115| 

           ZERO    .L2     B5                ; |112| 
||         XOR     .D2X    B9,A6,B9          ; |112| 
||         MVK     .S2     288,B17           ; |108| 

           MV      .L1     A3,A6             ; |112| 
||         SET     .S1     A3,31,31,A3       ; |107| 
||         SET     .S2     B5,31,31,B5       ; |108| 
|| [!B0]   MV      .L2X    A4,B16            ; |108| 
|| [!B1]   MV      .D1X    B18,A4            ; |113| 

   [!B0]   XOR     .L2X    A5,B5,B17         ; |108| 
||         ADD     .S2     B17,B4,B5         ; |108| 
||         SET     .S1     A6,31,31,A5       ; |113| 
||         ADD     .L1X    A7,B4,A6          ; |113| 
|| [!B1]   STDW    .D2T2   B9:B8,*+B4(56)    ; |112| 

   [!B1]   XOR     .L1X    B19,A5,A5         ; |113| 
|| [!B0]   XOR     .L2X    B7,A3,B7          ; |107| 
|| [!B0]   STDW    .D2T2   B17:B16,*B5       ; |108| 

   [!B1]   STDW    .D1T1   A5:A4,*A6         ; |113| 
|| [!B0]   STDW    .D2T2   B7:B6,*+B4(48)    ; |107| 

           ; BRANCH OCCURS {B3}              ; |115| 
	.sect	".text"
	.clink
	.global	_ZN17SVelocityPlanning11GetDistanceEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::GetDistance(DynamicInfo *)               *
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
;*   Local Frame Size  : 0 Args + 20 Auto + 56 Save = 76 byte                 *
;******************************************************************************
_ZN17SVelocityPlanning11GetDistanceEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 53	-----------------------    U$6 = *((double * const)dynamic_info+128);
;** 53	-----------------------    U$3 = (*dynamic_info).current_time;
;** 53	-----------------------    if ( U$3 >= U$6 ) goto g3;

           STW     .D2T1   A11,*SP--(8)      ; |49| 
||         MVKL    .S1     0x3fc55555,A11
||         ZERO    .L2     B5
||         MV      .L1     A4,A3             ; |49| 

           STW     .D2T1   A10,*SP--(8)      ; |49| 
||         MVKL    .S1     0x55572a75,A10
||         MVKH    .S2     0x40080000,B5

           STDW    .D2T2   B13:B12,*SP--     ; |49| 
||         MVKH    .S1     0x55572a75,A10

           STDW    .D2T2   B11:B10,*SP--     ; |49| 
           STDW    .D2T1   A15:A14,*SP--     ; |49| 
           STDW    .D2T1   A13:A12,*SP--     ; |49| 
           STW     .D2T2   B3,*SP--(32)      ; |49| 
           LDDW    .D2T2   *+B4(128),B17:B16 ; |53| 
           LDDW    .D2T2   *+B4(184),B7:B6   ; |53| 
           MV      .L1X    B4,A14            ; |49| 
           MVK     .S2     288,B4            ; |55| 
           ADD     .L2X    B4,A14,B12        ; |55| 
           ZERO    .L2     B4                ; |55| 

           MV      .L2     B6,B10            ; |54| 
||         CMPLTDP .S2     B7:B6,B17:B16,B0  ; |53| 

           MV      .L2     B7,B11            ; |54| 

   [!B0]   MV      .L2X    A14,B4
|| [!B0]   B       .S1     $C$L64            ; |53| 
|| [!B0]   SUBDP   .S2     B7:B6,B17:B16,B11:B10 ; |58| 

   [!B0]   LDDW    .D2T2   *+B4(136),B9:B8   ; |56| 
   [ B0]   CALL    .S1     pow               ; |55| 
           MVKH    .S1     0x3fc55555,A11
           MV      .L1X    B7,A5             ; |54| 
           MV      .L1X    B6,A4             ; |54| 
           ; BRANCHCC OCCURS {$C$L64}        ; |53| 
;** --------------------------------------------------------------------------*
;** 54	-----------------------    relative_time = U$3;
;** 55	-----------------------    l = (*dynamic_info).ls+(*dynamic_info).fs*relative_time+(*dynamic_info).Ja*pow(relative_time, 3.0)*0.166666666669999991024;
;** 80	-----------------------    return l;
           NOP             1
           ADDKPC  .S2     $C$RL105,B3,0     ; |55| 
$C$RL105:  ; CALL OCCURS {pow} {0}           ; |55| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *B12,B5:B4        ; |55| 
           MV      .L2X    A14,B6
           LDDW    .D2T2   *B6,B7:B6         ; |55| 
           NOP             2
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |55| 
           NOP             1
           MPYDP   .M2     B11:B10,B7:B6,B5:B4 ; |55| 
           NOP             3
           MV      .L2X    A14,B6
           LDDW    .D2T2   *+B6(24),B7:B6    ; |55| 
           LDW     .D2T2   *++SP(32),B3      ; |81| 
           LDDW    .D2T1   *++SP,A13:A12     ; |81| 
           MPYDP   .M1     A11:A10,A5:A4,A5:A4 ; |55| 
           LDDW    .D2T1   *++SP,A15:A14     ; |81| 
           ADDDP   .L2     B5:B4,B7:B6,B5:B4 ; |55| 
           LDDW    .D2T2   *++SP,B11:B10     ; |81| 
           LDDW    .D2T2   *++SP,B13:B12     ; |81| 
           LDW     .D2T1   *++SP(8),A10      ; |81| 
           LDW     .D2T1   *++SP(8),A11      ; |81| 
           NOP             3
           ADDDP   .L1X    A5:A4,B5:B4,A5:A4 ; |55| 
           RETNOP  .S2     B3,5              ; |81| 
           ; BRANCH OCCURS {B3}              ; |81| 
;** --------------------------------------------------------------------------*
$C$L64:    
;**	-----------------------g3:
;** 56	-----------------------    U$20 = *((double * const)dynamic_info+136);
;** 56	-----------------------    if ( U$3 >= U$20 ) goto g5;

           CMPLTDP .S2     B7:B6,B9:B8,B0    ; |56| 
||         ZERO    .L2     B4                ; |58| 
||         ZERO    .D2     B5

           MV      .L1X    B10,A4            ; |58| 

   [!B0]   B       .S1     $C$L65            ; |56| 
|| [!B0]   MV      .S2X    A14,B4
||         MV      .L1X    B11,A5            ; |58| 
|| [!B0]   SUBDP   .L2     B7:B6,B9:B8,B11:B10 ; |61| 

   [ B0]   CALL    .S1     pow               ; |58| 
|| [!B0]   LDDW    .D2T2   *+B4(144),B17:B16 ; |59| 

           ZERO    .L2     B12               ; |58| 
           ZERO    .L2     B13
           SET     .S2     B5,0x1e,0x1e,B5
           SET     .S2     B13,0x15,0x1d,B13
           ; BRANCHCC OCCURS {$C$L65}        ; |56| 
;** --------------------------------------------------------------------------*
;** 58	-----------------------    C$81 = U$3-U$6;
;** 58	-----------------------    l = *((double * const)dynamic_info+240)+*((double * const)dynamic_info+192)*C$81+(*dynamic_info).acceleration*0.5*pow(C$81, 2.0);
;** 80	-----------------------    return l;
           ADDKPC  .S2     $C$RL106,B3,0     ; |58| 
$C$RL106:  ; CALL OCCURS {pow} {0}           ; |58| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A14,B4            ; |58| 
           LDDW    .D2T2   *+B4(48),B5:B4    ; |58| 
           MV      .L2X    A14,B6
           LDDW    .D2T1   *+B6(192),A7:A6   ; |58| 
           LDDW    .D2T2   *+B6(240),B7:B6   ; |58| 
           LDW     .D2T2   *++SP(32),B3      ; |81| 
           MPYDP   .M2     B13:B12,B5:B4,B5:B4 ; |58| 
           LDDW    .D2T1   *++SP,A13:A12     ; |81| 
           MPYDP   .M1X    B11:B10,A7:A6,A7:A6 ; |58| 
           LDDW    .D2T1   *++SP,A15:A14     ; |81| 
           LDDW    .D2T2   *++SP,B11:B10     ; |81| 
           LDDW    .D2T2   *++SP,B13:B12     ; |81| 
           LDW     .D2T1   *++SP(8),A10      ; |81| 
           LDW     .D2T1   *++SP(8),A11      ; |81| 
           NOP             3
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |58| 
           NOP             1
           ADDDP   .L2X    A7:A6,B7:B6,B5:B4 ; |58| 
           NOP             7
           ADDDP   .L1X    A5:A4,B5:B4,A5:A4 ; |58| 
           RETNOP  .S2     B3,5              ; |81| 
           ; BRANCH OCCURS {B3}              ; |81| 
;** --------------------------------------------------------------------------*
$C$L65:    
;**	-----------------------g5:
;** 59	-----------------------    U$38 = *((double * const)dynamic_info+144);
;** 59	-----------------------    if ( U$3 >= U$38 ) goto g7;

           CMPLTDP .S2     B7:B6,B17:B16,B0  ; |59| 
||         MV      .D2     B12,B4            ; |59| 

           MV      .L2     B12,B31           ; |61| 
||         MV      .L1X    B10,A4            ; |61| 
||         STW     .D2T1   A10,*+SP(12)      ; |61| 

   [!B0]   B       .S1     $C$L66            ; |59| 
|| [!B0]   MV      .L2X    A14,B4
||         MVK     .S2     288,B30           ; |61| 
||         MV      .L1X    B11,A5            ; |61| 
||         STW     .D2T2   B31,*+SP(4)       ; |61| 

   [ B0]   CALL    .S1     pow               ; |61| 
|| [!B0]   LDDW    .D2T2   *+B4(152),B19:B18 ; |63| 

           ADD     .L2X    B30,A14,B8        ; |61| 
           STW     .D2T2   B8,*+SP(20)       ; |61| 
           STW     .D2T1   A11,*+SP(16)      ; |61| 
           STW     .D2T2   B13,*+SP(8)       ; |61| 
           ; BRANCHCC OCCURS {$C$L66}        ; |59| 
;** --------------------------------------------------------------------------*
;** 61	-----------------------    C$80 = U$3-U$20;
;** 61	-----------------------    l = *((double * const)dynamic_info+248)+*((double * const)dynamic_info+200)*C$80+(*dynamic_info).acceleration*0.5*pow(C$80, 2.0)-(*dynamic_info).Ja*pow(C$80, 3.0)*0.166666666669999991024;
;** 80	-----------------------    return l;
           ADDKPC  .S2     $C$RL107,B3,0     ; |61| 
$C$RL107:  ; CALL OCCURS {pow} {0}           ; |61| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A14,B4            ; |61| 
           LDDW    .D2T2   *+B4(48),B13:B12  ; |61| 
           LDDW    .D2T1   *+B4(200),A11:A10 ; |61| 
           LDDW    .D2T2   *+B4(248),B5:B4   ; |61| 
           MV      .L1     A4,A12            ; |61| 
           MV      .L1X    B10,A4            ; |61| 
           MV      .L1     A5,A13            ; |61| 
           MV      .L1X    B11,A5            ; |61| 

           MV      .L1X    B5,A14            ; |61| 
||         ZERO    .L2     B5

           MVKH    .S2     0x40080000,B5

           CALLP   .S2     pow,B3
||         MV      .L1X    B4,A15            ; |61| 
||         ZERO    .L2     B4                ; |61| 

$C$RL108:  ; CALL OCCURS {pow} {0}           ; |61| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(4),B4        ; |61| 
           LDW     .D2T2   *+SP(8),B5        ; |61| 
           LDW     .D2T2   *+SP(20),B6
           MPYDP   .M1X    B11:B10,A11:A10,A7:A6 ; |61| 
           NOP             2
           MPYDP   .M2     B5:B4,B13:B12,B5:B4 ; |61| 
           LDDW    .D2T2   *B6,B7:B6         ; |61| 
           NOP             8
           MPYDP   .M2X    A5:A4,B7:B6,B7:B6 ; |61| 
           MPYDP   .M1X    A13:A12,B5:B4,A5:A4 ; |61| 
           NOP             2
           MV      .L2X    A15,B4
           MV      .L2X    A14,B5

           ADDDP   .L2X    A7:A6,B5:B4,B5:B4 ; |61| 
||         LDW     .D2T1   *+SP(16),A7

           LDW     .D2T1   *+SP(12),A6
           LDW     .D2T2   *++SP(32),B3      ; |81| 
           LDDW    .D2T1   *++SP,A13:A12     ; |81| 
           LDDW    .D2T1   *++SP,A15:A14     ; |81| 
           LDDW    .D2T2   *++SP,B11:B10     ; |81| 
           MPYDP   .M2X    A7:A6,B7:B6,B7:B6 ; |61| 
           LDDW    .D2T2   *++SP,B13:B12     ; |81| 
           LDW     .D2T1   *++SP(8),A10      ; |81| 
           LDW     .D2T1   *++SP(8),A11      ; |81| 
           ADDDP   .L2X    A5:A4,B5:B4,B5:B4 ; |61| 
           NOP             6
           SUBDP   .L2     B5:B4,B7:B6,B5:B4 ; |61| 
           NOP             3
           RETNOP  .S2     B3,3              ; |81| 
           MV      .L1X    B5,A5             ; |80| 
           MV      .L1X    B4,A4             ; |80| 
           ; BRANCH OCCURS {B3}              ; |81| 
;** --------------------------------------------------------------------------*
$C$L66:    
;**	-----------------------g7:
;** 63	-----------------------    U$52 = *((double * const)dynamic_info+152);
;** 63	-----------------------    if ( U$3 >= U$52 ) goto g9;
;** 80	-----------------------    C$79 = (double * const)dynamic_info+208;
;** 80	-----------------------    return C$79[6]+*C$79*(U$3-U$38);

           MV      .D2X    A14,B8            ; |63| 
||         SUBDP   .L2     B7:B6,B17:B16,B5:B4 ; |80| 
||         CMPLTDP .S2     B7:B6,B19:B18,B0  ; |63| 

           ADDAD   .D2     B8,26,B31         ; |80| 
   [ B0]   LDDW    .D2T2   *B31,B9:B8        ; |80| 
   [!B0]   SUBDP   .L2     B7:B6,B19:B18,B11:B10 ; |68| 
   [ B0]   LDDW    .D2T1   *+B31(48),A7:A6   ; |80| 
           NOP             2
   [ B0]   MPYDP   .M2     B5:B4,B9:B8,B5:B4 ; |80| 
   [!B0]   MV      .S2X    A14,B4
   [!B0]   LDDW    .D2T2   *+B4(160),B9:B8   ; |66| 
           NOP             3
   [ B0]   BNOP    .S1     $C$L69,4          ; |80| 

   [ B0]   ADDDP   .L1X    B5:B4,A7:A6,A5:A4 ; |80| 
||         CMPLTDP .S2     B7:B6,B9:B8,B0    ; |66| 

           ; BRANCHCC OCCURS {$C$L69}        ; |80| 
;** --------------------------------------------------------------------------*
;**	-----------------------g9:
;** 66	-----------------------    U$66 = *((double * const)dynamic_info+160);
;** 66	-----------------------    if ( U$3 >= U$66 ) goto g11;

           ZERO    .L2     B4                ; |68| 
||         MV      .D2X    A14,B5            ; |68| 

   [!B0]   MV      .L2X    A14,B4            ; |71| 
||         ADDAD   .D2     B5,27,B12         ; |68| 
||         MVK     .S2     296,B31           ; |68| 

   [!B0]   BNOP    .S1     $C$L67,2          ; |66| 
|| [!B0]   LDDW    .D2T2   *+B4(168),B17:B16 ; |69| 
||         ZERO    .L2     B5
||         ADD     .S2X    B31,A14,B13       ; |68| 

           MVKH    .S2     0x40080000,B5
           MV      .L1X    B11,A5            ; |68| 

           MV      .L1X    B10,A4            ; |68| 
|| [!B0]   SUBDP   .L2     B7:B6,B9:B8,B11:B10 ; |71| 

           ; BRANCHCC OCCURS {$C$L67}        ; |66| 
;** --------------------------------------------------------------------------*
;** 68	-----------------------    C$78 = U$3-U$52;
;** 68	-----------------------    C$77 = (double * const)dynamic_info+216;
;** 68	-----------------------    l = C$77[6]+*C$77*C$78-(*dynamic_info).Jd*pow(C$78, 3.0)*0.166666666669999991024;
;** 80	-----------------------    return l;
           CALL    .S1     pow               ; |68| 
           ADDKPC  .S2     $C$RL109,B3,4     ; |68| 
$C$RL109:  ; CALL OCCURS {pow} {0}           ; |68| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *B13,B5:B4        ; |68| 
           LDDW    .D2T2   *B12,B7:B6        ; |68| 
           NOP             3
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |68| 
           MPYDP   .M2     B11:B10,B7:B6,B5:B4 ; |68| 
           LDDW    .D2T2   *+B12(48),B7:B6   ; |68| 
           LDW     .D2T2   *++SP(32),B3      ; |81| 
           LDDW    .D2T1   *++SP,A13:A12     ; |81| 
           LDDW    .D2T1   *++SP,A15:A14     ; |81| 
           LDDW    .D2T2   *++SP,B11:B10     ; |81| 
           LDDW    .D2T2   *++SP,B13:B12     ; |81| 
           NOP             2
           MPYDP   .M1     A11:A10,A5:A4,A5:A4 ; |68| 
           ADDDP   .L2     B5:B4,B7:B6,B5:B4 ; |68| 
           LDW     .D2T1   *++SP(8),A10      ; |81| 
           LDW     .D2T1   *++SP(8),A11      ; |81| 
           NOP             6
           SUBDP   .L1X    B5:B4,A5:A4,A5:A4 ; |68| 
           RETNOP  .S2     B3,5              ; |81| 
           ; BRANCH OCCURS {B3}              ; |81| 
;** --------------------------------------------------------------------------*
$C$L67:    
;**	-----------------------g11:
;** 69	-----------------------    U$81 = *((double * const)dynamic_info+168);
;** 69	-----------------------    if ( U$3 >= U$81 ) goto g13;

           CMPLTDP .S2     B7:B6,B17:B16,B0  ; |69| 
||         ADDAD   .D2     B4,28,B4          ; |71| 

           ZERO    .L2     B5
||         LDW     .D2T2   *+SP(8),B13       ; |69| 

           MV      .L1X    B4,A12            ; |71| 
||         ZERO    .L2     B4                ; |71| 
||         SET     .S2     B5,0x1e,0x1e,B5
||         ZERO    .D2     B12               ; |71| 

   [!B0]   BNOP    .S1     $C$L68,2          ; |69| 
|| [!B0]   MV      .L2X    A14,B4

   [!B0]   LDDW    .D2T2   *+B4(176),B9:B8   ; |72| 

   [ B0]   CALL    .S1     pow               ; |71| 
||         MV      .L1X    B10,A4            ; |71| 

           MV      .L1X    B11,A5            ; |71| 
|| [!B0]   LDDW    .D1T1   *+A3(16),A5:A4    ; |72| 

           ; BRANCHCC OCCURS {$C$L68}        ; |69| 
;** --------------------------------------------------------------------------*
;** 71	-----------------------    C$76 = U$3-U$66;
;** 71	-----------------------    C$75 = (double * const)dynamic_info+224;
;** 71	-----------------------    l = C$75[6]+*C$75*C$76-(*dynamic_info).deceleration*0.5*pow(C$76, 2.0);
;** 80	-----------------------    return l;
           ADDKPC  .S2     $C$RL110,B3,3     ; |71| 
$C$RL110:  ; CALL OCCURS {pow} {0}           ; |71| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A14,B4            ; |71| 
           LDDW    .D2T2   *+B4(56),B5:B4    ; |71| 
           MV      .L2X    A12,B6
           LDDW    .D2T1   *B6,A7:A6         ; |71| 
           LDDW    .D2T2   *+B6(48),B7:B6    ; |71| 
           LDW     .D2T2   *++SP(32),B3      ; |81| 
           MPYDP   .M2     B13:B12,B5:B4,B5:B4 ; |71| 
           LDDW    .D2T1   *++SP,A13:A12     ; |81| 
           MPYDP   .M1X    B11:B10,A7:A6,A7:A6 ; |71| 
           LDDW    .D2T1   *++SP,A15:A14     ; |81| 
           LDDW    .D2T2   *++SP,B11:B10     ; |81| 
           LDDW    .D2T2   *++SP,B13:B12     ; |81| 
           LDW     .D2T1   *++SP(8),A10      ; |81| 
           LDW     .D2T1   *++SP(8),A11      ; |81| 
           NOP             3
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |71| 
           NOP             1
           ADDDP   .L2X    A7:A6,B7:B6,B5:B4 ; |71| 
           NOP             7
           SUBDP   .L1X    B5:B4,A5:A4,A5:A4 ; |71| 
           RETNOP  .S2     B3,5              ; |81| 
           ; BRANCH OCCURS {B3}              ; |81| 
;** --------------------------------------------------------------------------*
$C$L68:    
;**	-----------------------g13:
;** 72	-----------------------    if ( U$3 >= (*dynamic_info).total_time-(*this).__b_16VelocityPlanning.m_half_interpolation_cycle ) goto g15;

           ADDAD   .D2     B4,29,B4          ; |74| 
||         MVK     .S2     296,B30           ; |74| 

           SUBDP   .S2     B7:B6,B17:B16,B11:B10 ; |74| 
           MV      .L2     B12,B31           ; |74| 
           ADD     .L2X    B30,A14,B16       ; |74| 
           SUBDP   .L2X    B9:B8,A5:A4,B9:B8 ; |72| 
           MV      .L1X    B4,A15            ; |74| 
           STW     .D2T2   B16,*+SP(12)      ; |74| 
           MV      .L2     B12,B4            ; |72| 
           STW     .D2T2   B31,*+SP(16)      ; |74| 
           STW     .D2T1   A10,*+SP(4)       ; |74| 
           STW     .D2T1   A11,*+SP(8)       ; |74| 
           CMPLTDP .S2     B7:B6,B9:B8,B0    ; |72| 
           STW     .D2T2   B13,*+SP(20)      ; |74| 
   [!B0]   B       .S1     $C$L69            ; |72| 
   [ B0]   CALL    .S1     pow               ; |74| 
           MV      .L1X    B11,A5            ; |74| 
           MV      .L1X    B10,A4            ; |74| 
   [!B0]   MV      .L2X    A14,B4
   [!B0]   LDDW    .D2T1   *+B4(32),A5:A4    ; |78| 
           ; BRANCHCC OCCURS {$C$L69}        ; |72| 
;** --------------------------------------------------------------------------*
;** 74	-----------------------    C$74 = U$3-U$81;
;** 74	-----------------------    C$73 = (double * const)dynamic_info+232;
;** 74	-----------------------    l = C$73[6]+*C$73*C$74-(*dynamic_info).deceleration*0.5*pow(C$74, 2.0)+(*dynamic_info).Jd*pow(C$74, 3.0)*0.166666666669999991024;
;** 80	-----------------------    return l;
           ADDKPC  .S2     $C$RL112,B3,0     ; |74| 
$C$RL112:  ; CALL OCCURS {pow} {0}           ; |74| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A14,B4            ; |74| 

           LDDW    .D2T2   *+B4(56),B13:B12  ; |74| 
||         MV      .L2X    A15,B4            ; |74| 

           LDDW    .D2T1   *B4,A13:A12       ; |74| 
           LDDW    .D2T2   *+B4(48),B5:B4    ; |74| 
           MV      .L1     A4,A10            ; |74| 
           MV      .L1X    B10,A4            ; |74| 
           MV      .L1     A5,A11            ; |74| 
           MV      .L1X    B11,A5            ; |74| 

           MV      .L1X    B5,A14            ; |74| 
||         ZERO    .L2     B5

           MVKH    .S2     0x40080000,B5

           CALLP   .S2     pow,B3
||         MV      .L1X    B4,A15            ; |74| 
||         ZERO    .L2     B4                ; |74| 

$C$RL111:  ; CALL OCCURS {pow} {0}           ; |74| 
;** --------------------------------------------------------------------------*
;**	-----------------------g15:
;** 78	-----------------------    return (*dynamic_info).le;
           LDW     .D2T2   *+SP(16),B4       ; |74| 
           LDW     .D2T2   *+SP(20),B5       ; |74| 
           MPYDP   .M1X    B11:B10,A13:A12,A9:A8 ; |74| 
           NOP             3

           MPYDP   .M2     B5:B4,B13:B12,B7:B6 ; |74| 
||         LDW     .D2T2   *+SP(12),B4

           NOP             4
           LDDW    .D2T2   *B4,B5:B4         ; |74| 
           NOP             4
           MPYDP   .M2X    A5:A4,B5:B4,B9:B8 ; |74| 
           MPYDP   .M1X    A11:A10,B7:B6,A7:A6 ; |74| 
           LDW     .D2T1   *+SP(4),A4
           LDW     .D2T1   *+SP(8),A5
           MV      .L2X    A14,B5
           MV      .L2X    A15,B4
           ADDDP   .L2X    A9:A8,B5:B4,B5:B4 ; |74| 
           LDW     .D2T2   *++SP(32),B3      ; |81| 
           LDDW    .D2T1   *++SP,A13:A12     ; |81| 
           LDDW    .D2T1   *++SP,A15:A14     ; |81| 
           MPYDP   .M2X    A5:A4,B9:B8,B7:B6 ; |74| 
           LDDW    .D2T2   *++SP,B11:B10     ; |81| 
           LDDW    .D2T2   *++SP,B13:B12     ; |81| 
           LDW     .D2T1   *++SP(8),A10      ; |81| 
           SUBDP   .L2X    B5:B4,A7:A6,B5:B4 ; |74| 
           LDW     .D2T1   *++SP(8),A11      ; |81| 
           NOP             5
           ADDDP   .L2     B7:B6,B5:B4,B5:B4 ; |74| 
           NOP             3
           RETNOP  .S2     B3,3              ; |81| 
           MV      .L1X    B5,A5             ; |80| 
           MV      .L1X    B4,A4             ; |80| 
           ; BRANCH OCCURS {B3}              ; |81| 
;** --------------------------------------------------------------------------*
$C$L69:    
           LDW     .D2T2   *++SP(32),B3      ; |81| 
           LDDW    .D2T1   *++SP,A13:A12     ; |81| 
           LDDW    .D2T1   *++SP,A15:A14     ; |81| 
           LDDW    .D2T2   *++SP,B11:B10     ; |81| 
           LDDW    .D2T2   *++SP,B13:B12     ; |81| 

           LDW     .D2T1   *++SP(8),A10      ; |81| 
||         RET     .S2     B3                ; |81| 

           LDW     .D2T1   *++SP(8),A11      ; |81| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |81| 
	.sect	".text"
	.clink
	.global	_ZN17SVelocityPlanning19ComputePlaningParamEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: SVelocityPlanning::ComputePlaningParam(DynamicInfo *)       *
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
_ZN17SVelocityPlanning19ComputePlaningParamEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 118	-----------------------    C$12 = (*dynamic_info).acceleration;  // [8]
;** 118	-----------------------    *((double * const)dynamic_info+80) = C$10 = ((*dynamic_info).f-(*dynamic_info).fs)/C$12-C$12/(*dynamic_info).Ja;  // [8]
;** 119	-----------------------    C$11 = (*dynamic_info).deceleration;  // [8]
;** 119	-----------------------    *((double * const)dynamic_info+112) = ((*dynamic_info).f-(*dynamic_info).fe)/C$11-C$11/(*dynamic_info).Jd;  // [8]
;** 122	-----------------------    if ( C$10 >= 0.0 ) goto g6;  // [8]
           STW     .D2T2   B13,*SP--(8)      ; |83| 
           STDW    .D2T2   B11:B10,*SP--     ; |83| 
           STDW    .D2T1   A15:A14,*SP--     ; |83| 
           STDW    .D2T1   A13:A12,*SP--     ; |83| 

           MV      .L1X    B4,A14            ; |83| 
||         STDW    .D2T1   A11:A10,*SP--     ; |83| 

           LDDW    .D1T1   *+A14(48),A13:A12 ; |118| 
           MVK     .S2     288,B4            ; |118| 
           ADD     .L2X    B4,A14,B4         ; |118| 
           MV      .L2     B3,B13            ; |83| 
           LDDW    .D2T2   *B4,B5:B4         ; |118| 

           MV      .L1     A13,A5            ; |118| 
||         MV      .L2X    A4,B10            ; |83| 
||         MV      .S1     A12,A4            ; |118| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL114:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |118| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A14(16),A7:A6   ; |118| 

           MV      .L1     A4,A10            ; |118| 
||         MV      .S1     A5,A11            ; |118| 
||         LDDW    .D1T1   *A14,A5:A4        ; |118| 

           MV      .L2X    A12,B4            ; |118| 
           MV      .L2X    A13,B5            ; |118| 
           NOP             2
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |118| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL113:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |118| 
           SUBDP   .L1     A5:A4,A11:A10,A11:A10 ; |118| 
           LDDW    .D1T1   *+A14(56),A5:A4   ; |119| 
           MVK     .S2     296,B4            ; |119| 
           ADD     .L2X    B4,A14,B4         ; |119| 
           LDDW    .D2T2   *B4,B5:B4         ; |119| 
           NOP             2

           STDW    .D1T1   A11:A10,*+A14(80) ; |118| 
||         MV      .L2X    A4,B11            ; |119| 
||         MV      .L1     A5,A15            ; |119| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL116:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |119| 
           LDDW    .D1T1   *+A14(16),A7:A6   ; |119| 

           MV      .L1     A4,A12            ; |119| 
||         MV      .S1     A5,A13            ; |119| 
||         LDDW    .D1T1   *+A14(8),A5:A4    ; |119| 

           MV      .L2     B11,B4            ; |119| 
           MV      .L2X    A15,B5            ; |119| 
           NOP             2
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |119| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL115:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |119| 
;** --------------------------------------------------------------------------*

           ZERO    .L1     A7:A6             ; |122| 
||         MVK     .S1     64,A3             ; |124| 

           CMPLTDP .S1     A11:A10,A7:A6,A0  ; |122| 
||         SUBDP   .L1     A5:A4,A13:A12,A5:A4 ; |119| 

           ZERO    .L2     B5:B4             ; |123| 

           MV      .L1     A0,A1             ; guard predicate rewrite
|| [!A0]   B       .S1     $C$L72            ; |122| 
|| [ A0]   LDB     .D1T1   *+A14[A3],A0      ; |124| 

   [ A1]   MVK     .S2     288,B7            ; |124| 
|| [ A1]   ZERO    .L2     B6                ; |124| 
|| [!A1]   ZERO    .L1     A0                ; |124| nullify predicate
|| [ A1]   STDW    .D1T2   B5:B4,*+A14(80)   ; |123| 

   [ A1]   SET     .S2     B6,31,31,B11      ; |124| 
   [ A1]   ADD     .S1X    B7,A14,A3         ; |124| 
   [ A1]   ADD     .S1X    B7,A14,A8         ; |124| 

   [ A0]   B       .S1     $C$L70            ; |124| 
||         STDW    .D1T1   A5:A4,*+A14(112)  ; |119| 

           ; BRANCHCC OCCURS {$C$L72}        ; |122| 
;** --------------------------------------------------------------------------*
;** 123	-----------------------    ((double *)dynamic_info)[10] = 0.0;  // [8]
;** 124	-----------------------    if ( (*dynamic_info).is_acc_positive ) goto g4;  // [8]
   [!A0]   LDDW    .D1T1   *A14,A5:A4        ; |124| 
   [!A0]   LDDW    .D1T1   *+A14(16),A7:A6   ; |124| 
   [ A0]   LDDW    .D1T1   *A14,A5:A4        ; |124| 
   [ A0]   LDDW    .D1T1   *+A14(16),A7:A6   ; |124| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L70}        ; |124| 
;** --------------------------------------------------------------------------*
;** 124	-----------------------    S$2 = -sqrt((*dynamic_info).Ja*((*dynamic_info).f-(*dynamic_info).fs));  // [8]
;** 124	-----------------------    goto g5;  // [8]
           NOP             1
           SUBDP   .L1     A7:A6,A5:A4,A7:A6 ; |124| 
           LDDW    .D1T1   *A3,A5:A4         ; |124| 
           NOP             5
           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |124| 
           NOP             3
           CALL    .S1     sqrt              ; |124| 
           ADDKPC  .S2     $C$RL117,B3,4     ; |124| 
$C$RL117:  ; CALL OCCURS {sqrt} {0}          ; |124| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L71,4          ; |124| 
||         XOR     .L1X    A5,B11,A5         ; |124| 

           STDW    .D1T1   A5:A4,*+A14(48)   ; |124| 
           ; BRANCH OCCURS {$C$L71}          ; |124| 
;** --------------------------------------------------------------------------*
$C$L70:    
;**	-----------------------g4:
;** 124	-----------------------    S$2 = sqrt((*dynamic_info).Ja*((*dynamic_info).f-(*dynamic_info).fs));  // [8]
           NOP             3
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |124| 
           LDDW    .D1T1   *A8,A7:A6         ; |124| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |124| 
           NOP             3
           CALL    .S1     sqrt              ; |124| 
           ADDKPC  .S2     $C$RL118,B3,4     ; |124| 
$C$RL118:  ; CALL OCCURS {sqrt} {0}          ; |124| 
           STDW    .D1T1   A5:A4,*+A14(48)   ; |124| 
;** --------------------------------------------------------------------------*
$C$L71:    
;**	-----------------------g5:
;** 124	-----------------------    (*dynamic_info).acceleration = S$2;  // [8]
;** --------------------------------------------------------------------------*
$C$L72:    
;**	-----------------------g6:
;** 128	-----------------------    if ( *((double * const)dynamic_info+112) >= 0.0 ) goto g11;  // [8]
           LDDW    .D1T1   *+A14(112),A7:A6  ; |128| 
           MVK     .S1     65,A3             ; |130| 
           ZERO    .L1     A5:A4             ; |128| 
           ZERO    .L2     B5:B4             ; |129| 
           NOP             1
           CMPLTDP .S1     A7:A6,A5:A4,A0    ; |128| 
           NOP             1

   [!A0]   B       .S1     $C$L75            ; |128| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
|| [ A0]   LDB     .D1T1   *+A14[A3],A0      ; |130| 

   [ A1]   MVK     .S2     296,B7            ; |130| 
|| [!A1]   ZERO    .L1     A0                ; |130| nullify predicate
|| [ A1]   ZERO    .L2     B6                ; |130| 
|| [ A1]   STDW    .D1T2   B5:B4,*+A14(112)  ; |129| 

   [ A1]   SET     .S2     B6,31,31,B11      ; |130| 
   [ A1]   ADD     .L1X    B7,A14,A3         ; |130| 
   [ A1]   ADD     .L1X    B7,A14,A8         ; |130| 
   [ A0]   B       .S1     $C$L73            ; |130| 
           ; BRANCHCC OCCURS {$C$L75}        ; |128| 
;** --------------------------------------------------------------------------*
;** 129	-----------------------    ((double *)dynamic_info)[14] = 0.0;  // [8]
;** 130	-----------------------    if ( (*dynamic_info).is_dec_positive ) goto g9;  // [8]
   [!A0]   LDDW    .D1T1   *+A14(8),A5:A4    ; |130| 
   [!A0]   LDDW    .D1T1   *+A14(16),A7:A6   ; |130| 
   [ A0]   LDDW    .D1T1   *+A14(16),A7:A6   ; |130| 
   [ A0]   LDDW    .D1T1   *+A14(8),A5:A4    ; |130| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L73}        ; |130| 
;** --------------------------------------------------------------------------*
;** 130	-----------------------    S$1 = -sqrt((*dynamic_info).Jd*((*dynamic_info).f-(*dynamic_info).fe));  // [8]
;** 130	-----------------------    goto g10;  // [8]
           NOP             1
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |130| 
           LDDW    .D1T1   *A3,A7:A6         ; |130| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |130| 
           NOP             3
           CALL    .S1     sqrt              ; |130| 
           ADDKPC  .S2     $C$RL119,B3,4     ; |130| 
$C$RL119:  ; CALL OCCURS {sqrt} {0}          ; |130| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L74,4          ; |130| 
||         XOR     .L1X    A5,B11,A5         ; |130| 

           STDW    .D1T1   A5:A4,*+A14(56)   ; |130| 
           ; BRANCH OCCURS {$C$L74}          ; |130| 
;** --------------------------------------------------------------------------*
$C$L73:    
;**	-----------------------g9:
;** 130	-----------------------    S$1 = sqrt((*dynamic_info).Jd*((*dynamic_info).f-(*dynamic_info).fe));  // [8]
           NOP             3
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |130| 
           LDDW    .D1T1   *A8,A7:A6         ; |130| 
           NOP             5
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |130| 
           NOP             3
           CALL    .S1     sqrt              ; |130| 
           ADDKPC  .S2     $C$RL120,B3,4     ; |130| 
$C$RL120:  ; CALL OCCURS {sqrt} {0}          ; |130| 
           STDW    .D1T1   A5:A4,*+A14(56)   ; |130| 
;** --------------------------------------------------------------------------*
$C$L74:    
;**	-----------------------g10:
;** 130	-----------------------    (*dynamic_info).deceleration = S$1;  // [8]
;** --------------------------------------------------------------------------*
$C$L75:    
;**	-----------------------g11:
;** 87	-----------------------    SVelocityPlanning::ComputeTimeLength(this, dynamic_info);
;** 266	-----------------------    C$3 = *((double * const)dynamic_info+72);  // [11]
;** 266	-----------------------    *((double * const)dynamic_info+128) = C$9 = C$3;  // [11]
;** 267	-----------------------    *((double * const)dynamic_info+136) = C$8 = C$9+*((double * const)dynamic_info+80);  // [11]
;** 268	-----------------------    *((double * const)dynamic_info+144) = C$7 = C$8+*((double * const)dynamic_info+88);  // [11]
;** 269	-----------------------    *((double * const)dynamic_info+152) = C$6 = C$7+*((double * const)dynamic_info+96);  // [11]
;** 270	-----------------------    *((double * const)dynamic_info+160) = C$5 = C$6+*((double * const)dynamic_info+104);  // [11]
;** 271	-----------------------    *((double * const)dynamic_info+168) = C$4 = C$5+*((double * const)dynamic_info+112);  // [11]
;** 272	-----------------------    (*dynamic_info).total_time = C$4+*((double * const)dynamic_info+120);  // [11]
;** 276	-----------------------    *((double * const)dynamic_info+192) = C$2 = (*dynamic_info).fs+(*dynamic_info).Ja*0.5*pow(C$3, 2.0);  // [12]
;** 277	-----------------------    *((double * const)dynamic_info+200) = C$2+(*dynamic_info).acceleration**((double * const)dynamic_info+80);  // [12]
;** 278	-----------------------    *((double * const)dynamic_info+208) = (*dynamic_info).f;  // [12]
;** 279	-----------------------    *((double * const)dynamic_info+216) = (*dynamic_info).f;  // [12]
;** 280	-----------------------    *((double * const)dynamic_info+224) = C$1 = *((double * const)dynamic_info+216)-(*dynamic_info).Jd*0.5*pow(*((double * const)dynamic_info+104), 2.0);  // [12]
;** 281	-----------------------    *((double * const)dynamic_info+232) = C$1-(*dynamic_info).deceleration**((double * const)dynamic_info+112);  // [12]
;** 96	-----------------------    (*(void (*)())*((*this).__b_16VelocityPlanning.__vptr+28))(this, dynamic_info);
;**  	-----------------------    return;

           CALLP   .S2     _ZN17SVelocityPlanning17ComputeTimeLengthEP11DynamicInfo,B3
||         MV      .L1X    B10,A4            ; |87| 
||         MV      .L2X    A14,B4            ; |87| 

$C$RL121:  ; CALL OCCURS {_ZN17SVelocityPlanning17ComputeTimeLengthEP11DynamicInfo} {0}  ; |87| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A14(72),A5:A4   ; |266| 
           LDDW    .D1T1   *+A14(80),A7:A6   ; |267| 
           LDDW    .D1T1   *+A14(88),A9:A8   ; |268| 
           LDDW    .D1T1   *+A14(96),A17:A16 ; |269| 
           LDDW    .D1T1   *+A14(104),A19:A18 ; |270| 
           LDDW    .D1T1   *+A14(112),A21:A20 ; |271| 
           ADDDP   .L1     A7:A6,A5:A4,A7:A6 ; |267| 
           LDDW    .D1T1   *+A14(120),A23:A22 ; |272| 
           STDW    .D1T1   A5:A4,*+A14(128)  ; |266| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5
           ZERO    .L2     B4                ; |276| 
           NOP             1
           ADDDP   .L1     A9:A8,A7:A6,A9:A8 ; |268| 
           STDW    .D1T1   A7:A6,*+A14(136)  ; |267| 
           NOP             5
           ADDDP   .L1     A17:A16,A9:A8,A17:A16 ; |269| 
           STDW    .D1T1   A9:A8,*+A14(144)  ; |268| 
           NOP             5
           ADDDP   .L1     A19:A18,A17:A16,A19:A18 ; |270| 
           STDW    .D1T1   A17:A16,*+A14(152) ; |269| 
           NOP             5
           ADDDP   .L1     A21:A20,A19:A18,A21:A20 ; |271| 
           STDW    .D1T1   A19:A18,*+A14(160) ; |270| 
           NOP             5
           ADDDP   .L1     A23:A22,A21:A20,A23:A22 ; |272| 
           STDW    .D1T1   A21:A20,*+A14(168) ; |271| 
           NOP             5

           CALLP   .S2     pow,B3
||         STDW    .D1T1   A23:A22,*+A14(176) ; |272| 

$C$RL122:  ; CALL OCCURS {pow} {0}           ; |276| 
           MVK     .S2     288,B4            ; |276| 
           ADD     .L2X    B4,A14,B4         ; |276| 
           LDDW    .D2T2   *B4,B5:B4         ; |276| 
           ZERO    .L1     A11
           SET     .S1     A11,0x15,0x1d,A11
           ZERO    .L1     A10               ; |276| 
           LDDW    .D1T1   *A14,A9:A8        ; |276| 
           MPYDP   .M1X    A11:A10,B5:B4,A7:A6 ; |276| 
           LDDW    .D1T2   *+A14(80),B5:B4   ; |277| 
           NOP             8
           MPYDP   .M1     A5:A4,A7:A6,A7:A6 ; |276| 
           LDDW    .D1T1   *+A14(48),A5:A4   ; |277| 
           NOP             4
           MPYDP   .M2X    B5:B4,A5:A4,B5:B4 ; |277| 
           LDDW    .D1T1   *+A14(104),A5:A4  ; |280| 
           NOP             2
           ADDDP   .L1     A7:A6,A9:A8,A19:A18 ; |276| 
           LDDW    .D1T1   *+A14(16),A9:A8   ; |278| 
           LDDW    .D1T1   *+A14(16),A7:A6   ; |279| 
           NOP             4
           ADDDP   .L1X    B5:B4,A19:A18,A17:A16 ; |277| 
           STDW    .D1T1   A19:A18,*+A14(192) ; |276| 
           ZERO    .L2     B5
           STDW    .D1T1   A9:A8,*+A14(208)  ; |278| 
           SET     .S2     B5,0x1e,0x1e,B5
           STDW    .D1T1   A7:A6,*+A14(216)  ; |279| 
           MV      .L2X    A10,B4            ; |280| 

           CALLP   .S2     pow,B3
||         STDW    .D1T1   A17:A16,*+A14(200) ; |277| 

$C$RL123:  ; CALL OCCURS {pow} {0}           ; |280| 
           MVK     .S2     296,B4            ; |280| 
           ADD     .L2X    B4,A14,B4         ; |280| 
           LDDW    .D2T2   *B4,B5:B4         ; |280| 
           LDDW    .D1T1   *+A14(112),A7:A6  ; |281| 
           LDDW    .D1T1   *+A14(216),A9:A8  ; |280| 
           NOP             2
           MPYDP   .M2X    A11:A10,B5:B4,B5:B4 ; |280| 
           NOP             9
           MPYDP   .M2X    A5:A4,B5:B4,B5:B4 ; |280| 
           LDDW    .D1T1   *+A14(56),A5:A4   ; |281| 
           NOP             6
           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |281| 
           NOP             1
           SUBDP   .L2X    A9:A8,B5:B4,B7:B6 ; |280| 
           LDW     .D2T2   *B10,B4           ; |96| 
           NOP             6
           SUBDP   .L1X    B7:B6,A5:A4,A5:A4 ; |281| 
           STDW    .D1T2   B7:B6,*+A14(224)  ; |280| 
           NOP             5
           STDW    .D1T1   A5:A4,*+A14(232)  ; |281| 
           LDW     .D2T2   *+B4(28),B5       ; |96| 
           MV      .L2X    A14,B4            ; |96| 
           MV      .L1X    B10,A4            ; |96| 
           NOP             2
           CALL    .S2     B5                ; |96| 
           ADDKPC  .S2     $C$RL124,B3,4     ; |96| 
$C$RL124:  ; CALL OCCURS {B5} {0}            ; |96| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T1   *++SP,A11:A10     ; |97| 
           LDDW    .D2T1   *++SP,A13:A12     ; |97| 

           LDDW    .D2T1   *++SP,A15:A14     ; |97| 
||         MV      .L2     B13,B3            ; |97| 

           LDDW    .D2T2   *++SP,B11:B10     ; |97| 
||         RET     .S2     B3                ; |97| 

           LDW     .D2T2   *++SP(8),B13      ; |97| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |97| 
;; Inlined function references:
;; [  8] SVelocityPlanning::AdjustAcceleration(DynamicInfo *)
;; [ 11] SVelocityPlanning::ComputePhaseTime(DynamicInfo *)
;; [ 12] SVelocityPlanning::ComputePhaseSpeed(DynamicInfo *)
;; [ 17] std::floor(double)
;; [ 18] std::ceil(double)
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	sqrt
	.global	pow
	.global	modf
	.global	_ZTVN10__cxxabiv117__class_type_infoE
	.global	_ZTVN10__cxxabiv120__si_class_type_infoE
	.global	__c6xabi_divd
;*****************************************************************************
;* SECTION GROUPS                                                            *
;*****************************************************************************
	.group    "_ZTI16VelocityPlanning", 1
	.gmember  ".const:_ZTI16VelocityPlanning"
	.endgroup
	.group    "_ZTI17SVelocityPlanning", 1
	.gmember  ".const:_ZTI17SVelocityPlanning"
	.endgroup
	.group    "_ZTS16VelocityPlanning", 1
	.gmember  ".const:_ZTS16VelocityPlanning"
	.endgroup
	.group    "_ZTS17SVelocityPlanning", 1
	.gmember  ".const:_ZTS17SVelocityPlanning"
	.endgroup
	.group    "_ZTV17SVelocityPlanning", 1
	.gmember  ".const:_ZTV17SVelocityPlanning"
	.endgroup


;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_Long_Precision_Bits(2)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "TI", Tag_File, 1, Tag_ABI_enum_size(3)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_wchar_t(1)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_array_object_alignment(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_array_object_align_expected(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_PIC(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_PID(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_DSBT(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_stack_align_needed(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_stack_align_preserved(0)
	.battr "TI", Tag_File, 1, Tag_Tramps_Use_SOC(1)
