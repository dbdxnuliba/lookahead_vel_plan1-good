;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.3.4 *
;* Date/Time created: Sat Apr 22 16:22:11 2017                                *
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

	.global	_ZTV17TVelocityPlanning
	.sect	".const:_ZTV17TVelocityPlanning"
	.align	8
	.elfsym	_ZTV17TVelocityPlanning,SYM_SIZE(36)
_ZTV17TVelocityPlanning:
	.field	0,32			; _ZTV17TVelocityPlanning[0] @ 0
	.field	_ZTI17TVelocityPlanning,32		; _ZTV17TVelocityPlanning[1] @ 32
	.field	_ZN17TVelocityPlanning8GetSpeedEP11DynamicInfo,32		; _ZTV17TVelocityPlanning[2] @ 64
	.field	_ZN17TVelocityPlanning11GetDistanceEP11DynamicInfo,32		; _ZTV17TVelocityPlanning[3] @ 96
	.field	_ZN17TVelocityPlanning19ComputePlaningParamEP11DynamicInfo,32		; _ZTV17TVelocityPlanning[4] @ 128
	.field	_ZN17TVelocityPlanning15GetCurveContourEP11DynamicInfo,32		; _ZTV17TVelocityPlanning[5] @ 160
	.field	_ZN17TVelocityPlanning17AdjustTimeToRoundEP11DynamicInfo,32		; _ZTV17TVelocityPlanning[6] @ 192
	.field	_ZN17TVelocityPlanning20GetLastPhaseDistanceEP11DynamicInfo,32		; _ZTV17TVelocityPlanning[7] @ 224
	.field	_ZN17TVelocityPlanning17GetLastPhaseSpeedEP11DynamicInfo,32		; _ZTV17TVelocityPlanning[8] @ 256

	.global	_ZTI17TVelocityPlanning
	.sect	".const:_ZTI17TVelocityPlanning"
	.align	4
	.elfsym	_ZTI17TVelocityPlanning,SYM_SIZE(12)
_ZTI17TVelocityPlanning:
	.field	_ZTVN10__cxxabiv120__si_class_type_infoE+8,32		; _ZTI17TVelocityPlanning.base.base.__vptr @ 0
	.field	_ZTS17TVelocityPlanning,32		; _ZTI17TVelocityPlanning.base.base.__name @ 32
	.field	_ZTI16VelocityPlanning,32		; _ZTI17TVelocityPlanning.base_type @ 64

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

	.global	_ZTS17TVelocityPlanning
	.sect	".const:_ZTS17TVelocityPlanning"
	.align	8
	.elfsym	_ZTS17TVelocityPlanning,SYM_SIZE(20)
_ZTS17TVelocityPlanning:
	.field	49,8			; _ZTS17TVelocityPlanning[0] @ 0
	.field	55,8			; _ZTS17TVelocityPlanning[1] @ 8
	.field	84,8			; _ZTS17TVelocityPlanning[2] @ 16
	.field	86,8			; _ZTS17TVelocityPlanning[3] @ 24
	.field	101,8			; _ZTS17TVelocityPlanning[4] @ 32
	.field	108,8			; _ZTS17TVelocityPlanning[5] @ 40
	.field	111,8			; _ZTS17TVelocityPlanning[6] @ 48
	.field	99,8			; _ZTS17TVelocityPlanning[7] @ 56
	.field	105,8			; _ZTS17TVelocityPlanning[8] @ 64
	.field	116,8			; _ZTS17TVelocityPlanning[9] @ 72
	.field	121,8			; _ZTS17TVelocityPlanning[10] @ 80
	.field	80,8			; _ZTS17TVelocityPlanning[11] @ 88
	.field	108,8			; _ZTS17TVelocityPlanning[12] @ 96
	.field	97,8			; _ZTS17TVelocityPlanning[13] @ 104
	.field	110,8			; _ZTS17TVelocityPlanning[14] @ 112
	.field	110,8			; _ZTS17TVelocityPlanning[15] @ 120
	.field	105,8			; _ZTS17TVelocityPlanning[16] @ 128
	.field	110,8			; _ZTS17TVelocityPlanning[17] @ 136
	.field	103,8			; _ZTS17TVelocityPlanning[18] @ 144
	.field	0,8			; _ZTS17TVelocityPlanning[19] @ 152

;	/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/opt6x --call_assumptions=0 --gen_opt_info=2 /tmp/05720gQscE7 /tmp/05720mxI7B2 --opt_info_filename=src/interpolation/t_velocity_planning.nfo 
	.sect	".text"
	.clink
	.global	_ZN17TVelocityPlanning8GetSpeedEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: TVelocityPlanning::GetSpeed(DynamicInfo *)                  *
;*                                                                            *
;*   Regs Modified     : A4,A5,A6,A7,A8,A9,B0,B4,B5,B6,B7,B8,B9,B16,B17       *
;*   Regs Used         : A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,B9,B16,B17    *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN17TVelocityPlanning8GetSpeedEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 15	-----------------------    U$3 = (*dynamic_info).current_time;
;** 15	-----------------------    if ( U$3 >= *((double * const)dynamic_info+128) ) goto g3;
;** 29	-----------------------    return (*dynamic_info).fs+(*dynamic_info).acceleration*U$3;
           LDDW    .D2T2   *+B4(128),B9:B8   ; |15| 
           LDDW    .D2T2   *+B4(184),B7:B6   ; |15| 
           NOP             4
           CMPLTDP .S2     B7:B6,B9:B8,B0    ; |15| 
           NOP             1
   [ B0]   LDDW    .D2T2   *+B4(48),B9:B8    ; |29| 
   [!B0]   LDDW    .D2T2   *+B4(136),B9:B8   ; |19| 
   [ B0]   LDDW    .D2T1   *B4,A9:A8         ; |29| 
           NOP             2
   [ B0]   MPYDP   .M2     B7:B6,B9:B8,B9:B8 ; |29| 
           NOP             5
   [ B0]   BNOP    .S1     $C$L1,4           ; |29| 

   [ B0]   ADDDP   .L1X    B9:B8,A9:A8,A7:A6 ; |29| 
|| [!B0]   CMPLTDP .S2     B7:B6,B9:B8,B0    ; |29| 

           ; BRANCHCC OCCURS {$C$L1}         ; |29| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 19	-----------------------    U$15 = *((double * const)dynamic_info+136);
;** 29	-----------------------    return (U$3 < U$15) ? (*dynamic_info).f : (U$3 < (*dynamic_info).total_time-(*this).__b_16VelocityPlanning.m_half_interpolation_cycle) ? (*dynamic_info).f-(*dynamic_info).deceleration*(U$3-U$15) : (*dynamic_info).fe;
           NOP             1

   [ B0]   BNOP    .S1     $C$L1,3           ; |29| 
|| [!B0]   LDDW    .D2T2   *+B4(176),B17:B16 ; |29| 
|| [!B0]   LDDW    .D1T1   *+A4(16),A5:A4    ; |29| 

   [ B0]   LDDW    .D2T1   *+B4(16),A7:A6    ; |29| 
           SUBDP   .L2X    B17:B16,A5:A4,B17:B16 ; |29| 
           ; BRANCHCC OCCURS {$C$L1}         ; |29| 
;** --------------------------------------------------------------------------*
           NOP             6

           CMPLTDP .S2     B7:B6,B17:B16,B0  ; |29| 
||         SUBDP   .L2     B7:B6,B9:B8,B7:B6 ; |29| 

           NOP             1
   [ B0]   LDDW    .D2T2   *+B4(56),B9:B8    ; |29| 
   [ B0]   LDDW    .D2T2   *+B4(16),B5:B4    ; |29| 
   [!B0]   LDDW    .D2T2   *+B4(8),B5:B4     ; |29| 
           NOP             2
   [ B0]   MPYDP   .M2     B7:B6,B9:B8,B7:B6 ; |29| 
           NOP             9
   [ B0]   SUBDP   .L2     B5:B4,B7:B6,B5:B4 ; |29| 
           NOP             7
           MV      .L1X    B5,A7             ; |29| 
           MV      .L1X    B4,A6             ; |29| 
;** --------------------------------------------------------------------------*
$C$L1:    
           NOP             1
           RETNOP  .S2     B3,4              ; |30| 

           MV      .L1     A6,A4             ; |29| 
||         MV      .S1     A7,A5             ; |29| 

           ; BRANCH OCCURS {B3}              ; |30| 
	.sect	".text"
	.clink
	.global	_ZN17TVelocityPlanning20GetLastPhaseDistanceEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: TVelocityPlanning::GetLastPhaseDistance(DynamicInfo *)      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,  *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP,   *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 40 Save = 40 byte                  *
;******************************************************************************
_ZN17TVelocityPlanning20GetLastPhaseDistanceEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 165	-----------------------    U$5 = *((double * const)dynamic_info+128);
;** 165	-----------------------    U$2 = (*dynamic_info).current_time;
;** 165	-----------------------    if ( U$2 >= U$5 ) goto g3;

           STW     .D2T1   A11,*SP--(8)      ; |161| 
||         ZERO    .L2     B5

           STDW    .D2T2   B13:B12,*SP--     ; |161| 
||         SET     .S2     B5,0x1e,0x1e,B5

           ZERO    .L2     B10               ; |167| 
||         STDW    .D2T2   B11:B10,*SP--     ; |161| 

           STDW    .D2T1   A13:A12,*SP--     ; |161| 
           STW     .D2T1   A10,*SP--(8)      ; |161| 
           LDDW    .D2T2   *+B4(128),B9:B8   ; |165| 
           LDDW    .D2T2   *+B4(184),B7:B6   ; |165| 
           ZERO    .L2     B11
           SET     .S2     B11,0x15,0x1d,B11
           MV      .L1X    B4,A12            ; |161| 
           MV      .L1X    B3,A13            ; |161| 
           CMPLTDP .S2     B7:B6,B9:B8,B0    ; |165| 
           ZERO    .L2     B4                ; |167| 

   [!B0]   MV      .L2X    A12,B4
|| [!B0]   B       .S1     $C$L2             ; |165| 

   [ B0]   CALL    .S1     pow               ; |167| 
