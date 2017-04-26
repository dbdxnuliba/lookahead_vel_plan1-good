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


;*****************************************************************************
;* FUNCTION SYNONYMS                                                         *
;*****************************************************************************
	.symalias _ZN16VelocityPlanningC2Ed, _ZN16VelocityPlanningC1Ed
	.global	_ZTV16VelocityPlanning
	.sect	".const:_ZTV16VelocityPlanning"
	.align	8
	.elfsym	_ZTV16VelocityPlanning,SYM_SIZE(36)
_ZTV16VelocityPlanning:
	.field	0,32			; _ZTV16VelocityPlanning[0] @ 0
	.field	_ZTI16VelocityPlanning,32		; _ZTV16VelocityPlanning[1] @ 32
	.field	__cxa_pure_virtual,32		; _ZTV16VelocityPlanning[2] @ 64
	.field	__cxa_pure_virtual,32		; _ZTV16VelocityPlanning[3] @ 96
	.field	__cxa_pure_virtual,32		; _ZTV16VelocityPlanning[4] @ 128
	.field	__cxa_pure_virtual,32		; _ZTV16VelocityPlanning[5] @ 160
	.field	__cxa_pure_virtual,32		; _ZTV16VelocityPlanning[6] @ 192
	.field	__cxa_pure_virtual,32		; _ZTV16VelocityPlanning[7] @ 224
	.field	__cxa_pure_virtual,32		; _ZTV16VelocityPlanning[8] @ 256

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

;	/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/opt6x --call_assumptions=0 --gen_opt_info=2 /tmp/05731SEuooR /tmp/05731sRtBQf --opt_info_filename=src/interpolation/velocity_planning.nfo 
	.sect	".text"
	.clink
	.global	_ZN16VelocityPlanningC1Ed

;******************************************************************************
;* FUNCTION NAME: VelocityPlanning::VelocityPlanning(double)                  *
;*                                                                            *
;*   Regs Modified     : A3,A6,A7,A8,A9,B6,B7,B8                              *
;*   Regs Used         : A3,A4,A6,A7,A8,A9,B3,B4,B5,B6,B7,B8                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN16VelocityPlanningC1Ed:
;** --------------------------------------------------------------------------*
;** 15	-----------------------    (*this).__vptr = &Virtual function table for VelocityPlanning[2];
;** 16	-----------------------    (*this).m_interpolation_cycle = interpolation_cycle;
;** 18	-----------------------    (*this).m_round_time_limit = interpolation_cycle*10.0;
;** 19	-----------------------    (*this).m_half_interpolation_cycle = interpolation_cycle*0.5;
;** 20	-----------------------    return this;
           ZERO    .L1     A7

           SET     .S1     A7,0x15,0x1d,A7
||         ZERO    .L1     A6                ; |19| 

           ZERO    .L1     A9

           MVKH    .S1     0x40240000,A9
||         ZERO    .L1     A8                ; |19| 
||         MPYDP   .M2X    A7:A6,B5:B4,B7:B6 ; |19| 

           MPYDP   .M1X    A9:A8,B5:B4,A7:A6 ; |18| 
           MVKL    .S2     _ZTV16VelocityPlanning+8,B8
           MV      .L1     A4,A3             ; |15| 
           MVKH    .S2     _ZTV16VelocityPlanning+8,B8
           STDW    .D1T2   B5:B4,*+A3(8)     ; |16| 
           RETNOP  .S2     B3,2              ; |20| 
           STW     .D1T2   B8,*A3            ; |15| 
           STDW    .D1T2   B7:B6,*+A3(16)    ; |19| 
           STDW    .D1T1   A7:A6,*+A3(24)    ; |18| 
           ; BRANCH OCCURS {B3}              ; |20| 
	.sect	".text:_ZN16VelocityPlanningC2Ed"
	.clink
	.global	_ZN16VelocityPlanningC2Ed

;******************************************************************************
;* FUNCTION NAME: VelocityPlanning::VelocityPlanning(double) [subobject]      *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A6,A7,A8,A9,B3,B6,B7,B8,B30,B31             *
;*   Regs Used         : A0,A3,A4,A6,A7,A8,A9,B3,B4,B5,B6,B7,B8,SP,B30,B31    *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN16VelocityPlanningC2Ed:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return VelocityPlanning::VelocityPlanning(this, $P$T0);

           MV      .L1X    B3,A0