|| [!B0]   LDDW    .D2T2   *+B4(136),B17:B16 ; |169| 

           MV      .L1X    B7,A11            ; |166| 
           MV      .L1X    B6,A10            ; |166| 
           MV      .L1X    B6,A4             ; |166| 
           MV      .L1X    B7,A5             ; |166| 
           ; BRANCHCC OCCURS {$C$L2}         ; |165| 
;** --------------------------------------------------------------------------*
;** 166	-----------------------    relative_time = U$2;
;** 167	-----------------------    l = (*dynamic_info).ls+(*dynamic_info).fs*relative_time+(*dynamic_info).acceleration*0.5*pow(relative_time, 2.0);
;** 177	-----------------------    return l;
           ADDKPC  .S2     $C$RL0,B3,0       ; |167| 
$C$RL0:    ; CALL OCCURS {pow} {0}           ; |167| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A12,B4            ; |167| 
           LDDW    .D2T2   *+B4(48),B7:B6    ; |167| 
           LDDW    .D2T1   *B4,A7:A6         ; |167| 
           LDDW    .D2T2   *+B4(24),B5:B4    ; |167| 
           MV      .L2X    A13,B3            ; |178| 
           NOP             1
           MPYDP   .M2     B11:B10,B7:B6,B7:B6 ; |167| 
           MPYDP   .M1     A11:A10,A7:A6,A7:A6 ; |167| 
           LDW     .D2T1   *++SP(8),A10      ; |178| 
           LDDW    .D2T1   *++SP,A13:A12     ; |178| 
           LDDW    .D2T2   *++SP,B11:B10     ; |178| 
           LDDW    .D2T2   *++SP,B13:B12     ; |178| 
           LDW     .D2T1   *++SP(8),A11      ; |178| 
           NOP             4
           MPYDP   .M1X    A5:A4,B7:B6,A5:A4 ; |167| 
           ADDDP   .L2X    A7:A6,B5:B4,B5:B4 ; |167| 
           NOP             8
           ADDDP   .L1X    A5:A4,B5:B4,A7:A6 ; |167| 
           NOP             1
           RETNOP  .S2     B3,4              ; |178| 

           MV      .L1     A7,A5             ; |177| 
||         MV      .S1     A6,A4             ; |177| 

           ; BRANCH OCCURS {B3}              ; |178| 
;** --------------------------------------------------------------------------*
$C$L2:    
;**	-----------------------g3:
;** 169	-----------------------    U$20 = *((double * const)dynamic_info+136);
;** 169	-----------------------    if ( U$2 >= U$20 ) goto g5;
;** 177	-----------------------    return *((double * const)dynamic_info+240)+(*dynamic_info).f*(U$2-U$5);

           CMPLTDP .S2     B7:B6,B17:B16,B0  ; |169| 
||         SUBDP   .L2     B7:B6,B9:B8,B9:B8 ; |177| 

           NOP             1
   [ B0]   LDDW    .D2T2   *+B4(16),B19:B18  ; |177| 
   [ B0]   MV      .L2X    A13,B3            ; |178| 
           SUBDP   .L2     B7:B6,B17:B16,B13:B12 ; |175| 
   [ B0]   LDDW    .D2T1   *+B4(240),A5:A4   ; |177| 
           MV      .S2     B10,B4            ; |177| 
   [ B0]   MPYDP   .M2     B9:B8,B19:B18,B9:B8 ; |177| 
   [ B0]   LDW     .D2T1   *++SP(8),A10      ; |178| 
   [ B0]   LDDW    .D2T1   *++SP,A13:A12     ; |178| 
   [ B0]   LDDW    .D2T2   *++SP,B11:B10     ; |178| 
           NOP             5
   [ B0]   BNOP    .S1     $C$L3,1           ; |177| 
   [ B0]   ADDDP   .L1X    B9:B8,A5:A4,A7:A6 ; |177| 
   [!B0]   CALL    .S1     pow               ; |175| 
           MV      .L1X    B13,A5            ; |175| 

   [ B0]   RET     .S2     B3                ; |178| 
||         MV      .L1X    B12,A4            ; |175| 
|| [ B0]   LDDW    .D2T2   *++SP,B13:B12     ; |178| 

           ; BRANCHCC OCCURS {$C$L3}         ; |177| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 175	-----------------------    C$1 = U$2-U$20;
;** 175	-----------------------    l = *((double * const)dynamic_info+248)+(*dynamic_info).f*C$1-(*dynamic_info).deceleration*0.5*pow(C$1, 2.0);
;** 177	-----------------------    return l;
           ADDKPC  .S2     $C$RL1,B3,2       ; |175| 
$C$RL1:    ; CALL OCCURS {pow} {0}           ; |175| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A12,B6            ; |175| 
           LDDW    .D2T2   *+B6(56),B5:B4    ; |175| 
           LDDW    .D2T1   *+B6(16),A7:A6    ; |175| 
           LDDW    .D2T2   *+B6(248),B7:B6   ; |175| 
           LDW     .D2T1   *++SP(8),A10      ; |178| 
           MV      .L2X    A13,B3            ; |178| 
           MPYDP   .M2     B11:B10,B5:B4,B5:B4 ; |175| 
           MPYDP   .M1X    B13:B12,A7:A6,A7:A6 ; |175| 
           LDDW    .D2T1   *++SP,A13:A12     ; |178| 
           LDDW    .D2T2   *++SP,B11:B10     ; |178| 
           LDDW    .D2T2   *++SP,B13:B12     ; |178| 
           NOP             6
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |175| 
           ADDDP   .L2X    A7:A6,B7:B6,B5:B4 ; |175| 
           NOP             8
           SUBDP   .L1X    B5:B4,A5:A4,A7:A6 ; |175| 
           NOP             2
           RET     .S2     B3                ; |178| 
;** --------------------------------------------------------------------------*
$C$L3:    
           LDW     .D2T1   *++SP(8),A11      ; |178| 
           NOP             2
           MV      .L1     A7,A5             ; |177| 
           MV      .L1     A6,A4             ; |177| 
           ; BRANCH OCCURS {B3}              ; |178| 
	.sect	".text"
	.clink
	.global	_ZN17TVelocityPlanning17ComputeTimeLengthEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: TVelocityPlanning::ComputeTimeLength(DynamicInfo *)         *
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
;*   Local Frame Size  : 0 Args + 32 Auto + 56 Save = 88 byte                 *
;******************************************************************************
_ZN17TVelocityPlanning17ComputeTimeLengthEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 114	-----------------------    v$1 = (*this).m_fe_limit_dist;  // [10]
;** 114	-----------------------    v$2 = (*this).m_fs_limit_dist;  // [10]
;** 114	-----------------------    U$15 = (*dynamic_info).deceleration;  // [10]
;** 114	-----------------------    U$13 = (*dynamic_info).acceleration;  // [10]
;** 114	-----------------------    U$10 = (*dynamic_info).f;  // [10]
;** 114	-----------------------    U$8 = (*dynamic_info).distance;  // [10]
;** 114	-----------------------    uniform_displacement = U$8-pow(U$10, 2.0)*0.5*(1.0/U$13+1.0/U$15)+v$2+v$1;  // [10]
;** 115	-----------------------    uniform_displacement = uniform_displacement;  // [10]
;** 92	-----------------------    if ( uniform_displacement >= -1.00000000000000002092e-8 ) goto g6;
           STW     .D2T1   A11,*SP--(8)      ; |90| 
           STW     .D2T1   A10,*SP--(8)      ; |90| 
           STDW    .D2T2   B13:B12,*SP--     ; |90| 
           STDW    .D2T2   B11:B10,*SP--     ; |90| 
           STDW    .D2T1   A15:A14,*SP--     ; |90| 
           STDW    .D2T1   A13:A12,*SP--     ; |90| 

           STW     .D2T2   B3,*SP--(40)      ; |90| 
||         MV      .L1X    B4,A15            ; |90| 

           LDDW    .D1T2   *+A15(16),B5:B4   ; |114| 
           STW     .D2T1   A4,*+SP(4)        ; |90| 
           LDDW    .D1T1   *+A15(40),A11:A10 ; |114| 
           NOP             2

           STW     .D2T2   B4,*+SP(8)        ; |114| 
||         MV      .L2X    A4,B4             ; |114| 
||         LDDW    .D1T1   *+A15(56),A5:A4   ; |114| 

           LDDW    .D2T2   *+B4(32),B11:B10  ; |114| 
           MV      .L1X    B5,A14            ; |114| 
           LDDW    .D2T2   *+B4(40),B13:B12  ; |114| 
           ZERO    .L2     B4                ; |114| 
           STW     .D2T1   A5,*+SP(24)       ; |114| 
           STW     .D2T1   A4,*+SP(20)       ; |114| 
           LDDW    .D1T1   *+A15(48),A5:A4   ; |114| 
           NOP             4

           STW     .D2T1   A5,*+SP(16)       ; |114| 
||         MV      .L1X    B5,A5             ; |114| 
||         ZERO    .L2     B5

           STW     .D2T1   A4,*+SP(12)       ; |114| 
||         SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         LDW     .D2T1   *+SP(8),A4        ; |114| 

$C$RL4:    ; CALL OCCURS {pow} {0}           ; |114| 
;** --------------------------------------------------------------------------*

           LDW     .D2T2   *+SP(12),B4       ; |114| 
||         MV      .L1     A5,A13            ; |114| 
||         ZERO    .S1     A5

           CALLP   .S2     __c6xabi_divd,B3
||         LDW     .D2T2   *+SP(16),B5       ; |114| 
||         SET     .S1     A5,0x14,0x1d,A5
||         MV      .L1     A4,A12            ; |114| 
||         ZERO    .D1     A4                ; |114| 

$C$RL3:    ; CALL OCCURS {__c6xabi_divd} {0}  ; |114| 
           STW     .D2T1   A5,*+SP(32)       ; |114| 
           STW     .D2T1   A4,*+SP(28)       ; |114| 

           LDW     .D2T2   *+SP(20),B4       ; |114| 
||         ZERO    .L1     A5

           CALLP   .S2     __c6xabi_divd,B3
||         LDW     .D2T2   *+SP(24),B5       ; |114| 
||         SET     .S1     A5,0x14,0x1d,A5
||         ZERO    .L1     A4                ; |114| 

$C$RL2:    ; CALL OCCURS {__c6xabi_divd} {0}  ; |114| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(28),A8
||         ZERO    .L1     A7
||         ZERO    .S1     A6                ; |114| 

           LDW     .D2T1   *+SP(32),A9
           SET     .S1     A7,0x15,0x1d,A7
           MPYDP   .M1     A7:A6,A13:A12,A7:A6 ; |114| 
           MVKL    .S2     0xbe45798e,B6
           MVKH    .S2     0xbe45798e,B6
           ADDDP   .L1     A5:A4,A9:A8,A5:A4 ; |114| 
           MV      .S1X    B6,A3             ; |92| 
           MVKL    .S2     0xe2308c3a,B6
           MVKH    .S2     0xe2308c3a,B6
           NOP             3
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |114| 
           LDW     .D2T1   *+SP(24),A7
           LDW     .D2T1   *+SP(20),A6
           MV      .L1X    B6,A13            ; |92| 
           MVKL    .S2     0x3e45798e,B6
           MVKH    .S2     0x3e45798e,B6
           NOP             4
           SUBDP   .L1     A11:A10,A5:A4,A5:A4 ; |114| 
           MV      .S1X    B6,A12            ; |93| 
           NOP             6

           ADDDP   .L2X    B11:B10,A5:A4,B5:B4 ; |114| 
||         LDW     .D2T1   *+SP(16),A5

           LDW     .D2T1   *+SP(12),A4
           NOP             4
           ADDDP   .L1     A7:A6,A5:A4,A7:A6 ; |93| 
           ADDDP   .L2     B13:B12,B5:B4,B5:B4 ; |114| 
           NOP             6
           ABSDP   .S1     A7:A6,A7:A6       ; |93| 

           MV      .L1X    B5,A5             ; |115| 
||         MV      .L2X    A3,B5             ; |93| 

           MV      .L1X    B4,A4             ; |115| 
           MV      .L2X    A13,B4            ; |93| 
           CMPLTDP .S2X    A5:A4,B5:B4,B1    ; |92| 

           MV      .L2     B6,B5             ; |93| 
||         LDW     .D2T2   *+SP(8),B6

   [!B1]   BNOP    .S1     $C$L6,1           ; |92| 
||         CMPLTDP .S2X    A7:A6,B5:B4,B0    ; |93| 

   [ B1]   ADDDP   .L2X    B11:B10,A11:A10,B5:B4 ; |98| 
   [!B1]   ZERO    .S2     B0                ; |98| nullify predicate

   [ B0]   B       .S1     $C$L4             ; |93| 
|| [!B1]   MV      .L2X    A13,B4

   [!B1]   MV      .L2X    A12,B5
           ; BRANCHCC OCCURS {$C$L6}         ; |92| 
;** --------------------------------------------------------------------------*
;** 93	-----------------------    if ( ABS(U$13+U$15) < 1.00000000000000002092e-8 ) goto g4;

   [ B0]   LDDW    .D1T1   *+A15(8),A5:A4    ; |94| 
|| [!B0]   LDW     .D2T2   *+SP(4),B6

           NOP             2
           ADDDP   .L2     B13:B12,B5:B4,B5:B4 ; |98| 
           ; BRANCHCC OCCURS {$C$L4}         ; |93| 
;** --------------------------------------------------------------------------*
;** 98	-----------------------    (*dynamic_info).f = sqrt((U$8+v$2+v$1)*(*this).m_recip_A_D);
;** 98	-----------------------    goto g5;
           NOP             1
           LDDW    .D2T2   *+B6(48),B7:B6    ; |98| 
           NOP             4
           MPYDP   .M2     B7:B6,B5:B4,B5:B4 ; |98| 
           NOP             6
           CALL    .S1     sqrt              ; |98| 
           ADDKPC  .S2     $C$RL5,B3,2       ; |98| 
           MV      .L1X    B5,A5             ; |98| 
           MV      .L1X    B4,A4             ; |98| 
$C$RL5:    ; CALL OCCURS {sqrt} {0}          ; |98| 
;** --------------------------------------------------------------------------*

           B       .S1     $C$L5             ; |98| 
||         STDW    .D1T1   A5:A4,*+A15(16)   ; |98| 

           LDDW    .D1T2   *+A15(16),B5:B4
           ZERO    .L1     A5:A4             ; |100| 
           NOP             3
           ; BRANCH OCCURS {$C$L5}           ; |98| 
;** --------------------------------------------------------------------------*
$C$L4:    
;**	-----------------------g4:
;** 94	-----------------------    (*dynamic_info).f = (*dynamic_info).fe;
           NOP             1
           STDW    .D1T1   A5:A4,*+A15(16)   ; |94| 
           LDDW    .D1T2   *+A15(16),B5:B4
           ZERO    .L1     A5:A4             ; |100| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L5:    
;**	-----------------------g5:
;**  	-----------------------    U$10 = (*dynamic_info).f;
;** 100	-----------------------    uniform_displacement = 0.0;
           STW     .D2T2   B4,*+SP(8)
           LDW     .D2T2   *+SP(8),B6
           MV      .L1X    B5,A14
           MV      .L2X    A12,B5
           MV      .L2X    A13,B4
;** --------------------------------------------------------------------------*
$C$L6:    
;**	-----------------------g6:
;** 103	-----------------------    if ( U$10 > 1.00000000000000002092e-8 ) goto g8;
;** 108	-----------------------    *((double * const)dynamic_info+80) = 0.0;
;** 109	-----------------------    (*dynamic_info).le = (*dynamic_info).le-uniform_displacement;
;** 110	-----------------------    (*dynamic_info).distance = (*dynamic_info).distance-uniform_displacement;
;** 110	-----------------------    goto g9;
           MV      .L2X    A14,B7
           CMPGTDP .S2     B7:B6,B5:B4,B0    ; |103| 
           ZERO    .L1     A17:A16           ; |108| 
   [!B0]   LDDW    .D1T1   *+A15(40),A7:A6   ; |110| 
   [!B0]   LDDW    .D1T1   *+A15(32),A9:A8   ; |109| 
           MV      .L2X    A14,B5            ; |109| 
           MV      .L2     B6,B4             ; |109| 
   [!B0]   STDW    .D1T1   A17:A16,*+A15(80) ; |108| 
   [!B0]   SUBDP   .S1     A7:A6,A5:A4,A7:A6 ; |110| 
   [!B0]   SUBDP   .L1     A9:A8,A5:A4,A9:A8 ; |109| 
           NOP             1
   [!B0]   B       .S1     $C$L7             ; |110| 
   [ B0]   CALL    .S1     __c6xabi_divd     ; |104| 
           NOP             2
   [!B0]   STDW    .D1T1   A7:A6,*+A15(40)   ; |110| 
   [!B0]   STDW    .D1T1   A9:A8,*+A15(32)   ; |109| 
           ; BRANCHCC OCCURS {$C$L7}         ; |110| 
;** --------------------------------------------------------------------------*
;**	-----------------------g8:
;** 104	-----------------------    *((double * const)dynamic_info+80) = uniform_displacement/U$10;
           ADDKPC  .S2     $C$RL6,B3,0       ; |104| 
$C$RL6:    ; CALL OCCURS {__c6xabi_divd} {0}  ; |104| 
;** --------------------------------------------------------------------------*
           STDW    .D1T1   A5:A4,*+A15(80)   ; |104| 
;** --------------------------------------------------------------------------*
$C$L7:    
;**	-----------------------g9:
;** 112	-----------------------    *((double * const)dynamic_info+72) = ((*dynamic_info).f-(*dynamic_info).fs)/(*dynamic_info).acceleration;
;** 113	-----------------------    *((double * const)dynamic_info+88) = ((*dynamic_info).f-(*dynamic_info).fe)/(*dynamic_info).deceleration;
;**  	-----------------------    return;
           LDDW    .D1T1   *A15,A5:A4        ; |112| 
           LDDW    .D1T1   *+A15(16),A7:A6   ; |112| 
           NOP             4

           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |112| 
||         LDDW    .D1T1   *+A15(48),A7:A6   ; |112| 

           CALL    .S1     __c6xabi_divd     ; |112| 
           ADDKPC  .S2     $C$RL7,B3,2       ; |112| 
           MV      .L2X    A7,B5             ; |112| 
           MV      .L2X    A6,B4             ; |112| 
$C$RL7:    ; CALL OCCURS {__c6xabi_divd} {0}  ; |112| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A15(16),A9:A8   ; |113| 

           MV      .L1     A4,A6             ; |112| 
||         MV      .S1     A5,A7             ; |112| 
||         LDDW    .D1T1   *+A15(8),A5:A4    ; |113| 

           STDW    .D1T1   A7:A6,*+A15(72)   ; |112| 
           NOP             3

           SUBDP   .L1     A9:A8,A5:A4,A5:A4 ; |113| 
||         LDDW    .D1T1   *+A15(56),A9:A8   ; |113| 

           NOP             4
           MV      .L2X    A8,B4             ; |113| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A9,B5             ; |113| 

$C$RL8:    ; CALL OCCURS {__c6xabi_divd} {0}  ; |113| 
;** --------------------------------------------------------------------------*
           STDW    .D1T1   A5:A4,*+A15(88)   ; |113| 
           LDW     .D2T2   *++SP(40),B3      ; |114| 
           LDDW    .D2T1   *++SP,A13:A12     ; |114| 
           LDDW    .D2T1   *++SP,A15:A14     ; |114| 
           LDDW    .D2T2   *++SP,B11:B10     ; |114| 
           LDDW    .D2T2   *++SP,B13:B12     ; |114| 

           LDW     .D2T1   *++SP(8),A10      ; |114| 