||         CALLP   .S2     _ZN16VelocityPlanningC1Ed,B3

$C$RL0:    ; CALL OCCURS {_ZN16VelocityPlanningC1Ed} {0} 
;** --------------------------------------------------------------------------*
           RETNOP  .S2X    A0,5
           ; BRANCH OCCURS {A0}  
	.sect	".text"
	.clink
	.global	_ZN16VelocityPlanning12TrimEndSpeedEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: VelocityPlanning::TrimEndSpeed(DynamicInfo *)               *
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
_ZN16VelocityPlanning12TrimEndSpeedEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 68	-----------------------    C$5 = (*dynamic_info).fe;
;** 68	-----------------------    pow_end_speed = C$5*C$5;
;** 70	-----------------------    U$3 = C$5;
;** 70	-----------------------    U$6 = (*dynamic_info).fs;
;** 70	-----------------------    if ( U$6 > U$3 ) goto g4;
           STW     .D2T1   A11,*SP--(8)      ; |67| 

           STW     .D2T1   A10,*SP--(8)      ; |67| 
||         MV      .L1X    B4,A10            ; |67| 

           STDW    .D2T2   B13:B12,*SP--     ; |67| 
           STDW    .D2T2   B11:B10,*SP--     ; |67| 
           STDW    .D2T1   A15:A14,*SP--     ; |67| 
           STDW    .D2T1   A13:A12,*SP--     ; |67| 
           STW     .D2T2   B3,*SP--(24)      ; |67| 
           LDDW    .D2T2   *+B4(8),B11:B10   ; |68| 
           LDDW    .D2T2   *B4,B5:B4         ; |70| 
           ZERO    .L2     B19:B18           ; |91| 
           MV      .L1     A4,A15            ; |67| 
           ZERO    .L1     A5:A4             ; |74| 
           NOP             1
           MPYDP   .M2     B5:B4,B5:B4,B7:B6 ; |74| 
           CMPGTDP .S2     B5:B4,B11:B10,B0  ; |70| 
           NOP             2
           MPYDP   .M2     B5:B4,B5:B4,B17:B16 ; |91| 
           NOP             3
           MPYDP   .M2     B11:B10,B11:B10,B5:B4 ; |68| 
           NOP             2

           MV      .L1X    B6,A14            ; |74| 
|| [ B0]   MV      .L2X    A10,B6

           MV      .L1X    B7,A13            ; |74| 
|| [!B0]   MV      .L2X    A10,B6
||         MPYDP   .M2     B11:B10,B11:B10,B9:B8 ; |91| 

   [ B0]   LDDW    .D2T2   *+B6(56),B13:B12  ; |74| 
   [ B0]   LDDW    .D2T2   *+B6(40),B7:B6    ; |74| 
   [ B0]   BNOP    .S1     $C$L1,3           ; |70| 
           MV      .L1X    B5,A11            ; |68| 

           MV      .L1X    B4,A12            ; |68| 
|| [ B0]   ADDDP   .L2     B13:B12,B13:B12,B5:B4 ; |74| 
|| [!B0]   LDDW    .D2T2   *+B6(48),B5:B4    ; |91| 

           ; BRANCHCC OCCURS {$C$L1}         ; |70| 
;** --------------------------------------------------------------------------*
;** 91	-----------------------    C$4 = (*dynamic_info).acceleration;
;** 91	-----------------------    C$3 = U$6*U$6+(C$4+C$4)*(*dynamic_info).distance;
;** 91	-----------------------    if ( U$3*U$3-C$3 <= 0.0 ) goto g9;
           LDDW    .D2T2   *+B6(40),B7:B6    ; |91| 
           NOP             3
           ADDDP   .L2     B5:B4,B5:B4,B5:B4 ; |91| 
           NOP             6
           MPYDP   .M2     B7:B6,B5:B4,B5:B4 ; |91| 
           NOP             9
           ADDDP   .L2     B5:B4,B17:B16,B5:B4 ; |91| 
           NOP             6
           SUBDP   .L2     B9:B8,B5:B4,B7:B6 ; |91| 
           MV      .L1X    B5,A5             ; |92| 
           MV      .L1X    B4,A4             ; |92| 
           NOP             4
           CMPGTDP .S2     B7:B6,B19:B18,B0  ; |91| 
           NOP             1

   [!B0]   LDW     .D2T2   *++SP(24),B3      ; |96| 