||         RET     .S2     B3                ; |114| 

           LDW     .D2T1   *++SP(8),A11      ; |114| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |114| 
	.sect	".text"
	.clink
	.global	_ZN17TVelocityPlanning19ComputePlaningParamEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: TVelocityPlanning::ComputePlaningParam(DynamicInfo *)       *
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
;*   Local Frame Size  : 0 Args + 40 Auto + 56 Save = 96 byte                 *
;******************************************************************************
_ZN17TVelocityPlanning19ComputePlaningParamEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 56	-----------------------    C$9 = (*dynamic_info).acceleration;
;** 56	-----------------------    v$2 = pow((*dynamic_info).fs, 2.0)/(C$9+C$9);
;** 56	-----------------------    (*this).m_fs_limit_dist = v$2;
;** 58	-----------------------    U$10 = (*dynamic_info).fe;
;** 58	-----------------------    C$8 = (*dynamic_info).deceleration;
;** 58	-----------------------    v$1 = pow(U$10, 2.0)/(C$8+C$8);
;** 58	-----------------------    (*this).m_fe_limit_dist = v$1;
;** 60	-----------------------    C$7 = (*dynamic_info).deceleration;
;** 60	-----------------------    C$6 = (*dynamic_info).acceleration;
;** 60	-----------------------    U$16 = C$6+C$7;
;** 60	-----------------------    (*this).m_recip_A_D = (C$6+C$6)*C$7/U$16;
;** 114	-----------------------    v$2 = (*this).m_fs_limit_dist;  // [10]
;** 114	-----------------------    U$20 = (*dynamic_info).f;  // [10]
;** 114	-----------------------    U$19 = (*dynamic_info).distance;  // [10]
;** 114	-----------------------    uniform_displacement = U$19-pow(U$20, 2.0)*0.5*(1.0/C$6+1.0/C$7)+v$2+v$1;  // [10]
;** 115	-----------------------    uniform_displacement = uniform_displacement;  // [10]
;** 92	-----------------------    if ( uniform_displacement >= -1.00000000000000002092e-8 ) goto g6;  // [8]
           STW     .D2T1   A11,*SP--(8)      ; |54| 
           STW     .D2T1   A10,*SP--(8)      ; |54| 
           STDW    .D2T2   B13:B12,*SP--     ; |54| 
           STDW    .D2T2   B11:B10,*SP--     ; |54| 
           STDW    .D2T1   A15:A14,*SP--     ; |54| 
           STDW    .D2T1   A13:A12,*SP--     ; |54| 

           STW     .D2T2   B3,*SP--(48)      ; |54| 
||         MV      .L1X    B4,A14            ; |54| 
||         ZERO    .L2     B5

           MV      .L1     A4,A15            ; |54| 
||         LDDW    .D1T1   *A14,A5:A4        ; |56| 
||         SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         LDDW    .D1T2   *+A14(48),B11:B10 ; |56| 
||         ZERO    .L2     B4                ; |56| 

$C$RL9:    ; CALL OCCURS {pow} {0}           ; |56| 
;** --------------------------------------------------------------------------*
           ADDDP   .L2     B11:B10,B11:B10,B5:B4 ; |56| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL10:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |56| 
           MV      .L2X    A15,B4            ; |54| 
           STDW    .D2T1   A5:A4,*+B4(32)    ; |56| 
           LDDW    .D1T1   *+A14(8),A5:A4    ; |58| 
           LDDW    .D1T1   *+A14(56),A11:A10 ; |58| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5
           ZERO    .L2     B4                ; |58| 
           STW     .D2T1   A4,*+SP(20)       ; |58| 

           CALLP   .S2     pow,B3
||         STW     .D2T1   A5,*+SP(24)       ; |58| 

$C$RL11:   ; CALL OCCURS {pow} {0}           ; |58| 
           ADDDP   .L1     A11:A10,A11:A10,A7:A6 ; |58| 
           NOP             7
           MV      .L2X    A6,B4             ; |58| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A7,B5             ; |58| 

$C$RL12:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |58| 
           MV      .L2X    A15,B4            ; |58| 
           STDW    .D2T1   A5:A4,*+B4(40)    ; |58| 
           LDDW    .D1T1   *+A14(48),A13:A12 ; |60| 
           LDDW    .D1T1   *+A14(56),A11:A10 ; |60| 
           STW     .D2T1   A4,*+SP(28)       ; |58| 
           STW     .D2T1   A5,*+SP(32)       ; |58| 
           NOP             1
           ADDDP   .L1     A13:A12,A13:A12,A5:A4 ; |60| 
           ADDDP   .S1     A11:A10,A13:A12,A7:A6 ; |60| 
           NOP             5
           MPYDP   .M1     A11:A10,A5:A4,A5:A4 ; |60| 
           STW     .D2T1   A6,*+SP(4)        ; |60| 
           MV      .L2X    A6,B4             ; |60| 
           MV      .L2X    A7,B5             ; |60| 

           STW     .D2T1   A7,*+SP(8)        ; |60| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL13:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |60| 
           MV      .L2X    A15,B4            ; |60| 
           STDW    .D2T1   A5:A4,*+B4(48)    ; |60| 
           LDDW    .D2T2   *+B4(32),B5:B4    ; |114| 
           LDDW    .D1T1   *+A14(40),A5:A4   ; |114| 
           LDDW    .D1T2   *+A14(16),B13:B12 ; |114| 
           NOP             2
           STW     .D2T2   B5,*+SP(40)       ; |114| 

           ZERO    .L2     B5
||         STW     .D2T2   B4,*+SP(36)       ; |114| 

           STW     .D2T1   A4,*+SP(12)       ; |114| 
||         MV      .L1X    B12,A4            ; |114| 
||         SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         STW     .D2T1   A5,*+SP(16)       ; |114| 
||         MV      .L1X    B13,A5            ; |114| 
||         ZERO    .L2     B4                ; |114| 

$C$RL16:   ; CALL OCCURS {pow} {0}           ; |114| 
           MV      .L2X    A13,B5            ; |114| 
           MV      .L2X    A12,B4            ; |114| 

           MV      .L2X    A5,B10            ; |114| 
||         ZERO    .L1     A5

           CALLP   .S2     __c6xabi_divd,B3
||         SET     .S1     A5,0x14,0x1d,A5
||         MV      .L2X    A4,B11            ; |114| 
||         ZERO    .L1     A4                ; |114| 

$C$RL15:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |114| 

           MV      .L1     A5,A13            ; |114| 
||         ZERO    .S1     A5
||         MV      .L2X    A10,B4            ; |114| 

           CALLP   .S2     __c6xabi_divd,B3
||         SET     .S1     A5,0x14,0x1d,A5
||         MV      .L1     A4,A12            ; |114| 
||         MV      .L2X    A11,B5            ; |114| 
||         ZERO    .D1     A4                ; |114| 

$C$RL14:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |114| 
;** --------------------------------------------------------------------------*

           ZERO    .L1     A11
||         ZERO    .S1     A10               ; |114| 
||         MV      .D1X    B10,A7            ; |114| 

           SET     .S1     A11,0x15,0x1d,A11
||         MV      .L1X    B11,A6            ; |114| 

           MPYDP   .M1     A11:A10,A7:A6,A7:A6 ; |114| 
           ADDDP   .L1     A5:A4,A13:A12,A5:A4 ; |114| 
           LDW     .D2T2   *+SP(40),B5
           LDW     .D2T2   *+SP(36),B4
           MVKL    .S2     0x3e45798e,B11
           MVKH    .S2     0x3e45798e,B11
           NOP             4
           MPYDP   .M1     A5:A4,A7:A6,A7:A6 ; |114| 
           LDW     .D2T1   *+SP(16),A5
           LDW     .D2T1   *+SP(12),A4
           NOP             7
           SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |114| 
           LDW     .D2T1   *+SP(8),A7        ; |115| 
           LDW     .D2T1   *+SP(4),A6        ; |115| 
           NOP             5
           ADDDP   .L2X    B5:B4,A5:A4,B5:B4 ; |114| 
           LDW     .D2T1   *+SP(32),A5
           LDW     .D2T1   *+SP(28),A4
           ABSDP   .S1     A7:A6,A7:A6       ; |93| 
           NOP             4
           ADDDP   .L1X    A5:A4,B5:B4,A5:A4 ; |114| 
           MVKL    .S2     0xe2308c3a,B4
           MVKL    .S2     0xbe45798e,B5
           MVKH    .S2     0xe2308c3a,B4
           MV      .L2     B4,B10            ; |92| 
           MVKH    .S2     0xbe45798e,B5
           CMPLTDP .S2X    A7:A6,B11:B10,B0  ; |93| 
           LDW     .D2T1   *+SP(40),A7
           CMPLTDP .S2X    A5:A4,B5:B4,B1    ; |92| 
           LDW     .D2T1   *+SP(36),A6

   [!B1]   B       .S1     $C$L10            ; |92| 
|| [ B1]   LDW     .D2T1   *+SP(16),A5

   [ B1]   LDW     .D2T1   *+SP(12),A4
           NOP             4
           ; BRANCHCC OCCURS {$C$L10}        ; |92| 
;** --------------------------------------------------------------------------*
;** 93	-----------------------    if ( ABS(U$16) < 1.00000000000000002092e-8 ) goto g4;  // [8]

           ADDDP   .L1     A7:A6,A5:A4,A7:A6 ; |98| 
||         LDW     .D2T1   *+SP(28),A4

           LDW     .D2T1   *+SP(32),A5
   [ B0]   BNOP    .S1     $C$L8,4           ; |93| 
           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |98| 
           ; BRANCHCC OCCURS {$C$L8}         ; |93| 
;** --------------------------------------------------------------------------*
;** 98	-----------------------    (*dynamic_info).f = sqrt((U$19+v$2+v$1)*(*this).m_recip_A_D);  // [8]
;** 98	-----------------------    goto g5;  // [8]
           MV      .L2X    A15,B4
           LDDW    .D2T2   *+B4(48),B5:B4    ; |98| 
           NOP             4
           MPYDP   .M1X    B5:B4,A5:A4,A5:A4 ; |98| 
           NOP             3
           CALL    .S1     sqrt              ; |98| 
           ADDKPC  .S2     $C$RL17,B3,4      ; |98| 
$C$RL17:   ; CALL OCCURS {sqrt} {0}          ; |98| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L9,4           ; |98| 
||         STDW    .D1T1   A5:A4,*+A14(16)   ; |98| 
||         ZERO    .L1     A5:A4             ; |100| 

           LDDW    .D1T2   *+A14(16),B13:B12
           ; BRANCH OCCURS {$C$L9}           ; |98| 
;** --------------------------------------------------------------------------*
$C$L8:    
;**	-----------------------g4:
;** 94	-----------------------    (*dynamic_info).f = U$10;  // [8]
           NOP             2
           LDW     .D2T1   *+SP(24),A5
           LDW     .D2T1   *+SP(20),A4
           NOP             4

           STDW    .D1T1   A5:A4,*+A14(16)   ; |94| 