|| [!B0]   B       .S1     $C$L4             ; |91| 

   [ B0]   CALL    .S1     sqrt              ; |92| 
|| [!B0]   LDDW    .D2T1   *++SP,A13:A12     ; |96| 

   [!B0]   LDDW    .D2T1   *++SP,A15:A14     ; |96| 
   [!B0]   LDDW    .D2T2   *++SP,B11:B10     ; |96| 
   [!B0]   LDDW    .D2T2   *++SP,B13:B12     ; |96| 

   [!B0]   RET     .S2     B3                ; |96| 
|| [!B0]   LDW     .D2T1   *++SP(8),A10      ; |96| 

           ; BRANCHCC OCCURS {$C$L4}         ; |91| 
;** --------------------------------------------------------------------------*
;** 92	-----------------------    (*dynamic_info).fe = sqrt(C$3);
;** 93	-----------------------    (*dynamic_info).f = (*dynamic_info).fe;
;** 93	-----------------------    goto g9;
           ADDKPC  .S2     $C$RL1,B3,0       ; |92| 
$C$RL1:    ; CALL OCCURS {sqrt} {0}          ; |92| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A10,B6            ; |92| 
           STDW    .D2T1   A5:A4,*+B6(8)     ; |92| 
           LDDW    .D2T2   *+B6(8),B5:B4     ; |93| 
           NOP             4
           STDW    .D2T2   B5:B4,*+B6(16)    ; |93| 
           LDW     .D2T2   *++SP(24),B3      ; |96| 
           LDDW    .D2T1   *++SP,A13:A12     ; |96| 
           LDDW    .D2T1   *++SP,A15:A14     ; |96| 
           LDDW    .D2T2   *++SP,B11:B10     ; |96| 
           LDDW    .D2T2   *++SP,B13:B12     ; |96| 

           LDW     .D2T1   *++SP(8),A10      ; |96| 
||         RET     .S2     B3                ; |96| 

           LDW     .D2T1   *++SP(8),A11      ; |96| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |96| 
;** --------------------------------------------------------------------------*
$C$L1:    
;**	-----------------------g4:
;** 74	-----------------------    U$12 = (*dynamic_info).distance;
;** 74	-----------------------    U$21 = (*dynamic_info).deceleration;
;** 74	-----------------------    C$1 = U$6*U$6;
;** 74	-----------------------    C$2 = C$1-(U$21+U$21)*U$12;
;** 74	-----------------------    if ( C$2-pow_end_speed <= 0.0 ) goto g9;
           STW     .D2T2   B6,*+SP(4)        ; |74| 
           STW     .D2T2   B7,*+SP(8)        ; |74| 
           NOP             4
           MPYDP   .M2     B7:B6,B5:B4,B5:B4 ; |74| 
           NOP             7
           MV      .L2X    A14,B6
           MV      .L2X    A13,B7
           SUBDP   .L2     B7:B6,B5:B4,B9:B8 ; |74| 
           MV      .S2X    A12,B4
           MV      .L2X    A11,B5
           MVKL    .S2     0xe2308c3a,B6
           MVKL    .S2     0x3e45798e,B7
           MVKH    .S2     0xe2308c3a,B6
           MVKH    .S2     0x3e45798e,B7
           SUBDP   .L2     B9:B8,B5:B4,B5:B4 ; |74| 
           CMPLTDP .S2     B11:B10,B7:B6,B31 ; |77| 
           NOP             6
           CMPGTDP .S1X    B5:B4,A5:A4,A0    ; |74| 
           STW     .D2T2   B31,*+SP(12)      ; |77| 
   [!A0]   B       .S1     $C$L3             ; |74| 
   [ A0]   CALL    .S1     sqrt              ; |75| 
           MV      .L1X    B8,A4             ; |75| 
           MV      .L1X    B9,A5             ; |75| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L3}         ; |74| 
;** --------------------------------------------------------------------------*
;** 75	-----------------------    modify_fe = sqrt(C$2);
;** 77	-----------------------    if ( U$3 >= 1.00000000000000002092e-8 ) goto g8;
           ADDKPC  .S2     $C$RL2,B3,0       ; |75| 