||         ZERO    .L1     A5:A4             ; |100| 

           LDDW    .D1T2   *+A14(16),B13:B12
;** --------------------------------------------------------------------------*
$C$L9:    
;**	-----------------------g5:
;**  	-----------------------    U$20 = (*dynamic_info).f;
;** 100	-----------------------    uniform_displacement = 0.0;  // [8]
;** --------------------------------------------------------------------------*
$C$L10:    
;**	-----------------------g6:
;** 103	-----------------------    if ( U$20 > 1.00000000000000002092e-8 ) goto g8;  // [8]
;** 108	-----------------------    *((double * const)dynamic_info+80) = 0.0;  // [8]
;** 109	-----------------------    (*dynamic_info).le = (*dynamic_info).le-uniform_displacement;  // [8]
;** 110	-----------------------    (*dynamic_info).distance = (*dynamic_info).distance-uniform_displacement;  // [8]
;** 110	-----------------------    goto g9;  // [8]
           ZERO    .L1     A17:A16           ; |108| 
           NOP             3
           CMPGTDP .S2     B13:B12,B11:B10,B0 ; |103| 
           MV      .L2     B13,B5            ; |104| 
   [!B0]   LDDW    .D1T1   *+A14(40),A7:A6   ; |110| 
   [!B0]   LDDW    .D1T1   *+A14(32),A9:A8   ; |109| 
           MV      .L2     B12,B4            ; |104| 
   [!B0]   STDW    .D1T1   A17:A16,*+A14(80) ; |108| 
           NOP             1
   [!B0]   SUBDP   .S1     A7:A6,A5:A4,A7:A6 ; |110| 
   [!B0]   SUBDP   .L1     A9:A8,A5:A4,A9:A8 ; |109| 
           NOP             1
   [!B0]   B       .S1     $C$L11            ; |110| 
   [ B0]   CALL    .S1     __c6xabi_divd     ; |104| 
           NOP             2
   [!B0]   STDW    .D1T1   A7:A6,*+A14(40)   ; |110| 
   [!B0]   STDW    .D1T1   A9:A8,*+A14(32)   ; |109| 
           ; BRANCHCC OCCURS {$C$L11}        ; |110| 
;** --------------------------------------------------------------------------*
;**	-----------------------g8:
;** 104	-----------------------    *((double * const)dynamic_info+80) = uniform_displacement/U$20;  // [8]
           ADDKPC  .S2     $C$RL18,B3,0      ; |104| 
$C$RL18:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |104| 
;** --------------------------------------------------------------------------*
           STDW    .D1T1   A5:A4,*+A14(80)   ; |104| 
;** --------------------------------------------------------------------------*
$C$L11:    
;**	-----------------------g9:
;** 112	-----------------------    *((double * const)dynamic_info+72) = C$2 = ((*dynamic_info).f-(*dynamic_info).fs)/(*dynamic_info).acceleration;  // [8]
;** 113	-----------------------    *((double * const)dynamic_info+88) = C$4 = ((*dynamic_info).f-(*dynamic_info).fe)/(*dynamic_info).deceleration;  // [8]
;** 117	-----------------------    *((double * const)dynamic_info+128) = C$5 = C$2;  // [9]
;** 118	-----------------------    *((double * const)dynamic_info+136) = C$3 = C$5+*((double * const)dynamic_info+80);  // [9]
;** 119	-----------------------    (*dynamic_info).total_time = C$3+C$4;  // [9]
;** 123	-----------------------    *((double * const)dynamic_info+240) = C$1 = (*dynamic_info).ls+(*dynamic_info).fs**((double * const)dynamic_info+72)+(*dynamic_info).acceleration*0.5*pow(C$2, 2.0);  // [12]
;** 124	-----------------------    *((double * const)dynamic_info+248) = C$1+(*dynamic_info).f**((double * const)dynamic_info+80);  // [12]
;**  	-----------------------    return;
           LDDW    .D1T1   *A14,A5:A4        ; |112| 
           LDDW    .D1T1   *+A14(16),A7:A6   ; |112| 
           NOP             4

           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |112| 
||         LDDW    .D1T1   *+A14(48),A7:A6   ; |112| 

           CALL    .S1     __c6xabi_divd     ; |112| 
           ADDKPC  .S2     $C$RL19,B3,2      ; |112| 
           MV      .L2X    A7,B5             ; |112| 
           MV      .L2X    A6,B4             ; |112| 
$C$RL19:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |112| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T2   *+A14(16),B5:B4   ; |113| 

           MV      .L1     A4,A12            ; |112| 
||         MV      .S1     A5,A13            ; |112| 
||         LDDW    .D1T1   *+A14(8),A5:A4    ; |113| 

           STDW    .D1T1   A13:A12,*+A14(72) ; |112| 
           NOP             3
           SUBDP   .L2X    B5:B4,A5:A4,B7:B6 ; |113| 
           LDDW    .D1T1   *+A14(56),A5:A4   ; |113| 
           NOP             6

           MV      .L2X    A4,B4             ; |113| 
||         MV      .L1X    B6,A4             ; |113| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A5,B5             ; |113| 
||         MV      .L1X    B7,A5             ; |113| 

$C$RL20:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |113| 
           LDDW    .D1T1   *+A14(80),A7:A6   ; |118| 
           MV      .L1     A13,A9            ; |112| 
           MV      .L1     A12,A8            ; |112| 
           STDW    .D1T1   A5:A4,*+A14(88)   ; |113| 
           ZERO    .L2     B5
           ADDDP   .L1     A7:A6,A9:A8,A7:A6 ; |118| 
           STDW    .D1T1   A9:A8,*+A14(128)  ; |117| 
           SET     .S2     B5,0x1e,0x1e,B5
           ZERO    .L2     B4                ; |123| 
           NOP             3
           ADDDP   .L1     A5:A4,A7:A6,A17:A16 ; |119| 
           STDW    .D1T1   A7:A6,*+A14(136)  ; |118| 
           MV      .L1     A12,A4            ; |123| 
           MV      .L1     A13,A5            ; |123| 
           NOP             3

           CALLP   .S2     pow,B3
||         STDW    .D1T1   A17:A16,*+A14(176) ; |119| 

$C$RL21:   ; CALL OCCURS {pow} {0}           ; |123| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A14(48),A7:A6   ; |123| 
           LDDW    .D1T2   *A14,B5:B4        ; |123| 
           LDDW    .D1T1   *+A14(72),A9:A8   ; |123| 
           ZERO    .L1     A10               ; |123| 
           LDDW    .D1T2   *+A14(16),B7:B6   ; |124| 
           MPYDP   .M1     A11:A10,A7:A6,A7:A6 ; |123| 
           NOP             1
           MPYDP   .M2X    A9:A8,B5:B4,B5:B4 ; |123| 
           LDDW    .D1T1   *+A14(24),A9:A8   ; |123| 
           NOP             6
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |123| 
           LDDW    .D1T1   *+A14(80),A7:A6   ; |124| 
           NOP             1
           ADDDP   .L1X    B5:B4,A9:A8,A9:A8 ; |123| 
           NOP             3
           MPYDP   .M1X    A7:A6,B7:B6,A7:A6 ; |124| 
           NOP             2
           ADDDP   .L1     A5:A4,A9:A8,A5:A4 ; |123| 
           NOP             6
           ADDDP   .L1     A7:A6,A5:A4,A7:A6 ; |124| 
           STDW    .D1T1   A5:A4,*+A14(240)  ; |123| 
           NOP             5
           STDW    .D1T1   A7:A6,*+A14(248)  ; |124| 
           LDW     .D2T2   *++SP(48),B3      ; |72| 
           LDDW    .D2T1   *++SP,A13:A12     ; |72| 
           LDDW    .D2T1   *++SP,A15:A14     ; |72| 
           LDDW    .D2T2   *++SP,B11:B10     ; |72| 
           LDDW    .D2T2   *++SP,B13:B12     ; |72| 

           RET     .S2     B3                ; |72| 
||         LDW     .D2T1   *++SP(8),A10      ; |72| 

           LDW     .D2T1   *++SP(8),A11      ; |72| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |72| 
	.sect	".text"
	.clink
	.global	_ZN17TVelocityPlanning17GetLastPhaseSpeedEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: TVelocityPlanning::GetLastPhaseSpeed(DynamicInfo *)         *
;*                                                                            *
;*   Regs Modified     : A4,A5,A6,A7,B0,B1,B4,B5,B6,B7,B8,B9                  *
;*   Regs Used         : A4,A5,A6,A7,B0,B1,B3,B4,B5,B6,B7,B8,B9               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN17TVelocityPlanning17GetLastPhaseSpeedEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 183	-----------------------    U$2 = (*dynamic_info).current_time;
;** 183	-----------------------    if ( U$2 >= *((double * const)dynamic_info+128) ) goto g3;
;** 194	-----------------------    return (*dynamic_info).fs+(*dynamic_info).acceleration*U$2;
           LDDW    .D2T2   *+B4(184),B7:B6   ; |183| 
           LDDW    .D2T2   *+B4(128),B9:B8   ; |183| 
           NOP             4
           CMPLTDP .S2     B7:B6,B9:B8,B0    ; |183| 
           NOP             1
   [ B0]   LDDW    .D2T2   *+B4(48),B9:B8    ; |194| 
           MV      .L2     B0,B1             ; guard predicate rewrite
   [!B0]   LDDW    .D2T2   *+B4(136),B9:B8   ; |187| 
   [ B0]   LDDW    .D2T1   *B4,A7:A6         ; |194| 
           NOP             1
   [ B0]   MPYDP   .M2     B7:B6,B9:B8,B9:B8 ; |194| 
           NOP             5
   [ B0]   BNOP    .S1     $C$L12,4          ; |194| 

   [ B0]   ADDDP   .L1X    B9:B8,A7:A6,A5:A4 ; |194| 
||         CMPLTDP .S2     B7:B6,B9:B8,B0    ; |194| 
|| [!B1]   SUBDP   .L2     B7:B6,B9:B8,B7:B6 ; |194| 

           ; BRANCHCC OCCURS {$C$L12}        ; |194| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 187	-----------------------    U$14 = *((double * const)dynamic_info+136);