$C$RL2:    ; CALL OCCURS {sqrt} {0}          ; |75| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A6             ; |75| 
||         LDW     .D2T1   *+SP(12),A0       ; |77| 

           MV      .L1     A5,A7             ; |75| 
           NOP             1
           SUBDP   .S2X    A7:A6,B11:B10,B9:B8 ; |77| 
           NOP             1

   [ A0]   LDDW    .D1T1   *+A15(8),A5:A4    ; |77| 
|| [!A0]   B       .S1     $C$L2             ; |77| 
|| [ A0]   MV      .L2X    A11,B17

   [ A0]   MV      .L2X    A12,B16
   [ A0]   MV      .L2X    A13,B5
   [ A0]   MV      .L2X    A14,B4
   [ A0]   SUBDP   .L2     B5:B4,B17:B16,B17:B16 ; |78| 
           MPYDP   .M2X    B13:B12,A5:A4,B7:B6 ; |77| 
           ; BRANCHCC OCCURS {$C$L2}         ; |77| 
;** --------------------------------------------------------------------------*
;** 77	-----------------------    if ( modify_fe-U$3 >= (*this).m_interpolation_cycle*U$21 ) goto g8;
           LDW     .D2T2   *+SP(4),B4
           LDW     .D2T2   *+SP(8),B5
           NOP             4
           ABSDP   .S2     B17:B16,B17:B16   ; |78| 
           ADDDP   .L2     B5:B4,B5:B4,B5:B4 ; |78| 
           NOP             1
           CMPLTDP .S2     B9:B8,B7:B6,B0    ; |77| 
           MV      .L1X    B16,A4            ; |78| 
   [!B0]   B       .S1     $C$L3             ; |77| 
   [ B0]   CALL    .S1     __c6xabi_divd     ; |78| 
           MV      .L1X    B17,A5            ; |78| 
   [!B0]   MV      .L2X    A10,B4
   [!B0]   STDW    .D2T1   A7:A6,*+B4(8)     ; |83| 
   [!B0]   STDW    .D2T1   A7:A6,*+B4(16)    ; |84| 
           ; BRANCHCC OCCURS {$C$L3}         ; |77| 
;** --------------------------------------------------------------------------*
;** 78	-----------------------    (*dynamic_info).deceleration = ABS(C$1-pow_end_speed)/(U$12+U$12);
;** 79	-----------------------    (*dynamic_info).acceleration = (*dynamic_info).deceleration;
;** 80	-----------------------    (*dynamic_info).f = U$3;
;** 81	-----------------------    goto g9;
           ADDKPC  .S2     $C$RL3,B3,0       ; |78| 
$C$RL3:    ; CALL OCCURS {__c6xabi_divd} {0}  ; |78| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A10,B4            ; |78| 
           STDW    .D2T1   A5:A4,*+B4(56)    ; |78| 
           LDDW    .D2T2   *+B4(56),B7:B6    ; |79| 
           STDW    .D2T2   B11:B10,*+B4(16)  ; |80| 
           NOP             3
           STDW    .D2T2   B7:B6,*+B4(48)    ; |79| 
           LDW     .D2T2   *++SP(24),B3      ; |96| 
           LDDW    .D2T1   *++SP,A13:A12     ; |96| 
           LDDW    .D2T1   *++SP,A15:A14     ; |96| 
           LDDW    .D2T2   *++SP,B11:B10     ; |96| 
           LDDW    .D2T2   *++SP,B13:B12     ; |96| 

           LDW     .D2T1   *++SP(8),A10      ; |96| 
||         RET     .S2     B3                ; |96| 

           LDW     .D2T1   *++SP(8),A11      ; |96| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |96| 
;** --------------------------------------------------------------------------*
$C$L2:    
;**	-----------------------g8:
;** 83	-----------------------    (*dynamic_info).fe = modify_fe;
;** 84	-----------------------    (*dynamic_info).f = modify_fe;
;**	-----------------------g9:
;**  	-----------------------    return;
           NOP             3
           MV      .S2X    A10,B4
           STDW    .D2T1   A7:A6,*+B4(8)     ; |83| 
           STDW    .D2T1   A7:A6,*+B4(16)    ; |84| 
;** --------------------------------------------------------------------------*
$C$L3:    
           LDW     .D2T2   *++SP(24),B3      ; |96| 
           LDDW    .D2T1   *++SP,A13:A12     ; |96| 
           LDDW    .D2T1   *++SP,A15:A14     ; |96| 
           LDDW    .D2T2   *++SP,B11:B10     ; |96| 
           LDDW    .D2T2   *++SP,B13:B12     ; |96| 

           RET     .S2     B3                ; |96| 
||         LDW     .D2T1   *++SP(8),A10      ; |96| 

;** --------------------------------------------------------------------------*
$C$L4:    
           LDW     .D2T1   *++SP(8),A11      ; |96| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |96| 
	.sect	".text"
	.clink
	.global	_ZN16VelocityPlanning12PlanVelocityEP11DynamicInfo

;******************************************************************************
;* FUNCTION NAME: VelocityPlanning::PlanVelocity(DynamicInfo *)               *
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
;*   Local Frame Size  : 0 Args + 16 Auto + 56 Save = 72 byte                 *
;******************************************************************************
_ZN16VelocityPlanning12PlanVelocityEP11DynamicInfo:
;** --------------------------------------------------------------------------*
;** 23	-----------------------    (*dynamic_info).distance = (*dynamic_info).le-(*dynamic_info).ls;
;** 25	-----------------------    VelocityPlanning::TrimEndSpeed(this, dynamic_info);
;** 27	-----------------------    (*(void (*)())*((*this).__vptr+12))(this, dynamic_info);
;** 29	-----------------------    (*(void (*)())*((*this).__vptr+8))(this, dynamic_info);
;** 31	-----------------------    U$17 = (*dynamic_info).fe;
;** 31	-----------------------    (*dynamic_info).last_fe = U$17;
;** 32	-----------------------    last_left_time = (*dynamic_info).left_time;
;** 34	-----------------------    U$19 = last_left_time;
;** 34	-----------------------    (*dynamic_info).total_time = (*dynamic_info).total_time+U$19;
;** 35	-----------------------    v$1 = (*this).m_interpolation_cycle;
;** 35	-----------------------    (*dynamic_info).step_number = (int)((*dynamic_info).total_time/v$1);
;** 36	-----------------------    init_total_time = (*dynamic_info).total_time;
;** 37	-----------------------    C$2 = (*dynamic_info).step_number;
;** 37	-----------------------    round_time = (double)C$2*v$1;
;** 38	-----------------------    left_time = init_total_time-round_time;
;** 39	-----------------------    if ( !((left_time <= 1.00000000000000002092e-8)|(U$17 <= 1.00000000000000002092e-8)|(C$2 == 0u)) ) goto g5;
           STW     .D2T1   A11,*SP--(8)      ; |22| 
           STW     .D2T1   A10,*SP--(8)      ; |22| 
           STDW    .D2T2   B13:B12,*SP--     ; |22| 
           STDW    .D2T2   B11:B10,*SP--     ; |22| 
           STDW    .D2T1   A15:A14,*SP--     ; |22| 
           STDW    .D2T1   A13:A12,*SP--     ; |22| 

           STW     .D2T2   B3,*SP--(24)      ; |22| 
||         MV      .L1X    B4,A15            ; |22| 

           LDDW    .D1T2   *+A15(24),B5:B4   ; |23| 

           MV      .L1     A4,A14            ; |22| 
||         LDDW    .D1T1   *+A15(32),A5:A4   ; |23| 

           NOP             4
           SUBDP   .L1X    A5:A4,B5:B4,A5:A4 ; |23| 
           MV      .L2X    A15,B4            ; |25| 
           NOP             5

           CALLP   .S2     _ZN16VelocityPlanning12TrimEndSpeedEP11DynamicInfo,B3
||         STDW    .D1T1   A5:A4,*+A15(40)   ; |23| 
||         MV      .L1     A14,A4            ; |25| 

$C$RL4:    ; CALL OCCURS {_ZN16VelocityPlanning12TrimEndSpeedEP11DynamicInfo} {0}  ; |25| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *A14,B4           ; |27| 
           MV      .L1     A14,A4            ; |27| 
           NOP             3
           LDW     .D2T2   *+B4(12),B5       ; |27| 
           MV      .L2X    A15,B4            ; |27| 
           NOP             3
           CALL    .S2     B5                ; |27| 
           ADDKPC  .S2     $C$RL5,B3,4       ; |27| 