;** 194	-----------------------    return (U$2 < U$14) ? (*dynamic_info).f : (*dynamic_info).f-(*dynamic_info).deceleration*(U$2-U$14);
           NOP             1
   [!B0]   LDDW    .D2T2   *+B4(56),B9:B8    ; |194| 
   [!B0]   LDDW    .D2T2   *+B4(16),B5:B4    ; |194| 
   [ B0]   LDDW    .D2T2   *+B4(16),B5:B4    ; |194| 
           NOP             2
   [!B0]   MPYDP   .M2     B7:B6,B9:B8,B7:B6 ; |194| 
           NOP             9
   [!B0]   SUBDP   .L2     B5:B4,B7:B6,B5:B4 ; |194| 
           NOP             7
           MV      .L1X    B5,A5             ; |194| 
           MV      .L1X    B4,A4             ; |194| 
;** --------------------------------------------------------------------------*
$C$L12:    
           NOP             1
           RETNOP  .S2     B3,5              ; |195| 
           ; BRANCH OCCURS {B3}              ; |195| 
	.sect	".text:_ZN17TVelocityPlanning17ComputePhaseSpeedEP11DynamicInfo"
	.clink
	.global	_ZN17TVelocityPlanning17ComputePhaseSpeedEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: TVelocityPlanning::ComputePhaseSpeed(DynamicInfo *)         *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : B3                                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN17TVelocityPlanning17ComputePhaseSpeedEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return;
           RETNOP  .S2     B3,5              ; |77| 
           ; BRANCH OCCURS {B3}              ; |77| 
	.sect	".text"
	.clink
	.global	_ZN17TVelocityPlanning17AdjustTimeToRoundEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: TVelocityPlanning::AdjustTimeToRound(DynamicInfo *)         *
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
;*   Local Frame Size  : 0 Args + 20 Auto + 48 Save = 68 byte                 *
;******************************************************************************
_ZN17TVelocityPlanning17AdjustTimeToRoundEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 129	-----------------------    (*dynamic_info).total_time = *((double * const)dynamic_info+72)+*((double * const)dynamic_info+80)+*((double * const)dynamic_info+88);
;** 130	-----------------------    U$14 = (*dynamic_info).total_time;
;** 130	-----------------------    if ( U$14 > (*this).__b_16VelocityPlanning.m_round_time_limit ) goto g6;
           STW     .D2T1   A11,*SP--(8)      ; |127| 

           STDW    .D2T2   B13:B12,*SP--     ; |127| 
||         MV      .L2     B4,B12            ; |127| 

           STDW    .D2T2   B11:B10,*SP--     ; |127| 
           STDW    .D2T1   A15:A14,*SP--     ; |127| 
           STDW    .D2T1   A13:A12,*SP--     ; |127| 
           STW     .D2T1   A10,*SP--(8)      ; |127| 
           LDDW    .D2T2   *+B12(72),B5:B4   ; |129| 
           LDDW    .D2T2   *+B12(80),B7:B6   ; |129| 
           MV      .L1     A4,A12            ; |127| 
           MV      .L2     B3,B13            ; |127| 
           ZERO    .L2     B11:B10           ; |221| 
           ZERO    .L1     A11:A10           ; |215| 
           ADDDP   .L2     B7:B6,B5:B4,B5:B4 ; |129| 
           LDDW    .D2T2   *+B12(88),B7:B6   ; |129| 
           SUB     .D2     SP,24,SP          ; |127| 
           NOP             4
           ADDDP   .L2     B7:B6,B5:B4,B5:B4 ; |129| 
           NOP             6
           STDW    .D2T2   B5:B4,*+B12(176)  ; |129| 

           LDDW    .D2T2   *+B12(176),B5:B4  ; |130| 
||         LDDW    .D1T1   *+A12(24),A5:A4   ; |130| 

           NOP             4
           CMPGTDP .S2X    B5:B4,A5:A4,B0    ; |130| 
           MV      .L1X    B5,A5             ; |221| 

   [ B0]   B       .S1     $C$L13            ; |130| 
|| [ B0]   LDDW    .D1T1   *+A12(8),A7:A6    ; |215| 

   [!B0]   LDDW    .D1T1   *+A12(8),A7:A6    ; |221| 
   [!B0]   CALL    .S1     __c6xabi_divd     ; |221| 
   [ B0]   CALL    .S1     __c6xabi_divd     ; |215| 
           MV      .L1X    B4,A4             ; |221| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L13}        ; |130| 
;** --------------------------------------------------------------------------*
;** 221	-----------------------    if ( modf(U$14/(*this).__b_16VelocityPlanning.m_interpolation_cycle, &y) > 0.0 ) goto g4;  // [17]
;** 221	-----------------------    R$1 = y;  // [17]
;** 221	-----------------------    goto g5;  // [17]
;**	-----------------------g4:
;** 221	-----------------------    R$1 = y+1.0;  // [17]
;**	-----------------------g5:
;** 143	-----------------------    *((double * const)dynamic_info+80) = *((double * const)dynamic_info+80)+((*this).__b_16VelocityPlanning.m_interpolation_cycle*R$1-(*dynamic_info).total_time);
;** 143	-----------------------    goto g10;
           MV      .L2X    A7,B5             ; |221| 

           MV      .L2X    A6,B4             ; |221| 
||         ADDKPC  .S2     $C$RL25,B3,0      ; |221| 

$C$RL25:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |221| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     modf,B3
||         ADDAW   .D2     SP,4,B4           ; |221| 

$C$RL26:   ; CALL OCCURS {modf} {0}          ; |221| 
;** --------------------------------------------------------------------------*

           CMPGTDP .S2X    A5:A4,B11:B10,B0  ; |221| 
||         LDDW    .D2T2   *+SP(16),B7:B6    ; |221| 

           ZERO    .L2     B9
           LDDW    .D2T2   *+SP(16),B5:B4    ; |221| 
           ZERO    .L2     B8                ; |221| 
           SET     .S2     B9,0x14,0x1d,B9
   [ B0]   ADDDP   .L2     B9:B8,B7:B6,B5:B4 ; |221| 
           LDDW    .D1T1   *+A12(8),A5:A4    ; |143| 
           LDDW    .D2T2   *+B12(72),B11:B10 ; |117| 
           LDDW    .D2T1   *+B12(8),A13:A12  ; |148| 
           LDDW    .D2T2   *+B12(88),B9:B8   ; |119| 
           LDDW    .D2T2   *+B12(80),B7:B6   ; |143| 
           NOP             2
           MPYDP   .M1X    B5:B4,A5:A4,A5:A4 ; |143| 
           LDDW    .D2T2   *+B12(176),B5:B4  ; |143| 
           STDW    .D2T2   B11:B10,*+B12(128) ; |117| 
           NOP             8
           SUBDP   .L2X    A5:A4,B5:B4,B5:B4 ; |143| 
           MPYDP   .M1X    A13:A12,B9:B8,A5:A4 ; |148| 
           NOP             5
           ADDDP   .L2     B5:B4,B7:B6,B5:B4 ; |143| 
           LDDW    .D2T2   *+B12(40),B7:B6   ; |148| 
           BNOP    .S1     $C$L14,3          ; |143| 
           ADDDP   .L2     B7:B6,B7:B6,B7:B6 ; |148| 
           STDW    .D2T2   B5:B4,*+B12(80)   ; |143| 
           ; BRANCH OCCURS {$C$L14}          ; |143| 
;** --------------------------------------------------------------------------*
$C$L13:    
;**	-----------------------g6:
;** 215	-----------------------    if ( modf(U$14/(*this).__b_16VelocityPlanning.m_interpolation_cycle, &y) < 0.0 ) goto g8;  // [16]
;** 215	-----------------------    R$2 = y;  // [16]
;** 215	-----------------------    goto g9;  // [16]
;**	-----------------------g8:
;** 215	-----------------------    R$2 = y-1.0;  // [16]
;**	-----------------------g9:
;** 135	-----------------------    C$13 = (*dynamic_info).total_time;
;** 135	-----------------------    ratio_time = (C$13-(*this).__b_16VelocityPlanning.m_interpolation_cycle*R$2)/C$13;
;** 136	-----------------------    C$12 = *((double * const)dynamic_info+72);
;** 136	-----------------------    *((double * const)dynamic_info+72) = C$12-C$12*ratio_time;
;** 137	-----------------------    C$11 = *((double * const)dynamic_info+80);
;** 137	-----------------------    *((double * const)dynamic_info+80) = C$11-C$11*ratio_time;
;** 138	-----------------------    C$10 = *((double * const)dynamic_info+88);
;** 138	-----------------------    *((double * const)dynamic_info+88) = C$10-C$10*ratio_time;
           MV      .L2X    A7,B5             ; |215| 
           ADDKPC  .S2     $C$RL28,B3,0      ; |215| 
           MV      .L2X    A6,B4             ; |215| 
$C$RL28:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |215| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     modf,B3
||         ADD     .L2     8,SP,B4           ; |215| 

$C$RL29:   ; CALL OCCURS {modf} {0}          ; |215| 
           LDDW    .D2T2   *+SP(8),B7:B6     ; |215| 
           ZERO    .L2     B9
           CMPLTDP .S1     A5:A4,A11:A10,A0  ; |215| 
           SET     .S2     B9,0x14,0x1d,B9
           ZERO    .L2     B8                ; |215| 

           LDDW    .D2T2   *+SP(8),B5:B4     ; |215| 
|| [ A0]   SUBDP   .L2     B7:B6,B9:B8,B5:B4 ; |215| 

           LDDW    .D1T1   *+A12(8),A5:A4    ; |135| 
           NOP             6
           MPYDP   .M1X    B5:B4,A5:A4,A5:A4 ; |135| 
           LDDW    .D2T2   *+B12(176),B5:B4  ; |135| 
           NOP             8
           SUBDP   .L1X    B5:B4,A5:A4,A5:A4 ; |135| 
           CALLP   .S2     __c6xabi_divd,B3