$C$RL5:    ; CALL OCCURS {B5} {0}            ; |27| 
           LDW     .D1T2   *A14,B4           ; |29| 
           MV      .L1     A14,A4            ; |29| 
           NOP             3
           LDW     .D2T2   *+B4(8),B5        ; |29| 
           MV      .L2X    A15,B4            ; |29| 
           NOP             3
           CALL    .S2     B5                ; |29| 
           ADDKPC  .S2     $C$RL6,B3,4       ; |29| 
$C$RL6:    ; CALL OCCURS {B5} {0}            ; |29| 
           MVK     .S1     344,A3            ; |32| 
           ADD     .L1     A3,A15,A3         ; |32| 
           LDDW    .D1T1   *A3,A5:A4         ; |32| 
           MVK     .S2     360,B4            ; |31| 
           ADD     .L2X    B4,A15,B4         ; |31| 
           NOP             2
           STW     .D2T1   A4,*+SP(12)       ; |32| 

           MV      .L2X    A4,B13            ; |34| 
||         STW     .D2T1   A5,*+SP(16)       ; |32| 

           MV      .L1     A4,A6             ; |34| 
||         MV      .S1     A5,A7
||         MV      .L2X    A5,B12
||         LDDW    .D1T1   *+A15(176),A5:A4  ; |34| 

           NOP             4
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |34| 
           LDDW    .D1T1   *+A15(8),A7:A6    ; |31| 
           NOP             5
           STDW    .D1T1   A5:A4,*+A15(176)  ; |34| 
           STDW    .D2T1   A7:A6,*B4         ; |31| 
           LDDW    .D1T1   *+A14(8),A13:A12  ; |35| 
           MV      .L2X    A7,B10            ; |31| 
           MV      .L2X    A6,B11            ; |31| 
           LDDW    .D1T1   *+A15(176),A5:A4  ; |35| 
           NOP             1
           MV      .L2X    A12,B4            ; |35| 

           MV      .L2X    A13,B5            ; |35| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL7:    ; CALL OCCURS {__c6xabi_divd} {0}  ; |35| 
;** --------------------------------------------------------------------------*
           DPTRUNC .L1     A5:A4,A3          ; |35| 
           MVK     .S2     336,B4            ; |35| 
           MVKL    .S2     0x3e45798e,B5
           ADD     .S1X    B4,A15,A4         ; |35| 

           STW     .D1T1   A3,*A4            ; |35| 
||         ADD     .L1X    B4,A15,A3         ; |37| 

           LDW     .D1T1   *A3,A3            ; |37| 
           MVKH    .S2     0x3e45798e,B5
           MVKL    .S2     0xe2308c3a,B4
           MVKH    .S2     0xe2308c3a,B4
           MV      .L1X    B11,A8
           INTDPU  .L1     A3,A5:A4          ; |37| 
           MV      .L1X    B10,A9
           NOP             3
           MPYDP   .M1     A13:A12,A5:A4,A11:A10 ; |37| 
           LDDW    .D1T1   *+A15(176),A5:A4  ; |36| 
           NOP             8
           SUBDP   .L1     A5:A4,A11:A10,A7:A6 ; |38| 
           NOP             6

           STW     .D2T1   A7,*+SP(8)        ; |38| 
||         MV      .L1X    B10,A7            ; |39| 

           STW     .D2T1   A6,*+SP(4)        ; |38| 
||         MV      .L1X    B11,A6            ; |39| 

           NOP             1

           CMPGTDP .S2X    A7:A6,B5:B4,B7    ; |39| 
||         LDW     .D2T1   *+SP(8),A7        ; |39| 

           LDW     .D2T1   *+SP(4),A6        ; |39| 
           NOP             4
           CMPGTDP .S2X    A7:A6,B5:B4,B6    ; |39| 
           MV      .L1X    B12,A7            ; |51| 

           AND     .S2     B6,B7,B7
||         CMPEQ   .L2X    A3,0,B6           ; |39| 
||         MVK     .S1     344,A3            ; |46| 

           ADD     .S1     A3,A15,A6         ; |46| 
||         XOR     .L2     1,B7,B7
||         CMPLTDP .S2X    A9:A8,B5:B4,B5    ; |51| 
||         SUBDP   .L1     A5:A4,A11:A10,A9:A8 ; |51| 

           OR      .L2     B6,B7,B0          ; |39| 
||         MVK     .S1     352,A3            ; |47| 
||         MV      .D1     A14,A4            ; |44| 

   [!B0]   B       .S2     $C$L5             ; |39| 
||         MV      .L2X    A6,B10            ; |51| 
||         MV      .L1X    B13,A6            ; |51| 
|| [ B0]   LDDW    .D1T1   *+A14(16),A5:A4   ; |51| 
||         ADD     .S1     A3,A15,A3         ; |47| 

           SUBDP   .L1     A11:A10,A7:A6,A7:A6 ; |42| 
           MV      .L2X    A15,B4            ; |44| 
           MV      .L2X    A3,B11            ; |51| 
   [!B0]   LDW     .D1T1   *A14,A3           ; |44| 
   [ B0]   CMPGTDP .S1     A9:A8,A5:A4,A3    ; |51| 
           ; BRANCHCC OCCURS {$C$L5}         ; |39| 
;** --------------------------------------------------------------------------*
;** 51	-----------------------    if ( !((init_total_time-round_time > (*this).m_half_interpolation_cycle)|(U$17 < 1.00000000000000002092e-8)) ) goto g4;
;** 53	-----------------------    (*dynamic_info).step_number = (*dynamic_info).step_number+1u;
;**	-----------------------g4:
;** 56	-----------------------    (*dynamic_info).total_time = round_time+v$1;
;** 57	-----------------------    (*dynamic_info).left_time = C$1 = 0.0;
;** 58	-----------------------    (*dynamic_info).left_dist = C$1;
;** 58	-----------------------    goto g6;

           ADDDP   .L1     A13:A12,A11:A10,A5:A4 ; |56| 
||         MVK     .S2     344,B4            ; |57| 
||         LDDW    .D1T1   *+A15(24),A9:A8   ; |64| 

           MVK     .S2     352,B8            ; |58| 
||         ADD     .L2X    B4,A15,B7         ; |57| 

           MVK     .S1     336,A6            ; |53| 
||         OR      .S2X    B5,A3,B0          ; |51| 
||         ZERO    .L2     B5:B4             ; |57| 

           ADD     .L1     A6,A15,A3         ; |53| 
||         ADD     .S1     A6,A15,A31        ; |53| 
||         ADD     .L2X    B8,A15,B6         ; |58| 
||         STDW    .D2T2   B5:B4,*B7         ; |57| 

   [ B0]   LDW     .D1T1   *A3,A3            ; |53| 
||         STDW    .D2T2   B5:B4,*B6         ; |58| 
||         ZERO    .L2     B4                ; |63| 
||         ZERO    .S2     B5                ; |62| 

           BNOP    .S1     $C$L6,1           ; |58| 
||         SET     .S2     B4,31,31,B4       ; |63| 

           STDW    .D1T1   A5:A4,*+A15(176)  ; |56| 
||         MV      .L1X    B12,A5            ; |60| 

           LDDW    .D1T1   *+A15(176),A7:A6  ; |60| 

   [ B0]   ADD     .L1     1,A3,A4           ; |53| 
||         MV      .S1X    B12,A3            ; |63| 

   [ B0]   STW     .D1T1   A4,*A31           ; |53| 
||         MV      .L1X    B13,A4            ; |60| 

           ; BRANCH OCCURS {$C$L6}           ; |58| 
;** --------------------------------------------------------------------------*
$C$L5:    
;**	-----------------------g5:
;** 42	-----------------------    (*dynamic_info).current_time = round_time-U$19;
;** 43	-----------------------    init_le = (*dynamic_info).le;
;** 44	-----------------------    (*dynamic_info).le = (*(double (*)())*((*this).__vptr+20))(this, dynamic_info);
;** 45	-----------------------    (*dynamic_info).fe = (*(double (*)())*((*this).__vptr+24))(this, dynamic_info);
;** 46	-----------------------    (*dynamic_info).left_time = left_time;
;** 47	-----------------------    (*dynamic_info).left_dist = init_le-(*dynamic_info).le;
;** 48	-----------------------    (*dynamic_info).total_time = round_time;
           LDDW    .D1T1   *+A15(32),A13:A12 ; |43| 
           NOP             1
           STDW    .D1T1   A7:A6,*+A15(184)  ; |42| 
           LDW     .D1T1   *+A3(20),A3       ; |44| 
           NOP             4
           CALL    .S2X    A3                ; |44| 
           ADDKPC  .S2     $C$RL8,B3,4       ; |44| 