$C$RL30:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |135| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *+B12(80),B7:B6   ; |137| 
           LDDW    .D2T2   *+B12(88),B9:B8   ; |138| 
           LDDW    .D2T2   *+B12(72),B5:B4   ; |136| 
           LDDW    .D2T1   *+B12(8),A13:A12  ; |148| 
           NOP             1
           MPYDP   .M1X    A5:A4,B7:B6,A7:A6 ; |137| 
           MPYDP   .M2X    A5:A4,B9:B8,B17:B16 ; |138| 
           NOP             2
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |136| 
           NOP             9
           NOP             1
           SUBDP   .L2X    B5:B4,A5:A4,B5:B4 ; |136| 
           NOP             1

           SUBDP   .L2X    B7:B6,A7:A6,B9:B8 ; |137| 
||         SUBDP   .S2     B9:B8,B17:B16,B7:B6 ; |138| 

           NOP             4
           STDW    .D2T2   B5:B4,*+B12(72)   ; |136| 
           LDDW    .D2T2   *+B12(72),B11:B10 ; |117| 
           STDW    .D2T2   B7:B6,*+B12(88)   ; |138| 
           STDW    .D2T2   B9:B8,*+B12(80)   ; |137| 
           LDDW    .D2T2   *+B12(40),B7:B6   ; |148| 
           LDDW    .D2T2   *+B12(88),B9:B8   ; |119| 
           STDW    .D2T2   B11:B10,*+B12(128) ; |117| 
           NOP             3

           ADDDP   .L2     B7:B6,B7:B6,B7:B6 ; |148| 
||         MPYDP   .M1X    A13:A12,B9:B8,A5:A4 ; |148| 

;** --------------------------------------------------------------------------*
$C$L14:    
;**	-----------------------g10:
;** 117	-----------------------    C$4 = *((double * const)dynamic_info+72);  // [9]
;** 117	-----------------------    *((double * const)dynamic_info+128) = C$9 = C$4;  // [9]
;** 118	-----------------------    C$7 = *((double * const)dynamic_info+80);  // [9]
;** 118	-----------------------    *((double * const)dynamic_info+136) = C$8 = C$9+C$7;  // [9]
;** 119	-----------------------    C$6 = *((double * const)dynamic_info+88);  // [9]
;** 119	-----------------------    (*dynamic_info).total_time = C$8+C$6;  // [9]
;** 148	-----------------------    U$58 = (*dynamic_info).fe;
;** 148	-----------------------    U$55 = (*dynamic_info).fs;
;** 148	-----------------------    C$5 = (*dynamic_info).distance;
;** 148	-----------------------    (*dynamic_info).f = (C$5+C$5-C$4*U$55-C$6*U$58)/((*dynamic_info).total_time+C$7);
;** 151	-----------------------    if ( C$4 <= 1.00000000000000002092e-8 ) goto g12;
           LDDW    .D2T2   *+B12(80),B19:B18 ; |118| 
           LDDW    .D2T2   *B12,B5:B4        ; |148| 
           NOP             3
           ADDDP   .L2     B19:B18,B11:B10,B17:B16 ; |118| 
           MV      .L1X    B4,A11            ; |148| 

           MV      .L1X    B5,A10            ; |148| 
||         MPYDP   .M2     B5:B4,B11:B10,B5:B4 ; |148| 

           NOP             4
           ADDDP   .L2     B9:B8,B17:B16,B21:B20 ; |119| 
           STDW    .D2T2   B17:B16,*+B12(136) ; |118| 
           NOP             3
           SUBDP   .L2     B7:B6,B5:B4,B7:B6 ; |148| 
           NOP             1
           STDW    .D2T2   B21:B20,*+B12(176) ; |119| 
           LDDW    .D2T2   *+B12(176),B5:B4  ; |148| 
           NOP             4

           ADDDP   .L2     B19:B18,B5:B4,B5:B4 ; |148| 
||         SUBDP   .L1X    B7:B6,A5:A4,A5:A4 ; |148| 

           CALL    .S1     __c6xabi_divd     ; |148| 
           ADDKPC  .S2     $C$RL31,B3,4      ; |148| 
$C$RL31:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |148| 
;** --------------------------------------------------------------------------*

           MVKL    .S2     0xe2308c3a,B5
||         STDW    .D2T1   A5:A4,*+B12(16)   ; |148| 

           MVKL    .S2     0x3e45798e,B4
           MVKH    .S2     0xe2308c3a,B5

           MVKH    .S2     0x3e45798e,B4
||         MV      .L2     B5,B6

           MV      .L2     B4,B7
||         MV      .L1X    B5,A15            ; |151| 
||         MV      .S2     B11,B5            ; |152| 

           CMPGTDP .S2     B11:B10,B7:B6,B0  ; |151| 
||         MV      .L1X    B4,A14            ; |151| 

           MV      .L2     B10,B4            ; |152| 

   [!B0]   BNOP    .S1     $C$L15,3          ; |151| 
|| [ B0]   LDDW    .D2T2   *+B12(16),B7:B6   ; |152| 
|| [ B0]   MV      .L2X    A11,B8

   [ B0]   MV      .L2X    A10,B9
           SUBDP   .L2     B7:B6,B9:B8,B7:B6 ; |152| 
           ; BRANCHCC OCCURS {$C$L15}        ; |151| 
;** --------------------------------------------------------------------------*
;** 152	-----------------------    (*dynamic_info).acceleration = ((*dynamic_info).f-U$55)/C$4;
           NOP             3
           CALL    .S1     __c6xabi_divd     ; |152| 
           ADDKPC  .S2     $C$RL32,B3,2      ; |152| 
           MV      .L1X    B6,A4             ; |152| 
           MV      .L1X    B7,A5             ; |152| 
$C$RL32:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |152| 
;** --------------------------------------------------------------------------*
           STDW    .D2T1   A5:A4,*+B12(48)   ; |152| 
;** --------------------------------------------------------------------------*
$C$L15:    
;**	-----------------------g12:
;** 156	-----------------------    C$3 = *((double * const)dynamic_info+88);
;** 156	-----------------------    if ( C$3 <= 1.00000000000000002092e-8 ) goto g14;
           LDDW    .D2T2   *+B12(88),B5:B4   ; |156| 
           NOP             5
           MV      .L2X    A14,B7
           MV      .L2X    A15,B6
           CMPGTDP .S2     B5:B4,B7:B6,B0    ; |156| 
           NOP             1

   [!B0]   BNOP    .S1     $C$L16,3          ; |156| 
|| [ B0]   LDDW    .D2T2   *+B12(16),B7:B6   ; |157| 
|| [!B0]   ADDK    .S2     24,SP             ; |159| 

   [!B0]   LDW     .D2T1   *++SP(8),A10      ; |159| 

           SUBDP   .L1X    B7:B6,A13:A12,A5:A4 ; |157| 
|| [!B0]   LDDW    .D2T1   *++SP,A13:A12     ; |159| 

           ; BRANCHCC OCCURS {$C$L16}        ; |156| 
;** --------------------------------------------------------------------------*
;** 157	-----------------------    (*dynamic_info).deceleration = ((*dynamic_info).f-U$58)/C$3;
;**	-----------------------g14:
;**  	-----------------------    return;
           CALL    .S1     __c6xabi_divd     ; |157| 
           ADDKPC  .S2     $C$RL33,B3,4      ; |157| 
$C$RL33:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |157| 
;** --------------------------------------------------------------------------*

           STDW    .D2T1   A5:A4,*+B12(56)   ; |157| 
||         ADDK    .S2     24,SP             ; |159| 

           LDW     .D2T1   *++SP(8),A10      ; |159| 
           LDDW    .D2T1   *++SP,A13:A12     ; |159| 
;** --------------------------------------------------------------------------*
$C$L16:    

           LDDW    .D2T1   *++SP,A15:A14     ; |159| 
||         MV      .L2     B13,B3            ; |159| 

           LDDW    .D2T2   *++SP,B11:B10     ; |159| 

           LDDW    .D2T2   *++SP,B13:B12     ; |159| 
||         RET     .S2     B3                ; |159| 

           LDW     .D2T1   *++SP(8),A11      ; |159| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |159| 
	.sect	".text"
	.clink
	.global	_ZN17TVelocityPlanning15GetCurveContourEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: TVelocityPlanning::GetCurveContour(DynamicInfo *)           *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,B0,B1,B5,B6,B7,B8,B9,B16,B17                *
;*   Regs Used         : A3,A4,A5,B0,B1,B3,B4,B5,B6,B7,B8,B9,B16,B17          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN17TVelocityPlanning15GetCurveContourEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 75	-----------------------    (*dynamic_info).is_acc_positive = (*dynamic_info).f > (*dynamic_info).fs;
;** 76	-----------------------    (*dynamic_info).is_dec_positive = (*dynamic_info).f > (*dynamic_info).fe;
;** 78	-----------------------    max_acc = (*dynamic_info).acceleration;
;** 81	-----------------------    if ( (*dynamic_info).is_acc_positive ) goto g3;
;** 82	-----------------------    (*dynamic_info).acceleration = -(*dynamic_info).deceleration;
;**	-----------------------g3:
;** 85	-----------------------    if ( (*dynamic_info).is_dec_positive ) goto g5;
;** 86	-----------------------    (*dynamic_info).deceleration = -max_acc;
;**	-----------------------g5:
;**  	-----------------------    return;
           LDDW    .D2T2   *B4,B9:B8         ; |75| 
           LDDW    .D2T1   *+B4(16),A5:A4    ; |75| 
           LDDW    .D2T2   *+B4(16),B7:B6    ; |76| 
           LDDW    .D2T2   *+B4(8),B17:B16   ; |76| 
           ZERO    .L1     A3                ; |86| 
           SET     .S1     A3,31,31,A3       ; |86| 
           CMPGTDP .S2X    A5:A4,B9:B8,B5    ; |75| 
           ZERO    .L1     A5                ; |82| 
           MVK     .S2     64,B8             ; |75| 

           STB     .D2T2   B5,*+B4[B8]       ; |75| 
||         MV      .L2     B8,B5             ; |75| 

           LDB     .D2T2   *+B4[B5],B0       ; |81| 
||         CMPGTDP .S2     B7:B6,B17:B16,B5  ; |76| 

           LDDW    .D2T2   *+B4(48),B7:B6    ; |78| 
           MVK     .S2     65,B8             ; |76| 
           STB     .D2T2   B5,*+B4[B8]       ; |76| 
           MVK     .S2     65,B5             ; |85| 
           LDB     .D2T2   *+B4[B5],B1       ; |85| 
   [!B0]   LDDW    .D2T2   *+B4(56),B9:B8    ; |82| 
           RETNOP  .S2     B3,1              ; |88| 

           XOR     .L1X    B7,A3,A5          ; |86| 
||         SET     .S1     A5,31,31,A3       ; |82| 

           MV      .L1X    B6,A4             ; |86| 

   [!B0]   XOR     .L2X    B9,A3,B7          ; |82| 
|| [!B0]   MV      .S2     B8,B6             ; |82| 
|| [!B1]   STDW    .D2T1   A5:A4,*+B4(56)    ; |86| 

   [!B0]   STDW    .D2T2   B7:B6,*+B4(48)    ; |82| 
           ; BRANCH OCCURS {B3}              ; |88| 
	.sect	".text"
	.clink
	.global	_ZN17TVelocityPlanning11GetDistanceEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: TVelocityPlanning::GetDistance(DynamicInfo *)               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP,A16,A17,A18,*
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_ZN17TVelocityPlanning11GetDistanceEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 36	-----------------------    U$6 = *((double * const)dynamic_info+128);
;** 36	-----------------------    U$3 = (*dynamic_info).current_time;
;** 36	-----------------------    if ( U$3 >= U$6 ) goto g3;

           STW     .D2T1   A11,*SP--(8)      ; |32| 
||         ZERO    .L2     B5
||         MV      .L1     A4,A3             ; |32| 

           STDW    .D2T2   B13:B12,*SP--     ; |32| 
||         MV      .L2     B4,B12            ; |32| 
||         SET     .S2     B5,0x1e,0x1e,B5

           ZERO    .L2     B10               ; |38| 
||         STDW    .D2T2   B11:B10,*SP--     ; |32| 

           STW     .D2T1   A10,*SP--(8)      ; |32| 
           LDDW    .D2T2   *+B12(128),B9:B8  ; |36| 
           LDDW    .D2T2   *+B12(184),B7:B6  ; |36| 
           ZERO    .L2     B11
           ZERO    .L2     B4                ; |38| 
           SET     .S2     B11,0x15,0x1d,B11
           MV      .L2     B3,B13            ; |32| 

           CMPLTDP .S2     B7:B6,B9:B8,B0    ; |36| 
||         MV      .L1X    B7,A11            ; |37| 

           MV      .L1X    B6,A10            ; |37| 

   [!B0]   BNOP    .S1     $C$L17,2          ; |36| 
|| [!B0]   LDDW    .D2T2   *+B12(136),B17:B16 ; |40| 
||         MV      .L2     B0,B1             ; guard predicate rewrite
||         MV      .L1X    B7,A5             ; |37| 

           MV      .L1X    B6,A4             ; |37| 
   [!B1]   SUBDP   .L2     B7:B6,B9:B8,B9:B8 ; |51| 
           CMPLTDP .S2     B7:B6,B17:B16,B0  ; |40| 
           ; BRANCHCC OCCURS {$C$L17}        ; |36| 
;** --------------------------------------------------------------------------*
;** 37	-----------------------    relative_time = U$3;
;** 38	-----------------------    l = (*dynamic_info).ls+(*dynamic_info).fs*relative_time+(*dynamic_info).acceleration*0.5*pow(relative_time, 2.0);
;** 51	-----------------------    return l;
           NOP             1
           CALLP   .S2     pow,B3
$C$RL34:   ; CALL OCCURS {pow} {0}           ; |38| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *+B12(48),B5:B4   ; |38| 
           LDDW    .D2T1   *B12,A7:A6        ; |38| 
           LDDW    .D2T2   *+B12(24),B7:B6   ; |38| 
           MV      .L2     B13,B3            ; |52| 
           NOP             1
           MPYDP   .M2     B11:B10,B5:B4,B5:B4 ; |38| 
           MPYDP   .M1     A11:A10,A7:A6,A7:A6 ; |38| 
           LDW     .D2T1   *++SP(8),A10      ; |52| 
           LDDW    .D2T2   *++SP,B11:B10     ; |52| 
           LDDW    .D2T2   *++SP,B13:B12     ; |52| 
           LDW     .D2T1   *++SP(8),A11      ; |52| 
           NOP             5
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |38| 
           ADDDP   .L2X    A7:A6,B7:B6,B5:B4 ; |38| 
           NOP             8
           ADDDP   .L1X    A5:A4,B5:B4,A5:A4 ; |38| 
           RETNOP  .S2     B3,5              ; |52| 
           ; BRANCH OCCURS {B3}              ; |52| 
;** --------------------------------------------------------------------------*
$C$L17:    
;**	-----------------------g3:
;** 40	-----------------------    U$21 = *((double * const)dynamic_info+136);
;** 40	-----------------------    if ( U$3 >= U$21 ) goto g5;
;** 51	-----------------------    return *((double * const)dynamic_info+240)+(*dynamic_info).f*(U$3-U$6);
           NOP             1
   [ B0]   LDDW    .D2T2   *+B12(16),B19:B18 ; |51| 
   [!B0]   SUBDP   .L2     B7:B6,B17:B16,B9:B8 ; |46| 
   [!B0]   LDDW    .D1T1   *+A3(16),A5:A4    ; |44| 
   [!B0]   LDDW    .D2T2   *+B12(176),B19:B18 ; |44| 
   [ B0]   LDDW    .D2T1   *+B12(240),A7:A6  ; |51| 
   [ B0]   MPYDP   .M2     B9:B8,B19:B18,B9:B8 ; |51| 
           NOP             2
   [!B0]   SUBDP   .L2X    B19:B18,A5:A4,B17:B16 ; |44| 
   [!B0]   MV      .L1X    B8,A11            ; |46| 
   [!B0]   MV      .L1X    B9,A10            ; |46| 
   [ B0]   BNOP    .S1     $C$L18,4          ; |51| 

   [ B0]   ADDDP   .L1X    B9:B8,A7:A6,A5:A4 ; |51| 
||         CMPLTDP .S2     B7:B6,B17:B16,B0  ; |44| 

           ; BRANCHCC OCCURS {$C$L18}        ; |51| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 44	-----------------------    if ( U$3 >= (*dynamic_info).total_time-(*this).__b_16VelocityPlanning.m_half_interpolation_cycle ) goto g7;
           NOP             2
   [!B0]   B       .S1     $C$L18            ; |44| 
   [ B0]   CALL    .S1     pow               ; |46| 
           NOP             2
           MV      .L1X    B9,A5             ; |46| 

           MV      .L1X    B8,A4             ; |46| 
|| [!B0]   LDDW    .D2T1   *+B12(32),A5:A4   ; |49| 

           ; BRANCHCC OCCURS {$C$L18}        ; |44| 
;** --------------------------------------------------------------------------*
;** 46	-----------------------    C$37 = U$3-U$21;
;** 46	-----------------------    l = *((double * const)dynamic_info+248)+(*dynamic_info).f*C$37-(*dynamic_info).deceleration*0.5*pow(C$37, 2.0);
;** 51	-----------------------    return l;
           ADDKPC  .S2     $C$RL35,B3,0      ; |46| 
$C$RL35:   ; CALL OCCURS {pow} {0}           ; |46| 
;** --------------------------------------------------------------------------*
;**	-----------------------g7:
;** 49	-----------------------    return (*dynamic_info).le;
           LDDW    .D2T2   *+B12(56),B5:B4   ; |46| 
           LDDW    .D2T1   *+B12(16),A9:A8   ; |46| 
           MV      .L1     A10,A7
           MV      .L1     A11,A6
           LDDW    .D2T2   *+B12(248),B7:B6  ; |46| 
           MPYDP   .M2     B11:B10,B5:B4,B5:B4 ; |46| 
           MPYDP   .M1     A7:A6,A9:A8,A7:A6 ; |46| 
           LDW     .D2T1   *++SP(8),A10      ; |52| 
           LDDW    .D2T2   *++SP,B11:B10     ; |52| 
           MV      .L2     B13,B3            ; |52| 
           LDDW    .D2T2   *++SP,B13:B12     ; |52| 
           LDW     .D2T1   *++SP(8),A11      ; |52| 
           NOP             4
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |46| 
           ADDDP   .L2X    A7:A6,B7:B6,B5:B4 ; |46| 
           NOP             8
           SUBDP   .L1X    B5:B4,A5:A4,A5:A4 ; |46| 
           RETNOP  .S2     B3,5              ; |52| 
           ; BRANCH OCCURS {B3}              ; |52| 
;** --------------------------------------------------------------------------*
$C$L18:    
           LDW     .D2T1   *++SP(8),A10      ; |52| 
           LDDW    .D2T2   *++SP,B11:B10     ; |52| 

           LDDW    .D2T2   *++SP,B13:B12     ; |52| 
||         RET     .S2     B3                ; |52| 

           LDW     .D2T1   *++SP(8),A11      ; |52| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |52| 
;; Inlined function references:
;; [  8] TVelocityPlanning::ComputeTimeLength(DynamicInfo *)
;; [  9] TVelocityPlanning::ComputePhaseTime(DynamicInfo *)
;; [ 10] TVelocityPlanning::ComputeUniformDistance(DynamicInfo *)
;; [ 12] TVelocityPlanning::ComputePhaseDistance(DynamicInfo *)
;; [ 16] std::floor(double)
;; [ 17] std::ceil(double)
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
	.group    "_ZN17TVelocityPlanning17ComputePhaseSpeedEP11DynamicInfo", 1
	.gmember  ".text:_ZN17TVelocityPlanning17ComputePhaseSpeedEP11DynamicInfo"
	.endgroup
	.group    "_ZTI16VelocityPlanning", 1
	.gmember  ".const:_ZTI16VelocityPlanning"
	.endgroup
	.group    "_ZTI17TVelocityPlanning", 1
	.gmember  ".const:_ZTI17TVelocityPlanning"
	.endgroup
	.group    "_ZTS16VelocityPlanning", 1
	.gmember  ".const:_ZTS16VelocityPlanning"
	.endgroup
	.group    "_ZTS17TVelocityPlanning", 1
	.gmember  ".const:_ZTS17TVelocityPlanning"
	.endgroup
	.group    "_ZTV17TVelocityPlanning", 1
	.gmember  ".const:_ZTV17TVelocityPlanning"
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