$C$RL8:    ; CALL OCCURS {A3} {0}            ; |44| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *A14,A3           ; |45| 
           STDW    .D1T1   A5:A4,*+A15(32)   ; |44| 
           MV      .L2X    A15,B4            ; |45| 
           MV      .L1     A14,A4            ; |45| 
           NOP             1
           LDW     .D1T1   *+A3(24),A3       ; |45| 
           NOP             4
           CALL    .S2X    A3                ; |45| 
           ADDKPC  .S2     $C$RL9,B3,4       ; |45| 
$C$RL9:    ; CALL OCCURS {A3} {0}            ; |45| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A15(32),A7:A6   ; |47| 
           LDW     .D2T1   *+SP(4),A8        ; |48| 
           LDW     .D2T1   *+SP(8),A9        ; |48| 
           STDW    .D1T1   A5:A4,*+A15(8)    ; |45| 
           STDW    .D1T1   A11:A10,*+A15(176) ; |48| 
           SUBDP   .L1     A13:A12,A7:A6,A7:A6 ; |47| 
           MV      .S1X    B11,A31           ; |45| 
           MV      .L1X    B10,A3            ; |48| 
           MV      .L1X    B13,A4            ; |60| 
           ZERO    .L2     B4                ; |63| 
           STDW    .D1T1   A9:A8,*A3         ; |46| 
           MV      .S1X    B12,A5            ; |60| 
           STDW    .D1T1   A7:A6,*A31        ; |47| 
           LDDW    .D1T1   *+A15(176),A7:A6  ; |60| 
           LDDW    .D1T1   *+A15(24),A9:A8   ; |64| 

           MV      .L1X    B12,A3            ; |63| 
||         SET     .S2     B4,31,31,B4       ; |63| 
||         ZERO    .L2     B5                ; |62| 

;** --------------------------------------------------------------------------*
$C$L6:    
;**	-----------------------g6:
;** 60	-----------------------    (*dynamic_info).total_time = (*dynamic_info).total_time-last_left_time;
;** 62	-----------------------    (*dynamic_info).current_step = 0u;
;** 63	-----------------------    (*dynamic_info).current_time = -last_left_time;
;** 64	-----------------------    (*dynamic_info).current_l = (*dynamic_info).ls;
;**  	-----------------------    return;
           NOP             2
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |60| 

           XOR     .D1X    A3,B4,A7          ; |63| 
||         MVK     .S2     340,B4            ; |62| 
||         MVK     .S1     328,A3            ; |64| 

           ADD     .L1     A3,A15,A3         ; |64| 
||         MV      .S1X    B13,A6            ; |63| 

           ADD     .L2X    B4,A15,B4         ; |62| 
           STDW    .D1T1   A9:A8,*A3         ; |64| 
           STW     .D2T2   B5,*B4            ; |62| 
           STDW    .D1T1   A7:A6,*+A15(184)  ; |63| 
           STDW    .D1T1   A5:A4,*+A15(176)  ; |60| 
           LDW     .D2T2   *++SP(24),B3      ; |65| 
           LDDW    .D2T1   *++SP,A13:A12     ; |65| 
           LDDW    .D2T1   *++SP,A15:A14     ; |65| 
           LDDW    .D2T2   *++SP,B11:B10     ; |65| 
           LDDW    .D2T2   *++SP,B13:B12     ; |65| 

           LDW     .D2T1   *++SP(8),A10      ; |65| 
||         RET     .S2     B3                ; |65| 

           LDW     .D2T1   *++SP(8),A11      ; |65| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |65| 
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	sqrt
	.global	__cxa_pure_virtual
	.global	_ZTVN10__cxxabiv117__class_type_infoE
	.global	__c6xabi_divd
;*****************************************************************************
;* SECTION GROUPS                                                            *
;*****************************************************************************
	.group    "_ZTI16VelocityPlanning", 1
	.gmember  ".const:_ZTI16VelocityPlanning"
	.endgroup
	.group    "_ZTS16VelocityPlanning", 1
	.gmember  ".const:_ZTS16VelocityPlanning"
	.endgroup
	.group    "_ZTV16VelocityPlanning", 1
	.gmember  ".const:_ZTV16VelocityPlanning"
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
