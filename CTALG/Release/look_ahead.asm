;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.3.4 *
;* Date/Time created: Sat Apr 22 16:21:52 2017                                *
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
	.symalias _ZN9LookAheadC2EP13InterpolationtP18NCCCTChannelConfigP20ChannelRealtimeState, _ZN9LookAheadC1EP13InterpolationtP18NCCCTChannelConfigP20ChannelRealtimeState
	.symalias _ZN9LookAheadD2Ev, _ZN9LookAheadD1Ev
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
	.elfsym	DATA_PACKAGE_SIZE,SYM_SIZE(4)
DATA_PACKAGE_SIZE:
	.field	16384,32			; DATA_PACKAGE_SIZE @ 0

	.sect	".rodata"
	.align	4
	.elfsym	NCC_DATA_PACKAGE_HEADER_SIZE,SYM_SIZE(4)
NCC_DATA_PACKAGE_HEADER_SIZE:
	.field	8,32			; NCC_DATA_PACKAGE_HEADER_SIZE @ 0

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

	.sect	".rodata"
	.align	8
	.elfsym	CYCLE_POWER,SYM_SIZE(8)
CYCLE_POWER:
	.word	0a0b5ed8dh,03eb0c6f7h		; CYCLE_POWER @ 0

;	/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/opt6x --call_assumptions=0 --gen_opt_info=2 /tmp/05641hIH6eD /tmp/05641jYyyoz --opt_info_filename=src/look_ahead.nfo 
	.sect	".text"
	.clink
	.global	_ZN9LookAheadD1Ev

;******************************************************************************
;* FUNCTION NAME: LookAhead::~LookAhead()                                     *
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
_ZN9LookAheadD1Ev:
;** --------------------------------------------------------------------------*
;** 32	-----------------------    C$14 = (*this).m_data_buffer;
;** 32	-----------------------    if ( C$14 == NULL ) goto g5;
           STW     .D2T2   B13,*SP--(8)      ; |30| 

           STDW    .D2T1   A11:A10,*SP--     ; |30| 
||         MV      .L1     A4,A10            ; |30| 

           LDW     .D1T1   *+A10(4),A0       ; |32| 
           MVK     .S1     409,A3            ; |36| 
           MV      .L2     B3,B13            ; |30| 
           NOP             2

           MV      .L1     A0,A11            ; |33| 
|| [!A0]   B       .S1     $C$L2             ; |32| 
||         MV      .D1     A0,A1             ; branch predicate copy

   [ A0]   LDW     .D1T1   *A11,A0           ; |76| 
   [!A1]   LDW     .D1T1   *+A10[A3],A0      ; |36| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L2}         ; |32| 
;** --------------------------------------------------------------------------*
;** 33	-----------------------    this = C$14;
;** 76	-----------------------    C$13 = (*this).m_buffer;  // [85]
;** 76	-----------------------    if ( C$13 == NULL ) goto g4;  // [85]

           MV      .L1     A0,A4             ; |77| 
|| [!A0]   B       .S1     $C$L1             ; |76| 

   [ A0]   CALL    .S1     __cxa_vec_delete  ; |77| 
   [!A0]   CALL    .S1     ti_sysbios_gates_GateHwi_Object__delete__S ; |441| 
           MVK     .S2     0xee8,B4          ; |77| 
           ZERO    .L2     B6                ; |77| 
           ZERO    .L1     A6                ; |77| 
           ; BRANCHCC OCCURS {$C$L1}         ; |76| 
;** --------------------------------------------------------------------------*
;** 77	-----------------------    __cxa_vec_delete(C$13, 3816u, 0u, NULL);  // [85]
           ADDKPC  .S2     $C$RL0,B3,0       ; |77| 
$C$RL0:    ; CALL OCCURS {__cxa_vec_delete} {0}  ; |77| 
           CALL    .S1     ti_sysbios_gates_GateHwi_Object__delete__S ; |441| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L1:    
;**	-----------------------g4:
;** 441	-----------------------    ti_sysbios_gates_GateHwi_Object__delete__S(this+20);  // [22]
;** 33	-----------------------    operator delete ((void *)this);
;** 34	-----------------------    (*this).m_data_buffer = NULL;
           ADD     .D1     A11,20,A4         ; |441| 
           ADDKPC  .S2     $C$RL1,B3,0       ; |441| 
$C$RL1:    ; CALL OCCURS {ti_sysbios_gates_GateHwi_Object__delete__S} {0}  ; |441| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZdlPv,B3
||         MV      .L1     A11,A4            ; |33| 

$C$RL2:    ; CALL OCCURS {_ZdlPv} {0}        ; |33| 
;** --------------------------------------------------------------------------*
           ZERO    .L1     A3                ; |34| 

           STW     .D1T1   A3,*+A10(4)       ; |34| 
||         MVK     .S1     409,A3            ; |36| 

           LDW     .D1T1   *+A10[A3],A0      ; |36| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L2:    
;**	-----------------------g5:
;** 36	-----------------------    C$12 = (*this).m_vector;
;** 36	-----------------------    if ( C$12 == NULL ) goto g7;
           NOP             1

   [!A0]   MVK     .S1     411,A3            ; |39| 
|| [!A0]   B       .S2     $C$L3             ; |36| 
||         MV      .L1     A0,A4             ; |37| 

   [ A0]   CALL    .S1     _ZdaPv            ; |37| 
|| [!A0]   LDW     .D1T1   *+A10[A3],A0      ; |39| 

           NOP             4
           ; BRANCHCC OCCURS {$C$L3}         ; |36| 
;** --------------------------------------------------------------------------*
;** 37	-----------------------    operator delete[] (C$12);
           ADDKPC  .S2     $C$RL3,B3,0       ; |37| 
$C$RL3:    ; CALL OCCURS {_ZdaPv} {0}        ; |37| 
           MVK     .S1     411,A3            ; |39| 
           LDW     .D1T1   *+A10[A3],A0      ; |39| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L3:    
;**	-----------------------g7:
;** 39	-----------------------    C$11 = (*this).m_start_point;
;** 39	-----------------------    if ( C$11 == NULL ) goto g9;

   [!A0]   B       .S1     $C$L4             ; |39| 
|| [!A0]   MV      .L2     B13,B3            ; |43| 
||         MV      .L1     A0,A4             ; |40| 

   [ A0]   CALL    .S1     _ZdaPv            ; |40| 
|| [!A0]   MV      .L1     A10,A4            ; |43| 
|| [!A0]   LDDW    .D2T1   *++SP,A11:A10     ; |43| 

   [!A0]   RETNOP  .S2     B3,3              ; |43| 
|| [!A0]   LDW     .D2T2   *++SP(8),B13      ; |43| 

           ; BRANCHCC OCCURS {$C$L4}         ; |39| 
;** --------------------------------------------------------------------------*
;** 40	-----------------------    operator delete[] (C$11);
           ADDKPC  .S2     $C$RL4,B3,0       ; |40| 
$C$RL4:    ; CALL OCCURS {_ZdaPv} {0}        ; |40| 

           MV      .L2     B13,B3            ; |43| 
||         MV      .L1     A10,A4            ; |43| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |43| 

           RETNOP  .S2     B3,3              ; |43| 
||         LDW     .D2T2   *++SP(8),B13      ; |43| 

;** --------------------------------------------------------------------------*
$C$L4:    
;**	-----------------------g9:
;** 43	-----------------------    return this;
           NOP             2
           ; BRANCH OCCURS {B3}              ; |43| 
	.sect	".text:_ZN9LookAheadD2Ev"
	.clink
	.global	_ZN9LookAheadD2Ev

;******************************************************************************
;* FUNCTION NAME: LookAhead::~LookAhead() [subobject]                         *
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
_ZN9LookAheadD2Ev:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return LookAhead::~LookAhead(this);
           CALLRET .S1     _ZN9LookAheadD1Ev
           NOP             5
$C$RL5:    ; CALL-RETURN OCCURS {_ZN9LookAheadD1Ev} 0 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead15SetChannelIndexEiP18NCCCTChannelConfig

;******************************************************************************
;* FUNCTION NAME: LookAhead::SetChannelIndex(int, NCCCTChannelConfig *)       *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : A4,A6,B3,B4                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN9LookAhead15SetChannelIndexEiP18NCCCTChannelConfig:
;** --------------------------------------------------------------------------*
;* 1626	-----------------------    (*this).m_channel_index = channel_index;
;* 1627	-----------------------    (*this).m_channel_config = channel_config;
;**  	-----------------------    return;
           RETNOP  .S2     B3,3              ; |1628| 
           STB     .D1T2   B4,*+A4(10)       ; |1626| 
           STW     .D1T1   A6,*+A4(12)       ; |1627| 
           ; BRANCH OCCURS {B3}              ; |1628| 
	.sect	".text:_ZN14CircularBufferI8LineDataEC1Ei"
	.clink
	.global	_ZN14CircularBufferI8LineDataEC1Ei

;******************************************************************************
;* FUNCTION NAME: CircularBuffer<LineData>::CircularBuffer(int)               *
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
;*   Local Frame Size  : 0 Args + 24 Auto + 16 Save = 40 byte                 *
;******************************************************************************
_ZN14CircularBufferI8LineDataEC1Ei:
;** --------------------------------------------------------------------------*
;** 50	-----------------------    v$1 = (struct ineData *)__cxa_vec_new((unsigned)buffer_length, 3816u, 0u, (void (*)())&LineData::LineData, NULL);
;** 50	-----------------------    (*this).m_buffer = v$1;
;** 54	-----------------------    memset(v$1, 0, buffer_length*3816u);
;** 55	-----------------------    (*this).m_buffer_total_length = buffer_length;
;** 56	-----------------------    (*this).m_buffer_cur_length = 0;
;** 57	-----------------------    v$1 = (*this).m_buffer;
;** 57	-----------------------    (*this).m_write_pointer = v$1;
;** 58	-----------------------    (*this).m_read_pointer = v$1;
;** 377	-----------------------    ti_sysbios_gates_GateHwi_Params__init__S(&prms, NULL, 24u, 8u);  // [20]
;** 429	-----------------------    R$1 = (struct i_sysbios_gates_GateHwi_Object *)ti_sysbios_gates_GateHwi_Object__create__S(NULL, 0u, NULL, &prms, 24u, NULL);  // [21]
;** 67	-----------------------    (*this).m_gateHwi = R$1;
;** 72	-----------------------    return this;
           MVKL    .S1     _ZN8LineDataC1Ev,A3

           STW     .D2T2   B10,*SP--(8)      ; |49| 
||         MVKH    .S1     _ZN8LineDataC1Ev,A3

           STDW    .D2T1   A11:A10,*SP--     ; |49| 
||         MV      .L1     A4,A10            ; |49| 
||         MV      .S1X    B4,A4             ; |49| 
||         MV      .L2     B4,B10            ; |49| 
||         MVK     .S2     0xee8,B4          ; |50| 

           MV      .L1X    B3,A11            ; |49| 
||         CALLP   .S2     __cxa_vec_new,B3
||         MV      .L2X    A3,B6             ; |50| 
||         SUB     .D2     SP,24,SP          ; |49| 
||         ZERO    .S1     A6                ; |50| 
||         ZERO    .D1     A8                ; |50| 

$C$RL6:    ; CALL OCCURS {__cxa_vec_new} {0}  ; |50| 
;** --------------------------------------------------------------------------*
           MVK     .S2     3816,B4           ; |54| 
           MPY32   .M2     B4,B10,B5         ; |54| 
           ZERO    .L2     B4                ; |54| 
           STW     .D1T1   A4,*A10           ; |50| 
           NOP             2

           CALLP   .S2     memset,B3
||         MV      .L1X    B5,A6             ; |54| 

$C$RL7:    ; CALL OCCURS {memset} {0}        ; |54| 
           LDW     .D1T1   *A10,A3           ; |57| 
           ZERO    .L1     A4                ; |56| 
           STW     .D1T2   B10,*+A10(4)      ; |55| 
           STW     .D1T1   A4,*+A10(8)       ; |56| 
           ADD     .L1X    4,SP,A4           ; |377| 
           STW     .D1T1   A3,*+A10(16)      ; |58| 

           MVK     .L2     0x8,B6            ; |377| 
||         ZERO    .D2     B4                ; |377| 
||         MVK     .S1     0x18,A6           ; |377| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_Params__init__S,B3
||         STW     .D1T1   A3,*+A10(12)      ; |57| 

$C$RL8:    ; CALL OCCURS {ti_sysbios_gates_GateHwi_Params__init__S} {0}  ; |377| 
           ZERO    .L2     B4                ; |429| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_Object__create__S,B3
||         MVK     .S1     0x18,A8           ; |429| 
||         ZERO    .L2     B8                ; |429| 
||         ZERO    .L1     A4                ; |429| 
||         ZERO    .D1     A6                ; |429| 
||         ADD     .D2     4,SP,B6           ; |429| 

$C$RL9:    ; CALL OCCURS {ti_sysbios_gates_GateHwi_Object__create__S} {0}  ; |429| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A3             ; |429| 

           STW     .D1T1   A3,*+A10(20)      ; |67| 
||         ADDK    .S2     24,SP             ; |72| 
||         MV      .L2X    A11,B3            ; |72| 

           RET     .S2     B3                ; |72| 
||         MV      .L1     A10,A4            ; |49| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |72| 

           LDW     .D2T2   *++SP(8),B10      ; |72| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |72| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead15SetLookaheadNumEt

;******************************************************************************
;* FUNCTION NAME: LookAhead::SetLookaheadNum(unsigned short)                  *
;*                                                                            *
;*   Regs Modified     : A0,A3,A5,A6,A7,B0,B4,B5,B6,B7                        *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,B0,B3,B4,B5,B6,B7                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN9LookAhead15SetLookaheadNumEt:
;** --------------------------------------------------------------------------*
;* 1616	-----------------------    (*this).m_lookahead_count = C$1 = (unsigned short)(_hill((unsigned long long)(num*2)*0xaaaaaaabuLL)>>1);
;* 1617	-----------------------    if ( (K$10 = C$1) < 3 ) goto g4;
;* 1619	-----------------------    if ( K$10 <= 100 ) goto g5;
;* 1620	-----------------------    (*this).m_lookahead_count = 100u;
;* 1620	-----------------------    goto g5;
;**	-----------------------g4:
;* 1618	-----------------------    (*this).m_lookahead_count = 3u;
;**	-----------------------g5:
;**  	-----------------------    return;

           ADD     .L2     B4,B4,B4          ; |1616| 
||         MVKL    .S2     0xaaaaaaab,B5

           SHR     .S2     B4,31,B6          ; |1616| 
           MVKH    .S2     0xaaaaaaab,B5

           MPY32U  .M2     B6,B5,B7:B6       ; |1616| 
||         ZERO    .L1     A5                ; |1616| 

           MPY32U  .M1X    A5,B4,A7:A6       ; |1616| 
||         MPY32U  .M2     B5,B4,B5:B4       ; |1616| 

           NOP             3
           ADDU    .L1X    A6,B6,A7:A6       ; |1616| 

           ADDU    .L1X    B5,A6,A7:A6       ; |1616| 
||         RET     .S2     B3                ; |1622| 

           EXTU    .S1     A6,15,16,A5       ; |1616| 

           SHRU    .S2X    A6,1,B4           ; |1616| 
||         MVK     .S1     100,A6            ; |1619| 

           CMPLTU  .L2X    A5,3,B0           ; |1617| 
||         CMPGTU  .L1     A5,A6,A0          ; |1619| 
||         STH     .D1T2   B4,*+A4(8)        ; |1616| 
||         MVK     .S2     3,B4              ; |1618| 

   [!B0]   MV      .L1     A6,A3
|| [ B0]   ZERO    .S1     A0
|| [ B0]   STH     .D1T2   B4,*+A4(8)        ; |1618| 

   [ A0]   STH     .D1T1   A3,*+A4(8)        ; |1620| 
           ; BRANCH OCCURS {B3}              ; |1622| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead5ResetEv

;******************************************************************************
;* FUNCTION NAME: LookAhead::Reset()                                          *
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
_ZN9LookAhead5ResetEv:
;** --------------------------------------------------------------------------*
;** 72	-----------------------    if ( !(C$5 = (*(*this).m_channel_config).axis_number) ) goto g4;
           STW     .D2T2   B13,*SP--(8)      ; |71| 

           STDW    .D2T1   A11:A10,*SP--     ; |71| 
||         MV      .L1     A4,A10            ; |71| 

           LDW     .D1T1   *+A10(12),A3      ; |72| 
           ZERO    .L2     B7:B6
           MV      .L2     B3,B13            ; |71| 
           ZERO    .L2     B4
           ADDAD   .D1     A10,8,A7
           LDBU    .D1T1   *+A3(2),A0        ; |72| 
           NOP             4

   [!A0]   BNOP    .S1     $C$L8,5           ; |72| 
|| [ A0]   SUB     .L1     A0,1,A6

           ; BRANCHCC OCCURS {$C$L8}         ; |72| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$20 = (double * const)this+64;
;**  	-----------------------    K$23 = 0.0;
;**  	-----------------------    L$1 = (int)C$5;
;**  	-----------------------    U$15 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g3:
;** 74	-----------------------    *U$20++ = *((*this).m_realtime_state+U$15+512);
;** 75	-----------------------    *((*this).m_vector+U$15) = K$23;
;** 76	-----------------------    *((*this).m_start_point+U$15) = *((*this).m_realtime_state+U$15+512);
;** 72	-----------------------    U$15 += 8;
;** 72	-----------------------    if ( L$1 = L$1-1 ) goto g3;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 72
;*      Loop opening brace source line   : 72
;*      Loop closing brace source line   : 77
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 12
;*      Unpartitioned Resource Bound     : 5
;*      Partitioned Resource Bound(*)    : 6
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        1     
;*      .D units                     6*       3     
;*      .M units                     0        0     
;*      .X cross paths               0        3     
;*      .T address paths             6*       3     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          4        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     4        3     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 12 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L5:    ; PIPED LOOP PROLOG

           SPLOOPD 12      ;24               ; (P) 
||         MV      .L1     A10,A6
||         MVC     .S2X    A6,ILC

;** --------------------------------------------------------------------------*
$C$L6:    ; PIPED LOOP KERNEL

           SPMASK          S1
||         MVK     .S1     1644,A9           ; |76| 
||         LDW     .D1T2   *+A6(16),B5       ; |74| (P) <0,0> 

           ADD     .L1     A9,A6,A4          ; |76| (P) <0,1> 
||         LDW     .D1T1   *+A6(16),A4       ; |76| (P) <0,1> 

           LDW     .D1T1   *A4,A5            ; |76| (P) <0,2> 
           NOP             3

           SPMASK          L1,S2
||         MVK     .S2     1636,B8           ; |75| 
||         MV      .L1X    B4,A8

           ADD     .L1     A8,A5,A4          ; |76| (P) <0,7> 
||         ADD     .S1     A8,A4,A16         ; |76| (P) <0,7> 
||         ADD     .L2X    B8,A6,B4          ; |75| (P) <0,7> 

           MVD     .M1     A4,A3             ; |76| (P) <0,8> Split a long life
||         ADDK    .S1     512,A16           ; |76| (P) <0,8> 
||         LDW     .D2T2   *B4,B4            ; |75| (P) <0,8> 
||         ADD     .L2X    A8,B5,B4          ; |74| (P) <0,8> 

           ADDK    .S2     512,B4            ; |74| (P) <0,9> 
           LDDW    .D2T1   *B4,A5:A4         ; |74| (P) <0,10>  ^ 
           NOP             2
           ADD     .L2X    A8,B4,B4          ; |75| <0,13> 
           NOP             1

           STDW    .D1T1   A5:A4,*A7++       ; |74| <0,15>  ^ 
||         STDW    .D2T2   B7:B6,*B4         ; |75| <0,15>  ^ 

           LDDW    .D1T1   *A16,A5:A4        ; |76| <0,16>  ^ 
           NOP             1
           ADD     .L1     8,A8,A8           ; |72| <0,18> 
           NOP             1
           NOP             1

           SPKERNEL 0,0
||         STDW    .D1T1   A5:A4,*A3         ; |76| <0,21>  ^ 

;** --------------------------------------------------------------------------*
$C$L7:    ; PIPED LOOP EPILOG
           MV      .L1     A6,A10
           NOP             9
;** --------------------------------------------------------------------------*
$C$L8:    
;**	-----------------------g4:
;** 78	-----------------------    U$2 = (*this).m_channel_config;
;** 78	-----------------------    (*this).m_min_acc_for_geo_axis = (**((struct CCCTAxisConfig **)U$2+7896)).max_axis_acc;
;       ----------------------- /* EMPTY LOOP DELETED */ 
;** 84	-----------------------    (*this).m_prepare_count = 0;
;** 85	-----------------------    (*this).m_last_speed = C$4 = 0.0;
;** 86	-----------------------    (*this).m_dist_len = C$4;
;** 87	-----------------------    (*this).m_min_len = C$4;
;** 88	-----------------------    (*this).m_has_vector = C$3 = 0;
;** 89	-----------------------    (*this).m_has_position = C$3;
;* 1616	-----------------------    (*this).m_lookahead_count = _hill((unsigned long long)((*U$2).lookahead_number*2)*0xaaaaaaabuLL)>>1;  // [80]
;* 1617	-----------------------    if ( (C$2 = (*this).m_lookahead_count) < 3 ) goto g7;  // [80]
;* 1619	-----------------------    if ( C$2 <= 100 ) goto g8;  // [80]

           LDW     .D1T1   *+A10(12),A3      ; |78| 
||         MVK     .S1     1640,A4           ; |84| 
||         ZERO    .L2     B4                ; |84| 
||         ZERO    .L1     A31               ; |1616| 
||         MVKL    .S2     0xaaaaaaab,B31
||         MVK     .D2     3,B29             ; |1618| 

           ADD     .L1     A4,A10,A4         ; |84| 
||         MVK     .S1     70,A5             ; |1616| 
||         MVKH    .S2     0xaaaaaaab,B31
||         MV      .D1     A31,A30           ; |1617| 

           MVK     .S1     1656,A27          ; |78| 
           MVK     .S2     7896,B30          ; |78| 
           STH     .D1T2   B4,*A4            ; |84| 
           ADD     .L1     A5,A3,A4          ; |1616| 
           LDHU    .D1T1   *A4,A4            ; |1616| 
           MVK     .S1     48,A29            ; |89| 
           STB     .D1T1   A30,*+A10[A29]    ; |89| 
           MVK     .S1     1632,A28          ; |88| 
           STB     .D1T1   A30,*+A10[A28]    ; |88| 
           ADD     .L1     A4,A4,A4          ; |1616| 

           SHR     .S1     A4,31,A6          ; |1616| 
||         MPY32U  .M1     A31,A4,A9:A8      ; |1616| 

           MPY32U  .M2X    B31,A4,B5:B4      ; |1616| 
           MPY32U  .M2X    A6,B31,B7:B6      ; |1616| 
           MVK     .S1     100,A5            ; |1619| 
           ADD     .L1     A27,A10,A4        ; |78| 
           ADD     .L2X    B30,A3,B4         ; |78| 
           ADDU    .L2X    A8,B6,B7:B6       ; |1616| 

           ADDU    .L2     B5,B6,B5:B4       ; |1616| 
||         LDW     .D2T2   *B4,B6            ; |78| 

           SHRU    .S2     B4,1,B4           ; |1616| 
           STH     .D1T2   B4,*+A10(8)       ; |1616| 
           LDHU    .D1T1   *+A10(8),A3       ; |1617| 
           ZERO    .L2     B5:B4             ; |85| 
           LDDW    .D2T2   *+B6(32),B7:B6    ; |78| 
           STDW    .D1T2   B5:B4,*+A10(40)   ; |87| 
           STDW    .D1T2   B5:B4,*+A10(32)   ; |86| 

           CMPLTU  .L2X    A3,3,B0           ; |1617| 
||         CMPGTU  .L1     A3,A5,A0          ; |1619| 
||         STDW    .D1T2   B5:B4,*+A10(24)   ; |85| 

   [ B0]   ZERO    .L1     A0
||         MV      .L2X    A5,B4             ; |1618| 
|| [ B0]   STH     .D1T2   B29,*+A10(8)      ; |1618| 

   [!A0]   BNOP    .S1     $C$L9,1           ; |1619| 
|| [!A0]   LDW     .D1T1   *+A10(4),A11      ; |91| 

           STDW    .D1T2   B7:B6,*A4         ; |78| 
   [ A0]   STH     .D1T2   B4,*+A10(8)       ; |1620| 
   [!A0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |428| 
   [!A0]   LDW     .D1T1   *+A11(20),A4      ; |428| 
           ; BRANCHCC OCCURS {$C$L9}         ; |1619| 
;** --------------------------------------------------------------------------*
;* 1620	-----------------------    (*this).m_lookahead_count = 100u;  // [80]
;* 1620	-----------------------    goto g8;  // [80]
;**	-----------------------g7:
;* 1618	-----------------------    (*this).m_lookahead_count = 3u;  // [80]
           LDW     .D1T1   *+A10(4),A11      ; |91| 
           NOP             3
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |428| 
           LDW     .D1T1   *+A11(20),A4      ; |428| 
;** --------------------------------------------------------------------------*
$C$L9:    
;**	-----------------------g8:
;** 91	-----------------------    this = (*this).m_data_buffer;
;** 428	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [89]
;** 430	-----------------------    (*this).m_buffer_cur_length = 0;  // [89]
;** 431	-----------------------    (*this).m_write_pointer = (*this).m_buffer;  // [89]
;** 432	-----------------------    (*this).m_read_pointer = (*this).m_buffer;  // [89]
;** 434	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [89]
;** 92	-----------------------    (*this).m_pre_data = NULL;
;** 93	-----------------------    (*this).m_tool_change_axis_move = 0u;
;**  	-----------------------    return;
           ADDKPC  .S2     $C$RL10,B3,3      ; |428| 
$C$RL10:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |428| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *A11,A3           ; |432| 
           LDW     .D1T1   *A11,A6           ; |431| 
           MV      .L2X    A4,B4             ; |434| 

           LDW     .D1T1   *+A11(20),A4      ; |434| 
||         ZERO    .L1     A7                ; |430| 

           STW     .D1T1   A7,*+A11(8)       ; |430| 
           STW     .D1T1   A3,*+A11(16)      ; |432| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         STW     .D1T1   A6,*+A11(12)      ; |431| 

$C$RL11:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |434| 
;** --------------------------------------------------------------------------*
           MVK     .S1     1664,A3           ; |93| 

           ZERO    .L2     B4                ; |93| 
||         MVK     .S1     1648,A4           ; |92| 

           STB     .D1T2   B4,*+A10[A3]      ; |93| 
||         ADD     .L1     A4,A10,A3         ; |92| 

           STW     .D1T2   B4,*A3            ; |92| 
||         MV      .L2     B13,B3            ; |94| 

           LDDW    .D2T1   *++SP,A11:A10     ; |94| 
||         RET     .S2     B3                ; |94| 

           LDW     .D2T2   *++SP(8),B13      ; |94| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |94| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead4InitEv

;******************************************************************************
;* FUNCTION NAME: LookAhead::Init()                                           *
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
_ZN9LookAhead4InitEv:
;** --------------------------------------------------------------------------*
;** 49	-----------------------    if ( (*this).m_data_buffer ) goto g3;
           STW     .D2T1   A11,*SP--(8)      ; |46| 
           STDW    .D2T2   B11:B10,*SP--     ; |46| 

           STW     .D2T1   A10,*SP--(8)      ; |46| 
||         MV      .L1     A4,A10            ; |46| 

           LDW     .D1T1   *+A10(4),A0       ; |49| 
           MV      .L2     B3,B11            ; |46| 
           MVK     .S1     0x18,A4           ; |50| 
           NOP             2

   [ A0]   LDW     .D1T1   *+A10(12),A3      ; |58| 
|| [ A0]   B       .S1     $C$L11            ; |49| 

   [!A0]   CALL    .S1     _Znwj             ; |50| 
           NOP             3

   [ A0]   CALL    .S1     _Znaj             ; |58| 
|| [ A0]   LDBU    .D1T1   *+A3(2),A3        ; |58| 

           ; BRANCHCC OCCURS {$C$L11}        ; |49| 
;** --------------------------------------------------------------------------*
;** 50	-----------------------    $P$T4 = (struct Z14CircularBufferI8LineDataE *)operator new (24u);
;** 50	-----------------------    ($P$T4 != NULL) ? (S$1 = CircularBuffer<LineData>::CircularBuffer($P$T4, 100)) : (S$1 = NULL);
           ADDKPC  .S2     $C$RL12,B3,0      ; |50| 
$C$RL12:   ; CALL OCCURS {_Znwj} {0}         ; |50| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A4,B0             ; |50| 
||         ZERO    .L1     A0                ; |50| 
||         MVK     .S2     0x64,B4           ; |50| 

   [!B0]   B       .S1     $C$L10            ; |50| 
|| [ B0]   MVK     .L1     0x1,A0            ; |50| nullify predicate
|| [!B0]   STW     .D1T1   A0,*+A10(4)       ; |50| 

   [ B0]   CALL    .S1     _ZN14CircularBufferI8LineDataEC1Ei ; |50| 
   [!A0]   BNOP    .S1     $C$L12,3          ; |51| 
           ; BRANCHCC OCCURS {$C$L10}        ; |50| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     $C$RL13,B3,0      ; |50| 
$C$RL13:   ; CALL OCCURS {_ZN14CircularBufferI8LineDataEC1Ei} {0}  ; |50| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |50| 
   [!A0]   BNOP    .S1     $C$L12,2          ; |51| 
           STW     .D1T1   A0,*+A10(4)       ; |50| 
;** --------------------------------------------------------------------------*
$C$L10:    
;** 50	-----------------------    (*this).m_data_buffer = S$1;
;** 51	-----------------------    if ( S$1 == NULL ) goto g6;
   [ A0]   LDW     .D1T1   *+A10(12),A3      ; |58| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L12}        ; |51| 
;** --------------------------------------------------------------------------*
           NOP             3

           LDBU    .D1T1   *+A3(2),A3        ; |58| 
||         CALL    .S1     _Znaj             ; |58| 

;** --------------------------------------------------------------------------*
$C$L11:    
;**	-----------------------g3:
;** 58	-----------------------    (*this).m_vector = operator new[] ((unsigned)(*(*this).m_channel_config).axis_number<<3);
;** 59	-----------------------    if ( (*this).m_vector == NULL ) goto g6;
           ADDKPC  .S2     $C$RL14,B3,3      ; |58| 
           SHL     .S1     A3,3,A4           ; |58| 
$C$RL14:   ; CALL OCCURS {_Znaj} {0}         ; |58| 
;** --------------------------------------------------------------------------*

           MVK     .S1     1636,A3           ; |58| 
||         MVK     .S2     1636,B4           ; |59| 

           ADD     .L1     A3,A10,A3         ; |58| 
||         ADD     .L2X    B4,A10,B4         ; |59| 

           STW     .D1T1   A4,*A3            ; |58| 
           LDW     .D2T2   *B4,B0            ; |59| 
           MVK     .S2     1644,B4           ; |62| 
           ADD     .L2X    B4,A10,B10        ; |62| 
           ADD     .L1X    B4,A10,A11        ; |63| 
           NOP             1

   [!B0]   BNOP    .S1     $C$L12,4          ; |59| 
|| [ B0]   LDW     .D1T1   *+A10(12),A3      ; |62| 

   [ B0]   CALL    .S1     _Znaj             ; |62| 
|| [ B0]   LDBU    .D1T1   *+A3(2),A3        ; |62| 

           ; BRANCHCC OCCURS {$C$L12}        ; |59| 
;** --------------------------------------------------------------------------*
;** 62	-----------------------    (*this).m_start_point = operator new[] ((unsigned)(*(*this).m_channel_config).axis_number<<3);
;** 63	-----------------------    if ( (*this).m_start_point == NULL ) goto g6;
           ADDKPC  .S2     $C$RL15,B3,3      ; |62| 
           SHL     .S1     A3,3,A4           ; |62| 
$C$RL15:   ; CALL OCCURS {_Znaj} {0}         ; |62| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*B10           ; |62| 
           LDW     .D1T1   *A11,A0           ; |63| 
           MV      .L1     A10,A4            ; |66| 
           ZERO    .L1     A11               ; |67| 
           NOP             2

   [!A0]   B       .S2     $C$L13            ; |63| 
|| [!A0]   MV      .L2     B11,B3            ; |68| 
|| [!A0]   LDW     .D2T1   *++SP(8),A10      ; |68| 
|| [!A0]   MVK     .S1     0xa8c,A11         ; |64| 

   [ A0]   CALL    .S1     _ZN9LookAhead5ResetEv ; |66| 
|| [!A0]   LDDW    .D2T2   *++SP,B11:B10     ; |68| 
|| [!A0]   MV      .L1     A11,A4            ; |64| 

   [!A0]   RETNOP  .S2     B3,3              ; |68| 
|| [!A0]   LDW     .D2T1   *++SP(8),A11      ; |68| 

           ; BRANCHCC OCCURS {$C$L13}        ; |63| 
;** --------------------------------------------------------------------------*
;** 66	-----------------------    LookAhead::Reset(this);
;** 67	-----------------------    return 0;
           ADDKPC  .S2     $C$RL16,B3,0      ; |66| 
$C$RL16:   ; CALL OCCURS {_ZN9LookAhead5ResetEv} {0}  ; |66| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *++SP(8),A10      ; |68| 
||         MV      .L2     B11,B3            ; |68| 

           LDDW    .D2T2   *++SP,B11:B10     ; |68| 
||         RET     .S2     B3                ; |68| 

           MV      .L1     A11,A4            ; |64| 
||         LDW     .D2T1   *++SP(8),A11      ; |68| 

           NOP             4
           ; BRANCH OCCURS {B3}              ; |68| 
;** --------------------------------------------------------------------------*
$C$L12:    

           LDW     .D2T1   *++SP(8),A10      ; |68| 
||         MV      .L2     B11,B3            ; |68| 

           LDDW    .D2T2   *++SP,B11:B10     ; |68| 
||         RET     .S2     B3                ; |68| 
||         MVK     .S1     0xa8c,A11         ; |64| 

           MV      .L1     A11,A4            ; |64| 
||         LDW     .D2T1   *++SP(8),A11      ; |68| 

           NOP             2
;** --------------------------------------------------------------------------*
$C$L13:    
;**	-----------------------g6:
;** 64	-----------------------    return 2700;
           NOP             2
           ; BRANCH OCCURS {B3}              ; |68| 
	.sect	".text"
	.clink
	.global	_ZN9LookAheadC1EP13InterpolationtP18NCCCTChannelConfigP20ChannelRealtimeState

;******************************************************************************
;* FUNCTION NAME: LookAhead::LookAhead(Interpolation *, unsigned short, NCCCTChannelConfig *, ChannelRealtimeState *)*
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
_ZN9LookAheadC1EP13InterpolationtP18NCCCTChannelConfigP20ChannelRealtimeState:
;** --------------------------------------------------------------------------*
;** 17	-----------------------    AxisMovData::AxisMovData((struct xisMovData *)this+56);
;** 19	-----------------------    (*this).m_interpolator = interpolator;
;* 1626	-----------------------    (*this).m_channel_index = channel_index;  // [81]
;* 1627	-----------------------    (*this).m_channel_config = channel_config;  // [81]
;** 21	-----------------------    (*this).m_realtime_state = realtime_state;
;** 23	-----------------------    (*this).m_data_buffer = NULL;
;** 50	-----------------------    $P$T4 = (struct Z14CircularBufferI8LineDataE *)operator new (24u);  // [42]
;** 50	-----------------------    ($P$T4 != NULL) ? (S$1 = CircularBuffer<LineData>::CircularBuffer($P$T4, 100)) : (S$1 = NULL);  // [42]
           STW     .D2T1   A14,*SP--(8)      ; |17| 
           STDW    .D2T2   B11:B10,*SP--     ; |17| 
           STDW    .D2T1   A13:A12,*SP--     ; |17| 

           STDW    .D2T1   A11:A10,*SP--     ; |17| 
||         MV      .L1     A4,A11            ; |17| 
||         MV      .S1     A6,A13            ; |17| 
||         MV      .D1X    B4,A14            ; |17| 

           MV      .L2     B3,B11            ; |17| 
||         CALLP   .S2     _ZN11AxisMovDataC1Ev,B3
||         ADDAD   .D1     A11,7,A4          ; |17| 
||         MV      .L1     A8,A10            ; |17| 
||         MV      .S1X    B6,A12            ; |17| 

$C$RL17:   ; CALL OCCURS {_ZN11AxisMovDataC1Ev} {0}  ; |17| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A12,B6            ; |17| 

           MV      .L2X    A13,B5            ; |17| 
||         STW     .D1T2   B6,*+A11(12)      ; |1627| 

           MV      .L2X    A14,B4            ; |17| 
||         STB     .D1T2   B5,*+A11(10)      ; |1626| 

           ZERO    .L1     A3                ; |23| 
||         STW     .D1T2   B4,*A11           ; |19| 

           MV      .L2X    A10,B7            ; |17| 
||         STW     .D1T1   A3,*+A11(4)       ; |23| 

           CALLP   .S2     _Znwj,B3
||         STW     .D1T2   B7,*+A11(16)      ; |21| 
||         MVK     .S1     0x18,A4           ; |50| 

$C$RL18:   ; CALL OCCURS {_Znwj} {0}         ; |50| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A4,B0             ; |50| 
||         ZERO    .L1     A0                ; |50| 
||         MVK     .S2     0x64,B4           ; |50| 

   [!B0]   B       .S1     $C$L14            ; |50| 
|| [ B0]   MVK     .L1     0x1,A0            ; |50| nullify predicate
|| [!B0]   MVK     .S2     1636,B4           ; |58| 
|| [!B0]   STW     .D1T1   A0,*+A11(4)       ; |50| 

   [ B0]   CALL    .S1     _ZN14CircularBufferI8LineDataEC1Ei ; |50| 
|| [!B0]   ADD     .L2X    B4,A11,B10        ; |58| 

   [!A0]   BNOP    .S1     $C$L15,3          ; |51| 
|| [!B0]   ADD     .L1X    B4,A11,A10        ; |59| 

           ; BRANCHCC OCCURS {$C$L14}        ; |50| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     $C$RL19,B3,0      ; |50| 
$C$RL19:   ; CALL OCCURS {_ZN14CircularBufferI8LineDataEC1Ei} {0}  ; |50| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |50| 
   [!A0]   B       .S1     $C$L15            ; |51| 
           MVK     .S2     1636,B4           ; |58| 
           ADD     .L2X    B4,A11,B10        ; |58| 

           STW     .D1T1   A0,*+A11(4)       ; |50| 
||         ADD     .L1X    B4,A11,A10        ; |59| 

;** --------------------------------------------------------------------------*
$C$L14:    
;** 50	-----------------------    (*this).m_data_buffer = S$1;  // [42]
;** 51	-----------------------    if ( S$1 == NULL ) goto g5;  // [42]
   [ A0]   LDW     .D1T1   *+A11(12),A3      ; |58| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L15}        ; |51| 
;** --------------------------------------------------------------------------*
;** 58	-----------------------    (*this).m_vector = operator new[] ((unsigned)(*(*this).m_channel_config).axis_number<<3);  // [42]
;** 59	-----------------------    if ( (*this).m_vector == NULL ) goto g5;  // [42]
           NOP             3

           LDBU    .D1T1   *+A3(2),A3        ; |58| 
||         CALL    .S1     _Znaj             ; |58| 

           ADDKPC  .S2     $C$RL20,B3,3      ; |58| 
           SHL     .S1     A3,3,A4           ; |58| 
$C$RL20:   ; CALL OCCURS {_Znaj} {0}         ; |58| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*B10           ; |58| 
           LDW     .D1T1   *A10,A0           ; |59| 
           MVK     .S2     1644,B4           ; |62| 
           ADD     .L2X    B4,A11,B10        ; |62| 
           ADD     .L1X    B4,A11,A10        ; |63| 
           NOP             1

   [!A0]   BNOP    .S1     $C$L15,4          ; |59| 
|| [ A0]   LDW     .D1T1   *+A11(12),A3      ; |62| 

   [ A0]   CALL    .S1     _Znaj             ; |62| 
|| [ A0]   LDBU    .D1T1   *+A3(2),A3        ; |62| 

           ; BRANCHCC OCCURS {$C$L15}        ; |59| 
;** --------------------------------------------------------------------------*
;** 62	-----------------------    (*this).m_start_point = operator new[] ((unsigned)(*(*this).m_channel_config).axis_number<<3);  // [42]
;** 63	-----------------------    if ( (*this).m_start_point == NULL ) goto g5;  // [42]
           ADDKPC  .S2     $C$RL21,B3,3      ; |62| 
           SHL     .S1     A3,3,A4           ; |62| 
$C$RL21:   ; CALL OCCURS {_Znaj} {0}         ; |62| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*B10           ; |62| 
           LDW     .D1T1   *A10,A0           ; |63| 
           MV      .L1     A11,A4            ; |66| 
           NOP             3

   [!A0]   B       .S1     $C$L16            ; |63| 
|| [!A0]   MV      .L1     A11,A4            ; |27| 
|| [!A0]   LDDW    .D2T1   *++SP,A11:A10     ; |27| 
|| [!A0]   MV      .L2     B11,B3            ; |27| 

   [ A0]   CALL    .S1     _ZN9LookAhead5ResetEv ; |66| 
|| [!A0]   LDDW    .D2T1   *++SP,A13:A12     ; |27| 

   [!A0]   RET     .S2     B3                ; |27| 
|| [!A0]   LDDW    .D2T2   *++SP,B11:B10     ; |27| 

   [!A0]   LDW     .D2T1   *++SP(8),A14      ; |27| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L16}        ; |63| 
;** --------------------------------------------------------------------------*
;** 66	-----------------------    LookAhead::Reset(this);  // [42]
           ADDKPC  .S2     $C$RL22,B3,0      ; |66| 
$C$RL22:   ; CALL OCCURS {_ZN9LookAhead5ResetEv} {0}  ; |66| 
;** --------------------------------------------------------------------------*
$C$L15:    

           MV      .L1     A11,A4            ; |27| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |27| 

           LDDW    .D2T1   *++SP,A13:A12     ; |27| 
||         MV      .L2     B11,B3            ; |27| 

           LDDW    .D2T2   *++SP,B11:B10     ; |27| 
||         RET     .S2     B3                ; |27| 

           LDW     .D2T1   *++SP(8),A14      ; |27| 
           NOP             2
;** --------------------------------------------------------------------------*
$C$L16:    
;**	-----------------------g5:
;** 27	-----------------------    return this;
           NOP             2
           ; BRANCH OCCURS {B3}              ; |27| 
	.sect	".text:_ZN9LookAheadC2EP13InterpolationtP18NCCCTChannelConfigP20ChannelRealtimeState"
	.clink
	.global	_ZN9LookAheadC2EP13InterpolationtP18NCCCTChannelConfigP20ChannelRealtimeState

;******************************************************************************
;* FUNCTION NAME: LookAhead::LookAhead(Interpolation *, unsigned short, NCCCTChannelConfig *, ChannelRealtimeState *) [subobject]*
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
_ZN9LookAheadC2EP13InterpolationtP18NCCCTChannelConfigP20ChannelRealtimeState:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return LookAhead::LookAhead(this, $P$T0, $P$T1, $P$T2, $P$T3);
           CALLRET .S1     _ZN9LookAheadC1EP13InterpolationtP18NCCCTChannelConfigP20ChannelRealtimeState
           NOP             5
$C$RL23:   ; CALL-RETURN OCCURS {_ZN9LookAheadC1EP13InterpolationtP18NCCCTChannelConfigP20ChannelRealtimeState} 0 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead9SetCurPosEtd

;******************************************************************************
;* FUNCTION NAME: LookAhead::SetCurPos(unsigned short, double)                *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5                                             *
;*   Regs Used         : A3,A4,A5,A6,A7,B3,B4                                 *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN9LookAhead9SetCurPosEtd:
;** --------------------------------------------------------------------------*
;** 98	-----------------------    *(((int)axis_index<<3)+(double * const)this+64) = pos;
;** 99	-----------------------    *(((int)axis_index<<3)+(*this).m_start_point) = pos;
;**  	-----------------------    return;
           MVK     .S1     1644,A3           ; |99| 
           ADD     .L1     A3,A4,A3          ; |99| 

           RETNOP  .S2     B3,1              ; |101| 
||         LDW     .D1T1   *A3,A5            ; |99| 

           MV      .L1X    B4,A3             ; |97| 
           ADDAD   .D1     A4,A3,A4          ; |98| 
           STDW    .D1T1   A7:A6,*+A4(64)    ; |98| 
           STDW    .D1T1   A7:A6,*+A5[A3]    ; |99| 
           ; BRANCH OCCURS {B3}              ; |101| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead9IsBufFullEv

;******************************************************************************
;* FUNCTION NAME: LookAhead::IsBufFull()                                      *
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
_ZN9LookAhead9IsBufFullEv:
;** --------------------------------------------------------------------------*
;** 105	-----------------------    this = (*this).m_data_buffer;
;** 409	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [88]
;** 411	-----------------------    buf_len = (*this).m_buffer_cur_length;  // [88]
;** 413	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [88]
;** 105	-----------------------    return buf_len >= 100;
           STW     .D2T1   A11,*SP--(8)      ; |104| 
           STW     .D2T1   A10,*+SP(4)       ; |104| 
           LDW     .D1T1   *+A4(4),A10       ; |105| 
           MV      .L1X    B3,A11            ; |104| 
           NOP             3

           CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(20),A4      ; |409| 

$C$RL24:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |409| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(20),A3      ; |413| 
           LDW     .D1T1   *+A10(8),A10      ; |411| 
           MV      .L2X    A4,B4             ; |413| 
           NOP             2

           MV      .L1     A3,A4             ; |413| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3

$C$RL25:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |413| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A11,B3            ; |106| 
||         MVK     .S1     100,A3            ; |105| 

           RET     .S2     B3                ; |106| 
||         CMPLT   .L1     A10,A3,A3         ; |105| 
||         LDW     .D2T1   *+SP(4),A10       ; |106| 

           LDW     .D2T1   *++SP(8),A11      ; |106| 
           XOR     .L1     1,A3,A4           ; |105| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |106| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead9DataIsArcEt

;******************************************************************************
;* FUNCTION NAME: LookAhead::DataIsArc(unsigned short)                        *
;*                                                                            *
;*   Regs Modified     : A3,A4,B4,B5,B6                                       *
;*   Regs Used         : A3,A4,B3,B4,B5,B6                                    *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN9LookAhead9DataIsArcEt:
;** --------------------------------------------------------------------------*
;* 1447	-----------------------    return (type == 20)|(type == 30)|(type == 24);
           MVK     .S2     30,B5             ; |1447| 
           RET     .S2     B3                ; |1449| 

           CMPEQ   .L2     B4,B5,B5          ; |1447| 
||         MVK     .S1     20,A3             ; |1447| 
||         MVK     .S2     24,B6             ; |1447| 

           CMPEQ   .L2     B4,B6,B4          ; |1447| 
||         CMPEQ   .L1X    B4,A3,A3          ; |1447| 

           OR      .L1X    B5,A3,A3          ; |1447| 
           OR      .L1X    B4,A3,A3          ; |1447| 
           EXT     .S1     A3,24,24,A4       ; |1447| 
           ; BRANCH OCCURS {B3}              ; |1449| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead5v_minEiz

;******************************************************************************
;* FUNCTION NAME: LookAhead::v_min(int, ...)                                  *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,B4,B5,SP,FP                     *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,B3,B4,B5,SP,FP                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN9LookAhead5v_minEiz:
;** --------------------------------------------------------------------------*
;** 638	-----------------------    C$3 = (unsigned)(&num+4)+7u;
;** 638	-----------------------    arg_ptr = (char *)(C$3&0xfffffff8u)+8;
;** 638	-----------------------    m = *(double *)(C$3>>3<<3);
;** 639	-----------------------    if ( num < 2 ) goto g4;

           MV      .L1X    SP,FP             ; |634| 
||         STW     .D2T1   FP,*SP--(8)       ; |634| 
||         MVK     .L2     0xfffffff8,B5     ; |638| 

           LDW     .D1T1   *+FP(4),A4        ; |639| 
||         ADD     .L1     15,FP,A3          ; |638| 

           SHRU    .S1     A3,3,A5           ; |638| 

           SHL     .S1     A5,3,A3           ; |638| 
||         AND     .L1     -8,A3,A5          ; |638| 

           LDDW    .D1T1   *A3,A7:A6         ; |638| 
           ADD     .L1     8,A5,A3           ; |638| 
           CMPLT   .L1     A4,2,A0           ; |639| 

   [ A0]   BNOP    .S1     $C$L20,4          ; |639| 
|| [!A0]   LDW     .D1T1   *+FP(4),A8

           SUB     .L2X    A8,1,B4           ; |640| 
           ; BRANCHCC OCCURS {$C$L20}        ; |639| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    V$0 = num;
;** 640	-----------------------    L$1 = V$0-1;
;** 638	-----------------------    K$6 = 0xfffffff8u;
;**  	-----------------------    #pragma MUST_ITERATE(1, 2147483646, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g3:
;** 640	-----------------------    arg_ptr = (char *)((unsigned)arg_ptr+7u&K$6)+8;
;** 642	-----------------------    C$2 = *((double *)arg_ptr-8);
;** 642	-----------------------    (m > C$2) ? (m = C$2) : m;
;** 639	-----------------------    if ( L$1 = L$1-1 ) goto g3;
           MVC     .S2     B4,ILC
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 639
;*      Loop opening brace source line   : 639
;*      Loop closing brace source line   : 644
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 3
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2        0     
;*      .D units                     1        0     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          5        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     3*       0     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L17:    ; PIPED LOOP PROLOG
           SPLOOP  3       ;12               ; (P) 
;** --------------------------------------------------------------------------*
$C$L18:    ; PIPED LOOP KERNEL

           SPMASK          S1
||         MV      .S1X    B5,A8
||         ADD     .L1     7,A3,A3           ; |640| (P) <0,0>  ^ 

           AND     .D1     A8,A3,A3          ; |640| (P) <0,1>  ^ 
           ADD     .L1     8,A3,A3           ; |640| (P) <0,2>  ^ 
           LDDW    .D1T1   *-A3(8),A5:A4     ; |642| (P) <0,3> 
           NOP             4
           CMPGTDP .S1     A7:A6,A5:A4,A0    ; |642| (P) <0,8>  ^ 
           NOP             1

           SPKERNEL 2,2
|| [ A0]   MV      .L1     A4,A6             ; |642| <0,10>  ^ 
|| [ A0]   MV      .S1     A5,A7             ; |642| <0,10>  ^ Define a twin register

;** --------------------------------------------------------------------------*
$C$L19:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L20:    
;**	-----------------------g4:
;** 646	-----------------------    return m;
           RET     .S2     B3

           MV      .L2X    FP,SP             ; |647| 
||         LDW     .D1T1   *FP,FP            ; |647| 

           MV      .L1     A7,A5             ; |646| 
           MV      .L1     A6,A4             ; |646| 
           NOP             2
           ; BRANCH OCCURS {B3}  
	.sect	".text"
	.clink
	.global	_ZN9LookAhead11GetUserFeedEP8FeedInfo

;******************************************************************************
;* FUNCTION NAME: LookAhead::GetUserFeed(FeedInfo *)                          *
;*                                                                            *
;*   Regs Modified     : A4,A5                                                *
;*   Regs Used         : A4,A5,B3,B4                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN9LookAhead11GetUserFeedEP8FeedInfo:
;** --------------------------------------------------------------------------*
;* 1441	-----------------------    return (*feed).usr_target_feed_speed;
           RET     .S2     B3                ; |1442| 
           LDDW    .D2T1   *+B4(8),A5:A4     ; |1441| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1442| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead9CalcSpeedEP8LineData

;******************************************************************************
;* FUNCTION NAME: LookAhead::CalcSpeed(LineData *)                            *
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
;*   Local Frame Size  : 40 Args + 0 Auto + 48 Save = 88 byte                 *
;******************************************************************************
_ZN9LookAhead9CalcSpeedEP8LineData:
;** --------------------------------------------------------------------------*
;* 1446	-----------------------    C$21 = (*data).interpolation_type;  // [74]
;* 1446	-----------------------    if ( !((C$21 != 20)&(C$21 != 30)&(C$21 != 24)) ) goto g3;  // [74]

           STW     .D2T1   A14,*SP--(8)      ; |1101| 
||         MVK     .S2     274,B5            ; |1446| 
||         MV      .L1     A4,A14            ; |1101| 
||         MVK     .S1     24,A4             ; |1446| 

           STDW    .D2T2   B13:B12,*SP--     ; |1101| 
||         ADD     .L2     B5,B4,B5          ; |1446| 
||         MVK     .S2     20,B6             ; |1446| 
||         MVK     .S1     30,A3             ; |1446| 

           STDW    .D2T2   B11:B10,*SP--     ; |1101| 
||         MVK     .S1     3064,A6           ; |1110| 

           STDW    .D2T1   A13:A12,*SP--     ; |1101| 
           STDW    .D2T1   A11:A10,*SP--     ; |1101| 
           STW     .D2T2   B3,*SP--(48)      ; |1101| 
           LDHU    .D2T2   *B5,B5            ; |1446| 
           MVK     .S1     3792,A5           ; |1110| 
           ADD     .L1X    A6,B4,A6          ; |1110| 
           ADD     .L1X    A5,B4,A5          ; |1110| 
           MV      .L1X    B4,A13            ; |1101| 

           CMPEQ   .L2     B5,B6,B6          ; |1446| 
||         CMPEQ   .L1X    B5,A3,A3          ; |1446| 

           CMPEQ   .L2X    B5,A4,B5          ; |1446| 
||         MVK     .S1     1360,A4           ; |1137| 

           OR      .L1X    B6,A3,A3
||         MVK     .S2     3064,B6           ; |1115| 

           OR      .L1X    A3,B5,A0
||         ADD     .L2     B6,B4,B10         ; |1115| 
||         ADD     .S2X    A4,B4,B4          ; |1137| 
||         MV      .S1     A14,A4            ; |1137| 

   [ A0]   LDDW    .D1T1   *A6,A7:A6         ; |1110| 
|| [ A0]   B       .S1     $C$L21            ; |1446| 

   [!A0]   LDW     .D1T1   *+A14(12),A3      ; |1137| 
   [ A0]   LDDW    .D1T1   *A5,A5:A4         ; |1110| 
           MVK     .L2     2,B6              ; |1137| 
           NOP             1
           ABSDP   .S1     A7:A6,A7:A6       ; |1110| 
           ; BRANCHCC OCCURS {$C$L21}        ; |1446| 
;** --------------------------------------------------------------------------*
;* 1137	-----------------------    v_return = LookAhead::v_min(this, 2, (*(*this).m_channel_config).max_speed, *((double * const)data+1360));
;* 1144	-----------------------    return v_return;

           LDDW    .D2T2   *B4,B5:B4         ; |1137| 
||         LDDW    .D1T1   *+A3(72),A7:A6    ; |1137| 

           CALL    .S1     _ZN9LookAhead5v_minEiz ; |1137| 
           STW     .D2T2   B6,*+SP(4)        ; |1137| 
           ADDKPC  .S2     $C$RL26,B3,1      ; |1137| 
           STDW    .D2T2   B5:B4,*+SP(16)    ; |1137| 
           STDW    .D2T1   A7:A6,*+SP(8)     ; |1137| 
$C$RL26:   ; CALL OCCURS {_ZN9LookAhead5v_minEiz} {0}  ; |1137| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(48),B3      ; |1145| 
           LDDW    .D2T1   *++SP,A11:A10     ; |1145| 
           LDDW    .D2T1   *++SP,A13:A12     ; |1145| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1145| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1145| 
           RET     .S2     B3                ; |1145| 
           LDW     .D2T1   *++SP(8),A14      ; |1145| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1145| 
;** --------------------------------------------------------------------------*
$C$L21:    
;**	-----------------------g3:
;* 1110	-----------------------    v_circle_max = sqrt((*data).max_centripetal_acc*ABS(*((double * const)data+3064)));
;* 1115	-----------------------    U$29 = ABS(*((double * const)data+3064));
;* 1115	-----------------------    U$20 = (*this).m_channel_config;
;* 1115	-----------------------    U$32 = (*U$20).max_bow_err;
;* 1115	-----------------------    if ( U$32 > U$29 ) goto g5;
           NOP             1
           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |1110| 
           NOP             3
           CALL    .S1     sqrt              ; |1110| 
           ADDKPC  .S2     $C$RL27,B3,4      ; |1110| 
$C$RL27:   ; CALL OCCURS {sqrt} {0}          ; |1110| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T2   *B10,B5:B4        ; |1115| 
||         LDW     .D1T1   *+A14(12),A3      ; |1115| 

           MVKL    .S1     0x3eb0c6f7,A11
           ZERO    .L2     B11
           MV      .L2X    A5,B13            ; |1110| 
           MV      .L2X    A4,B12            ; |1110| 

           ABSDP   .S2     B5:B4,B5:B4       ; |1115| 
||         LDDW    .D1T1   *+A3(80),A7:A6    ; |1115| 

           ZERO    .L2     B10               ; |1119| 
           ADDDP   .L2     B5:B4,B5:B4,B7:B6 ; |1119| 
           SET     .S2     B11,0x1e,0x1e,B11
           MVKL    .S1     0xa0b5ed8d,A10
           CMPGTDP .S2X    A7:A6,B5:B4,B0    ; |1115| 
           MVKH    .S1     0x3eb0c6f7,A11
   [ B0]   LDDW    .D1T2   *+A3(72),B5:B4    ; |1117| 
           MVKH    .S1     0xa0b5ed8d,A10
           ADDAW   .D1     A3,17,A12         ; |1119| 
           SUBDP   .L1X    B7:B6,A7:A6,A5:A4 ; |1119| 
           NOP             1

   [ B0]   BNOP    .S1     $C$L22,4          ; |1115| 
|| [ B0]   MV      .L2     B5,B7             ; |1117| 
|| [ B0]   MV      .S2     B4,B6             ; |1117| 

           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |1119| 
           ; BRANCHCC OCCURS {$C$L22}        ; |1115| 
;** --------------------------------------------------------------------------*
;* 1119	-----------------------    v_bow_max = sqrt((U$29+U$29-U$32)*U$32)*2.0/((double)(*U$20).interpolation_cycle*9.99999999999999954748e-7);
;**  	-----------------------    U$22 = (*(*this).m_channel_config).max_speed;
;* 1119	-----------------------    goto g6;
           NOP             3
           CALL    .S1     sqrt              ; |1119| 
           ADDKPC  .S2     $C$RL28,B3,4      ; |1119| 
$C$RL28:   ; CALL OCCURS {sqrt} {0}          ; |1119| 
;** --------------------------------------------------------------------------*
           LDHU    .D1T1   *A12,A3           ; |1119| 
           MPYDP   .M1X    B11:B10,A5:A4,A5:A4 ; |1119| 
           NOP             3
           INTDPU  .L1     A3,A7:A6          ; |1119| 
           NOP             4
           MPYDP   .M1     A11:A10,A7:A6,A7:A6 ; |1119| 
           NOP             9
           NOP             1
           MV      .L2X    A6,B4             ; |1119| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A7,B5             ; |1119| 

$C$RL29:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1119| 
;** --------------------------------------------------------------------------*

           B       .S1     $C$L23            ; |1119| 
||         LDW     .D1T1   *+A14(12),A3
||         MVK     .S2     1360,B9           ; |1130| 
||         MV      .L2X    A5,B7             ; |1119| 

           ADD     .L2X    B9,A13,B8         ; |1130| 
           MV      .L2X    A4,B6             ; |1119| 
           LDDW    .D2T2   *B8,B9:B8         ; |1130| 
           STDW    .D2T2   B7:B6,*+SP(8)     ; |1130| 
           LDDW    .D1T2   *+A3(72),B5:B4
           ; BRANCH OCCURS {$C$L23}          ; |1119| 
;** --------------------------------------------------------------------------*
$C$L22:    
;**	-----------------------g5:
;* 1117	-----------------------    U$22 = (*U$20).max_speed;
;* 1117	-----------------------    v_bow_max = U$22;
           MVK     .S2     1360,B9           ; |1130| 
           ADD     .L2X    B9,A13,B8         ; |1130| 
           LDDW    .D2T2   *B8,B9:B8         ; |1130| 
           STDW    .D2T2   B7:B6,*+SP(8)     ; |1130| 
;** --------------------------------------------------------------------------*
$C$L23:    
;**	-----------------------g6:
;* 1130	-----------------------    v_return = LookAhead::v_min(this, 4, v_bow_max, v_circle_max, U$22, *((double * const)data+1360));
;* 1144	-----------------------    return v_return;
           CALL    .S1     _ZN9LookAhead5v_minEiz ; |1130| 
           STDW    .D2T2   B13:B12,*+SP(16)  ; |1130| 
           ADDKPC  .S2     $C$RL30,B3,0      ; |1130| 
           STDW    .D2T2   B9:B8,*+SP(32)    ; |1130| 

           STDW    .D2T2   B5:B4,*+SP(24)    ; |1130| 
||         MVK     .L2     4,B4              ; |1130| 

           MV      .L1     A14,A4            ; |1130| 
||         STW     .D2T2   B4,*+SP(4)        ; |1130| 

$C$RL30:   ; CALL OCCURS {_ZN9LookAhead5v_minEiz} {0}  ; |1130| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(48),B3      ; |1145| 
           LDDW    .D2T1   *++SP,A11:A10     ; |1145| 
           LDDW    .D2T1   *++SP,A13:A12     ; |1145| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1145| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1145| 
           RET     .S2     B3                ; |1145| 
           LDW     .D2T1   *++SP(8),A14      ; |1145| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1145| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead8GetMidXYEPK8LineDataS2_PdS3_S3_

;******************************************************************************
;* FUNCTION NAME: LookAhead::GetMidXY(const LineData *, const LineData *, double *, double *, double *)*
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,B0,B4,B5,B7,B8,B9,A16,A17,B16,B17, *
;*                           B18,B19                                          *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,B0,B3,B4,B5,B6,B7,B8,B9,A16,A17,*
;*                           B16,B17,B18,B19                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN9LookAhead8GetMidXYEPK8LineDataS2_PdS3_S3_:
;** --------------------------------------------------------------------------*
;** 698	-----------------------    K$6 = (const double * const)point1+1440;
;** 698	-----------------------    C$2 = (const double * const)point2+1440;
;** 698	-----------------------    *mid = (*K$6+*C$2)*0.5;
;** 700	-----------------------    mid[1] = C$1 = (K$6[1]+C$2[1])*0.5;
;** 702	-----------------------    mid[2] = (K$6[2]+C$2[2])*0.5;
;** 705	-----------------------    if ( !(U$39 = *((const unsigned char * const)point2+1328)) ) goto g5;
           MVK     .S1     1440,A3           ; |698| 
           ZERO    .L2     B16               ; |698| 

           ADD     .L2X    A3,B4,B7          ; |698| 
||         ADD     .L1     A3,A6,A3          ; |698| 

           LDDW    .D2T1   *B7,A5:A4         ; |698| 
||         LDDW    .D1T2   *A3,B5:B4         ; |698| 

           ZERO    .L2     B17
           SET     .S2     B17,0x15,0x1d,B17
           NOP             2
           ADDDP   .L1X    B5:B4,A5:A4,A5:A4 ; |698| 
           NOP             6
           MPYDP   .M1X    B17:B16,A5:A4,A17:A16 ; |698| 
           NOP             8
           MV      .L1X    B6,A4             ; |697| 
           STDW    .D1T1   A17:A16,*A4       ; |698| 

           LDDW    .D2T2   *+B7(8),B5:B4     ; |700| 
||         LDDW    .D1T1   *+A3(8),A17:A16   ; |700| 

           NOP             4
           ADDDP   .L2X    A17:A16,B5:B4,B5:B4 ; |700| 
           NOP             6
           MPYDP   .M2     B17:B16,B5:B4,B5:B4 ; |700| 
           NOP             9
           STDW    .D1T2   B5:B4,*+A4(8)     ; |700| 

           LDDW    .D2T2   *+B7(16),B19:B18  ; |702| 
||         LDDW    .D1T1   *+A3(16),A17:A16  ; |702| 

           MVK     .S1     1328,A3           ; |705| 
           NOP             3
           ADDDP   .L1X    A17:A16,B19:B18,A17:A16 ; |702| 
           NOP             6
           MPYDP   .M1X    B17:B16,A17:A16,A17:A16 ; |702| 
           NOP             9
           STDW    .D1T1   A17:A16,*+A4(16)  ; |702| 
           LDBU    .D1T1   *+A6[A3],A0       ; |705| 
           MV      .L1X    B8,A3             ; |697| 
           NOP             3

   [!A0]   LDDW    .D2T2   *+B7(16),B5:B4    ; |706| 
|| [!A0]   B       .S1     $C$L25            ; |705| 
||         CMPEQ   .L2X    A0,1,B0           ; |709| 

   [!A0]   ZERO    .L2     B0                ; nullify predicate
   [ B0]   BNOP    .S1     $C$L24,2          ; |709| 
   [!A0]   STDW    .D1T2   B5:B4,*+A4(16)    ; |706| 
           ; BRANCHCC OCCURS {$C$L25}        ; |705| 
;** --------------------------------------------------------------------------*
;** 709	-----------------------    if ( U$39 == 1 ) goto g4;
   [!B0]   LDDW    .D2T2   *B7,B9:B8         ; |714| 
   [ B0]   LDDW    .D2T2   *+B7(8),B5:B4     ; |710| 
           ; BRANCHCC OCCURS {$C$L24}        ; |709| 
;** --------------------------------------------------------------------------*
;** 714	-----------------------    *mid = *K$6;
;** 715	-----------------------    *x = C$1-K$6[1];
;** 716	-----------------------    *y = mid[2]-K$6[2];
;** 716	-----------------------    goto g6;
           NOP             3
           STDW    .D1T2   B9:B8,*A4         ; |714| 
           LDDW    .D2T2   *+B7(8),B9:B8     ; |715| 
           NOP             4
           SUBDP   .L2     B5:B4,B9:B8,B5:B4 ; |715| 
           NOP             6
           STDW    .D1T2   B5:B4,*A8         ; |715| 

           LDDW    .D1T1   *+A4(16),A5:A4    ; |716| 
||         LDDW    .D2T2   *+B7(16),B5:B4    ; |716| 

           NOP             4
           SUBDP   .L1X    A5:A4,B5:B4,A5:A4 ; |716| 
           NOP             1
           RETNOP  .S2     B3,4              ; |718| 
           STDW    .D1T1   A5:A4,*A3         ; |716| 
           ; BRANCH OCCURS {B3}              ; |718| 
;** --------------------------------------------------------------------------*
$C$L24:    
;**	-----------------------g4:
;** 710	-----------------------    mid[1] = K$6[1];
;** 711	-----------------------    *x = mid[2]-K$6[2];
;** 712	-----------------------    *y = *mid-*K$6;
;** 713	-----------------------    goto g6;
           LDDW    .D1T1   *+A4(16),A7:A6    ; |711| 
           NOP             3
           STDW    .D1T2   B5:B4,*+A4(8)     ; |710| 
           LDDW    .D2T2   *+B7(16),B5:B4    ; |711| 
           NOP             4
           SUBDP   .L2X    A7:A6,B5:B4,B5:B4 ; |711| 
           NOP             6
           STDW    .D1T2   B5:B4,*A8         ; |711| 

           LDDW    .D2T2   *B7,B5:B4         ; |712| 
||         LDDW    .D1T1   *A4,A5:A4         ; |712| 

           NOP             4
           SUBDP   .L1X    A5:A4,B5:B4,A5:A4 ; |712| 
           NOP             1
           RETNOP  .S2     B3,4              ; |718| 
           STDW    .D1T1   A5:A4,*A3         ; |712| 
           ; BRANCH OCCURS {B3}              ; |718| 
;** --------------------------------------------------------------------------*
$C$L25:    
;**	-----------------------g5:
;** 706	-----------------------    mid[2] = K$6[2];
;** 707	-----------------------    *x = *mid-*K$6;
;** 708	-----------------------    *y = mid[1]-K$6[1];
;**	-----------------------g6:
;**  	-----------------------    return;

           LDDW    .D2T2   *B7,B5:B4         ; |707| 
||         LDDW    .D1T1   *A4,A7:A6         ; |707| 

           NOP             4
           SUBDP   .L2X    A7:A6,B5:B4,B5:B4 ; |707| 
           NOP             6
           STDW    .D1T2   B5:B4,*A8         ; |707| 

           LDDW    .D1T1   *+A4(8),A5:A4     ; |708| 
||         LDDW    .D2T2   *+B7(8),B5:B4     ; |708| 

           NOP             4
           SUBDP   .L1X    A5:A4,B5:B4,A5:A4 ; |708| 
           NOP             1
           RETNOP  .S2     B3,4              ; |718| 
           STDW    .D1T1   A5:A4,*A3         ; |708| 
           ; BRANCH OCCURS {B3}              ; |718| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead15CalculateArcAccEP8LineData

;******************************************************************************
;* FUNCTION NAME: LookAhead::CalculateArcAcc(LineData *)                      *
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
_ZN9LookAhead15CalculateArcAccEP8LineData:
;** --------------------------------------------------------------------------*
;* 1529	-----------------------    U$5 = (*this).m_channel_config;
;* 1528	-----------------------    is_find_first_axis = 0;
;* 1529	-----------------------    if ( !(*U$5).axis_number ) goto g11;
           STW     .D2T1   A11,*SP--(8)      ; |1525| 

           STW     .D2T1   A10,*SP--(8)      ; |1525| 
||         MV      .L1     A4,A10            ; |1525| 

           STDW    .D2T2   B13:B12,*SP--     ; |1525| 
           STDW    .D2T2   B11:B10,*SP--     ; |1525| 
           STDW    .D2T1   A15:A14,*SP--     ; |1525| 
           STDW    .D2T1   A13:A12,*SP--     ; |1525| 
           STW     .D2T2   B3,*SP--(16)      ; |1525| 
           LDW     .D1T1   *+A10(12),A3      ; |1529| 
           ZERO    .L1     A11               ; |1529| 
           MVK     .S1     1432,A4
           ADD     .L1X    A4,B4,A15
           ZERO    .L1     A12               ; |1529| 
           LDBU    .D1T1   *+A3(2),A0        ; |1529| 
           MV      .L1X    B4,A13            ; |1525| 
           NOP             3
   [!A0]   BNOP    .S1     $C$L28,5          ; |1529| 
           ; BRANCHCC OCCURS {$C$L28}        ; |1529| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    K$14 = (struct xisMovData *)data+1432;
;* 1529	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |1530| 
           EXTU    .S1     A12,24,24,A3      ; |1530| 
           MV      .L1     A15,A4            ; |1530| 
           MV      .L2X    A3,B4             ; |1530| 
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L26:    
;**	-----------------------g3:
;* 1530	-----------------------    if ( AxisMovData::CheckMask(K$14, (unsigned char)i) != 1 ) goto g10;
           ADDKPC  .S2     $C$RL31,B3,0      ; |1530| 
$C$RL31:   ; CALL OCCURS {_ZN11AxisMovData9CheckMaskEh} {0}  ; |1530| 
;** --------------------------------------------------------------------------*
           CMPEQ   .L1     A4,1,A0           ; |1530| 

           MV      .L1     A0,A1             ; |1530| branch predicate copy
|| [!A0]   B       .S1     $C$L27            ; |1530| 

   [!A1]   LDW     .D1T1   *+A10(12),A3      ; |1529| 
           MV      .L1     A11,A0
           NOP             3
           ; BRANCHCC OCCURS {$C$L27}        ; |1530| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$25 = i*4;
;* 1531	-----------------------    if ( is_find_first_axis != 1 ) goto g9;
;* 1532	-----------------------    U$27 = *((*this).m_channel_config+U$25+7896);
;* 1532	-----------------------    C$6 = (*U$27).max_axis_acc;
;* 1532	-----------------------    if ( max_axis_acc <= C$6 ) goto g7;
;* 1533	-----------------------    max_axis_acc = C$6;
;**	-----------------------g7:
;* 1535	-----------------------    C$5 = (*U$27).max_axis_jerk;
;* 1535	-----------------------    if ( (*data).jerk <= C$5 ) goto g10;
;* 1536	-----------------------    (*data).jerk = C$5;
;* 1536	-----------------------    goto g10;
;**	-----------------------g9:
;* 1541	-----------------------    C$4 = *((*this).m_channel_config+U$25+7896);
;* 1541	-----------------------    max_axis_acc = (*C$4).max_axis_acc;
;* 1542	-----------------------    (*data).jerk = (*C$4).max_axis_jerk;
;* 1543	-----------------------    is_find_first_axis = 1;
   [ A0]   LDW     .D1T2   *+A10(12),B4      ; |1532| 
           SHL     .S1     A12,2,A3
   [!A0]   LDW     .D1T1   *+A10(12),A4      ; |1541| 
   [!A0]   ZERO    .L2     B0
   [!A0]   MVK     .L1     0x1,A11           ; |1543| 
   [ A0]   ADD     .L2X    A3,B4,B4          ; |1532| 
   [ A0]   ADDK    .S2     7896,B4           ; |1532| 
   [ A0]   LDW     .D2T2   *B4,B4            ; |1532| 
   [ A0]   MVK     .S1     3800,A3           ; |1535| 
   [!A0]   ADD     .L1     A3,A4,A3          ; |1541| 
   [ A0]   ADD     .L1     A3,A13,A3         ; |1535| 
   [ A0]   LDDW    .D1T1   *A3,A5:A4         ; |1535| 
   [ A0]   LDDW    .D2T2   *+B4(48),B13:B12  ; |1535| 
   [ A0]   LDDW    .D2T2   *+B4(32),B5:B4    ; |1532| 
   [!A0]   ADDK    .S1     7896,A3           ; |1541| 
   [!A0]   LDW     .D1T1   *A3,A3            ; |1541| 
           NOP             2

   [ A0]   STW     .D2T2   B4,*+SP(4)        ; |1532| 
||         MVK     .S2     3800,B4           ; |1536| 

           ADD     .L2X    B4,A13,B6         ; |1536| 
|| [ A0]   LDW     .D2T2   *+SP(4),B4        ; |1536| 

   [ A0]   CMPGTDP .S2X    A5:A4,B13:B12,B0  ; |1535| 
   [ A0]   MV      .L1X    B5,A14            ; |1532| 
   [ B0]   STDW    .D2T2   B13:B12,*B6       ; |1536| 
   [!A0]   ZERO    .L2     B0
   [ A0]   CMPGTDP .S2     B11:B10,B5:B4,B0  ; |1532| 
   [!A0]   LDDW    .D1T1   *+A3(48),A5:A4    ; |1542| 

   [ B0]   LDW     .D2T2   *+SP(4),B10       ; |1542| 
|| [ B0]   MV      .L2X    A14,B11           ; |1533| 

   [!A0]   LDDW    .D1T2   *+A3(32),B11:B10  ; |1541| 
           LDW     .D1T1   *+A10(12),A3      ; |1529| 
   [!A0]   MVK     .S2     3800,B4           ; |1542| 
   [!A0]   ADD     .L2X    B4,A13,B4         ; |1542| 
   [!A0]   STDW    .D2T1   A5:A4,*B4         ; |1542| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L27:    
;**	-----------------------g10:
;* 1529	-----------------------    U$5 = (*this).m_channel_config;
;* 1529	-----------------------    if ( (*U$5).axis_number > (++i) ) goto g3;
           LDBU    .D1T1   *+A3(2),A4        ; |1529| 
           ADD     .L1     1,A12,A12         ; |1529| 
           NOP             3
           CMPGT   .L1     A4,A12,A0         ; |1529| 
   [ A0]   B       .S1     $C$L26            ; |1529| 
   [ A0]   CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |1530| 
   [ A0]   EXTU    .S1     A12,24,24,A3      ; |1530| 
   [ A0]   MV      .L1     A15,A4            ; |1530| 
   [ A0]   MV      .L2X    A3,B4             ; |1530| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L26}        ; |1529| 
;** --------------------------------------------------------------------------*
$C$L28:    
;**	-----------------------g11:
;* 1547	-----------------------    if ( is_find_first_axis != 1 ) goto g15;

           MV      .L1     A11,A0            ; |1553| 
||         MVKL    .S2     0x3fe55555,B5

   [!A0]   B       .S1     $C$L29            ; |1547| 
||         MVKL    .S2     0x55556110,B4

           MVKH    .S2     0x3fe55555,B5
           MVKH    .S2     0x55556110,B4
           MPYDP   .M2     B5:B4,B11:B10,B5:B4 ; |1553| 
           MVK     .S1     3792,A4           ; |1553| 
           ADD     .L1     A4,A13,A4         ; |1553| 
           ; BRANCHCC OCCURS {$C$L29}        ; |1547| 
;** --------------------------------------------------------------------------*
;* 1553	-----------------------    (*data).max_centripetal_acc = C$3 = max_axis_acc*0.666666666667000029634;
;* 1554	-----------------------    C$2 = (*U$5).max_centripetal_acc;
;* 1554	-----------------------    if ( C$2 >= C$3 ) goto g14;
;* 1555	-----------------------    (*data).max_centripetal_acc = C$2;
;**	-----------------------g14:
;* 1558	-----------------------    C$1 = (*data).max_centripetal_acc;
;* 1558	-----------------------    (*data).acc = sqrt(max_axis_acc*max_axis_acc-C$1*C$1);
;**	-----------------------g15:
;**  	-----------------------    return;
           MVK     .S2     3792,B6           ; |1555| 
           ADD     .L2X    B6,A13,B31        ; |1555| 
           ADD     .L2X    B6,A13,B30        ; |1558| 
           MPYDP   .M2     B11:B10,B11:B10,B7:B6 ; |1558| 
           MV      .L2X    A13,B12           ; |1554| 
           NOP             2
           STDW    .D1T2   B5:B4,*A4         ; |1553| 
           LDDW    .D1T1   *+A3(88),A5:A4    ; |1554| 
           NOP             4
           CMPLTDP .S1X    A5:A4,B5:B4,A0    ; |1554| 
           NOP             1
   [ A0]   STDW    .D2T1   A5:A4,*B31        ; |1555| 
           LDDW    .D2T2   *B30,B5:B4        ; |1558| 
           NOP             4
           MPYDP   .M2     B5:B4,B5:B4,B5:B4 ; |1558| 
           NOP             9
           SUBDP   .L2     B7:B6,B5:B4,B5:B4 ; |1558| 
           NOP             3
           CALL    .S1     sqrt              ; |1558| 
           ADDKPC  .S2     $C$RL32,B3,2      ; |1558| 
           MV      .L1X    B5,A5             ; |1558| 
           MV      .L1X    B4,A4             ; |1558| 
$C$RL32:   ; CALL OCCURS {sqrt} {0}          ; |1558| 
;** --------------------------------------------------------------------------*
           MVK     .S1     3784,A3           ; |1558| 
           ADD     .L1X    A3,B12,A3         ; |1558| 
           STDW    .D1T1   A5:A4,*A3         ; |1558| 
;** --------------------------------------------------------------------------*
$C$L29:    
           LDW     .D2T2   *++SP(16),B3      ; |1559| 
           LDDW    .D2T1   *++SP,A13:A12     ; |1559| 
           LDDW    .D2T1   *++SP,A15:A14     ; |1559| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1559| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1559| 

           LDW     .D2T1   *++SP(8),A10      ; |1559| 
||         RET     .S2     B3                ; |1559| 

           LDW     .D2T1   *++SP(8),A11      ; |1559| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1559| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead16CalculateLineAccEP8LineDataPd

;******************************************************************************
;* FUNCTION NAME: LookAhead::CalculateLineAcc(LineData *, double *)           *
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
_ZN9LookAhead16CalculateLineAccEP8LineDataPd:
;** --------------------------------------------------------------------------*
;* 1461	-----------------------    is_find_first_axis = 0;
;* 1465	-----------------------    if ( (*data).interpolation_type == 10 ) goto g15;

           STW     .D2T1   A11,*SP--(8)      ; |1459| 
||         MVK     .S2     274,B5            ; |1465| 

           STW     .D2T1   A10,*SP--(8)      ; |1459| 
||         ADD     .L2     B5,B4,B5          ; |1465| 

           STDW    .D2T2   B13:B12,*SP--     ; |1459| 
           STDW    .D2T2   B11:B10,*SP--     ; |1459| 
           STDW    .D2T1   A15:A14,*SP--     ; |1459| 
           STDW    .D2T1   A13:A12,*SP--     ; |1459| 
           STW     .D2T2   B3,*SP--(16)      ; |1459| 
           LDHU    .D2T2   *B5,B5            ; |1465| 
           MV      .L2X    A4,B10            ; |1459| 
           ZERO    .L2     B11               ; |1461| 
           MV      .L1X    B10,A3
           MV      .L1X    B4,A14            ; |1459| 
           CMPEQ   .L2     B5,10,B0          ; |1465| 

   [!B0]   LDW     .D1T1   *+A3(12),A3       ; |1495| 
|| [ B0]   MV      .L1X    B10,A3
|| [ B0]   B       .S1     $C$L34            ; |1465| 

   [ B0]   LDW     .D1T1   *+A3(12),A3       ; |1466| 
           STW     .D2T1   A6,*+SP(4)        ; |1459| 
           NOP             2
   [!B0]   LDBU    .D1T1   *+A3(2),A0        ; |1495| 
           ; BRANCHCC OCCURS {$C$L34}        ; |1465| 
;** --------------------------------------------------------------------------*
;* 1495	-----------------------    if ( !(*(*this).m_channel_config).axis_number ) goto g28;
;**  	-----------------------    K$20 = (struct xisMovData *)data+1432;
;* 1495	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           MVK     .S1     1432,A31
           ADD     .L1     A31,A14,A3
           MV      .L1X    B11,A15
           MV      .L2X    A3,B12
   [!A0]   BNOP    .S1     $C$L40,5          ; |1495| 
           ; BRANCHCC OCCURS {$C$L40}        ; |1495| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |1496| 
           EXTU    .S1     A15,24,24,A3      ; |1496| 
           MV      .L1X    B12,A4            ; |1496| 
           MV      .L2X    A3,B4             ; |1496| 
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L30:    
;**	-----------------------g4:
;* 1496	-----------------------    if ( AxisMovData::CheckMask(K$20, (unsigned char)i) != 1 ) goto g14;
           ADDKPC  .S2     $C$RL33,B3,0      ; |1496| 
$C$RL33:   ; CALL OCCURS {_ZN11AxisMovData9CheckMaskEh} {0}  ; |1496| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(4),A3        ; |1497| 
||         CMPEQ   .L1     A4,1,A0           ; |1496| 

   [!A0]   BNOP    .S1     $C$L33,1          ; |1496| 
|| [ A0]   ADDAD   .D1     A14,A15,A6        ; |1497| 

   [ A0]   ADDK    .S1     1440,A6           ; |1497| 
   [ A0]   LDDW    .D1T1   *A6,A7:A6         ; |1497| 

   [ A0]   LDDW    .D1T1   *+A3[A15],A5:A4   ; |1497| 
|| [!A0]   MV      .L1X    B10,A3

   [!A0]   LDW     .D1T1   *+A3(12),A3       ; |1495| 
           ; BRANCHCC OCCURS {$C$L33}        ; |1496| 
;** --------------------------------------------------------------------------*
;* 1497	-----------------------    K$34 = (double * const)data+2480;
;* 1497	-----------------------    axis_slope = ABS((*((i<<3)+(double * const)data+1440)-*((i<<3)+start_point))/*K$34);
;**  	-----------------------    U$46 = i*4;
;* 1498	-----------------------    if ( is_find_first_axis != 1 ) goto g10;
           MVK     .S2     2480,B4           ; |1497| 
           ADD     .L2X    B4,A14,B4         ; |1497| 
           LDDW    .D2T2   *B4,B5:B4         ; |1497| 
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |1497| 
           CALL    .S1     __c6xabi_divd     ; |1497| 
           ADDKPC  .S2     $C$RL34,B3,4      ; |1497| 
$C$RL34:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1497| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B11,A0

           MV      .L1X    B10,A3
|| [!A0]   MVKL    .S1     0x3e45798e,A7

   [!A0]   B       .S2     $C$L31            ; |1498| 
|| [ A0]   LDW     .D1T1   *+A3(12),A3       ; |1511| 
|| [!A0]   MVKL    .S1     0xe2308c3a,A6

   [!A0]   MVKH    .S1     0x3e45798e,A7
   [!A0]   MVKH    .S1     0xe2308c3a,A6
           ABSDP   .S1     A5:A4,A11:A10     ; |1497| 
           NOP             1
           SHL     .S1     A15,2,A4
           ; BRANCHCC OCCURS {$C$L31}        ; |1498| 
;** --------------------------------------------------------------------------*
;* 1511	-----------------------    C$8 = *((*this).m_channel_config+U$46+7896);
;* 1511	-----------------------    axis_permit_jerk = (*C$8).max_axis_jerk/axis_slope;
;* 1512	-----------------------    C$7 = (*C$8).max_G00_axis_acc/axis_slope;
;* 1512	-----------------------    if ( (*data).acc <= C$7 ) goto g8;
;* 1513	-----------------------    (*data).acc = C$7;
;**	-----------------------g8:
;* 1515	-----------------------    if ( (*data).jerk <= axis_permit_jerk ) goto g14;
;* 1516	-----------------------    (*data).jerk = axis_permit_jerk;
;* 1516	-----------------------    goto g14;
           ADD     .L1     A4,A3,A3          ; |1511| 
           ADDK    .S1     7896,A3           ; |1511| 
           LDW     .D1T1   *A3,A3            ; |1511| 
           MV      .L2X    A10,B4            ; |1511| 
           MV      .L2X    A11,B5            ; |1511| 
           NOP             1
           CALL    .S1     __c6xabi_divd     ; |1511| 
           LDDW    .D1T1   *+A3(48),A5:A4    ; |1511| 
           MV      .L2X    A3,B13            ; |1511| 
           ADDKPC  .S2     $C$RL35,B3,2      ; |1511| 
$C$RL35:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1511| 
;** --------------------------------------------------------------------------*

           MV      .L1X    B13,A3            ; |1511| 
||         MV      .L2X    A10,B4            ; |1512| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L1     A4,A12            ; |1511| 
||         MV      .S1     A5,A13            ; |1511| 
||         LDDW    .D1T1   *+A3(40),A5:A4    ; |1512| 
||         MV      .L2X    A11,B5            ; |1512| 

$C$RL36:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1512| 
;** --------------------------------------------------------------------------*

           MVK     .S2     3800,B4           ; |1515| 
||         MV      .L2X    A4,B6             ; |1512| 
||         MVK     .S1     3784,A29          ; |1513| 

           MVK     .S2     3784,B31          ; |1512| 
||         MV      .L2X    A5,B7             ; |1512| 
||         MVK     .S1     3800,A31          ; |1516| 

           ADD     .L1X    B4,A14,A3         ; |1515| 
||         ADD     .L2X    B31,A14,B4        ; |1512| 

           LDDW    .D2T2   *B4,B5:B4         ; |1512| 
           LDDW    .D1T1   *A3,A5:A4         ; |1515| 
           ADD     .L1     A31,A14,A30       ; |1516| 
           ADD     .L1     A29,A14,A3        ; |1513| 
           B       .S1     $C$L33            ; |1516| 
           CMPGTDP .S2     B5:B4,B7:B6,B0    ; |1512| 
           CMPGTDP .S1     A5:A4,A13:A12,A0  ; |1515| 

   [ B0]   STDW    .D1T2   B7:B6,*A3         ; |1513| 
||         MV      .L1X    B10,A3

           LDW     .D1T1   *+A3(12),A3       ; |1495| 
   [ A0]   STDW    .D1T1   A13:A12,*A30      ; |1516| 
           ; BRANCH OCCURS {$C$L33}          ; |1516| 
;** --------------------------------------------------------------------------*
$C$L31:    
;**	-----------------------g10:
;* 1499	-----------------------    if ( axis_slope > 1.00000000000000002092e-8 ) goto g12;
;* 1504	-----------------------    C$6 = *((*this).m_channel_config+U$46+7896);
;* 1504	-----------------------    (*data).acc = (*C$6).max_G00_axis_acc*1000.0;
;* 1505	-----------------------    (*data).jerk = (*C$6).max_axis_jerk*1000.0;
;* 1505	-----------------------    goto g13;
           CMPGTDP .S1     A11:A10,A7:A6,A0  ; |1499| 
           ZERO    .L2     B4                ; |1504| 
   [!A0]   MV      .L1X    B10,A3
   [!A0]   LDW     .D1T1   *+A3(12),A3       ; |1504| 
   [!A0]   MVKL    .S2     0x408f4000,B5
   [!A0]   MVKH    .S2     0x408f4000,B5
           MVK     .S1     3784,A5           ; |1504| 
           ADD     .L1     A5,A14,A5         ; |1504| 
   [!A0]   ADD     .L1     A4,A3,A3          ; |1504| 
   [!A0]   ADDK    .S1     7896,A3           ; |1504| 
   [!A0]   LDW     .D1T1   *A3,A3            ; |1504| 
           ZERO    .L1     A8                ; |1505| 
   [!A0]   MVKL    .S1     0x408f4000,A9
   [!A0]   MVKH    .S1     0x408f4000,A9
           MVK     .S2     3800,B31          ; |1505| 
   [!A0]   LDDW    .D1T1   *+A3(40),A7:A6    ; |1504| 
           NOP             4
   [!A0]   MPYDP   .M2X    B5:B4,A7:A6,B5:B4 ; |1504| 
           NOP             9
   [!A0]   STDW    .D1T2   B5:B4,*A5         ; |1504| 
   [!A0]   LDDW    .D1T1   *+A3(48),A7:A6    ; |1505| 
           ADD     .L1X    B31,A14,A3        ; |1505| 
           NOP             3
   [!A0]   MPYDP   .M1     A9:A8,A7:A6,A7:A6 ; |1505| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L32,4          ; |1505| 

   [!A0]   STDW    .D1T1   A7:A6,*A3         ; |1505| 
||         MV      .L1X    B10,A3

           ; BRANCHCC OCCURS {$C$L32}        ; |1505| 
;** --------------------------------------------------------------------------*
;**	-----------------------g12:
;* 1500	-----------------------    C$5 = *((*this).m_channel_config+U$46+7896);
;* 1500	-----------------------    (*data).acc = (*C$5).max_G00_axis_acc/axis_slope;
;* 1501	-----------------------    (*data).jerk = (*C$5).max_axis_jerk/axis_slope;
           LDW     .D1T1   *+A3(12),A3       ; |1500| 
           MV      .L2X    A10,B4            ; |1500| 
           MV      .L2X    A11,B5            ; |1500| 
           NOP             2
           ADD     .L1     A4,A3,A3          ; |1500| 
           ADDK    .S1     7896,A3           ; |1500| 
           LDW     .D1T1   *A3,A12           ; |1500| 
           NOP             3
           CALL    .S1     __c6xabi_divd     ; |1500| 
           LDDW    .D1T1   *+A12(40),A5:A4   ; |1500| 
           ADDKPC  .S2     $C$RL37,B3,3      ; |1500| 
$C$RL37:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1500| 
;** --------------------------------------------------------------------------*
           MVK     .S2     3784,B6           ; |1500| 
           MV      .L2X    A5,B5             ; |1500| 

           ADD     .L1X    B6,A14,A3         ; |1500| 
||         MV      .L2X    A4,B4             ; |1500| 

           STDW    .D1T2   B5:B4,*A3         ; |1500| 
||         MV      .L2X    A10,B4            ; |1501| 

           CALLP   .S2     __c6xabi_divd,B3
||         LDDW    .D1T1   *+A12(48),A5:A4   ; |1501| 
||         MV      .L2X    A11,B5            ; |1501| 

$C$RL38:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1501| 
;** --------------------------------------------------------------------------*
           MVK     .S1     3800,A3           ; |1501| 
           ADD     .L1     A3,A14,A3         ; |1501| 
           STDW    .D1T1   A5:A4,*A3         ; |1501| 
;** --------------------------------------------------------------------------*
$C$L32:    
;**	-----------------------g13:
;* 1507	-----------------------    is_find_first_axis = 1;
           MVK     .L1     0x1,A3            ; |1507| 
           NOP             1

           MV      .L2X    A3,B11            ; |1507| 
||         MV      .L1X    B10,A3

           LDW     .D1T1   *+A3(12),A3       ; |1495| 
;** --------------------------------------------------------------------------*
$C$L33:    
;**	-----------------------g14:
;* 1495	-----------------------    if ( (*(*this).m_channel_config).axis_number > (++i) ) goto g4;
           ADD     .L1     1,A15,A15         ; |1495| 
           NOP             3
           LDBU    .D1T1   *+A3(2),A3        ; |1495| 
           NOP             4
           CMPGT   .L1     A3,A15,A0         ; |1495| 

   [!A0]   LDW     .D2T2   *++SP(16),B3      ; |1522| 
|| [ A0]   B       .S2     $C$L30            ; |1495| 
|| [ A0]   EXTU    .S1     A15,24,24,A3      ; |1496| 
|| [ A0]   MV      .L1X    B12,A4            ; |1496| 

   [ A0]   CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |1496| 
|| [!A0]   LDDW    .D2T1   *++SP,A13:A12     ; |1522| 

   [!A0]   LDDW    .D2T1   *++SP,A15:A14     ; |1522| 
|| [ A0]   MV      .L2X    A3,B4             ; |1496| 

   [!A0]   LDDW    .D2T2   *++SP,B11:B10     ; |1522| 
   [!A0]   LDDW    .D2T2   *++SP,B13:B12     ; |1522| 

   [!A0]   RET     .S2     B3                ; |1522| 
|| [!A0]   LDW     .D2T1   *++SP(8),A10      ; |1522| 

           ; BRANCHCC OCCURS {$C$L30}        ; |1495| 
;** --------------------------------------------------------------------------*
;* 1495	-----------------------    goto g28;
           LDW     .D2T1   *++SP(8),A11      ; |1522| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1522| 
;** --------------------------------------------------------------------------*
$C$L34:    
;**	-----------------------g15:
;* 1466	-----------------------    if ( !(*(*this).m_channel_config).axis_number ) goto g28;
;**  	-----------------------    K$20 = (struct xisMovData *)data+1432;
;* 1466	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           LDBU    .D1T1   *+A3(2),A0        ; |1466| 
           MVK     .S1     1432,A31
           ADD     .L1     A31,A14,A3
           MV      .L1X    B11,A15
           MV      .L2X    A3,B12
   [!A0]   BNOP    .S1     $C$L40,5          ; |1466| 
           ; BRANCHCC OCCURS {$C$L40}        ; |1466| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |1467| 
           EXTU    .S1     A15,24,24,A3      ; |1467| 
           MV      .L1X    B12,A4            ; |1467| 
           MV      .L2X    A3,B4             ; |1467| 
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L35:    
;**	-----------------------g17:
;* 1467	-----------------------    if ( AxisMovData::CheckMask(K$20, (unsigned char)i) != 1 ) goto g27;
           ADDKPC  .S2     $C$RL39,B3,0      ; |1467| 
$C$RL39:   ; CALL OCCURS {_ZN11AxisMovData9CheckMaskEh} {0}  ; |1467| 
;** --------------------------------------------------------------------------*

           CMPEQ   .L1     A4,1,A0           ; |1467| 
||         LDW     .D2T1   *+SP(4),A4        ; |1468| 

   [ A0]   ADDAD   .D1     A14,A15,A3        ; |1468| 
|| [!A0]   B       .S1     $C$L39            ; |1467| 

   [ A0]   ADDK    .S1     1440,A3           ; |1468| 

   [ A0]   LDDW    .D1T1   *A3,A7:A6         ; |1468| 
||         MV      .L1X    B10,A3

   [!A0]   LDW     .D1T1   *+A3(12),A3       ; |1466| 
   [ A0]   LDDW    .D1T1   *+A4[A15],A5:A4   ; |1468| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L39}        ; |1467| 
;** --------------------------------------------------------------------------*
;* 1468	-----------------------    K$34 = (double * const)data+2480;
;* 1468	-----------------------    axis_slope = ABS((*((i<<3)+(double * const)data+1440)-*((i<<3)+start_point))/*K$34);
;**  	-----------------------    U$82 = i*4;
;* 1469	-----------------------    if ( is_find_first_axis != 1 ) goto g23;
           MVK     .S2     2480,B4           ; |1468| 
           ADD     .L2X    B4,A14,B4         ; |1468| 
           LDDW    .D2T2   *B4,B5:B4         ; |1468| 
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |1468| 
           CALL    .S1     __c6xabi_divd     ; |1468| 
           ADDKPC  .S2     $C$RL40,B3,4      ; |1468| 
$C$RL40:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1468| 
;** --------------------------------------------------------------------------*

           MV      .L1X    B11,A0
||         ABSDP   .S1     A5:A4,A11:A10     ; |1468| 

   [!A0]   B       .S2     $C$L36            ; |1469| 
||         MV      .L1X    B10,A4

   [ A0]   LDW     .D1T1   *+A4(12),A4       ; |1482| 
|| [!A0]   MVKL    .S1     0x3e45798e,A5

   [!A0]   MVKL    .S1     0xe2308c3a,A4
   [!A0]   MVKH    .S1     0x3e45798e,A5
   [!A0]   MVKH    .S1     0xe2308c3a,A4
           SHL     .S1     A15,2,A3
           ; BRANCHCC OCCURS {$C$L36}        ; |1469| 
;** --------------------------------------------------------------------------*
;* 1482	-----------------------    C$4 = *((*this).m_channel_config+U$82+7896);
;* 1482	-----------------------    axis_permit_jerk = (*C$4).max_axis_jerk/axis_slope;
;* 1483	-----------------------    C$3 = (*C$4).max_axis_acc/axis_slope;
;* 1483	-----------------------    if ( (*data).acc <= C$3 ) goto g21;
;* 1484	-----------------------    (*data).acc = C$3;
;**	-----------------------g21:
;* 1486	-----------------------    if ( (*data).jerk <= axis_permit_jerk ) goto g27;
;* 1487	-----------------------    (*data).jerk = axis_permit_jerk;
;* 1487	-----------------------    goto g27;
           ADD     .L1     A3,A4,A3          ; |1482| 
           ADDK    .S1     7896,A3           ; |1482| 
           LDW     .D1T1   *A3,A3            ; |1482| 
           MV      .L2X    A10,B4            ; |1482| 
           MV      .L2X    A11,B5            ; |1482| 
           NOP             1
           CALL    .S1     __c6xabi_divd     ; |1482| 
           LDDW    .D1T1   *+A3(48),A5:A4    ; |1482| 
           MV      .L2X    A3,B13            ; |1482| 
           ADDKPC  .S2     $C$RL41,B3,2      ; |1482| 
$C$RL41:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1482| 
;** --------------------------------------------------------------------------*

           MV      .L1X    B13,A3            ; |1482| 
||         MV      .L2X    A10,B4            ; |1483| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L1     A4,A12            ; |1482| 
||         MV      .S1     A5,A13            ; |1482| 
||         LDDW    .D1T1   *+A3(32),A5:A4    ; |1483| 
||         MV      .L2X    A11,B5            ; |1483| 

$C$RL42:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1483| 
;** --------------------------------------------------------------------------*

           MVK     .S2     3800,B4           ; |1486| 
||         MV      .L2X    A5,B7             ; |1483| 
||         MVK     .S1     3784,A29          ; |1484| 

           MVK     .S2     3784,B31          ; |1483| 
||         MV      .L2X    A4,B6             ; |1483| 
||         MVK     .S1     3800,A31          ; |1487| 

           ADD     .L1X    B4,A14,A3         ; |1486| 
||         ADD     .L2X    B31,A14,B4        ; |1483| 

           LDDW    .D2T2   *B4,B5:B4         ; |1483| 
           LDDW    .D1T1   *A3,A5:A4         ; |1486| 
           ADD     .L1     A31,A14,A30       ; |1487| 
           ADD     .L1     A29,A14,A3        ; |1484| 
           B       .S1     $C$L38            ; |1487| 
           CMPGTDP .S2     B5:B4,B7:B6,B0    ; |1483| 
           CMPGTDP .S1     A5:A4,A13:A12,A0  ; |1486| 

   [ B0]   STDW    .D1T2   B7:B6,*A3         ; |1484| 
||         MV      .L1X    B10,A3

           LDW     .D1T1   *+A3(12),A3       ; |1466| 
   [ A0]   STDW    .D1T1   A13:A12,*A30      ; |1487| 
           ; BRANCH OCCURS {$C$L38}          ; |1487| 
;** --------------------------------------------------------------------------*
$C$L36:    
;**	-----------------------g23:
;* 1470	-----------------------    if ( axis_slope > 1.00000000000000002092e-8 ) goto g25;
;* 1475	-----------------------    C$2 = *((*this).m_channel_config+U$82+7896);
;* 1475	-----------------------    (*data).acc = (*C$2).max_axis_acc*1000.0;
;* 1476	-----------------------    (*data).jerk = (*C$2).max_axis_jerk*1000.0;
;* 1476	-----------------------    goto g26;
           CMPGTDP .S1     A11:A10,A5:A4,A0  ; |1470| 
           ZERO    .L2     B4                ; |1475| 
   [!A0]   MV      .L1X    B10,A4
   [!A0]   LDW     .D1T1   *+A4(12),A4       ; |1475| 
   [!A0]   MVKL    .S2     0x408f4000,B5
   [!A0]   MVKH    .S2     0x408f4000,B5
           MVK     .S2     3800,B31          ; |1476| 
           MVK     .S1     3784,A31          ; |1475| 
   [!A0]   ADD     .L1     A3,A4,A4          ; |1475| 
   [!A0]   ADDK    .S1     7896,A4           ; |1475| 
   [!A0]   LDW     .D1T1   *A4,A6            ; |1475| 
           ADD     .L1X    B31,A14,A30       ; |1476| 
   [!A0]   MVKL    .S1     0x408f4000,A7
   [!A0]   MVKH    .S1     0x408f4000,A7
   [!A0]   MVK     .L1     0x1,A3            ; |1478| 
   [!A0]   LDDW    .D1T1   *+A6(32),A5:A4    ; |1475| 
   [!A0]   MV      .L2X    A3,B11            ; |1478| 
           NOP             3
   [!A0]   MPYDP   .M2X    B5:B4,A5:A4,B5:B4 ; |1475| 
           NOP             7
           ADD     .L1     A31,A14,A4        ; |1475| 
   [ A0]   MV      .L1X    B10,A4
   [!A0]   STDW    .D1T2   B5:B4,*A4         ; |1475| 
   [!A0]   LDDW    .D1T1   *+A6(48),A5:A4    ; |1476| 
   [ A0]   LDW     .D1T1   *+A4(12),A4       ; |1471| 
           ZERO    .L1     A6                ; |1476| 
           NOP             2
   [!A0]   MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |1476| 
   [ A0]   ADD     .L1     A3,A4,A3          ; |1471| 
   [ A0]   ADDK    .S1     7896,A3           ; |1471| 
   [ A0]   LDW     .D1T1   *A3,A12           ; |1471| 
           NOP             1
   [!A0]   BNOP    .S1     $C$L37,1          ; |1476| 
   [ A0]   CALL    .S1     __c6xabi_divd     ; |1471| 
   [ A0]   LDDW    .D1T1   *+A12(32),A5:A4   ; |1471| 
           NOP             1
   [!A0]   STDW    .D1T1   A5:A4,*A30        ; |1476| 
           ; BRANCHCC OCCURS {$C$L37}        ; |1476| 
;** --------------------------------------------------------------------------*
;**	-----------------------g25:
;* 1471	-----------------------    C$1 = *((*this).m_channel_config+U$82+7896);
;* 1471	-----------------------    (*data).acc = (*C$1).max_axis_acc/axis_slope;
;* 1472	-----------------------    (*data).jerk = (*C$1).max_axis_jerk/axis_slope;
           MV      .L2X    A10,B4            ; |1471| 

           MV      .L2X    A11,B5            ; |1471| 
||         ADDKPC  .S2     $C$RL43,B3,0      ; |1471| 

$C$RL43:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1471| 
;** --------------------------------------------------------------------------*
           MVK     .S2     3784,B6           ; |1471| 
           MV      .L2X    A5,B5             ; |1471| 

           ADD     .L1X    B6,A14,A3         ; |1471| 
||         MV      .L2X    A4,B4             ; |1471| 

           STDW    .D1T2   B5:B4,*A3         ; |1471| 
||         MV      .L2X    A10,B4            ; |1472| 

           CALLP   .S2     __c6xabi_divd,B3
||         LDDW    .D1T1   *+A12(48),A5:A4   ; |1472| 
||         MV      .L2X    A11,B5            ; |1472| 

$C$RL44:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1472| 
;** --------------------------------------------------------------------------*
           MVK     .S1     3800,A3           ; |1472| 
           ADD     .L1     A3,A14,A3         ; |1472| 

           STDW    .D1T1   A5:A4,*A3         ; |1472| 
||         MVK     .L1     0x1,A3            ; |1478| 

           NOP             1
           MV      .L2X    A3,B11            ; |1478| 
;** --------------------------------------------------------------------------*
$C$L37:    
;**	-----------------------g26:
;* 1478	-----------------------    is_find_first_axis = 1;
           MV      .L1X    B10,A3
           LDW     .D1T1   *+A3(12),A3       ; |1466| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L38:    
           NOP             1
;** --------------------------------------------------------------------------*
$C$L39:    
;**	-----------------------g27:
;* 1466	-----------------------    if ( (*(*this).m_channel_config).axis_number > (++i) ) goto g17;
           ADD     .L1     1,A15,A15         ; |1466| 
           NOP             1
           LDBU    .D1T1   *+A3(2),A3        ; |1466| 
           NOP             4
           CMPGT   .L1     A3,A15,A0         ; |1466| 
   [ A0]   B       .S1     $C$L35            ; |1466| 
   [ A0]   CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |1467| 
   [ A0]   EXTU    .S1     A15,24,24,A3      ; |1467| 
   [ A0]   MV      .L1X    B12,A4            ; |1467| 
   [ A0]   MV      .L2X    A3,B4             ; |1467| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L35}        ; |1466| 
;** --------------------------------------------------------------------------*
;**	-----------------------g28:
;**  	-----------------------    return;
;** --------------------------------------------------------------------------*
$C$L40:    
           LDW     .D2T2   *++SP(16),B3      ; |1522| 
           LDDW    .D2T1   *++SP,A13:A12     ; |1522| 
           LDDW    .D2T1   *++SP,A15:A14     ; |1522| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1522| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1522| 

           LDW     .D2T1   *++SP(8),A10      ; |1522| 
||         RET     .S2     B3                ; |1522| 

           LDW     .D2T1   *++SP(8),A11      ; |1522| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1522| 
	.sect	".text:_ZN14CircularBufferI8LineDataE9WriteDataEPKS0_i"
	.clink
	.global	_ZN14CircularBufferI8LineDataE9WriteDataEPKS0_i

;******************************************************************************
;* FUNCTION NAME: CircularBuffer<LineData>::WriteData(const LineData *, int)  *
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
_ZN14CircularBufferI8LineDataE9WriteDataEPKS0_i:
;** --------------------------------------------------------------------------*
;** 95	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);
;** 98	-----------------------    res = 0;
;** 101	-----------------------    if ( !data_length ) goto g12;
           STW     .D2T1   A14,*SP--(8)      ; |91| 
           STDW    .D2T2   B13:B12,*SP--     ; |91| 
           STDW    .D2T2   B11:B10,*SP--     ; |91| 
           STDW    .D2T1   A13:A12,*SP--     ; |91| 
           STDW    .D2T1   A11:A10,*SP--     ; |91| 

           STW     .D2T2   B3,*SP--(8)       ; |91| 
||         MV      .L1     A4,A11            ; |91| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A11(20),A4      ; |95| 
||         MV      .L1     A6,A10            ; |91| 
||         MV      .S1X    B4,A13            ; |91| 

$C$RL45:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |95| 
;** --------------------------------------------------------------------------*

           MV      .L1     A10,A0            ; |91| 
||         MV      .S1     A4,A12            ; |95| 
||         MV      .L2X    A13,B4            ; |91| 
||         ZERO    .D1     A10               ; |98| 

   [!A0]   BNOP    .S1     $C$L45,4          ; |101| 
|| [ A0]   LDW     .D1T1   *A11,A1           ; |101| 
|| [!A0]   MVK     .L1     0x1,A1            ; |101| nullify predicate

   [!A1]   B       .S1     $C$L45            ; |101| 
           ; BRANCHCC OCCURS {$C$L45}        ; |101| 
;** --------------------------------------------------------------------------*
;** 101	-----------------------    v$4 = (*this).m_buffer;
;** 101	-----------------------    if ( v$4 == NULL ) goto g12;
   [ A1]   LDW     .D1T1   *+A11(12),A4      ; |114| 
   [ A1]   LDW     .D1T1   *+A11(16),A8      ; |114| 
   [ A1]   LDW     .D1T1   *+A11(4),A3       ; |104| 
   [ A1]   LDW     .D1T1   *+A11(8),A5       ; |104| 
   [ A1]   MVKL    .S1     0x89645c5,A6
           ; BRANCHCC OCCURS {$C$L45}        ; |101| 
;** --------------------------------------------------------------------------*
;** 104	-----------------------    v$3 = (*this).m_buffer_total_length;
;** 104	-----------------------    C$15 = v$3-(*this).m_buffer_cur_length;
;** 105	-----------------------    (data_length < C$15) ? (write_length = data_length) : (write_length = C$15);
;** 114	-----------------------    v$1 = (*this).m_write_pointer;
;** 114	-----------------------    if ( v$1 < (*this).m_read_pointer ) goto g7;

           SUB     .L1     A4,A1,A9          ; |120| 
||         MVKH    .S1     0x89645c5,A6
||         MV      .D1     A0,A10            ; |105| 
||         MVK     .S2     3816,B5           ; |115| 

           MPY32US .M1     A6,A9,A7:A6       ; |120| 
           CMPLTU  .L1     A4,A8,A1          ; |114| 

           SUB     .L1     A3,A5,A31         ; |104| 
|| [ A1]   B       .S2     $C$L42            ; |114| 
||         SHR     .S1     A9,31,A5          ; |120| 

           CMPLT   .L1     A0,A31,A0         ; |105| 

   [ A1]   CALL    .S2     memcpy            ; |115| 
||         SHR     .S1     A7,7,A7           ; |120| 
|| [!A0]   MV      .L1     A31,A10           ; |105| 

           SUB     .L1     A7,A5,A30         ; |120| 
||         MPY32   .M1X    B5,A10,A6         ; |115| 

           ADD     .L1     A10,A30,A8        ; |120| 
||         MPYLI   .M2X    B5,A10,B11:B10    ; |116| 

           CMPGT   .L1     A8,A3,A0          ; |120| 
|| [!A1]   SUB     .S1     A3,A7,A3          ; |128| 

           ; BRANCHCC OCCURS {$C$L42}        ; |114| 
;** --------------------------------------------------------------------------*
;** 120	-----------------------    C$14 = v$1-v$4;
;** 120	-----------------------    C$13 = C$14>>31;
;** 120	-----------------------    C$12 = (int)_hill((long long)C$14*144065989LL)>>7;
;** 120	-----------------------    if ( C$12-C$13+write_length <= v$3 ) goto g6;

           ADD     .L1     A5,A3,A3          ; |128| 
||         MPYLI   .M2X    B5,A10,B7:B6      ; |132| 
||         MV      .S1X    B5,A31            ; |130| 
||         MV      .L2     B5,B8             ; |129| 

   [!A0]   B       .S1     $C$L41            ; |120| 
||         MPY32   .M1     A31,A3,A6         ; |129| 
||         MPYLI   .M2X    B5,A10,B11:B10    ; |123| 

   [ A0]   CALL    .S1     memcpy            ; |129| 
||         MPY32   .M2X    B5,A3,B12         ; |130| 
||         MPY32   .M1X    B5,A10,A7         ; |130| 

   [!A0]   CALL    .S1     memcpy            ; |122| 
           MPY32   .M1X    B8,A10,A3         ; |122| 
           MV      .L1X    B6,A13            ; |132| 

           ADD     .L2     B4,B12,B13        ; |130| 
||         SUB     .L1     A7,A6,A14         ; |130| 

           ; BRANCHCC OCCURS {$C$L41}        ; |120| 
;** --------------------------------------------------------------------------*
;** 128	-----------------------    split_length = v$3-C$12+C$13;
;** 129	-----------------------    C$11 = split_length*3816u;
;** 129	-----------------------    memcpy(v$1, (const void * const)data, C$11);
;** 130	-----------------------    C$10 = split_length*3816;
;** 130	-----------------------    memcpy((*this).m_buffer, C$10+data, write_length*3816u-C$11);
;** 132	-----------------------    v$4 = (*this).m_buffer;
;** 132	-----------------------    v$1 = write_length*3816+v$4-C$10;
;** 132	-----------------------    v$5 = v$1;
;** 132	-----------------------    goto g8;
           ADDKPC  .S2     $C$RL46,B3,0      ; |129| 
$C$RL46:   ; CALL OCCURS {memcpy} {0}        ; |129| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     memcpy,B3
||         LDW     .D1T1   *A11,A4           ; |130| 
||         MV      .L2     B13,B4            ; |130| 
||         MV      .L1     A14,A6            ; |130| 

$C$RL47:   ; CALL OCCURS {memcpy} {0}        ; |130| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *A11,B4           ; |132| 
           LDW     .D1T1   *+A11(4),A5       ; |134| 
           LDW     .D1T1   *+A11(8),A6       ; |137| 
           BNOP    .S1     $C$L43,1          ; |132| 
           ADD     .L2X    B4,A13,B5         ; |132| 
           SUB     .L2     B5,B12,B5         ; |132| 
           NOP             1

           MV      .L1X    B5,A3             ; |132| Define a twin register
||         MVK     .S2     3816,B5           ; |134| 

           ; BRANCH OCCURS {$C$L43}          ; |132| 
;** --------------------------------------------------------------------------*
$C$L41:    
;**	-----------------------g6:
;** 122	-----------------------    memcpy(v$1, (const void * const)data, write_length*3816u);
;** 123	-----------------------    v$1 = write_length*3816+(*this).m_write_pointer;
;** 123	-----------------------    v$5 = v$1;
;** 124	-----------------------    v$4 = (*this).m_buffer;
;** 124	-----------------------    goto g8;
           ADDKPC  .S2     $C$RL48,B3,0      ; |122| 
           MV      .L1     A3,A6             ; |122| 
$C$RL48:   ; CALL OCCURS {memcpy} {0}        ; |122| 
;** --------------------------------------------------------------------------*

           LDW     .D1T1   *+A11(4),A5       ; |134| 
||         MVK     .S2     3816,B5           ; |134| 

           B       .S1     $C$L44            ; |124| 
||         LDW     .D1T1   *+A11(12),A3      ; |123| 

           LDW     .D1T2   *A11,B4           ; |124| 
           LDW     .D1T1   *+A11(8),A6       ; |137| 
           MV      .L1X    B5,A4             ; |134| 

           MPYLI   .M2X    B5,A5,B7:B6       ; |134| 
||         MPYLI   .M1     A4,A5,A5:A4       ; |135| 

           ADD     .L1X    A3,B10,A3         ; |123| 
           ; BRANCH OCCURS {$C$L44}          ; |124| 
;** --------------------------------------------------------------------------*
$C$L42:    
;**	-----------------------g7:
;** 115	-----------------------    memcpy(v$1, (const void * const)data, write_length*3816u);
;** 116	-----------------------    v$1 = write_length*3816+(*this).m_write_pointer;
;** 116	-----------------------    v$5 = v$1;
;** 117	-----------------------    v$4 = (*this).m_buffer;
           ADDKPC  .S2     $C$RL49,B3,1      ; |115| 
$C$RL49:   ; CALL OCCURS {memcpy} {0}        ; |115| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A11(12),A3      ; |116| 
           LDW     .D1T1   *+A11(4),A5       ; |134| 
           LDW     .D1T2   *A11,B4           ; |117| 
           LDW     .D1T1   *+A11(8),A6       ; |137| 
           MVK     .S2     3816,B5           ; |134| 
           ADD     .L1X    A3,B10,A3         ; |116| 
;** --------------------------------------------------------------------------*
$C$L43:    
           MPYLI   .M2X    B5,A5,B7:B6       ; |134| 
           MV      .L1X    B5,A4             ; |134| 
           MPYLI   .M1     A4,A5,A5:A4       ; |135| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L44:    
;**	-----------------------g8:
;** 134	-----------------------    v$3 = (*this).m_buffer_total_length;
;** 134	-----------------------    if ( v$1 >= v$3*3816+v$4 ) goto g10;
;**  	-----------------------    (*this).m_write_pointer = v$5;
;**  	-----------------------    goto g11;
;**	-----------------------g10:
;** 135	-----------------------    v$1 -= v$3*3816;
;** 135	-----------------------    (*this).m_write_pointer = v$1;
;**	-----------------------g11:
;** 137	-----------------------    (*this).m_buffer_cur_length = (*this).m_buffer_cur_length+write_length;
;** 138	-----------------------    res = write_length;
           NOP             1
           ADD     .L1     A10,A6,A31        ; |137| 

           ADD     .L2     B4,B6,B4          ; |134| 
||         SUB     .L1     A3,A4,A30         ; |135| 
||         STW     .D1T1   A31,*+A11(8)      ; |137| 

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
   [ B0]   STW     .D1T1   A3,*+A11(12)
   [!B0]   STW     .D1T1   A30,*+A11(12)     ; |135| 
;** --------------------------------------------------------------------------*
$C$L45:    
;**	-----------------------g12:
;** 141	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);
;** 143	-----------------------    return res;

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D1T1   *+A11(20),A4      ; |141| 
||         MV      .L2X    A12,B4            ; |141| 

$C$RL50:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |141| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(8),B3       ; |144| 
           MV      .L1     A10,A4            ; |143| 
           LDDW    .D2T1   *++SP,A11:A10     ; |144| 
           LDDW    .D2T1   *++SP,A13:A12     ; |144| 
           LDDW    .D2T2   *++SP,B11:B10     ; |144| 

           RET     .S2     B3                ; |144| 
||         LDDW    .D2T2   *++SP,B13:B12     ; |144| 

           LDW     .D2T1   *++SP(8),A14      ; |144| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |144| 
	.sect	".text:_ZN14CircularBufferI8LineDataE11ReadDataPtrEs"
	.clink
	.global	_ZN14CircularBufferI8LineDataE11ReadDataPtrEs

;******************************************************************************
;* FUNCTION NAME: CircularBuffer<LineData>::ReadDataPtr(short)                *
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
_ZN14CircularBufferI8LineDataE11ReadDataPtrEs:
;** --------------------------------------------------------------------------*
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);
;** 341	-----------------------    pointer = NULL;
;** 343	-----------------------    if ( pos < 0 ) goto g5;
           STW     .D2T1   A11,*SP--(8)      ; |335| 
           STDW    .D2T2   B11:B10,*SP--     ; |335| 

           STW     .D2T1   A10,*SP--(8)      ; |335| 
||         MV      .L1     A4,A10            ; |335| 

           MV      .L2     B3,B11            ; |335| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(20),A4      ; |339| 
||         MV      .D2     B4,B10            ; |335| 

$C$RL51:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*

           CMPLT   .L2     B10,0,B0          ; |343| 
||         MV      .S2X    A4,B4             ; |339| 

           MV      .L2     B0,B1             ; |343| branch predicate copy
|| [!B0]   LDW     .D1T1   *+A10(8),A3       ; |343| 
|| [ B0]   B       .S1     $C$L46            ; |343| 

   [ B1]   CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |350| 
   [ B1]   LDW     .D1T1   *+A10(20),A4      ; |350| 
           ZERO    .L1     A11               ; |341| 
           NOP             1
           CMPLT   .L2X    B10,A3,B0         ; |343| 
           ; BRANCHCC OCCURS {$C$L46}        ; |343| 
;** --------------------------------------------------------------------------*
;** 343	-----------------------    if ( pos >= (*this).m_buffer_cur_length ) goto g5;
;** 344	-----------------------    pointer = pos*3816+(*this).m_read_pointer;
;** 345	-----------------------    C$10 = _mpyli(3816, (*this).m_buffer_total_length);
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$10) ) goto g5;
;** 346	-----------------------    pointer -= (int)_lo(C$10);

   [ B0]   LDW     .D1T1   *+A10(4),A5       ; |345| 
||         MVK     .S1     3816,A7           ; |345| 

   [ B0]   LDW     .D1T1   *+A10(16),A6      ; |344| 
           MV      .L2X    A7,B5             ; |345| 
   [ B0]   LDW     .D1T1   *A10,A3           ; |345| 
           MPYUS   .M2     B5,B10,B5         ; |344| 
   [ B0]   MPYLI   .M1     A7,A5,A5:A4       ; |345| 
   [!B0]   MVK     .L1     0x1,A0
   [ B0]   ADD     .L1X    A6,B5,A11         ; |344| 
           NOP             1
   [ B0]   ADD     .L1     A4,A3,A3          ; |345| 

   [ B0]   CMPLTU  .L1     A11,A3,A0         ; |345| 
||         CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |350| 

   [!A0]   SUB     .L1     A11,A4,A11        ; |346| 
||         LDW     .D1T1   *+A10(20),A4      ; |350| 

           NOP             3
;** --------------------------------------------------------------------------*
$C$L46:    
;**	-----------------------g5:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);
;** 352	-----------------------    return pointer;
           ADDKPC  .S2     $C$RL52,B3,0      ; |350| 
$C$RL52:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *++SP(8),A10      ; |353| 
||         MV      .L2     B11,B3            ; |353| 

           LDDW    .D2T2   *++SP,B11:B10     ; |353| 
||         RET     .S2     B3                ; |353| 

           MV      .L1     A11,A4            ; |352| 
||         LDW     .D2T1   *++SP(8),A11      ; |353| 

           NOP             4
           ; BRANCH OCCURS {B3}              ; |353| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead12GetArcHeightEPK8LineDataS2_

;******************************************************************************
;* FUNCTION NAME: LookAhead::GetArcHeight(const LineData *, const LineData *) *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_ZN9LookAhead12GetArcHeightEPK8LineDataS2_:
;** --------------------------------------------------------------------------*
;* 1204	-----------------------    if ( U$7 = *((const unsigned char * const)point2+1328) ) goto g3;
;* 1205	-----------------------    h = *((const double * const)point2+1456)-*((const double * const)point1+1456);
;* 1207	-----------------------    goto g4;

           MVK     .S1     1328,A3           ; |1204| 
||         STW     .D2T2   B3,*SP--(8)       ; |1201| 

           LDBU    .D1T1   *+A6[A3],A1       ; |1204| 
           MVK     .S1     1456,A3           ; |1205| 
           NOP             1
           ADD     .L2X    A3,B4,B5          ; |1205| 
           ADD     .L1     A3,A6,A3          ; |1205| 

   [!A1]   LDDW    .D2T2   *B5,B7:B6         ; |1205| 
|| [!A1]   LDDW    .D1T1   *A3,A9:A8         ; |1205| 
|| [ A1]   MVK     .S1     1440,A3           ; |1208| 
|| [ A1]   MVK     .S2     1448,B5           ; |1208| 
||         CMPEQ   .L1     A1,1,A0           ; |1208| 

   [!A1]   MVK     .S1     3072,A3           ; |1214| 
|| [!A1]   B       .S2     $C$L47            ; |1207| 

   [!A1]   ADD     .L1     A3,A6,A3          ; |1214| 
   [!A1]   LDDW    .D1T1   *A3,A7:A6         ; |1214| 
   [ A1]   ADD     .L1X    B5,A6,A30         ; |1208| 
   [!A1]   SUBDP   .L1X    A9:A8,B7:B6,A5:A4 ; |1205| 
   [ A1]   ADD     .L2X    A3,B4,B6          ; |1208| 
           ; BRANCHCC OCCURS {$C$L47}        ; |1207| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;* 1208	-----------------------    (U$7 == 1) ? (h = *((const double * const)point2+1448)-*((const double * const)point1+1448)) : (h = *((const double * const)point2+1440)-*((const double * const)point1+1440));

           ADD     .L1     A3,A6,A31         ; |1208| 
|| [!A0]   LDDW    .D2T2   *B6,B5:B4         ; |1208| 
||         ADD     .L2     B5,B4,B6          ; |1208| 
||         MVK     .S1     3072,A3           ; |1214| 

   [ A0]   LDDW    .D1T1   *A30,A5:A4        ; |1208| 
   [!A0]   LDDW    .D1T1   *A31,A5:A4        ; |1208| 
   [ A0]   LDDW    .D2T1   *B6,A9:A8         ; |1208| 
           ADD     .S1     A3,A6,A3          ; |1214| 
           LDDW    .D1T1   *A3,A7:A6         ; |1214| 
           NOP             1
   [!A0]   SUBDP   .S1X    A5:A4,B5:B4,A5:A4 ; |1208| 
   [ A0]   SUBDP   .L1     A5:A4,A9:A8,A5:A4 ; |1208| 
;** --------------------------------------------------------------------------*
$C$L47:    
;**	-----------------------g4:
;* 1214	-----------------------    C$1 = *((const double * const)point2+3072);
;* 1214	-----------------------    if ( ABS(C$1) < 1.00000000000000002092e-8 ) goto g6;
           MVKL    .S2     0x3e45798e,B5

           ABSDP   .S1     A7:A6,A9:A8       ; |1214| 
||         MVKL    .S2     0xe2308c3a,B4

           MVKH    .S2     0x3e45798e,B5
           MVKH    .S2     0xe2308c3a,B4
           CMPLTDP .S2X    A9:A8,B5:B4,B0    ; |1214| 
           NOP             1

   [ B0]   LDW     .D2T2   *++SP(8),B3       ; |1217| 
|| [ B0]   B       .S1     $C$L48            ; |1214| 

   [!B0]   CALL    .S1     __c6xabi_divd     ; |1215| 
           MV      .L2X    A7,B5             ; |1215| 
           MV      .L2X    A6,B4             ; |1215| 
           NOP             1
   [ B0]   RET     .S2     B3                ; |1217| 
           ; BRANCHCC OCCURS {$C$L48}        ; |1214| 
;** --------------------------------------------------------------------------*
;* 1215	-----------------------    h /= C$1;
;**	-----------------------g6:
;* 1216	-----------------------    return h;
           ADDKPC  .S2     $C$RL53,B3,0      ; |1215| 
$C$RL53:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1215| 
           LDW     .D2T2   *++SP(8),B3       ; |1217| 
           NOP             4
           RET     .S2     B3                ; |1217| 
;** --------------------------------------------------------------------------*
$C$L48:    
           NOP             5
           ; BRANCH OCCURS {B3}              ; |1217| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead15DataIsClockWiseEt

;******************************************************************************
;* FUNCTION NAME: LookAhead::DataIsClockWise(unsigned short)                  *
;*                                                                            *
;*   Regs Modified     : A3,A4                                                *
;*   Regs Used         : A3,A4,B3,B4                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN9LookAhead15DataIsClockWiseEt:
;** --------------------------------------------------------------------------*
;* 1454	-----------------------    return type == 20;
           RETNOP  .S2     B3,3              ; |1456| 
           MVK     .S1     20,A3             ; |1454| 
           CMPEQ   .L1X    B4,A3,A4          ; |1454| 
           ; BRANCH OCCURS {B3}              ; |1456| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead12VectorNormalEPd

;******************************************************************************
;* FUNCTION NAME: LookAhead::VectorNormal(double *)                           *
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
_ZN9LookAhead12VectorNormalEPd:
;** --------------------------------------------------------------------------*
;* 1149	-----------------------    cur_len = sqrt(pow(*vector, 2.0)+pow(vector[1], 2.0)+pow(vector[2], 2.0));
;* 1151	-----------------------    if ( ABS(cur_len) >= 1.00000000000000002092e-8 ) goto g3;
;* 1152	-----------------------    return 0;
           STW     .D2T1   A11,*SP--(8)      ; |1148| 
           STDW    .D2T2   B11:B10,*SP--     ; |1148| 
           STDW    .D2T1   A13:A12,*SP--     ; |1148| 

           STW     .D2T1   A10,*SP--(8)      ; |1148| 
||         MV      .L2     B4,B10            ; |1148| 

           LDDW    .D2T2   *B10,B7:B6        ; |1149| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5
           MV      .L2     B3,B11            ; |1148| 
           ZERO    .L2     B4                ; |1149| 
           MV      .L1X    B6,A4             ; |1149| 

           CALLP   .S2     pow,B3
||         MV      .L1X    B7,A5             ; |1149| 

$C$RL56:   ; CALL OCCURS {pow} {0}           ; |1149| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         MV      .L1     A4,A12            ; |1149| 
||         MV      .S1     A5,A13            ; |1149| 
||         LDDW    .D2T1   *+B10(8),A5:A4    ; |1149| 
||         ZERO    .L2     B4                ; |1149| 

$C$RL55:   ; CALL OCCURS {pow} {0}           ; |1149| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         MV      .L1     A4,A10            ; |1149| 
||         MV      .S1     A5,A11            ; |1149| 
||         LDDW    .D2T1   *+B10(16),A5:A4   ; |1149| 
||         ZERO    .L2     B4                ; |1149| 

$C$RL54:   ; CALL OCCURS {pow} {0}           ; |1149| 
           ADDDP   .L1     A11:A10,A13:A12,A7:A6 ; |1149| 
           NOP             6
           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |1149| 
           CALLP   .S2     sqrt,B3
$C$RL57:   ; CALL OCCURS {sqrt} {0}          ; |1149| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A10            ; |1149| 
||         MV      .D1     A5,A11            ; |1149| 
||         MVKL    .S1     0xe2308c3a,A8
||         MV      .L2X    A4,B4             ; |1149| 

           ABSDP   .S1     A11:A10,A7:A6     ; |1151| 
           MV      .L2X    A5,B5             ; |1149| 
           MVKL    .S1     0x3e45798e,A9
           MVKH    .S1     0xe2308c3a,A8
           MVKH    .S1     0x3e45798e,A9
           CMPLTDP .S1     A7:A6,A9:A8,A0    ; |1151| 
           ZERO    .L1     A4                ; |1152| 

   [ A0]   B       .S1     $C$L49            ; |1152| 
|| [!A0]   LDDW    .D2T1   *B10,A5:A4        ; |1153| 
|| [ A0]   MV      .L2     B11,B3            ; |1157| 

   [!A0]   CALL    .S1     __c6xabi_divd     ; |1153| 
|| [ A0]   LDW     .D2T1   *++SP(8),A10      ; |1157| 

   [ A0]   LDDW    .D2T1   *++SP,A13:A12     ; |1157| 

   [ A0]   RET     .S2     B3                ; |1157| 
|| [ A0]   LDDW    .D2T2   *++SP,B11:B10     ; |1157| 

   [ A0]   LDW     .D2T1   *++SP(8),A11      ; |1157| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L49}        ; |1152| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;* 1153	-----------------------    *vector = *vector/cur_len;
;* 1154	-----------------------    vector[1] = vector[1]/cur_len;
;* 1155	-----------------------    vector[2] = vector[2]/cur_len;
;* 1156	-----------------------    return 1;
           ADDKPC  .S2     $C$RL58,B3,0      ; |1153| 
$C$RL58:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1153| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A6             ; |1153| 
||         MV      .S1     A5,A7             ; |1153| 
||         LDDW    .D2T1   *+B10(8),A5:A4    ; |1154| 
||         MV      .L2X    A10,B4            ; |1154| 

           CALLP   .S2     __c6xabi_divd,B3
||         STDW    .D2T1   A7:A6,*B10        ; |1153| 
||         MV      .L2X    A11,B5            ; |1154| 

$C$RL59:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1154| 
           LDDW    .D2T2   *+B10(16),B7:B6   ; |1155| 
           STDW    .D2T1   A5:A4,*+B10(8)    ; |1154| 
           MV      .L2X    A10,B4            ; |1155| 
           MV      .L2X    A11,B5            ; |1155| 
           NOP             1
           MV      .L1X    B6,A4             ; |1155| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L1X    B7,A5             ; |1155| 

$C$RL60:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1155| 
;** --------------------------------------------------------------------------*
           STDW    .D2T1   A5:A4,*+B10(16)   ; |1155| 
           LDW     .D2T1   *++SP(8),A10      ; |1157| 

           LDDW    .D2T1   *++SP,A13:A12     ; |1157| 
||         MV      .L2     B11,B3            ; |1157| 

           RET     .S2     B3                ; |1157| 
||         LDDW    .D2T2   *++SP,B11:B10     ; |1157| 

           LDW     .D2T1   *++SP(8),A11      ; |1157| 
           MVK     .L1     0x1,A4            ; |1156| 
;** --------------------------------------------------------------------------*
$C$L49:    
           NOP             3
           ; BRANCH OCCURS {B3}              ; |1157| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead12GetArcVectorEthdPKdS1_Pd

;******************************************************************************
;* FUNCTION NAME: LookAhead::GetArcVector(unsigned short, unsigned char, double, const double *, const double *, double *)*
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,*
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 28 Auto + 32 Save = 60 byte                 *
;******************************************************************************
_ZN9LookAhead12GetArcVectorEthdPKdS1_Pd:
;** --------------------------------------------------------------------------*
;* 1164	-----------------------    v[0] = *point-*center;
;* 1165	-----------------------    v[1] = point[1]-center[1];
;* 1166	-----------------------    v[2] = point[2]-center[2];
;* 1453	-----------------------    if ( type == 20 ) goto g7;  // [75]

           MV      .L2     B3,B13            ; |1161| 
||         STW     .D2T2   B13,*SP--(8)      ; |1161| 
||         MV      .L1     A6,A0             ; |1161| 

           STDW    .D2T1   A13:A12,*SP--     ; |1161| 
           STDW    .D2T1   A11:A10,*SP--     ; |1161| 
           STW     .D2T1   A14,*SP--(40)     ; |1161| 

           LDDW    .D1T1   *+A8(16),A17:A16  ; |1166| 
||         LDDW    .D2T2   *+B8(16),B21:B20  ; |1166| 

           LDDW    .D1T1   *A8,A5:A4         ; |1164| 
||         LDDW    .D2T2   *+B8(8),B17:B16   ; |1165| 

           LDDW    .D1T1   *+A8(8),A7:A6     ; |1165| 
           LDDW    .D2T2   *B8,B19:B18       ; |1164| 
           MVK     .S1     20,A3             ; |1453| 
           CMPEQ   .L1X    B4,A3,A1          ; |1453| 
           SUBDP   .L2X    B21:B20,A17:A16,B9:B8 ; |1166| 
           SUBDP   .L1X    B17:B16,A7:A6,A7:A6 ; |1165| 
           SUBDP   .L2X    B19:B18,A5:A4,B17:B16 ; |1164| 
           MV      .L1     A10,A14           ; |1161| 
   [ A1]   BNOP    .S1     $C$L50,2          ; |1453| 
           STDW    .D2T2   B9:B8,*+SP(24)    ; |1166| 
           STDW    .D2T1   A7:A6,*+SP(16)    ; |1165| 
           STDW    .D2T2   B17:B16,*+SP(8)   ; |1164| 
           ; BRANCHCC OCCURS {$C$L50}        ; |1453| 
;** --------------------------------------------------------------------------*
;* 1183	-----------------------    if ( !surface ) goto g6;
;* 1187	-----------------------    if ( surface == 1 ) goto g5;
;* 1192	-----------------------    *vector = h;
;* 1193	-----------------------    vector[1] = -v[2];
;* 1194	-----------------------    vector[2] = v[1];
;* 1194	-----------------------    goto g12;

   [ A0]   LDDW    .D2T2   *+SP(24),B5:B4    ; |1193| 
|| [ A0]   ZERO    .S1     A3                ; |1193| 
||         CMPEQ   .L1     A0,1,A1           ; |1187| 
||         ZERO    .L2     B31               ; |1184| 

   [ A0]   LDDW    .D2T2   *+SP(16),B9:B8    ; |1194| 
|| [ A0]   SET     .S1     A3,31,31,A6       ; |1193| 
|| [!A0]   MVK     .L1     0x1,A1
|| [ A0]   ZERO    .D1     A3                ; |1190| 

   [!A1]   STDW    .D1T2   B7:B6,*A14        ; |1192| 
|| [ A0]   SET     .S1     A3,31,31,A3       ; |1190| 

           LDDW    .D2T2   *+SP(16),B17:B16  ; |1184| 
   [ A0]   LDDW    .D2T2   *+SP(8),B19:B18   ; |1190| 

   [ A0]   XOR     .L1X    B5,A6,A5          ; |1193| 
||         LDDW    .D2T2   *+SP(8),B21:B20   ; |1185| 

   [ A0]   MV      .L1X    B4,A4             ; |1193| 
|| [!A1]   STDW    .D1T2   B9:B8,*+A14(16)   ; |1194| 
||         SET     .S2     B31,31,31,B4      ; |1184| 
|| [ A0]   LDDW    .D2T1   *+SP(24),A7:A6    ; |1188| 

   [!A1]   STDW    .D1T1   A5:A4,*+A14(8)    ; |1193| 
|| [!A0]   ZERO    .L1     A1

   [!A1]   B       .S1     $C$L51            ; |1194| 
|| [!A0]   STDW    .D1T2   B7:B6,*+A14(16)   ; |1186| 
||         XOR     .L2     B17,B4,B17        ; |1184| 

   [!A0]   STDW    .D1T2   B17:B16,*A14      ; |1184| 
|| [ A0]   XOR     .L2X    B19,A3,B19        ; |1190| 
|| [ A1]   B       .S1     $C$L51            ; |1191| 

   [!A0]   STDW    .D1T2   B21:B20,*+A14(8)  ; |1185| 
   [ A1]   STDW    .D1T1   A7:A6,*A14        ; |1188| 
   [ A1]   STDW    .D1T2   B7:B6,*+A14(8)    ; |1189| 
   [ A1]   STDW    .D1T2   B19:B18,*+A14(16) ; |1190| 
           ; BRANCHCC OCCURS {$C$L51}        ; |1194| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;* 1188	-----------------------    *vector = v[2];
;* 1189	-----------------------    vector[1] = h;
;* 1190	-----------------------    vector[2] = -v[0];
;* 1191	-----------------------    goto g12;
;**	-----------------------g6:
;* 1184	-----------------------    *vector = -v[1];
;* 1185	-----------------------    vector[1] = v[0];
;* 1186	-----------------------    vector[2] = h;
;* 1187	-----------------------    goto g12;
           NOP             1
           ; BRANCH OCCURS {$C$L51}          ; |1191| 
;** --------------------------------------------------------------------------*
$C$L50:    
;**	-----------------------g7:
;* 1169	-----------------------    if ( !surface ) goto g11;
;* 1173	-----------------------    if ( surface == 1 ) goto g10;
;* 1178	-----------------------    *vector = h;
;* 1179	-----------------------    vector[1] = v[2];
;* 1180	-----------------------    vector[2] = -v[1];
;* 1180	-----------------------    goto g12;

   [ A0]   LDDW    .D2T2   *+SP(16),B17:B16  ; |1180| 
|| [ A0]   ZERO    .S1     A3                ; |1180| 
||         CMPEQ   .L1     A0,1,A1           ; |1173| 
||         ZERO    .L2     B31               ; |1171| 

   [ A0]   LDDW    .D2T2   *+SP(24),B21:B20  ; |1179| 
|| [ A0]   SET     .S1     A3,31,31,A6       ; |1180| 
|| [!A0]   MVK     .L1     0x1,A1
|| [ A0]   ZERO    .D1     A3                ; |1174| 

   [!A1]   STDW    .D1T2   B7:B6,*A14        ; |1178| 
|| [ A0]   SET     .S1     A3,31,31,A3       ; |1174| 

   [ A0]   LDDW    .D2T2   *+SP(24),B9:B8    ; |1174| 
           LDDW    .D2T2   *+SP(8),B5:B4     ; |1171| 

   [ A0]   MV      .L1X    B16,A4            ; |1180| 
||         LDDW    .D2T2   *+SP(16),B19:B18  ; |1170| 
||         SET     .S2     B31,31,31,B16     ; |1171| 

   [ A0]   XOR     .L1X    B17,A6,A5         ; |1180| 
|| [!A1]   STDW    .D1T2   B21:B20,*+A14(8)  ; |1179| 

   [!A1]   STDW    .D1T1   A5:A4,*+A14(16)   ; |1180| 
|| [!A0]   ZERO    .L1     A1

   [!A1]   B       .S1     $C$L52            ; |1180| 
|| [ A0]   LDDW    .D2T1   *+SP(8),A5:A4     ; |1176| 
|| [ A0]   XOR     .L2X    B9,A3,B9          ; |1174| 
|| [ A1]   STDW    .D1T2   B7:B6,*+A14(8)    ; |1175| 

           XOR     .L2     B5,B16,B5         ; |1171| 
|| [ A1]   STDW    .D1T2   B9:B8,*A14        ; |1174| 

   [!A0]   STDW    .D1T2   B5:B4,*+A14(8)    ; |1171| 
   [!A0]   STDW    .D1T2   B7:B6,*+A14(16)   ; |1172| 
   [!A0]   STDW    .D1T2   B19:B18,*A14      ; |1170| 

   [ A1]   STDW    .D1T1   A5:A4,*+A14(16)   ; |1176| 
|| [!A1]   CALL    .S1     pow               ; |1149| 

           ; BRANCHCC OCCURS {$C$L52}        ; |1180| 
;** --------------------------------------------------------------------------*
;**	-----------------------g10:
;* 1174	-----------------------    *vector = -v[2];
;* 1175	-----------------------    vector[1] = h;
;* 1176	-----------------------    vector[2] = v[0];
;* 1177	-----------------------    goto g12;
;**	-----------------------g11:
;* 1170	-----------------------    *vector = v[1];
;* 1171	-----------------------    vector[1] = -v[0];
;* 1172	-----------------------    vector[2] = h;
;** --------------------------------------------------------------------------*
$C$L51:    
           CALL    .S1     pow               ; |1149| 
;** --------------------------------------------------------------------------*
$C$L52:    
;**	-----------------------g12:
;* 1149	-----------------------    cur_len = sqrt(pow(*vector, 2.0)+pow(vector[1], 2.0)+pow(vector[2], 2.0));  // [65]
;* 1151	-----------------------    if ( ABS(cur_len) < 1.00000000000000002092e-8 ) goto g14;  // [65]
           LDDW    .D1T1   *A14,A5:A4        ; |1149| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5
           ZERO    .L2     B4                ; |1149| 
           ADDKPC  .S2     $C$RL63,B3,0      ; |1149| 
$C$RL63:   ; CALL OCCURS {pow} {0}           ; |1149| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         MV      .L1     A4,A10            ; |1149| 
||         MV      .S1     A5,A11            ; |1149| 
||         LDDW    .D1T1   *+A14(8),A5:A4    ; |1149| 
||         ZERO    .L2     B4                ; |1149| 

$C$RL62:   ; CALL OCCURS {pow} {0}           ; |1149| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         MV      .L1     A4,A12            ; |1149| 
||         MV      .S1     A5,A13            ; |1149| 
||         LDDW    .D1T1   *+A14(16),A5:A4   ; |1149| 
||         ZERO    .L2     B4                ; |1149| 

$C$RL61:   ; CALL OCCURS {pow} {0}           ; |1149| 
           ADDDP   .L1     A13:A12,A11:A10,A7:A6 ; |1149| 
           NOP             6
           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |1149| 
           CALLP   .S2     sqrt,B3
$C$RL64:   ; CALL OCCURS {sqrt} {0}          ; |1149| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A10            ; |1149| 
||         MV      .D1     A5,A11            ; |1149| 
||         MV      .L2X    A5,B5             ; |1149| 
||         MVKL    .S1     0x3e45798e,A5

           ABSDP   .S1     A11:A10,A7:A6     ; |1151| 
           MV      .L2X    A4,B4             ; |1149| 
           MVKL    .S1     0xe2308c3a,A4
           MVKH    .S1     0x3e45798e,A5
           MVKH    .S1     0xe2308c3a,A4
           CMPLTDP .S1     A7:A6,A5:A4,A0    ; |1151| 
           NOP             1

   [ A0]   B       .S1     $C$L53            ; |1151| 
|| [!A0]   LDDW    .D1T1   *A14,A5:A4        ; |1153| 
|| [ A0]   MV      .L2     B13,B3            ; |1198| 

   [!A0]   CALL    .S1     __c6xabi_divd     ; |1153| 
|| [ A0]   LDW     .D2T1   *++SP(40),A14     ; |1198| 

   [ A0]   LDDW    .D2T1   *++SP,A11:A10     ; |1198| 

   [ A0]   RET     .S2     B3                ; |1198| 
|| [ A0]   LDDW    .D2T1   *++SP,A13:A12     ; |1198| 

   [ A0]   LDW     .D2T2   *++SP(8),B13      ; |1198| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L53}        ; |1151| 
;** --------------------------------------------------------------------------*
;* 1153	-----------------------    *vector = *vector/cur_len;  // [65]
;* 1154	-----------------------    vector[1] = vector[1]/cur_len;  // [65]
;* 1155	-----------------------    vector[2] = vector[2]/cur_len;  // [65]
;**	-----------------------g14:
;**  	-----------------------    return;
           ADDKPC  .S2     $C$RL65,B3,0      ; |1153| 
$C$RL65:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1153| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A6             ; |1153| 
||         MV      .S1     A5,A7             ; |1153| 
||         LDDW    .D1T1   *+A14(8),A5:A4    ; |1154| 
||         MV      .L2X    A10,B4            ; |1154| 

           CALLP   .S2     __c6xabi_divd,B3
||         STDW    .D1T1   A7:A6,*A14        ; |1153| 
||         MV      .L2X    A11,B5            ; |1154| 

$C$RL66:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1154| 

           MV      .L1     A4,A6             ; |1154| 
||         MV      .S1     A5,A7             ; |1154| 

           STDW    .D1T1   A7:A6,*+A14(8)    ; |1154| 
||         MV      .L2X    A10,B4            ; |1155| 

           CALLP   .S2     __c6xabi_divd,B3
||         LDDW    .D1T1   *+A14(16),A5:A4   ; |1155| 
||         MV      .L2X    A11,B5            ; |1155| 

$C$RL67:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1155| 
;** --------------------------------------------------------------------------*
           STDW    .D1T1   A5:A4,*+A14(16)   ; |1155| 
           LDW     .D2T1   *++SP(40),A14     ; |1198| 

           LDDW    .D2T1   *++SP,A11:A10     ; |1198| 
||         MV      .L2     B13,B3            ; |1198| 

           LDDW    .D2T1   *++SP,A13:A12     ; |1198| 
||         RET     .S2     B3                ; |1198| 

           LDW     .D2T2   *++SP(8),B13      ; |1198| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L53:    
           NOP             3
           ; BRANCH OCCURS {B3}              ; |1198| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead14Get3DArcVectorEPKdS1_S1_S1_PdS2_

;******************************************************************************
;* FUNCTION NAME: LookAhead::Get3DArcVector(const double *, const double *, const double *, const double *, double *, double *)*
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A11,A12,A13,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21, *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,DP,SP,A16,A17,A18,A19,   *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 76 Auto + 16 Save = 92 byte                 *
;******************************************************************************
_ZN9LookAhead14Get3DArcVectorEPKdS1_S1_S1_PdS2_:
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$11 = point1;
;**  	-----------------------    U$13 = center;
;**  	-----------------------    U$20 = point2;
;**  	-----------------------    U$27 = norm_v;
;* 1226	-----------------------    L$1 = 3;
;**  	-----------------------    U$31 = &v3[0];
;**  	-----------------------    U$25 = &v2[0];
;**  	-----------------------    U$18 = &v1[0];
;**  	-----------------------    #pragma MUST_ITERATE(3, 3, 3)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g2:
;* 1227	-----------------------    C$1 = *U$13++;
;* 1227	-----------------------    *U$18++ = *U$11++-C$1;
;* 1228	-----------------------    *U$25++ = *U$20++-C$1;
;* 1229	-----------------------    *U$31++ = *U$27++;
;* 1226	-----------------------    if ( L$1 = L$1-1 ) goto g2;
;* 1234	-----------------------    LookAhead::VectorNormal(this, &v1);

           MVK     .L2     2,B5              ; |1226| 
||         STW     .D2T1   A11,*SP--(8)      ; |1222| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 1226
;*      Loop opening brace source line   : 1226
;*      Loop closing brace source line   : 1230
;*      Known Minimum Trip Count         : 3                    
;*      Known Maximum Trip Count         : 3                    
;*      Known Max Trip Count Factor      : 3
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     4*       3     
;*      .M units                     0        0     
;*      .X cross paths               1        1     
;*      .T address paths             4*       3     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           2        2     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 4  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L54:    ; PIPED LOOP PROLOG

           SPLOOPD 4       ;16               ; (P) 
||         MV      .L2     B4,B16
||         MVC     .S2     B5,ILC
||         STDW    .D2T1   A13:A12,*SP--     ; |1222| 

;** --------------------------------------------------------------------------*
$C$L55:    ; PIPED LOOP KERNEL

           SPMASK          L1,L2
||         MV      .L1X    B6,A3             ; |1222| 
||         MV      .L2X    A6,B18
||         LDDW    .D2T2   *B16++,B7:B6      ; |1227| (P) <0,0>  ^ 

           SPMASK          L1
||         MV      .L1X    B8,A11            ; |1222| 
||         LDDW    .D2T2   *B18++,B9:B8      ; |1228| (P) <0,1>  ^ 

           SPMASK          L1
||         MV      .L1     A4,A12            ; |1222| 
||         LDDW    .D1T1   *A3++,A5:A4       ; |1227| (P) <0,2>  ^ 

           SPMASK          S2
||         ADDK    .S2     -80,SP            ; |1222| 

           NOP             1

           SPMASK          D1
||         ADDAW   .D1X    SP,14,A16

           NOP             1

           SPMASK          S1
||         MV      .S1     A8,A9
||         SUBDP   .L2X    B7:B6,A5:A4,B5:B4 ; |1227| (P) <0,7>  ^ 
||         SUBDP   .L1X    B9:B8,A5:A4,A7:A6 ; |1228| (P) <0,7>  ^ 

           LDDW    .D1T1   *A9++,A5:A4       ; |1229| (P) <0,8> 

           SPMASK          D1
||         ADDAW   .D1X    SP,8,A8

           SPMASK          L1
||         MV      .L1X    B3,A13            ; |1222| 

           SPMASK          S2
||         ADD     .S2     8,SP,B17

           NOP             1
           STDW    .D1T1   A5:A4,*A16++      ; |1229| <0,13> 
           STDW    .D2T2   B5:B4,*B17++      ; |1227| <0,14>  ^ 

           SPKERNEL 1,2
||         STDW    .D1T1   A7:A6,*A8++       ; |1228| <0,15>  ^ 

;** --------------------------------------------------------------------------*
$C$L56:    ; PIPED LOOP EPILOG
;* 1235	-----------------------    LookAhead::VectorNormal(this, &v2);
;* 1236	-----------------------    LookAhead::VectorNormal(this, &v3);
;* 1244	-----------------------    *start_v = v3[1]*v1[2]-v3[2]*v1[1];
;* 1245	-----------------------    start_v[1] = v3[2]*v1[0]-v3[0]*v1[2];
;* 1246	-----------------------    start_v[2] = v3[0]*v1[1]-v3[1]*v1[0];
;* 1250	-----------------------    *end_v = v3[1]*v2[2]-v3[2]*v2[1];
;* 1251	-----------------------    end_v[1] = v3[2]*v2[0]-v3[0]*v2[2];
;* 1252	-----------------------    end_v[2] = v3[0]*v2[1]-v3[1]*v2[0];
;**  	-----------------------    return;
           CALL    .S2     _ZN9LookAhead12VectorNormalEPd ; |1234| 
           ADDKPC  .S2     $C$RL68,B3,1      ; |1234| 
           MV      .S1     A12,A4            ; |1234| 
           ADD     .L2     8,SP,B4           ; |1234| 
           NOP             1
$C$RL68:   ; CALL OCCURS {_ZN9LookAhead12VectorNormalEPd} {0}  ; |1234| 
;** --------------------------------------------------------------------------*
           ADDAW   .D2     SP,8,B4           ; |1235| 

           CALLP   .S2     _ZN9LookAhead12VectorNormalEPd,B3
||         MV      .L1     A12,A4            ; |1235| 

$C$RL69:   ; CALL OCCURS {_ZN9LookAhead12VectorNormalEPd} {0}  ; |1235| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZN9LookAhead12VectorNormalEPd,B3
||         ADDAW   .D2     SP,14,B4          ; |1236| 
||         MV      .L1     A12,A4            ; |1236| 

$C$RL70:   ; CALL OCCURS {_ZN9LookAhead12VectorNormalEPd} {0}  ; |1236| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *+SP(16),B7:B6    ; |1244| 
           LDDW    .D2T2   *+SP(72),B5:B4    ; |1244| 
           LDDW    .D2T1   *+SP(24),A9:A8    ; |1244| 
           LDDW    .D2T1   *+SP(64),A5:A4    ; |1244| 
           LDDW    .D2T2   *+SP(32),B25:B24  ; |1252| 
           LDDW    .D2T2   *+SP(64),B21:B20  ; |1252| 
           LDDW    .D2T1   *+SP(72),A7:A6    ; |1245| 

           LDDW    .D2T1   *+SP(8),A17:A16   ; |1245| 
||         MPYDP   .M2     B7:B6,B5:B4,B17:B16 ; |1244| 

           MPYDP   .M1     A9:A8,A5:A4,A21:A20 ; |1244| 
||         LDDW    .D2T2   *+SP(24),B19:B18  ; |1245| 

           LDDW    .D2T2   *+SP(56),B9:B8    ; |1245| 
           LDDW    .D2T1   *+SP(56),A5:A4    ; |1246| 

           LDDW    .D2T1   *+SP(16),A9:A8    ; |1246| 
||         MPYDP   .M2     B25:B24,B21:B20,B21:B20 ; |1252| 

           MPYDP   .M1     A17:A16,A7:A6,A23:A22 ; |1245| 
||         LDDW    .D2T2   *+SP(56),B29:B28  ; |1252| 

           LDDW    .D2T2   *+SP(8),B7:B6     ; |1246| 
           LDDW    .D2T2   *+SP(64),B5:B4    ; |1246| 

           LDDW    .D2T1   *+SP(40),A7:A6    ; |1252| 
||         MPYDP   .M2     B19:B18,B9:B8,B19:B18 ; |1245| 

           MPYDP   .M1     A9:A8,A5:A4,A19:A18 ; |1246| 
           LDDW    .D2T2   *+SP(48),B27:B26  ; |1251| 
           LDDW    .D2T2   *+SP(72),B25:B24  ; |1251| 

           MPYDP   .M2     B7:B6,B5:B4,B23:B22 ; |1246| 
||         LDDW    .D2T1   *+SP(32),A5:A4    ; |1251| 

           LDDW    .D2T2   *+SP(72),B5:B4    ; |1250| 
||         MPYDP   .M1X    A7:A6,B29:B28,A17:A16 ; |1252| 

           LDDW    .D2T2   *+SP(40),B7:B6    ; |1250| 
           LDDW    .D2T1   *+SP(48),A9:A8    ; |1250| 

           LDDW    .D2T1   *+SP(64),A7:A6    ; |1250| 
||         MPYDP   .M2     B27:B26,B9:B8,B9:B8 ; |1251| 

           MPYDP   .M1X    A5:A4,B25:B24,A5:A4 ; |1251| 
           ADDK    .S2     80,SP             ; |1254| 
           MV      .L2X    A13,B3            ; |1254| 
           MPYDP   .M2     B7:B6,B5:B4,B5:B4 ; |1250| 

           MPYDP   .M1     A9:A8,A7:A6,A25:A24 ; |1250| 
||         SUBDP   .L1X    A21:A20,B17:B16,A21:A20 ; |1244| 

           NOP             1
           SUBDP   .L1X    A23:A22,B19:B18,A23:A22 ; |1245| 
           NOP             1
           SUBDP   .L1X    A17:A16,B21:B20,A9:A8 ; |1252| 
           NOP             1
           SUBDP   .L1X    A19:A18,B23:B22,A7:A6 ; |1246| 
           STDW    .D1T1   A21:A20,*A11      ; |1244| 
           SUBDP   .L1X    A5:A4,B9:B8,A17:A16 ; |1251| 
           STDW    .D1T1   A23:A22,*+A11(8)  ; |1245| 
           SUBDP   .L1X    A25:A24,B5:B4,A5:A4 ; |1250| 
           NOP             3
           STDW    .D1T1   A7:A6,*+A11(16)   ; |1246| 
           STDW    .D1T1   A9:A8,*+A10(16)   ; |1252| 
           STDW    .D1T1   A17:A16,*+A10(8)  ; |1251| 
           STDW    .D1T1   A5:A4,*A10        ; |1250| 

           LDDW    .D2T1   *++SP,A13:A12     ; |1254| 
||         RET     .S2     B3                ; |1254| 

           LDW     .D2T1   *++SP(8),A11      ; |1254| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1254| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead10AngleSpeedEPK8LineDataPS0_

;******************************************************************************
;* FUNCTION NAME: LookAhead::AngleSpeed(const LineData *, LineData *)         *
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
;*   Local Frame Size  : 0 Args + 1108 Auto + 56 Save = 1164 byte             *
;******************************************************************************
_ZN9LookAhead10AngleSpeedEPK8LineDataPS0_:
;** --------------------------------------------------------------------------*
;* 1267	-----------------------    K$10 = point2;
;* 1267	-----------------------    U$13 = *((double *)K$10+1360);
;* 1267	-----------------------    U$8 = *((const double * const)point1+1360);
;* 1269	-----------------------    (U$8 > U$13) ? (speed = U$13) : (speed = U$8);
;* 1274	-----------------------    C$50 = (*(*this).m_channel_config).max_speed;
;* 1274	-----------------------    if ( speed <= C$50 ) goto g3;
;* 1275	-----------------------    speed = C$50;
;**	-----------------------g3:
;* 1280	-----------------------    distant_type = (*point2).interpolation_type;
;* 1282	-----------------------    if ( !((distant_type != 10)&(distant_type != 0)) ) goto g37;

           STW     .D2T1   A11,*SP--(8)      ; |1257| 
||         MVK     .S1     1360,A3           ; |1267| 
||         MV      .L1     A4,A16            ; |1257| 
||         MVK     .S2     1360,B5           ; |1267| 

           STW     .D2T1   A10,*SP--(8)      ; |1257| 
||         ADD     .L1     A3,A6,A3          ; |1267| 
||         ADD     .L2     B5,B4,B5          ; |1267| 
||         MVK     .S2     20,B8             ; |1446| 

           STDW    .D2T2   B13:B12,*SP--     ; |1257| 

           STDW    .D2T2   B11:B10,*SP--     ; |1257| 
||         MV      .L2X    A6,B10            ; |1257| 

           STDW    .D2T1   A15:A14,*SP--     ; |1257| 
           STDW    .D2T1   A13:A12,*SP--     ; |1257| 
           STW     .D2T2   B3,*SP--(8)       ; |1257| 

           LDDW    .D1T1   *A3,A5:A4         ; |1267| 
||         MVK     .S1     274,A3            ; |1280| 
||         LDDW    .D2T2   *B5,B7:B6         ; |1267| 
||         ADDK    .S2     -1112,SP          ; |1257| 

           ADD     .L1     A3,A6,A7          ; |1280| 
||         LDW     .D1T1   *+A16(12),A3      ; |1274| 
||         STW     .D2T2   B4,*+SP(1108)     ; |1257| 

           LDHU    .D1T1   *A7,A7            ; |1280| 
           STW     .D2T1   A16,*+SP(1104)    ; |1257| 
           STW     .D2T1   A6,*+SP(1080)     ; |1257| 

           CMPGTDP .S2X    B7:B6,A5:A4,B0    ; |1269| 
||         MV      .L1     A5,A13            ; |1269| 
||         MV      .S1     A4,A12            ; |1269| 

           LDDW    .D1T1   *+A3(72),A9:A8    ; |1274| 
||         MVK     .S1     30,A5             ; |1446| 
||         MV      .L1     A16,A4            ; |1290| 

           CMPEQ   .L1     A7,0,A3           ; |1282| 
||         CMPEQ   .L2X    A7,10,B5          ; |1282| 
|| [!B0]   MV      .S1X    B7,A13            ; |1269| 
||         MVK     .S2     1440,B7           ; |1283| 
||         STW     .D2T1   A7,*+SP(1100)     ; |1280| 

           CMPEQ   .L1     A7,A5,A5          ; |1446| 
||         CMPEQ   .L2X    A7,B8,B8          ; |1446| 
|| [!B0]   MV      .S1X    B6,A12            ; |1269| 

           OR      .L2X    B5,A3,B1
||         MVK     .S2     24,B5             ; |1446| 

   [ B1]   B       .S1     $C$L68            ; |1282| 
||         OR      .L2X    A5,B8,B6          ; |1446| 
||         MV      .L1X    B7,A5             ; |1446| 

           CMPEQ   .L1X    A7,B5,A3          ; |1446| 
||         CMPGTDP .S1     A13:A12,A9:A8,A0  ; |1274| 

           ADD     .L2X    B7,A6,B5          ; |1283| 

           OR      .L2X    A3,B6,B0          ; |1446| 
||         ADD     .L1X    A5,B4,A3          ; |1283| 
||         ADD     .S2     8,SP,B4           ; |1290| 
|| [ A0]   MV      .S1     A8,A12            ; |1275| 
|| [ A0]   MV      .D1     A9,A13            ; |1275| 

   [!B1]   MVK     .S2     3016,B4           ; |1307| 
|| [ B1]   MVK     .L2     0x1,B0            ; |1307| nullify predicate
|| [!B1]   MVK     .S1     24,A3             ; |1311| 

   [!B0]   B       .S1     $C$L69            ; |1446| 
|| [!B1]   ADD     .L2     B4,B10,B4         ; |1307| 
|| [!B1]   CMPEQ   .L1     A7,A3,A0          ; |1311| 

           ; BRANCHCC OCCURS {$C$L68}        ; |1282| 
;** --------------------------------------------------------------------------*
;* 1446	-----------------------    if ( !((distant_type == 20)|(distant_type == 30)|(distant_type == 24)) ) goto g38;  // [74]
   [ B0]   LDW     .D2T1   *+SP(1108),A4     ; |1309| 
   [ B0]   LDDW    .D2T2   *+B4(8),B7:B6     ; |1308| 
   [ B0]   LDDW    .D2T2   *+B4(16),B9:B8    ; |1309| 
   [ B0]   LDDW    .D2T2   *B4,B5:B4         ; |1307| 
   [ B0]   ADD     .L1X    A5,B10,A6         ; |1319| 
           ; BRANCHCC OCCURS {$C$L69}        ; |1446| 
;** --------------------------------------------------------------------------*
;* 1307	-----------------------    C$49 = (double * const)point2+3016;
;* 1307	-----------------------    center[0] = *C$49;
;* 1308	-----------------------    center[1] = C$49[1];
;* 1309	-----------------------    center[2] = C$49[2];
;* 1311	-----------------------    if ( distant_type == 24 ) goto g14;

           ADD     .L1     A5,A4,A5          ; |1319| 
||         MVK     .S1     3056,A3           ; |1316| 
||         ADDAW   .D1X    SP,130,A10        ; |1319| 
||         STW     .D2T1   A6,*+SP(1088)     ; |1309| 

           MVK     .S2     3040,B31          ; |1314| 
||         STW     .D2T2   B6,*+SP(1040)     ; |1308| 
||         ADDAW   .D1X    SP,264,A8         ; |1319| 
||         MV      .L1     A16,A4            ; |1319| 

           MVK     .S2     1328,B30          ; |1204| 
||         STW     .D2T2   B8,*+SP(1048)     ; |1309| 
||         ADD     .L2     8,SP,B8           ; |1319| 
||         ADD     .L1X    A3,B10,A14        ; |1316| 

           STW     .D2T2   B4,*+SP(1032)     ; |1307| 
||         MV      .L2X    A5,B4             ; |1319| 
||         ADD     .S2     B30,B10,B11       ; |1204| 
|| [ A0]   B       .S1     $C$L58            ; |1311| 

           STW     .D2T2   B5,*+SP(1036)     ; |1307| 
||         ADD     .L2     B31,B10,B5        ; |1314| 

           STW     .D2T2   B9,*+SP(1052)     ; |1309| 
           STW     .D2T2   B7,*+SP(1044)     ; |1308| 
           ADDAW   .D2     SP,258,B6         ; |1319| 
           STW     .D2T1   A5,*+SP(1084)     ; |1308| 
           ; BRANCHCC OCCURS {$C$L58}        ; |1311| 
;** --------------------------------------------------------------------------*
;* 1204	-----------------------    K$63 = (const unsigned char *)K$10+1328;  // [67]
;* 1204	-----------------------    if ( !(C$48 = *K$63) ) goto g10;  // [67]
;* 1207	-----------------------    if ( C$48 == 1 ) goto g9;  // [67]
;* 1211	-----------------------    K$73 = (const double * const)point1+1440;  // [67]
;* 1211	-----------------------    K$71 = (const double * const)point2+1440;  // [67]
;* 1211	-----------------------    h = *K$71-*K$73;  // [67]
;* 1211	-----------------------    goto g11;  // [67]
;**	-----------------------g9:
;* 1208	-----------------------    h = *((const double * const)point2+1448)-*((const double * const)point1+1448);  // [67]
;**  	-----------------------    K$71 = (const double * const)point2+1440;
;**  	-----------------------    K$73 = (const double * const)point1+1440;
;* 1210	-----------------------    goto g11;  // [67]
;**	-----------------------g10:
;* 1205	-----------------------    h = *((const double * const)point2+1456)-*((const double * const)point1+1456);  // [67]
;**  	-----------------------    K$71 = (const double * const)point2+1440;
;**  	-----------------------    K$73 = (const double * const)point1+1440;
;**	-----------------------g11:
;* 1214	-----------------------    C$47 = *((const double * const)point2+3072);  // [67]
;* 1214	-----------------------    if ( ABS(C$47) < 1.00000000000000002092e-8 ) goto g13;  // [67]

           LDBU    .D2T2   *B11,B0           ; |1204| 
||         MVK     .S1     1456,A3           ; |1205| 
||         MVK     .S2     1456,B4           ; |1205| 

           MVK     .S1     1440,A4
||         LDW     .D2T2   *+SP(1108),B5     ; |1205| 

           ADD     .L1X    A3,B10,A3         ; |1205| 
           ADD     .L1X    A4,B10,A5
           STW     .D2T1   A5,*+SP(1088)

   [!B0]   LDDW    .D1T1   *A3,A7:A6         ; |1205| 
||         MVK     .S1     1440,A3           ; |1211| 
||         CMPEQ   .L2     B0,1,B1           ; |1207| 

           ADD     .L1X    A4,B5,A4
|| [!B0]   MVK     .L2     0x1,B1

           STW     .D2T1   A4,*+SP(1084)     ; |1205| 
|| [ B0]   ADD     .L1X    A3,B10,A4         ; |1211| 

   [ B0]   STW     .D2T1   A4,*+SP(1088)
   [ B0]   ADD     .L1X    A3,B5,A3          ; |1211| 
   [ B0]   STW     .D2T1   A3,*+SP(1084)     ; |1211| 
   [!B1]   LDW     .D2T1   *+SP(1088),A4
   [!B1]   LDW     .D2T1   *+SP(1084),A3     ; |1211| 
           ADD     .L2     B4,B5,B4          ; |1205| 
   [!B0]   LDDW    .D2T2   *B4,B7:B6         ; |1205| 
           MV      .L1X    B5,A8
   [!B1]   LDDW    .D1T2   *A4,B5:B4         ; |1211| 
   [!B1]   LDDW    .D1T1   *A3,A5:A4         ; |1211| 
           MVK     .S2     1448,B9           ; |1208| 
   [!B0]   SUBDP   .L2X    A7:A6,B7:B6,B13:B12 ; |1205| 
           ADD     .S2     B9,B10,B8         ; |1208| 
           ADD     .L2X    B9,A8,B7          ; |1208| 

   [!B1]   SUBDP   .L2X    B5:B4,A5:A4,B13:B12 ; |1211| 
|| [!B0]   ZERO    .S2     B1

   [ B1]   LDDW    .D2T2   *B7,B5:B4         ; |1208| 
   [ B1]   LDDW    .D2T2   *B8,B9:B8         ; |1208| 
           MVK     .S2     1440,B6
           MVKL    .S1     0x3e45798e,A5
           MV      .L1X    B6,A3             ; |1208| 
   [ B1]   ADD     .L1X    A3,B10,A3
   [ B1]   SUBDP   .L2     B9:B8,B5:B4,B13:B12 ; |1208| 
           MVK     .S2     3072,B4           ; |1214| 
           ADD     .L2     B4,B10,B4         ; |1214| 
           LDDW    .D2T2   *B4,B5:B4         ; |1214| 
           MVKL    .S1     0xe2308c3a,A4
   [ B1]   ADD     .S2X    B6,A8,B6
   [ B1]   STW     .D2T2   B6,*+SP(1084)
           MVKH    .S1     0x3e45798e,A5
           ABSDP   .S2     B5:B4,B7:B6       ; |1214| 
           MVKH    .S1     0xe2308c3a,A4
   [ B1]   STW     .D2T1   A3,*+SP(1088)     ; |1208| 
           CMPLTDP .S1X    B7:B6,A5:A4,A0    ; |1214| 
           NOP             1

   [ A0]   B       .S1     $C$L57            ; |1214| 
|| [ A0]   LDW     .D2T1   *+SP(1104),A14    ; |1326| 

   [!A0]   CALL    .S1     __c6xabi_divd     ; |1215| 
|| [ A0]   LDW     .D2T1   *+SP(1100),A11    ; |1326| 

   [ A0]   CALL    .S1     _ZN9LookAhead12GetArcVectorEthdPKdS1_Pd ; |1326| 
|| [ A0]   LDBU    .D2T1   *B11,A6           ; |1326| 

   [ A0]   LDW     .D2T2   *+SP(1084),B8     ; |1326| 
           MV      .L1X    B12,A4            ; |1215| 
           MV      .L1X    B13,A5            ; |1215| 
           ; BRANCHCC OCCURS {$C$L57}        ; |1214| 
;** --------------------------------------------------------------------------*
;* 1215	-----------------------    h /= C$47;  // [67]
           ADDKPC  .S2     $C$RL71,B3,0      ; |1215| 
$C$RL71:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1215| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(1104),A14    ; |1326| 
           LDW     .D2T1   *+SP(1100),A11    ; |1326| 

           CALL    .S1     _ZN9LookAhead12GetArcVectorEthdPKdS1_Pd ; |1326| 
||         LDW     .D2T2   *+SP(1084),B8     ; |1326| 

           LDBU    .D2T1   *B11,A6           ; |1326| 
           MV      .L2X    A5,B13            ; |1215| 
           MV      .L2X    A4,B12            ; |1215| 
;** --------------------------------------------------------------------------*
$C$L57:    
;**	-----------------------g13:
;* 1326	-----------------------    LookAhead::GetArcVector(this, distant_type, *K$63, h, &center, K$73, &cur_vector);
;* 1330	-----------------------    LookAhead::GetArcVector(this, distant_type, *K$63, h, &center, K$71, &end_vector);
;**  	-----------------------    K$113 = (double * const)point2+3056;
;* 1330	-----------------------    goto g15;

           ADD     .L1X    8,SP,A10          ; |1326| 
||         MV      .L2X    A11,B4            ; |1326| 

           ADDKPC  .S2     $C$RL72,B3,0      ; |1326| 
||         MV      .L2     B13,B7            ; |1326| 
||         MV      .D2     B12,B6            ; |1326| 
||         ADDAW   .D1X    SP,258,A8         ; |1326| 
||         MV      .L1     A14,A4            ; |1326| 

$C$RL72:   ; CALL OCCURS {_ZN9LookAhead12GetArcVectorEthdPKdS1_Pd} {0}  ; |1326| 
;** --------------------------------------------------------------------------*

           LDW     .D2T2   *+SP(1088),B8     ; |1330| 
||         MV      .L2     B12,B6            ; |1330| 
||         ADDAW   .D1X    SP,258,A8         ; |1330| 
||         MV      .S2X    A11,B4            ; |1330| 

           CALLP   .S2     _ZN9LookAhead12GetArcVectorEthdPKdS1_Pd,B3
||         LDBU    .D2T1   *B11,A6           ; |1330| 
||         MV      .L2     B13,B7            ; |1330| 
||         ADDAW   .D1X    SP,130,A10        ; |1330| 
||         MV      .L1     A14,A4            ; |1330| 

$C$RL73:   ; CALL OCCURS {_ZN9LookAhead12GetArcVectorEthdPKdS1_Pd} {0}  ; |1330| 
;** --------------------------------------------------------------------------*

           MVK     .S2     3064,B4           ; |1334| 
||         B       .S1     $C$L59            ; |1330| 

           ADD     .L2     B4,B10,B4         ; |1334| 
||         MVKL    .S2     0xbe45798e,B5
||         MVK     .S1     3056,A3

           LDDW    .D2T2   *+B4(16),B13:B12  ; |1335| 
||         MVKH    .S2     0xbe45798e,B5
||         ADD     .L1X    A3,B10,A14
||         MVK     .S1     3080,A3           ; |1336| 

           MVKL    .S2     0xe2308c3a,B6
||         MV      .L2     B5,B7             ; |1335| 
||         LDDW    .D2T1   *B4,A11:A10       ; |1334| 
||         ADD     .L1X    A3,B10,A3         ; |1336| 

           MVKH    .S2     0xe2308c3a,B6
           MVKL    .S2     0x54442d18,B4
           ; BRANCH OCCURS {$C$L59}          ; |1330| 
;** --------------------------------------------------------------------------*
$C$L58:    
;**	-----------------------g14:
;* 1314	-----------------------    C$46 = (double * const)point2+3040;
;* 1314	-----------------------    arc_norm[0] = *C$46;
;* 1315	-----------------------    arc_norm[1] = C$46[1];
;* 1316	-----------------------    K$113 = (double * const)point2+3056;
;* 1316	-----------------------    arc_norm[2] = *K$113;
;* 1319	-----------------------    K$71 = (double (* const)[64])point2+1440;
;* 1319	-----------------------    K$73 = (const double (* const)[64])point1+1440;
;* 1319	-----------------------    LookAhead::Get3DArcVector(this, K$73, K$71, &center, &arc_norm, &cur_vector, &end_vector);
           LDDW    .D2T2   *B5,B19:B18       ; |1314| 
           LDDW    .D1T1   *A14,A17:A16      ; |1316| 
           LDDW    .D2T2   *+B5(8),B17:B16   ; |1315| 
           NOP             2

           CALL    .S1     _ZN9LookAhead14Get3DArcVectorEPKdS1_S1_S1_PdS2_ ; |1319| 
||         STW     .D2T2   B18,*+SP(1056)    ; |1314| 

           STW     .D2T1   A16,*+SP(1072)    ; |1316| 
           STW     .D2T2   B16,*+SP(1064)    ; |1315| 
           STW     .D2T2   B19,*+SP(1060)    ; |1314| 
           STW     .D2T1   A17,*+SP(1076)    ; |1316| 

           STW     .D2T2   B17,*+SP(1068)    ; |1315| 
||         ADDKPC  .S2     $C$RL74,B3,0      ; |1319| 

$C$RL74:   ; CALL OCCURS {_ZN9LookAhead14Get3DArcVectorEPKdS1_S1_S1_PdS2_} {0}  ; |1319| 

           MVK     .S2     3064,B4           ; |1334| 
||         MVK     .S1     3080,A3           ; |1336| 

           ADD     .L2     B4,B10,B4         ; |1334| 
||         MVKL    .S2     0xbe45798e,B5
||         ADD     .L1X    A3,B10,A3         ; |1336| 

           LDDW    .D2T2   *+B4(16),B13:B12  ; |1335| 
||         MVKH    .S2     0xbe45798e,B5

           MVKL    .S2     0xe2308c3a,B6
||         MV      .L2     B5,B7             ; |1335| 
||         LDDW    .D2T1   *B4,A11:A10       ; |1334| 

           MVKL    .S2     0x54442d18,B4
           MVKH    .S2     0xe2308c3a,B6
;** --------------------------------------------------------------------------*
$C$L59:    
;**	-----------------------g15:
;* 1334	-----------------------    C$45 = (double * const)point2+3064;
;* 1334	-----------------------    m_min_radius = *C$45;
;* 1335	-----------------------    C$44 = C$45[2];
;* 1335	-----------------------    if ( C$44 >= -1.00000000000000002092e-8 ) goto g17;
           MVKL    .S2     0x401921fb,B5
           CMPLTDP .S2     B13:B12,B7:B6,B0  ; |1335| 
           MV      .L1X    B6,A15            ; |1335| 

   [!B0]   ZERO    .L1     A6                ; |1351| 
||         MVKH    .S2     0x401921fb,B5
|| [!B0]   LDDW    .D1T1   *A14,A5:A4        ; |1351| 

   [!B0]   ZERO    .L1     A7
   [!B0]   B       .S1     $C$L60            ; |1335| 
   [ B0]   CALL    .S1     __c6xabi_divd     ; |1336| 
   [ B0]   LDDW    .D1T1   *-A3(8),A5:A4     ; |1336| 
   [!B0]   ABSDP   .S1     A5:A4,A5:A4       ; |1351| 
           MVKH    .S2     0x54442d18,B4
   [!B0]   SET     .S1     A7,0x14,0x1d,A7
           ; BRANCHCC OCCURS {$C$L60}        ; |1335| 
;** --------------------------------------------------------------------------*
;* 1336	-----------------------    C$43 = (double * const)point2+3080;
;* 1336	-----------------------    m_min_radius += C$43[-1]/6.283185307179586232*C$44;
           ADDKPC  .S2     $C$RL75,B3,0      ; |1336| 
$C$RL75:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1336| 
;** --------------------------------------------------------------------------*
           MPYDP   .M1X    B13:B12,A5:A4,A5:A4 ; |1336| 
           ZERO    .L1     A7
           SET     .S1     A7,0x14,0x1d,A7
           ZERO    .L1     A6                ; |1351| 
           NOP             6
           ADDDP   .L1     A5:A4,A11:A10,A11:A10 ; |1336| 
           LDDW    .D1T1   *A14,A5:A4        ; |1351| 
           NOP             4
           ABSDP   .S1     A5:A4,A5:A4       ; |1351| 
           NOP             2
;** --------------------------------------------------------------------------*
$C$L60:    
;**	-----------------------g17:
;* 1340	-----------------------    min_radius = m_min_radius;
;* 1341	-----------------------    U$18 = (*this).m_channel_config;
;* 1341	-----------------------    C$42 = (*U$18).limit_radius;
;* 1341	-----------------------    if ( min_radius >= C$42 ) goto g19;
;* 1342	-----------------------    min_radius = C$42;
;**	-----------------------g19:
;* 1345	-----------------------    permit_speed = speed;
;* 1348	-----------------------    line_mask = *((unsigned long long *)K$10+1432);
;* 1351	-----------------------    if ( ABS(ABS(*K$113)-1.0) < 1.00000000000000002092e-8 ) goto g25;

           LDW     .D2T1   *+SP(1104),A3     ; |1351| 
||         SUBDP   .L1     A5:A4,A7:A6,A9:A8 ; |1351| 
||         MVKL    .S2     0x3e45798e,B9
||         MV      .L2X    A15,B8            ; |1351| 
||         MVK     .S1     3040,A31          ; |1355| 
||         MVK     .D1     0x3,A16           ; |1353| 

           MVKH    .S2     0x3e45798e,B9
||         STW     .D2T1   A10,*+SP(1096)    ; |1340| 
||         MV      .L2X    A11,B12           ; |1340| 

           MV      .L2     B9,B5             ; |1355| 
           MV      .L2X    A15,B4            ; |1351| 
           MVK     .S2     1432,B6           ; |1348| 
           LDW     .D1T1   *+A3(12),A3       ; |1341| 
           ADD     .L2     B6,B10,B7         ; |1348| 
           ABSDP   .S1     A9:A8,A9:A8       ; |1351| 
           ADD     .L2X    A31,B10,B6        ; |1355| 
           LDW     .D2T1   *B7,A15           ; |1348| 

           CMPLTDP .S2X    A9:A8,B9:B8,B0    ; |1351| 
||         LDDW    .D1T1   *+A3(104),A5:A4   ; |1341| 

           STW     .D2T1   A3,*+SP(1092)     ; |1341| 
   [ B0]   BNOP    .S1     $C$L61,2          ; |1351| 
           CMPLTDP .S1     A11:A10,A5:A4,A0  ; |1341| 

           MV      .L1     A12,A10           ; |1345| 
||         MV      .D1     A13,A11           ; |1345| 

   [ A0]   STW     .D2T1   A4,*+SP(1096)     ; |1342| 
|| [ A0]   MV      .L2X    A5,B12            ; |1342| 

           ; BRANCHCC OCCURS {$C$L61}        ; |1351| 
;** --------------------------------------------------------------------------*
;* 1355	-----------------------    C$41 = (double * const)point2+3040;
;* 1355	-----------------------    if ( ABS(ABS(*C$41)-1.0) < 1.00000000000000002092e-8 ) goto g24;
;* 1359	-----------------------    if ( ABS(ABS(C$41[1])-1.0) < 1.00000000000000002092e-8 ) goto g23;
;* 1364	-----------------------    arc_mask = 7;
;* 1364	-----------------------    goto g26;
;**	-----------------------g23:
;* 1361	-----------------------    arc_mask = 5;
;* 1362	-----------------------    goto g26;
;**	-----------------------g24:
;* 1357	-----------------------    arc_mask = 6;
;* 1358	-----------------------    goto g26;
;**	-----------------------g25:
;* 1353	-----------------------    arc_mask = 3;
           LDDW    .D2T1   *B6,A5:A4         ; |1355| 
           MVK     .L1     0x6,A16           ; |1357| 
           NOP             3
           ABSDP   .S1     A5:A4,A5:A4       ; |1355| 
           NOP             1
           SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |1355| 
           NOP             6
           ABSDP   .S1     A5:A4,A5:A4       ; |1355| 
           NOP             2
           CMPLTDP .S2X    A5:A4,B5:B4,B0    ; |1355| 
           NOP             1
   [!B0]   LDDW    .D2T2   *+B6(8),B7:B6     ; |1359| 
   [ B0]   MV      .L2X    A6,B1             ; |1364| 
   [!B0]   MVK     .L1     0x7,A16           ; |1364| 
           NOP             2
   [!B0]   ABSDP   .S2     B7:B6,B7:B6       ; |1359| 
           NOP             2
   [!B0]   SUBDP   .L1X    B7:B6,A7:A6,A5:A4 ; |1359| 
           NOP             6
   [!B0]   ABSDP   .S1     A5:A4,A5:A4       ; |1359| 
           NOP             2
   [!B0]   CMPLTDP .S2X    A5:A4,B5:B4,B1    ; |1359| 
           NOP             1
   [ B1]   MVK     .L1     0x5,A16           ; |1361| 
;** --------------------------------------------------------------------------*
$C$L61:    
;**	-----------------------g26:
;* 1366	-----------------------    line_mask &= ~arc_mask;
;* 1368	-----------------------    if ( !(C$40 = (*U$18).axis_number) ) goto g33;
;**  	-----------------------    V$0 = U$18;
;* 1370	-----------------------    L$1 = (int)C$40;
;* 1368	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 255, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D2T1   *+SP(1092),A3
           ANDN    .L1     A15,A16,A15       ; |1366| 
           MV      .L1     A6,A14            ; |1366| 
           NOP             2
           LDBU    .D1T1   *+A3(2),A0        ; |1368| 
           MV      .L2X    A3,B13
           MVK     .L1     1,A3              ; |1370| 
           SHL     .S1     A3,A14,A3         ; |1370| 
           NOP             1

   [!A0]   BNOP    .S1     $C$L65,1          ; |1368| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
||         MV      .L2X    A0,B11            ; |1370| 
||         AND     .D1     A15,A3,A0         ; |1370| 

   [ A1]   LDW     .D2T1   *+SP(1088),A3
   [!A0]   ADD     .L1     1,A14,A14         ; |1368| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L65}        ; |1368| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L62:    
;**	-----------------------g28:
;* 1370	-----------------------    if ( !(1<<i&line_mask) ) goto g32;
           NOP             1

   [!A0]   B       .S1     $C$L64            ; |1370| 
|| [ A0]   LDDW    .D1T1   *+A3[A14],A7:A6   ; |1375| 

           LDW     .D2T1   *+SP(1084),A3     ; |1375| 
           SUB     .L1X    B11,1,A0          ; |1368| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L64}        ; |1370| 
;** --------------------------------------------------------------------------*
;* 1375	-----------------------    C$39 = ABS((*((i<<3)+K$71)-*((i<<3)+K$73))/*((double *)K$10+2480));
;* 1375	-----------------------    if ( C$39 <= 1.00000000000000002092e-8 ) goto g31;
           LDDW    .D1T1   *+A3[A14],A5:A4   ; |1375| 
           MVK     .S2     2480,B5           ; |1375| 
           ADD     .L2     B5,B10,B4         ; |1375| 
           LDDW    .D2T2   *B4,B5:B4         ; |1375| 
           NOP             1
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |1375| 
           CALL    .S1     __c6xabi_divd     ; |1375| 
           ADDKPC  .S2     $C$RL76,B3,4      ; |1375| 
$C$RL76:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1375| 
;** --------------------------------------------------------------------------*
           ABSDP   .S1     A5:A4,A7:A6       ; |1375| 
           MV      .L1X    B13,A3
           MVKL    .S1     0xe2308c3a,A8
           MVKL    .S1     0x3e45798e,A9
           MVKH    .S1     0xe2308c3a,A8
           MVKH    .S1     0x3e45798e,A9
           CMPGTDP .S1     A7:A6,A9:A8,A0    ; |1375| 
           ADDAW   .D1     A3,A14,A3         ; |1376| 

   [ A0]   LDW     .D2T1   *+SP(1096),A4
|| [!A0]   B       .S2     $C$L63            ; |1375| 
||         ADDK    .S1     7896,A3           ; |1376| 

   [ A0]   LDW     .D1T1   *A3,A3            ; |1376| 
   [ A0]   MV      .L1X    B12,A5
           NOP             2

   [ A0]   ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |1376| 
||         CMPLTDP .S1     A11:A10,A13:A12,A0 ; |1380| 

           ; BRANCHCC OCCURS {$C$L63}        ; |1375| 
;** --------------------------------------------------------------------------*
;* 1376	-----------------------    permit_speed = (**(i*4+(struct CCCTAxisConfig **)V$0+7896)).max_axis_speed*(C$39+min_radius)/C$39;
           LDDW    .D1T1   *+A3(56),A9:A8    ; |1376| 
           MV      .L2X    A6,B4             ; |1376| 
           MV      .L2X    A7,B5             ; |1376| 
           NOP             3
           MPYDP   .M1     A5:A4,A9:A8,A5:A4 ; |1376| 
           NOP             3
           CALL    .S1     __c6xabi_divd     ; |1376| 
           ADDKPC  .S2     $C$RL77,B3,4      ; |1376| 
$C$RL77:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1376| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A10            ; |1376| 
||         MV      .S1     A5,A11            ; |1376| 

           CMPLTDP .S1     A11:A10,A13:A12,A0 ; |1380| 
;** --------------------------------------------------------------------------*
$C$L63:    
;**	-----------------------g31:
;* 1380	-----------------------    (permit_speed < speed) ? (speed = permit_speed) : speed;
           ADD     .D1     1,A14,A14         ; |1368| 

   [ A0]   MV      .L1     A11,A13           ; |1380| 
|| [ A0]   MV      .S1     A10,A12           ; |1380| 
||         SUB     .D1X    B11,1,A0          ; |1368| 

;** --------------------------------------------------------------------------*
$C$L64:    
;**	-----------------------g32:
;* 1368	-----------------------    ++i;
;* 1368	-----------------------    if ( L$1 = L$1-1 ) goto g28;

           MVK     .L1     1,A3              ; |1370| 
|| [ A0]   B       .S1     $C$L62            ; |1368| 
||         MV      .D1     A0,A2             ; guard predicate rewrite

           SHL     .S1     A3,A14,A3         ; |1370| 

           AND     .S1     A15,A3,A0         ; |1370| 
|| [ A2]   LDW     .D2T1   *+SP(1088),A3

           SUB     .L2     B11,1,B11         ; |1368| 
   [!A0]   ADD     .L1     1,A14,A14         ; |1368| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L62}        ; |1368| 
;** --------------------------------------------------------------------------*
$C$L65:    
;**	-----------------------g33:
;* 1385	-----------------------    L$2 = 3;
;**  	-----------------------    U$207 = &end_vector[0];
;* 1385	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(3, 3, 3)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           ADDAW   .D1X    SP,130,A15
||         ZERO    .L1     A14               ; |1385| 
||         MVKL    .S1     0xe2308c3a,A6
||         MVK     .L2     0x3,B11           ; |1385| 

           LDDW    .D1T1   *A15++,A5:A4      ; |1387| 
||         MV      .L1X    B13,A3
||         MVKL    .S1     0x3e45798e,A7

           MVKH    .S1     0x3e45798e,A7
           ADDAW   .D1     A3,A14,A3         ; |1389| 
           ADDK    .S1     7896,A3           ; |1389| 
           MVKH    .S1     0xe2308c3a,A6
           ABSDP   .S1     A5:A4,A5:A4       ; |1387| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L66:    
;**	-----------------------g34:
;* 1387	-----------------------    C$38 = ABS(*U$207++);
;* 1387	-----------------------    if ( C$38 <= 1.00000000000000002092e-8 ) goto g36;
           NOP             1
           CMPGTDP .S1     A5:A4,A7:A6,A0    ; |1387| 
           NOP             1

   [!A0]   BNOP    .S1     $C$L67,4          ; |1387| 
|| [ A0]   LDW     .D1T1   *A3,A3            ; |1389| 
|| [ A0]   MV      .L2X    A5,B5             ; |1389| 
|| [!A0]   ADD     .L1     1,A14,A14         ; |1385| 

   [ A0]   CALL    .S1     __c6xabi_divd     ; |1389| 
|| [ A0]   LDDW    .D1T1   *+A3(56),A11:A10  ; |1389| 
|| [!A0]   SUB     .L1X    B11,1,A0          ; |1385| 

           ; BRANCHCC OCCURS {$C$L67}        ; |1387| 
;** --------------------------------------------------------------------------*
;* 1389	-----------------------    C$37 = (**(i*4+(struct CCCTAxisConfig **)U$18+7896)).max_axis_speed;
;* 1389	-----------------------    (C$37/C$38 < speed) ? (speed = C$37) : speed;
           MV      .L2X    A4,B4             ; |1389| 
           ADDKPC  .S2     $C$RL78,B3,2      ; |1389| 

           MV      .L1     A11,A5            ; |1389| 
||         MV      .S1     A10,A4            ; |1389| 

$C$RL78:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1389| 
;** --------------------------------------------------------------------------*
           CMPLTDP .S1     A5:A4,A13:A12,A0  ; |1389| 
           ADD     .L1     1,A14,A14         ; |1385| 

           SUB     .L1X    B11,1,A0          ; |1385| 
|| [ A0]   MV      .S1     A11,A13           ; |1389| 
|| [ A0]   MV      .D1     A10,A12           ; |1389| 

;** --------------------------------------------------------------------------*
$C$L67:    
;**	-----------------------g36:
;* 1385	-----------------------    ++i;
;* 1385	-----------------------    if ( L$2 = L$2-1 ) goto g34;

   [ A0]   LDDW    .D1T1   *A15++,A5:A4      ; |1387| 
|| [ A0]   B       .S2     $C$L66            ; |1385| 
|| [ A0]   MV      .L1X    B13,A3
|| [ A0]   MVKL    .S1     0x3e45798e,A7
||         SUB     .L2     B11,1,B11         ; |1385| 

   [ A0]   ADDAW   .D1     A3,A14,A3         ; |1389| 
|| [ A0]   MVKL    .S1     0xe2308c3a,A6
|| [!A0]   B       .S2     $C$L73            ; |1385| 

   [ A0]   ADDK    .S1     7896,A3           ; |1389| 
   [ A0]   MVKH    .S1     0x3e45798e,A7
   [ A0]   MVKH    .S1     0xe2308c3a,A6
   [ A0]   ABSDP   .S1     A5:A4,A5:A4       ; |1387| 
           ; BRANCHCC OCCURS {$C$L66}        ; |1385| 
;** --------------------------------------------------------------------------*
;* 1385	-----------------------    goto g43;

           LDW     .D2T2   *+SP(1108),B5     ; |1399| 
||         MVK     .S2     274,B4            ; |1399| 
||         ZERO    .L1     A8                ; |1407| 

           ; BRANCH OCCURS {$C$L73}          ; |1385| 
;** --------------------------------------------------------------------------*
$C$L68:    
;**	-----------------------g37:
;* 1283	-----------------------    C$36 = (const double * const)point1+1440;
;* 1283	-----------------------    C$35 = (double * const)point2+1440;
;* 1283	-----------------------    cur_vector[0] = *C$35-*C$36;
;* 1285	-----------------------    cur_vector[1] = C$35[1]-C$36[1];
;* 1287	-----------------------    cur_vector[2] = C$35[2]-C$36[2];
;* 1290	-----------------------    if ( LookAhead::VectorNormal(this, &cur_vector) ) goto g39;

           LDDW    .D1T1   *+A3(8),A17:A16   ; |1285| 
||         LDDW    .D2T2   *+B5(16),B7:B6    ; |1287| 

           LDDW    .D2T2   *+B5(8),B17:B16   ; |1285| 
||         LDDW    .D1T1   *+A3(16),A9:A8    ; |1287| 

           LDDW    .D2T2   *B5,B9:B8         ; |1283| 
           LDDW    .D1T1   *A3,A7:A6         ; |1283| 
           NOP             2
           SUBDP   .L2X    B7:B6,A9:A8,B7:B6 ; |1287| 
           SUBDP   .L1X    B17:B16,A17:A16,A9:A8 ; |1285| 
           SUBDP   .L2X    B9:B8,A7:A6,B9:B8 ; |1283| 
           NOP             1
           CALL    .S1     _ZN9LookAhead12VectorNormalEPd ; |1290| 
           ADDKPC  .S2     $C$RL79,B3,1      ; |1290| 
           STDW    .D2T2   B7:B6,*+SP(24)    ; |1287| 
           STDW    .D2T1   A9:A8,*+SP(16)    ; |1285| 
           STDW    .D2T2   B9:B8,*+SP(8)     ; |1283| 
$C$RL79:   ; CALL OCCURS {_ZN9LookAhead12VectorNormalEPd} {0}  ; |1290| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(1104),A3
||         MV      .L1     A4,A0             ; |1290| 
||         MVK     .L2     0x3,B4            ; |1296| 
||         ZERO    .S1     A10               ; |1296| 
||         ADD     .D1X    8,SP,A11

   [ A0]   BNOP    .S1     $C$L70,3          ; |1290| 
   [ A0]   LDW     .D1T1   *+A3(12),A3
           MV      .L1X    B4,A14            ; |1296| 
           ; BRANCHCC OCCURS {$C$L70}        ; |1290| 
;** --------------------------------------------------------------------------*
$C$L69:    
;**	-----------------------g38:
;* 1292	-----------------------    return speed;
           ADDK    .S2     1112,SP           ; |1437| 
           LDW     .D2T2   *++SP(8),B3       ; |1437| 

           MV      .L1     A12,A4            ; |1292| 
||         MV      .S1     A13,A5            ; |1292| 
||         LDDW    .D2T1   *++SP,A13:A12     ; |1437| 

           LDDW    .D2T1   *++SP,A15:A14     ; |1437| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1437| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1437| 

           LDW     .D2T1   *++SP(8),A10      ; |1437| 
||         RET     .S2     B3                ; |1437| 

           LDW     .D2T1   *++SP(8),A11      ; |1437| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1437| 
;** --------------------------------------------------------------------------*
$C$L70:    
;**	-----------------------g39:
;**  	-----------------------    U$18 = (*this).m_channel_config;
;* 1296	-----------------------    L$3 = 3;
;**  	-----------------------    U$233 = &cur_vector[0];
;* 1296	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(3, 3, 3)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           MVKL    .S1     0x3e45798e,A5
           MVKL    .S1     0xe2308c3a,A4
           MVKH    .S1     0x3e45798e,A5
           STW     .D2T1   A3,*+SP(1092)
           LDDW    .D1T1   *A11++,A7:A6      ; |1298| 
           LDW     .D2T1   *+SP(1092),A3
           MVKH    .S1     0xe2308c3a,A4
           NOP             2
           ABSDP   .S1     A7:A6,A7:A6       ; |1298| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L71:    
;**	-----------------------g40:
;* 1298	-----------------------    C$34 = ABS(*U$233++);
;* 1298	-----------------------    if ( C$34 <= 1.00000000000000002092e-8 ) goto g42;
           ADDAW   .D1     A3,A10,A3         ; |1301| 
           CMPGTDP .S1     A7:A6,A5:A4,A0    ; |1298| 
           NOP             1

   [!A0]   B       .S2     $C$L72            ; |1298| 
||         ADDK    .S1     7896,A3           ; |1301| 

   [ A0]   LDW     .D1T1   *A3,A3            ; |1301| 
           NOP             3

   [ A0]   CALL    .S1     __c6xabi_divd     ; |1301| 
|| [!A0]   SUB     .L1     A14,1,A0          ; |1296| 

           ; BRANCHCC OCCURS {$C$L72}        ; |1298| 
;** --------------------------------------------------------------------------*
;* 1301	-----------------------    C$33 = (**(i*4+(struct CCCTAxisConfig **)U$18+7896)).max_axis_speed/C$34;
;* 1301	-----------------------    (speed > C$33) ? (speed = C$33) : speed;
           LDDW    .D1T1   *+A3(56),A5:A4    ; |1301| 
           MV      .L2X    A6,B4             ; |1301| 
           MV      .L2X    A7,B5             ; |1301| 
           ADDKPC  .S2     $C$RL80,B3,1      ; |1301| 
$C$RL80:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1301| 
;** --------------------------------------------------------------------------*
           CMPGTDP .S1     A13:A12,A5:A4,A0  ; |1301| 
           NOP             1

   [ A0]   MV      .L1     A4,A12            ; |1301| 
|| [ A0]   MV      .S1     A5,A13            ; |1301| 
||         SUB     .D1     A14,1,A0          ; |1296| 

;** --------------------------------------------------------------------------*
$C$L72:    
;**	-----------------------g42:
;* 1296	-----------------------    ++i;
;* 1296	-----------------------    if ( L$3 = L$3-1 ) goto g40;

   [ A0]   B       .S2     $C$L71            ; |1296| 
|| [ A0]   LDDW    .D1T1   *A11++,A7:A6      ; |1298| 
|| [ A0]   MVKL    .S1     0x3e45798e,A5
||         SUB     .L1     A14,1,A14         ; |1296| 

           ADD     .L1     1,A10,A10         ; |1296| 
|| [ A0]   LDW     .D2T1   *+SP(1092),A3

   [ A0]   MVKL    .S1     0xe2308c3a,A4
   [ A0]   MVKH    .S1     0x3e45798e,A5
   [ A0]   MVKH    .S1     0xe2308c3a,A4
   [ A0]   ABSDP   .S1     A7:A6,A7:A6       ; |1298| 
           ; BRANCHCC OCCURS {$C$L71}        ; |1296| 
;** --------------------------------------------------------------------------*

           LDW     .D2T2   *+SP(1108),B5     ; |1399| 
||         MVK     .S2     274,B4            ; |1399| 
||         ZERO    .L1     A8                ; |1407| 

;** --------------------------------------------------------------------------*
$C$L73:    
;**	-----------------------g43:
;**  	-----------------------    U$60 = distant_type == 24;
;**  	-----------------------    U$165 = (*(*this).m_channel_config).axis_number;
;* 1399	-----------------------    if ( !(((*point1).interpolation_type != 0)&(distant_type != 0)) ) goto g53;
;* 1403	-----------------------    if ( !(*this).m_has_vector ) goto g54;

           LDW     .D2T1   *+SP(1100),A3     ; |1399| 
||         MVK     .S1     1632,A6           ; |1403| 
||         MVK     .S2     24,B6

           ADD     .L1     4,A6,A30
           LDW     .D2T1   *+SP(1104),A5     ; |1399| 
           LDDW    .D2T2   *+SP(24),B9:B8    ; |1405| 
           ADD     .L2     B4,B5,B4          ; |1399| 

           LDHU    .D2T2   *B4,B4            ; |1399| 
||         CMPEQ   .L1     A3,0,A4           ; |1399| 

           CMPEQ   .L1X    A3,B6,A15
           LDW     .D1T1   *+A5(12),A31
           LDDW    .D2T2   *+SP(16),B7:B6    ; |1405| 
           MV      .L1     A5,A7             ; |1403| 
           CMPEQ   .L2     B4,0,B4           ; |1399| 
           ADD     .L1     A30,A5,A3         ; |1405| 

           OR      .L1X    B4,A4,A1
||         LDBU    .D1T1   *+A31(2),A4

   [!A1]   LDB     .D1T1   *+A7[A6],A0       ; |1403| 
           LDDW    .D2T2   *+SP(8),B5:B4     ; |1405| 
   [!A1]   ZERO    .L1     A9
   [ A1]   ZERO    .L1     A0                ; |1407| 
           STW     .D2T1   A4,*+SP(1080)     ; |1400| 

   [ A0]   LDW     .D1T1   *A3,A3            ; |1405| 
|| [!A0]   B       .S1     $C$L75            ; |1403| 

   [!A0]   LDW     .D2T1   *+SP(1100),A4     ; |1446| 
   [ A1]   ZERO    .L1     A13:A12           ; |1400| 
   [!A1]   MVKH    .S1     0xbff00000,A9
   [!A0]   MVK     .S2     30,B4             ; |1446| 
   [ A0]   LDDW    .D1T1   *+A3(8),A7:A6     ; |1405| 
           ; BRANCHCC OCCURS {$C$L75}        ; |1403| 
;** --------------------------------------------------------------------------*
;* 1405	-----------------------    C$32 = (*this).m_vector;
;* 1405	-----------------------    productor = *C$32*cur_vector[0]+C$32[1]*cur_vector[1]+C$32[2]*cur_vector[2];
;* 1407	-----------------------    if ( productor >= -1.0 ) goto g47;
;* 1408	-----------------------    productor = -1.0;
;**	-----------------------g47:
;* 1409	-----------------------    if ( productor <= 1.0 ) goto g49;
;* 1410	-----------------------    productor = 1.0;
;**	-----------------------g49:
;* 1411	-----------------------    angle = acos(productor);
;* 1414	-----------------------    max_angle_acc = (*point1).acc;
;* 1415	-----------------------    C$31 = (*point2).acc;
;* 1415	-----------------------    if ( max_angle_acc <= C$31 ) goto g51;
;* 1416	-----------------------    max_angle_acc = C$31;
;**	-----------------------g51:
;* 1418	-----------------------    if ( angle <= 9.99999999999999954748e-7 ) goto g54;
           LDDW    .D1T1   *A3,A5:A4         ; |1405| 
           ZERO    .L2     B31
           NOP             2
           MPYDP   .M1X    B7:B6,A7:A6,A7:A6 ; |1405| 
           MPYDP   .M2X    B5:B4,A5:A4,B7:B6 ; |1405| 
           LDDW    .D1T1   *+A3(16),A5:A4    ; |1405| 
           NOP             4
           MPYDP   .M2X    B9:B8,A5:A4,B5:B4 ; |1405| 
           NOP             3
           ADDDP   .L2X    A7:A6,B7:B6,B7:B6 ; |1405| 
           NOP             6
           ADDDP   .L2     B5:B4,B7:B6,B5:B4 ; |1405| 
           MV      .S2X    A8,B6             ; |1408| 
           SET     .S2     B31,0x14,0x1d,B7
           NOP             4
           CMPLTDP .S2X    B5:B4,A9:A8,B0    ; |1407| 
           NOP             1

   [ B0]   ZERO    .L2     B5
|| [ B0]   MV      .S2X    A8,B4             ; |1408| 

   [ B0]   MVKH    .S2     0xbff00000,B5

           CALL    .S1     acos              ; |1411| 
||         CMPGTDP .S2     B5:B4,B7:B6,B0    ; |1409| 

           NOP             1
   [ B0]   MV      .L2     B7,B5             ; |1410| 
   [ B0]   MV      .L2     B6,B4             ; |1409| 
           MV      .L1X    B5,A5             ; |1411| 

           MV      .L1X    B4,A4             ; |1411| 
||         ADDKPC  .S2     $C$RL81,B3,0      ; |1411| 

$C$RL81:   ; CALL OCCURS {acos} {0}          ; |1411| 
;** --------------------------------------------------------------------------*

           LDW     .D2T2   *+SP(1108),B5     ; |1420| 
||         ZERO    .L1     A9
||         ZERO    .D1     A8                ; |1420| 
||         MVK     .S2     3784,B4           ; |1414| 
||         MVKL    .S1     0x3eb0c6f7,A11

           MV      .L1     A5,A7             ; |1411| 
||         MV      .D1     A4,A6             ; |1411| 
||         MVKL    .S1     0xa0b5ed8d,A10
||         MVK     .S2     3784,B31          ; |1415| 
||         LDW     .D2T1   *+SP(1092),A31    ; |1420| 

           MVKH    .S1     0x3eb0c6f7,A11
||         ZERO    .L1     A3                ; |1420| 
||         MVK     .S2     3780,B11          ; |1422| 

           MVKH    .S1     0xa0b5ed8d,A10
||         STW     .D2T1   A3,*+SP(1084)     ; |1420| 

           SET     .S1     A9,0x15,0x1d,A9

           ADD     .L2     B4,B5,B4          ; |1414| 
||         MPYDP   .M1     A9:A8,A7:A6,A5:A4 ; |1420| 
||         CMPGTDP .S1     A7:A6,A11:A10,A0  ; |1418| 

           LDDW    .D2T2   *B4,B13:B12       ; |1414| 
||         ADD     .L2     B31,B10,B4        ; |1415| 

           LDDW    .D2T2   *B4,B5:B4         ; |1415| 
           STW     .D2T1   A9,*+SP(1088)     ; |1420| 
   [!A0]   BNOP    .S1     $C$L74,1          ; |1418| 

   [ A0]   CALL    .S1     sin               ; |1420| 
|| [!A0]   LDW     .D2T1   *+SP(1100),A4     ; |1446| 

           CMPGTDP .S2     B13:B12,B5:B4,B0  ; |1415| 
           ADDAW   .D1     A31,17,A14        ; |1420| 

   [ B0]   MV      .L2     B5,B13            ; |1416| 
|| [ B0]   MV      .D2     B4,B12            ; |1416| 
|| [!A0]   MVK     .S2     30,B4             ; |1446| 

           ; BRANCHCC OCCURS {$C$L74}        ; |1418| 
;** --------------------------------------------------------------------------*
;* 1420	-----------------------    speed = (double)(*U$18).interpolation_cycle*9.99999999999999954748e-7*max_angle_acc*0.5/sin(angle*0.5);
;* 1422	-----------------------    (*point2).is_consider_angle = 1;
;* 1422	-----------------------    goto g54;
;**	-----------------------g53:
;* 1400	-----------------------    speed = 0.0;
           ADDKPC  .S2     $C$RL82,B3,1      ; |1420| 
$C$RL82:   ; CALL OCCURS {sin} {0}           ; |1420| 
;** --------------------------------------------------------------------------*
           LDHU    .D1T1   *A14,A3           ; |1420| 
           MV      .L2X    A4,B4             ; |1420| 
           MV      .L2X    A5,B5             ; |1420| 
           NOP             2
           INTDPU  .L1     A3,A7:A6          ; |1420| 
           NOP             4
           MPYDP   .M1     A11:A10,A7:A6,A7:A6 ; |1420| 
           NOP             9
           MPYDP   .M1X    B13:B12,A7:A6,A9:A8 ; |1420| 
           LDW     .D2T1   *+SP(1088),A7
           LDW     .D2T1   *+SP(1084),A6
           NOP             7
           MPYDP   .M1     A7:A6,A9:A8,A7:A6 ; |1420| 
           NOP             9

           MV      .L1     A7,A5             ; |1420| 
||         MV      .S1     A6,A4             ; |1420| 
||         CALLP   .S2     __c6xabi_divd,B3

$C$RL83:   ; CALL OCCURS {__c6xabi_divd} {0}  ; |1420| 
;** --------------------------------------------------------------------------*
           MVK     .L1     1,A3              ; |1422| 
           STB     .D2T1   A3,*+B10[B11]     ; |1422| 

           MV      .L1     A4,A12            ; |1420| 
||         LDW     .D2T1   *+SP(1100),A4     ; |1446| 

           MVK     .S2     30,B4             ; |1446| 
           MV      .L1     A5,A13            ; |1420| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L74:    
           NOP             1
;** --------------------------------------------------------------------------*
$C$L75:    
;**	-----------------------g54:
;* 1446	-----------------------    if ( (distant_type == 20)|(distant_type == 30)|U$60 ) goto g58;  // [74]

           MVK     .S1     20,A3             ; |1446| 
||         CMPEQ   .L2X    A4,B4,B4          ; |1446| 

           CMPEQ   .L1     A4,A3,A3          ; |1446| 
           OR      .L1X    B4,A3,A3          ; |1446| 
           OR      .L1     A15,A3,A0         ; |1446| 

           MV      .L1     A0,A1             ; |1446| branch predicate copy
|| [ A0]   B       .S1     $C$L79            ; |1446| 
||         LDW     .D2T1   *+SP(1080),A0

   [ A1]   LDW     .D2T1   *+SP(1080),A0
           NOP             4
           ; BRANCHCC OCCURS {$C$L79}        ; |1446| 
;** --------------------------------------------------------------------------*
;* 1431	-----------------------    if ( !U$165 ) goto g61;

   [!A0]   BNOP    .S1     $C$L83,4          ; |1431| 
|| [ A0]   LDW     .D2T1   *+SP(1104),A5
||         MV      .L1     A0,A3
||         ADD     .L2     8,SP,B6
||         ZERO    .S2     B4

   [ A0]   SUB     .L1     A3,1,A4
           ; BRANCHCC OCCURS {$C$L83}        ; |1431| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    L$4 = (int)U$165;
;**  	-----------------------    U$304 = &cur_vector[0];
;**  	-----------------------    U$303 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g57:
;* 1432	-----------------------    *((*this).m_vector+U$303) = *U$304++;
;* 1431	-----------------------    U$303 += 8;
;* 1431	-----------------------    if ( L$4 = L$4-1 ) goto g57;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 1431
;*      Loop opening brace source line   : 1432
;*      Loop closing brace source line   : 1432
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1        2*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          3        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
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
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L76:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;12               ; (P) 
||         MVK     .S1     1636,A4           ; |1432| 
||         MVC     .S2X    A4,ILC

;** --------------------------------------------------------------------------*
$C$L77:    ; PIPED LOOP KERNEL
           ADD     .L1     A4,A5,A7          ; |1432| (P) <0,0> 
           LDW     .D1T1   *A7,A3            ; |1432| (P) <0,1> 
           NOP             1

           SPMASK          L1
||         MV      .L1X    B4,A6
||         LDDW    .D2T2   *B6++,B5:B4       ; |1432| (P) <0,3>  ^ 

           NOP             3
           ADD     .L1     A6,A3,A3          ; |1432| <0,7> 

           SPKERNEL 0,0
||         ADD     .L1     8,A6,A6           ; |1431| <0,8> 
||         STDW    .D1T2   B5:B4,*A3         ; |1432| <0,8>  ^ 

;** --------------------------------------------------------------------------*
$C$L78:    ; PIPED LOOP EPILOG
;* 1431	-----------------------    goto g61;
           BNOP    .S2     $C$L83,2          ; |1431| 
           STW     .D2T1   A5,*+SP(1104)
           NOP             2
           ; BRANCH OCCURS {$C$L83}          ; |1431| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(1080),A0
           NOP             4
;** --------------------------------------------------------------------------*
$C$L79:    
;**	-----------------------g58:
;* 1428	-----------------------    if ( !U$165 ) goto g61;

   [!A0]   BNOP    .S1     $C$L83,3          ; |1428| 
|| [ A0]   LDW     .D2T1   *+SP(1104),A5
||         MV      .L1     A0,A3
||         ZERO    .L2     B4

           ADDAW   .D2     SP,130,B6
   [ A0]   SUB     .L1     A3,1,A4
           ; BRANCHCC OCCURS {$C$L83}        ; |1428| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    L$5 = (int)U$165;
;**  	-----------------------    U$315 = &end_vector[0];
;**  	-----------------------    U$314 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g60:
;* 1429	-----------------------    *((*this).m_vector+U$314) = *U$315++;
;* 1428	-----------------------    U$314 += 8;
;* 1428	-----------------------    if ( L$5 = L$5-1 ) goto g60;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 1428
;*      Loop opening brace source line   : 1429
;*      Loop closing brace source line   : 1429
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1        2*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          3        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
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
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L80:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;12               ; (P) 
||         MVK     .S1     1636,A4           ; |1429| 
||         MVC     .S2X    A4,ILC

;** --------------------------------------------------------------------------*
$C$L81:    ; PIPED LOOP KERNEL
           ADD     .L1     A4,A5,A7          ; |1429| (P) <0,0> 
           LDW     .D1T1   *A7,A3            ; |1429| (P) <0,1> 
           NOP             1

           SPMASK          L1
||         MV      .L1X    B4,A6
||         LDDW    .D2T2   *B6++,B5:B4       ; |1429| (P) <0,3>  ^ 

           NOP             3
           ADD     .L1     A6,A3,A3          ; |1429| <0,7> 

           SPKERNEL 0,3
||         ADD     .L1     8,A6,A6           ; |1428| <0,8> 
||         STDW    .D1T2   B5:B4,*A3         ; |1429| <0,8>  ^ 

;** --------------------------------------------------------------------------*
$C$L82:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           STW     .D2T1   A5,*+SP(1104)
;** --------------------------------------------------------------------------*
$C$L83:    
;**	-----------------------g61:
;* 1434	-----------------------    (*this).m_has_vector = 1;
;* 1436	-----------------------    return speed;
           LDW     .D2T1   *+SP(1104),A3     ; |1436| 
           MVK     .L1     1,A6              ; |1434| 
           MVK     .S1     1632,A7           ; |1434| 
           ADDK    .S2     1112,SP           ; |1437| 
           MV      .L1     A13,A5            ; |1436| 
           STB     .D1T1   A6,*+A3[A7]       ; |1434| 
           LDW     .D2T2   *++SP(8),B3       ; |1437| 

           MV      .L1     A12,A4            ; |1436| 
||         LDDW    .D2T1   *++SP,A13:A12     ; |1437| 

           LDDW    .D2T1   *++SP,A15:A14     ; |1437| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1437| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1437| 

           LDW     .D2T1   *++SP(8),A10      ; |1437| 
||         RET     .S2     B3                ; |1437| 

           LDW     .D2T1   *++SP(8),A11      ; |1437| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1437| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead11SetEndSpeedEP8LineDatad

;******************************************************************************
;* FUNCTION NAME: LookAhead::SetEndSpeed(LineData *, double)                  *
;*                                                                            *
;*   Regs Modified     : B4,B5                                                *
;*   Regs Used         : A6,A7,B3,B4,B5                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN9LookAhead11SetEndSpeedEP8LineDatad:
;** --------------------------------------------------------------------------*
;** 379	-----------------------    (*data).feed_info.end_feed_speed = speed;
;**  	-----------------------    return;
           RETNOP  .S2     B3,2              ; |384| 
           MVK     .S2     1376,B5           ; |379| 
           ADD     .L2     B5,B4,B4          ; |379| 
           STDW    .D2T1   A7:A6,*B4         ; |379| 
           ; BRANCH OCCURS {B3}              ; |384| 
	.sect	".text:_ZN8LineDataC1Ev"
	.clink
	.global	_ZN8LineDataC1Ev

;******************************************************************************
;* FUNCTION NAME: LineData::LineData()                                        *
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
_ZN8LineDataC1Ev:
;** --------------------------------------------------------------------------*
;**  	-----------------------    CoordInfo::CoordInfo((struct oordInfo *)this+280);
;**  	-----------------------    AxisDataMode::AxisDataMode((struct xisDataMode *)this+1344);
;**  	-----------------------    FeedInfo::FeedInfo((struct eedInfo *)this+1352);
;**  	-----------------------    SpindleInfo::SpindleInfo((struct pindleInfo *)this+1400);
;**  	-----------------------    AxisMovData::AxisMovData((struct xisMovData *)this+1432);
;**  	-----------------------    ExtraMovData::ExtraMovData((struct xtraMovData *)this+3008);
;**  	-----------------------    MCommands::MCommands((struct Commands *)this+3128);
;**  	-----------------------    ParaEntry::ParaEntry((struct araEntry *)this+3144);
;**  	-----------------------    return this;
           MVK     .S2     280,B4

           STW     .D2T1   A11,*SP--(8)
||         MV      .L1X    B3,A11

           CALLP   .S2     _ZN9CoordInfoC1Ev,B3
||         STW     .D2T1   A10,*+SP(4)
||         MV      .L1     A4,A10
||         ADD     .S1X    B4,A4,A4

$C$RL84:   ; CALL OCCURS {_ZN9CoordInfoC1Ev} {0} 
;** --------------------------------------------------------------------------*
           MVK     .S1     1344,A3

           CALLP   .S2     _ZN12AxisDataModeC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL85:   ; CALL OCCURS {_ZN12AxisDataModeC1Ev} {0} 
           MVK     .S2     1352,B4
           NOP             1

           CALLP   .S2     _ZN8FeedInfoC1Ev,B3
||         ADD     .L1X    B4,A10,A4

$C$RL86:   ; CALL OCCURS {_ZN8FeedInfoC1Ev} {0} 
           MVK     .S1     1400,A3

           CALLP   .S2     _ZN11SpindleInfoC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL87:   ; CALL OCCURS {_ZN11SpindleInfoC1Ev} {0} 
           MVK     .S2     1432,B4
           NOP             1

           CALLP   .S2     _ZN11AxisMovDataC1Ev,B3
||         ADD     .L1X    B4,A10,A4

$C$RL88:   ; CALL OCCURS {_ZN11AxisMovDataC1Ev} {0} 
           MVK     .S1     3008,A3

           CALLP   .S2     _ZN12ExtraMovDataC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL89:   ; CALL OCCURS {_ZN12ExtraMovDataC1Ev} {0} 
           MVK     .S2     3128,B4
           NOP             1

           CALLP   .S2     _ZN9MCommandsC1Ev,B3
||         ADD     .L1X    B4,A10,A4

$C$RL90:   ; CALL OCCURS {_ZN9MCommandsC1Ev} {0} 
           MVK     .S1     3144,A3

           CALLP   .S2     _ZN9ParaEntryC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL91:   ; CALL OCCURS {_ZN9ParaEntryC1Ev} {0} 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3

           RET     .S2     B3
||         MV      .L1     A10,A4
||         LDW     .D2T1   *+SP(4),A10

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
	.sect	".text"
	.clink
	.global	_ZN9LookAhead20FillLineDataByCurPosEP8LineData

;******************************************************************************
;* FUNCTION NAME: LookAhead::FillLineDataByCurPos(LineData *)                 *
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
_ZN9LookAhead20FillLineDataByCurPosEP8LineData:
;** --------------------------------------------------------------------------*
;** 651	-----------------------    (*data).interpolation_type = 0u;
;** 652	-----------------------    if ( !(C$2 = (*(*this).m_channel_config).axis_number) ) goto g4;
           MV      .L2X    A4,B8             ; |650| 
           LDW     .D2T2   *+B8(12),B5       ; |652| 
           MV      .L1X    B4,A3             ; |650| 
           ZERO    .L1     A4                ; |651| 
           ADDAD   .D2     B8,8,B7
           NOP             1
           LDBU    .D2T2   *+B5(2),B0        ; |652| 
           MVK     .S2     274,B5            ; |651| 
           ADD     .L2     B5,B4,B5          ; |651| 
           STH     .D2T1   A4,*B5            ; |651| 
           MVK     .S1     512,A4

   [!B0]   BNOP    .S1     $C$L87,5          ; |652| 
|| [ B0]   LDW     .D2T2   *+B8(16),B6
|| [ B0]   SUB     .L2     B0,1,B31

           ; BRANCHCC OCCURS {$C$L87}        ; |652| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$19 = (*this).m_realtime_state+512;
;**  	-----------------------    U$23 = (double * const)this+64;
;**  	-----------------------    L$1 = (int)C$2;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g3:
;** 653	-----------------------    *U$23++ = *U$19++;
;** 652	-----------------------    if ( L$1 = L$1-1 ) goto g3;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 652
;*      Loop opening brace source line   : 652
;*      Loop closing brace source line   : 654
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
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L84:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;12               ; (P) 
||         MVC     .S2     B31,ILC
||         ADD     .L2X    A4,B6,B6

;** --------------------------------------------------------------------------*
$C$L85:    ; PIPED LOOP KERNEL
           LDDW    .D2T2   *B6++,B5:B4       ; |653| (P) <0,0>  ^ 
           NOP             4
           STDW    .D2T2   B5:B4,*B7++       ; |653| (P) <0,5>  ^ 
           SPKERNEL 0,1
;** --------------------------------------------------------------------------*
$C$L86:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L87:    
;**	-----------------------g4:
;** 655	-----------------------    memcpy((struct xisMovData *)data+1432, (struct xisMovData *)this+56, 1569u);
;**  	-----------------------    return;
           CALLRET .S1     memcpy            ; |655| 
           MVK     .S1     1432,A4           ; |655| 
           ADD     .L1     A4,A3,A4          ; |655| 
           MVK     .S1     0x621,A6          ; |655| 
           ADDAD   .D2     B8,7,B4           ; |655| 
           NOP             1
$C$RL92:   ; CALL-RETURN OCCURS {memcpy} 0   ; |655| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead21FillLineDataByLastPosEP8LineData

;******************************************************************************
;* FUNCTION NAME: LookAhead::FillLineDataByLastPos(LineData *)                *
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
_ZN9LookAhead21FillLineDataByLastPosEP8LineData:
;** --------------------------------------------------------------------------*
;** 660	-----------------------    if ( (*this).m_has_position ) goto g6;

           MV      .L1     A4,A6             ; |659| 
||         MVK     .S1     48,A3             ; |660| 

           LDB     .D1T1   *+A6[A3],A0       ; |660| 
           ZERO    .L2     B6                ; |651| 
           MVK     .S2     274,B5            ; |651| 
           ADD     .L2     B5,B4,B5          ; |651| 
           NOP             1

   [!A0]   LDW     .D1T1   *+A6(12),A3       ; |652| 
|| [ A0]   B       .S1     $C$L92            ; |660| 
||         MV      .L1     A0,A1             ; branch predicate copy

   [ A1]   LDW     .D1T1   *+A6(12),A3       ; |661| 
           NOP             3
   [!A0]   LDBU    .D1T1   *+A3(2),A0        ; |652| 
           ; BRANCHCC OCCURS {$C$L92}        ; |660| 
;** --------------------------------------------------------------------------*
;** 651	-----------------------    (*data).interpolation_type = 0u;  // [70]
;** 652	-----------------------    if ( !(C$4 = (*(*this).m_channel_config).axis_number) ) goto g5;  // [70]
;**  	-----------------------    U$27 = (double * const)this+64;
;**  	-----------------------    L$1 = (int)C$4;
;**  	-----------------------    U$22 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           STH     .D2T2   B6,*B5            ; |651| 
           ADDAD   .D1     A6,8,A7
           MV      .L2     B6,B5             ; |651| 
           NOP             1

   [!A0]   BNOP    .S1     $C$L91,5          ; |652| 
|| [ A0]   SUB     .L1     A0,1,A4

           ; BRANCHCC OCCURS {$C$L91}        ; |652| 
;** --------------------------------------------------------------------------*
;**	-----------------------g4:
;** 653	-----------------------    *U$27++ = *((*this).m_realtime_state+U$22+512);  // [70]
;** 652	-----------------------    U$22 += 8;  // [70]
;** 652	-----------------------    if ( L$1 = L$1-1 ) goto g4;  // [70]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 652
;*      Loop opening brace source line   : 652
;*      Loop closing brace source line   : 654
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     3*       0     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             3*       0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     2        0     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Schedule found with 3 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L88:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;18               ; (P) 
||         MVC     .S2X    A4,ILC

;** --------------------------------------------------------------------------*
$C$L89:    ; PIPED LOOP KERNEL
           LDW     .D1T1   *+A6(16),A3       ; |653| (P) <0,0> 
           NOP             4

           SPMASK          L1
||         MV      .L1X    B5,A8

           ADD     .L1     A8,A3,A3          ; |653| (P) <0,6> 
           ADDK    .S1     512,A3            ; |653| (P) <0,7> 
           LDDW    .D1T1   *A3,A5:A4         ; |653| (P) <0,8>  ^ 
           NOP             2
           ADD     .L1     8,A8,A8           ; |652| (P) <0,11> 
           NOP             1

           SPKERNEL 1,2
||         STDW    .D1T1   A5:A4,*A7++       ; |653| <0,13>  ^ 

;** --------------------------------------------------------------------------*
$C$L90:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L91:    
;**	-----------------------g5:
;** 655	-----------------------    memcpy((struct xisMovData *)data+1432, (struct xisMovData *)this+56, 1569u);  // [70]
;** 656	-----------------------    goto g10;  // [70]
           CALLRET .S1     memcpy            ; |655| 
           MVK     .S2     1432,B5           ; |655| 
           ADD     .L2     B5,B4,B5          ; |655| 
           ADDAD   .D1     A6,7,A3           ; |655| 
           MV      .L1X    B5,A4             ; |655| 

           MV      .L2X    A3,B4             ; |655| 
||         MVK     .S1     0x621,A6          ; |655| 

$C$RL93:   ; CALL-RETURN OCCURS {memcpy} 0   ; |655| 
;** --------------------------------------------------------------------------*
$C$L92:    
;**	-----------------------g6:
;** 661	-----------------------    if ( !(C$3 = (*(*this).m_channel_config).axis_number) ) goto g9;
;**  	-----------------------    U$48 = (double * const)this+64;
;**  	-----------------------    L$2 = (int)C$3;
;**  	-----------------------    U$44 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDBU    .D1T1   *+A3(2),A0        ; |661| 
           MV      .L2     B6,B5
           ADDAD   .D1     A6,8,A7
           NOP             2

   [!A0]   BNOP    .S1     $C$L96,5          ; |661| 
|| [ A0]   SUB     .L1     A0,1,A4

           ; BRANCHCC OCCURS {$C$L96}        ; |661| 
;** --------------------------------------------------------------------------*
;**	-----------------------g8:
;** 663	-----------------------    *U$48++ = *((*this).m_realtime_state+U$44+512);
;** 661	-----------------------    U$44 += 8;
;** 661	-----------------------    if ( L$2 = L$2-1 ) goto g8;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 661
;*      Loop opening brace source line   : 661
;*      Loop closing brace source line   : 664
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     3*       0     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             3*       0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     2        0     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Schedule found with 3 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L93:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;18               ; (P) 
||         MVC     .S2X    A4,ILC

;** --------------------------------------------------------------------------*
$C$L94:    ; PIPED LOOP KERNEL
           LDW     .D1T1   *+A6(16),A3       ; |663| (P) <0,0> 
           NOP             4

           SPMASK          L1
||         MV      .L1X    B5,A8

           ADD     .L1     A8,A3,A3          ; |663| (P) <0,6> 
           ADDK    .S1     512,A3            ; |663| (P) <0,7> 
           LDDW    .D1T1   *A3,A5:A4         ; |663| (P) <0,8>  ^ 
           NOP             2
           ADD     .L1     8,A8,A8           ; |661| (P) <0,11> 
           NOP             1

           SPKERNEL 1,2
||         STDW    .D1T1   A5:A4,*A7++       ; |663| <0,13>  ^ 

;** --------------------------------------------------------------------------*
$C$L95:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L96:    
;**	-----------------------g9:
;** 665	-----------------------    (*data).interpolation_type = 0u;
;** 666	-----------------------    memcpy((struct xisMovData *)data+1432, (struct xisMovData *)this+56, 1569u);
;**	-----------------------g10:
;**  	-----------------------    return;
           CALLRET .S1     memcpy            ; |666| 
           MVK     .S2     274,B5            ; |665| 

           ADD     .L2     B5,B4,B5          ; |665| 
||         MVK     .S2     1432,B7           ; |666| 
||         ZERO    .D2     B6                ; |665| 

           STH     .D2T2   B6,*B5            ; |665| 
||         ADD     .L2     B7,B4,B5          ; |666| 
||         ADDAD   .D1     A6,7,A3           ; |666| 

           MVK     .S1     0x621,A6          ; |666| 

           MV      .L1X    B5,A4             ; |666| 
||         MV      .L2X    A3,B4             ; |666| 

$C$RL94:   ; CALL-RETURN OCCURS {memcpy} 0   ; |666| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead14PrepareProcessEP8LineDataS1_

;******************************************************************************
;* FUNCTION NAME: LookAhead::PrepareProcess(LineData *, LineData *)           *
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
;*   Local Frame Size  : 0 Args + 3836 Auto + 56 Save = 3892 byte             *
;******************************************************************************
_ZN9LookAhead14PrepareProcessEP8LineDataS1_:
;** --------------------------------------------------------------------------*
;** 388	-----------------------    if ( pre_data ) goto g12;

           STW     .D2T1   A11,*SP--(8)      ; |387| 
||         MV      .L1X    B4,A0             ; |387| 
||         MVK     .S1     1368,A3           ; |423| 
||         MVK     .S2     1376,B6           ; |427| 
||         MV      .D1     A4,A11            ; |387| 

           STW     .D2T1   A10,*SP--(8)      ; |387| 
||         ADD     .L1     A3,A6,A10         ; |423| 

           STDW    .D2T2   B13:B12,*SP--     ; |387| 
||         MV      .L2X    A6,B13            ; |387| 

           STDW    .D2T2   B11:B10,*SP--     ; |387| 
||         ADD     .L2     B6,B4,B11         ; |427| 
||         MV      .S2X    A6,B4             ; |387| 

           STDW    .D2T1   A15:A14,*SP--     ; |387| 
||         MVK     .S1     48,A15            ; |660| 

           STDW    .D2T1   A13:A12,*SP--     ; |387| 
||         MV      .L1     A6,A12            ; |387| 

           STW     .D2T2   B3,*SP--(8)       ; |387| 
           ADDK    .S2     -3840,SP          ; |387| 
           ADDAW   .D2     SP,784,B5

           ADDAW   .D1X    SP,340,A14
||         STW     .D2T2   B5,*+SP(3836)

           ADDAW   .D1X    SP,754,A13
||         ADDAW   .D2     SP,352,B5

           STW     .D2T2   B5,*+SP(3832)
||         ADDAW   .D1X    SP,72,A4
|| [ A0]   B       .S1     $C$L107           ; |388| 

           ADDAW   .D2     SP,338,B5
|| [!A0]   CALL    .S1     _ZN9CoordInfoC1Ev

           STW     .D2T2   B5,*+SP(3828)
|| [ A0]   CALL    .S1     _ZN9LookAhead9CalcSpeedEP8LineData ; |423| 

           STW     .D2T1   A0,*+SP(3824)     ; |387| 
           ADDAW   .D2     SP,788,B12
           ADDAW   .D2     SP,360,B10
           ; BRANCHCC OCCURS {$C$L107}       ; |388| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    CoordInfo::CoordInfo((struct oordInfo *)&data+280);
;**  	-----------------------    AxisDataMode::AxisDataMode((struct xisDataMode *)&data+1344);
;**  	-----------------------    FeedInfo::FeedInfo((struct eedInfo *)&data+1352);
;**  	-----------------------    SpindleInfo::SpindleInfo((struct pindleInfo *)&data+1400);
;**  	-----------------------    K$19 = C$7 = (struct xisMovData *)&data+1432;
;**  	-----------------------    AxisMovData::AxisMovData((struct xisMovData *)(void *)C$7);
;**  	-----------------------    ExtraMovData::ExtraMovData((struct xtraMovData *)&data+3008);
;**  	-----------------------    MCommands::MCommands((struct Commands *)&data+3128);
;**  	-----------------------    ParaEntry::ParaEntry((struct araEntry *)&data+3144);
;** 660	-----------------------    if ( (*this).m_has_position ) goto g7;  // [71]
           ADDKPC  .S2     $C$RL95,B3,0
$C$RL95:   ; CALL OCCURS {_ZN9CoordInfoC1Ev} {0} 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZN12AxisDataModeC1Ev,B3
||         LDW     .D2T1   *+SP(3828),A4

$C$RL96:   ; CALL OCCURS {_ZN12AxisDataModeC1Ev} {0} 

           CALLP   .S2     _ZN8FeedInfoC1Ev,B3
||         MV      .L1     A14,A4

$C$RL97:   ; CALL OCCURS {_ZN8FeedInfoC1Ev} {0} 

           CALLP   .S2     _ZN11SpindleInfoC1Ev,B3
||         LDW     .D2T1   *+SP(3832),A4

$C$RL98:   ; CALL OCCURS {_ZN11SpindleInfoC1Ev} {0} 

           CALLP   .S2     _ZN11AxisMovDataC1Ev,B3
||         MV      .L1X    B10,A4

$C$RL99:   ; CALL OCCURS {_ZN11AxisMovDataC1Ev} {0} 

           CALLP   .S2     _ZN12ExtraMovDataC1Ev,B3
||         MV      .L1     A13,A4

$C$RL100:  ; CALL OCCURS {_ZN12ExtraMovDataC1Ev} {0} 

           CALLP   .S2     _ZN9MCommandsC1Ev,B3
||         LDW     .D2T1   *+SP(3836),A4

$C$RL101:  ; CALL OCCURS {_ZN9MCommandsC1Ev} {0} 

           CALLP   .S2     _ZN9ParaEntryC1Ev,B3
||         MV      .L1X    B12,A4

$C$RL102:  ; CALL OCCURS {_ZN9ParaEntryC1Ev} {0} 
;** --------------------------------------------------------------------------*
           LDB     .D1T1   *+A11[A15],A0     ; |660| 
           ZERO    .L2     B4                ; |651| 
           NOP             3

   [ A0]   B       .S1     $C$L101           ; |660| 
||         MV      .L1     A0,A1             ; branch predicate copy
|| [!A0]   LDW     .D1T1   *+A11(12),A3      ; |652| 

   [ A1]   LDW     .D1T1   *+A11(12),A3      ; |661| 
           NOP             3
   [!A0]   LDBU    .D1T1   *+A3(2),A0        ; |652| 
           ; BRANCHCC OCCURS {$C$L101}       ; |660| 
;** --------------------------------------------------------------------------*
;** 651	-----------------------    data.interpolation_type = 0u;  // [70]
;** 652	-----------------------    if ( !(C$6 = (*(*this).m_channel_config).axis_number) ) goto g6;  // [70]
;**  	-----------------------    U$49 = (double * const)this+64;
;**  	-----------------------    L$1 = (int)C$6;
;**  	-----------------------    U$44 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ADDAD   .D1     A11,8,A7
           STH     .D2T2   B4,*+SP(282)      ; |651| 
           NOP             2

   [!A0]   BNOP    .S1     $C$L100,5         ; |652| 
|| [ A0]   SUB     .L1     A0,1,A4

           ; BRANCHCC OCCURS {$C$L100}       ; |652| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 653	-----------------------    *U$49++ = *((*this).m_realtime_state+U$44+512);  // [70]
;** 652	-----------------------    U$44 += 8;  // [70]
;** 652	-----------------------    if ( L$1 = L$1-1 ) goto g5;  // [70]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 652
;*      Loop opening brace source line   : 652
;*      Loop closing brace source line   : 654
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     3*       0     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             3*       0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     2        0     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Schedule found with 3 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L97:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;18               ; (P) 
||         MV      .L1     A11,A6
||         MVC     .S2X    A4,ILC

;** --------------------------------------------------------------------------*
$C$L98:    ; PIPED LOOP KERNEL
           LDW     .D1T1   *+A6(16),A3       ; |653| (P) <0,0> 
           NOP             4

           SPMASK          L1
||         MV      .L1X    B4,A8

           ADD     .L1     A8,A3,A3          ; |653| (P) <0,6> 
           ADDK    .S1     512,A3            ; |653| (P) <0,7> 
           LDDW    .D1T1   *A3,A5:A4         ; |653| (P) <0,8>  ^ 
           NOP             2
           ADD     .L1     8,A8,A8           ; |652| (P) <0,11> 
           NOP             1

           SPKERNEL 0,0
||         STDW    .D1T1   A5:A4,*A7++       ; |653| <0,13>  ^ 

;** --------------------------------------------------------------------------*
$C$L99:    ; PIPED LOOP EPILOG
           MV      .S1     A6,A11
           NOP             7
;** --------------------------------------------------------------------------*
$C$L100:    
;**	-----------------------g6:
;** 655	-----------------------    memcpy(K$19, (struct xisMovData *)this+56, 1569u);  // [70]
;** 656	-----------------------    goto g11;  // [70]
           ADDAD   .D1     A11,7,A3          ; |655| 
           MV      .L1X    B10,A4            ; |655| 

           MVK     .S1     0x621,A6          ; |655| 
||         CALLP   .S2     memcpy,B3
||         MV      .L2X    A3,B4             ; |655| 

$C$RL103:  ; CALL OCCURS {memcpy} {0}        ; |655| 
;** --------------------------------------------------------------------------*
           B       .S1     $C$L106           ; |656| 
           CALL    .S1     _ZN9LookAhead9CalcSpeedEP8LineData ; |403| 
           NOP             4
           ; BRANCH OCCURS {$C$L106}         ; |656| 
;** --------------------------------------------------------------------------*
$C$L101:    
;**	-----------------------g7:
;** 661	-----------------------    if ( !(C$5 = (*(*this).m_channel_config).axis_number) ) goto g10;  // [71]
           LDBU    .D1T1   *+A3(2),A0        ; |661| 
           MVK     .S1     512,A3
           ADDAD   .D1     A11,8,A4
           NOP             2

   [!A0]   BNOP    .S1     $C$L105,4         ; |661| 
|| [ A0]   LDW     .D1T2   *+A11(16),B6
|| [ A0]   SUB     .L1     A0,1,A31

   [ A0]   MVC     .S2X    A31,ILC
           ; BRANCHCC OCCURS {$C$L105}       ; |661| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$66 = (*this).m_realtime_state+512;
;**  	-----------------------    U$69 = (double * const)this+64;
;**  	-----------------------    L$2 = (int)C$5;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g9:
;** 663	-----------------------    *U$69++ = *U$66++;  // [71]
;** 661	-----------------------    if ( L$2 = L$2-1 ) goto g9;  // [71]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 661
;*      Loop opening brace source line   : 661
;*      Loop closing brace source line   : 664
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
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L102:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;12               ; (P) 
||         ADD     .L2X    A3,B6,B7

;** --------------------------------------------------------------------------*
$C$L103:    ; PIPED LOOP KERNEL
           LDDW    .D2T2   *B7++,B5:B4       ; |663| (P) <0,0>  ^ 
           NOP             3

           SPMASK          L2
||         MV      .L2X    A4,B6

           STDW    .D2T2   B5:B4,*B6++       ; |663| (P) <0,5>  ^ 
           SPKERNEL 0,1
;** --------------------------------------------------------------------------*
$C$L104:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L105:    
;**	-----------------------g10:
;** 665	-----------------------    data.interpolation_type = 0u;  // [71]
;** 666	-----------------------    memcpy(K$19, (struct xisMovData *)this+56, 1569u);  // [71]
           ADDAD   .D1     A11,7,A3          ; |666| 
           ZERO    .L2     B4                ; |665| 

           CALLP   .S2     memcpy,B3
||         STH     .D2T2   B4,*+SP(282)      ; |665| 
||         MV      .L2X    A3,B4             ; |666| 
||         MV      .L1X    B10,A4            ; |666| 
||         MVK     .S1     0x621,A6          ; |666| 

$C$RL104:  ; CALL OCCURS {memcpy} {0}        ; |666| 
           CALL    .S1     _ZN9LookAhead9CalcSpeedEP8LineData ; |403| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L106:    
;**	-----------------------g11:
;** 403	-----------------------    C$4 = (double * const)line_data+1368;
;** 403	-----------------------    *C$4 = LookAhead::CalcSpeed(this, line_data);
;** 406	-----------------------    LookAhead::AngleSpeed(this, &data, line_data);
;** 379	-----------------------    K$76 = line_data;  // [73]
;** 379	-----------------------    Q$1 = 310;  // [73]
;** 379	-----------------------    *((double * const)line_data+1376) = *C$4;  // [73]
;** 384	-----------------------    goto g16;  // [73]

           MV      .L2X    A12,B4            ; |403| 
||         MV      .L1     A11,A4            ; |403| 
||         ADDKPC  .S2     $C$RL105,B3,0     ; |403| 

$C$RL105:  ; CALL OCCURS {_ZN9LookAhead9CalcSpeedEP8LineData} {0}  ; |403| 
;** --------------------------------------------------------------------------*
           MVK     .S1     1368,A3           ; |403| 
           ADD     .L1     A3,A12,A10        ; |403| 

           CALLP   .S2     _ZN9LookAhead10AngleSpeedEPK8LineDataPS0_,B3
||         STDW    .D1T1   A5:A4,*A10        ; |403| 
||         MV      .L1     A11,A4            ; |406| 
||         ADD     .L2     8,SP,B4           ; |406| 
||         MV      .S1     A12,A6            ; |406| 

$C$RL106:  ; CALL OCCURS {_ZN9LookAhead10AngleSpeedEPK8LineDataPS0_} {0}  ; |406| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L108,2         ; |384| 
||         LDDW    .D1T1   *A10,A5:A4        ; |379| 
||         MVK     .S2     1376,B4           ; |379| 

           ADD     .L1X    B4,A12,A3         ; |379| 
           MVK     .S2     0x136,B4          ; |423| 
           STDW    .D1T1   A5:A4,*A3         ; |379| 
           ; BRANCH OCCURS {$C$L108}         ; |384| 
;** --------------------------------------------------------------------------*
$C$L107:    
;**	-----------------------g12:
;** 423	-----------------------    K$76 = line_data;
;** 423	-----------------------    Q$2 = 172;
;** 423	-----------------------    Q$1 = 310;
;** 423	-----------------------    K$79 = (double *)K$76+1368;
;** 423	-----------------------    *K$79 = LookAhead::CalcSpeed(this, K$76);
;** 426	-----------------------    speed = LookAhead::AngleSpeed(this, pre_data, K$76);
;** 427	-----------------------    K$88 = (double * const)pre_data+1376;
;** 427	-----------------------    if ( *K$88 <= speed ) goto g14;
;** 379	-----------------------    *K$88 = speed;  // [73]
;**	-----------------------g14:
;** 379	-----------------------    *((Q$2<<3)+(double *)K$76) = *K$79;  // [73]
;** 435	-----------------------    C$3 = *K$79;
;** 435	-----------------------    if ( *K$88 <= C$3 ) goto g16;
;** 379	-----------------------    *K$88 = C$3;  // [73]
           MV      .L1     A11,A4            ; |423| 
           ADDKPC  .S2     $C$RL107,B3,0     ; |423| 
$C$RL107:  ; CALL OCCURS {_ZN9LookAhead9CalcSpeedEP8LineData} {0}  ; |423| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A5,B5             ; |423| 
           MV      .L2X    A4,B4             ; |423| 
           STDW    .D1T2   B5:B4,*A10        ; |423| 

           CALLP   .S2     _ZN9LookAhead10AngleSpeedEPK8LineDataPS0_,B3
||         LDW     .D2T2   *+SP(3824),B4     ; |426| 
||         MV      .L1     A11,A4            ; |426| 
||         MV      .S1X    B13,A6

$C$RL108:  ; CALL OCCURS {_ZN9LookAhead10AngleSpeedEPK8LineDataPS0_} {0}  ; |426| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *B11,B5:B4        ; |427| 
           MVK     .S1     0xac,A3           ; |423| 
           NOP             3
           CMPGTDP .S2X    B5:B4,A5:A4,B0    ; |427| 
           NOP             1
   [ B0]   STDW    .D2T1   A5:A4,*B11        ; |379| 
           LDDW    .D1T1   *A10,A5:A4        ; |379| 
           NOP             4
           STDW    .D1T1   A5:A4,*+A12[A3]   ; |379| 

           LDDW    .D2T2   *B11,B5:B4        ; |435| 
||         LDDW    .D1T1   *A10,A5:A4        ; |435| 

           NOP             4
           CMPGTDP .S1X    B5:B4,A5:A4,A0    ; |435| 
           MVK     .S2     0x136,B4          ; |423| 
   [ A0]   STDW    .D2T1   A5:A4,*B11        ; |379| 
;** --------------------------------------------------------------------------*
$C$L108:    
;**	-----------------------g16:
;** 442	-----------------------    (*this).m_dist_len = (*this).m_dist_len+*((Q$1<<3)+(double *)K$76);
;**  	-----------------------    return;

           LDDW    .D1T1   *+A11(32),A5:A4   ; |442| 
||         LDDW    .D2T2   *+B13[B4],B5:B4   ; |442| 

           ADDK    .S2     3840,SP           ; |443| 
           NOP             3
           ADDDP   .L1X    B5:B4,A5:A4,A5:A4 ; |442| 
           NOP             6
           STDW    .D1T1   A5:A4,*+A11(32)   ; |442| 
           LDW     .D2T2   *++SP(8),B3       ; |443| 
           LDDW    .D2T1   *++SP,A13:A12     ; |443| 
           LDDW    .D2T1   *++SP,A15:A14     ; |443| 
           LDDW    .D2T2   *++SP,B11:B10     ; |443| 
           LDDW    .D2T2   *++SP,B13:B12     ; |443| 

           LDW     .D2T1   *++SP(8),A10      ; |443| 
||         RET     .S2     B3                ; |443| 

           LDW     .D2T1   *++SP(8),A11      ; |443| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |443| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead25InsertDataToInterpolationEP8LineData

;******************************************************************************
;* FUNCTION NAME: LookAhead::InsertDataToInterpolation(LineData *)            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,DP,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************
_ZN9LookAhead25InsertDataToInterpolationEP8LineData:
;** --------------------------------------------------------------------------*
;** 110	-----------------------    if ( data == NULL ) goto g4;

           STW     .D2T2   B10,*SP--(8)      ; |109| 
||         MV      .L1X    B4,A0             ; |109| 

           STDW    .D2T1   A13:A12,*SP--     ; |109| 
|| [!A0]   B       .S1     $C$L109           ; |110| 

   [ A0]   CALL    .S1     _ZN13Interpolation23InsertInterpolationDataEP8LineData ; |117| 
||         STDW    .D2T1   A11:A10,*SP--     ; |109| 
||         MV      .L1     A4,A10            ; |109| 

   [ A0]   LDW     .D1T1   *A10,A4           ; |117| 
           MVK     .S2     270,B10           ; |120| 
           MV      .L1X    B3,A13            ; |109| 
           MV      .L1X    B4,A11            ; |109| 
           ; BRANCHCC OCCURS {$C$L109}       ; |110| 
;** --------------------------------------------------------------------------*
;** 117	-----------------------    Interpolation::InsertInterpolationData((*this).m_interpolator, data);
;** 120	-----------------------    if ( !(*data).interpolation_flag ) goto g4;
           ADDKPC  .S2     $C$RL109,B3,0     ; |117| 
$C$RL109:  ; CALL OCCURS {_ZN13Interpolation23InsertInterpolationDataEP8LineData} {0}  ; |117| 
;** --------------------------------------------------------------------------*

           ADDAD   .D1     A10,7,A4          ; |122| 
||         MVK     .L1     1,A11             ; |123| 
||         MV      .L2X    A11,B4            ; |117| 

           LDBU    .D2T2   *+B4[B10],B0      ; |120| 
           MVK     .S2     1432,B5           ; |122| 
           MVK     .S1     1376,A3           ; |121| 
           MVK     .S1     48,A12            ; |123| 

           ADD     .L2X    A3,B4,B5          ; |121| 
||         ADD     .S2     B5,B4,B4          ; |122| 

   [!B0]   B       .S1     $C$L110           ; |120| 
|| [!B0]   MV      .L2X    A13,B3            ; |125| 
|| [ B0]   LDDW    .D2T2   *B5,B7:B6         ; |121| 

   [ B0]   CALL    .S1     memcpy            ; |122| 
|| [!B0]   LDDW    .D2T1   *++SP,A11:A10     ; |125| 

   [!B0]   RET     .S2     B3                ; |125| 
|| [!B0]   LDDW    .D2T1   *++SP,A13:A12     ; |125| 

   [!B0]   LDW     .D2T2   *++SP(8),B10      ; |125| 
           MVK     .S1     0x621,A6          ; |122| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L110}       ; |120| 
;** --------------------------------------------------------------------------*
;** 121	-----------------------    (*this).m_last_speed = *((double * const)data+1376);
;** 122	-----------------------    memcpy((struct xisMovData *)this+56, (struct xisMovData *)data+1432, 1569u);
;** 123	-----------------------    (*this).m_has_position = 1;
;**	-----------------------g4:
;**  	-----------------------    return;

           STDW    .D1T2   B7:B6,*+A10(24)   ; |121| 
||         ADDKPC  .S2     $C$RL110,B3,0     ; |122| 

$C$RL110:  ; CALL OCCURS {memcpy} {0}        ; |122| 
;** --------------------------------------------------------------------------*
           STB     .D1T1   A11,*+A10[A12]    ; |123| 
;** --------------------------------------------------------------------------*
$C$L109:    

           LDDW    .D2T1   *++SP,A11:A10     ; |125| 
||         MV      .L2X    A13,B3            ; |125| 

           LDDW    .D2T1   *++SP,A13:A12     ; |125| 
||         RET     .S2     B3                ; |125| 

           LDW     .D2T2   *++SP(8),B10      ; |125| 
           NOP             2
;** --------------------------------------------------------------------------*
$C$L110:    
           NOP             2
           ; BRANCH OCCURS {B3}              ; |125| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead16GetLookAheadDataEsb

;******************************************************************************
;* FUNCTION NAME: LookAhead::GetLookAheadData(short, bool)                    *
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
_ZN9LookAhead16GetLookAheadDataEsb:
;** --------------------------------------------------------------------------*
;** 447	-----------------------    if ( len <= 0 ) goto g58;

           STW     .D2T1   A11,*SP--(8)      ; |446| 
||         CMPGT   .L2     B4,0,B0           ; |447| 

           STW     .D2T1   A10,*SP--(8)      ; |446| 
|| [ B0]   MV      .L1     A4,A3

           STDW    .D2T2   B13:B12,*SP--     ; |446| 
||         MV      .L2     B4,B12            ; |446| 

           STDW    .D2T2   B11:B10,*SP--     ; |446| 

           STDW    .D2T1   A15:A14,*SP--     ; |446| 
|| [!B0]   B       .S1     $C$L132           ; |447| 
||         ZERO    .L1     A15               ; |458| 

           STDW    .D2T1   A13:A12,*SP--     ; |446| 
           STW     .D2T2   B3,*SP--(24)      ; |446| 
           STW     .D2T2   B4,*+SP(8)        ; |446| 
           STW     .D2T1   A6,*+SP(12)       ; |446| 
           STW     .D2T1   A4,*+SP(4)        ; |446| 
           ; BRANCHCC OCCURS {$C$L132}       ; |447| 
;** --------------------------------------------------------------------------*
;** 455	-----------------------    v0 = (*this).m_last_speed;
;**  	-----------------------    L$1 = (int)len;
;** 458	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           LDDW    .D1T1   *+A3(24),A5:A4    ; |455| 
           NOP             4
           MV      .L2X    A4,B11            ; |455| 
           MV      .L2X    A5,B10            ; |455| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(4),A3
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L111:    
;**	-----------------------g3:
;** 459	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 341	-----------------------    pointer = NULL;  // [90]
;** 343	-----------------------    if ( (short)i < 0 ) goto g7;  // [90]
           NOP             1
           LDW     .D1T1   *+A3(4),A10       ; |459| 
           NOP             3
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
           LDW     .D1T1   *+A10(20),A4      ; |339| 
           ADDKPC  .S2     $C$RL111,B3,3     ; |339| 
$C$RL111:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*

           EXT     .S1     A15,16,16,A3      ; |343| 
||         MV      .L2X    A4,B4             ; |339| 
||         ZERO    .L1     A14               ; |341| 

           CMPLT   .L1     A3,0,A0           ; |343| 

   [ A0]   BNOP    .S2     $C$L113,3         ; |343| 
|| [!A0]   LDW     .D1T1   *+A10(8),A3       ; |343| 
||         MV      .L1     A0,A2             ; |343| branch predicate copy
|| [!A0]   EXT     .S1     A15,16,16,A4      ; |343| 

   [ A2]   CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |350| 

           CMPLT   .L1     A4,A3,A0          ; |343| 
|| [ A2]   LDW     .D1T1   *+A10(20),A4      ; |350| 

           ; BRANCHCC OCCURS {$C$L113}       ; |343| 
;** --------------------------------------------------------------------------*
;** 343	-----------------------    if ( (short)i >= (*this).m_buffer_cur_length ) goto g7;  // [90]

   [ A0]   LDW     .D1T1   *+A10(4),A4       ; |345| 
|| [ A0]   MVK     .S2     3816,B5           ; |344| 
|| [ A0]   MVK     .S1     3816,A5           ; |345| 

   [!A0]   B       .S1     $C$L112           ; |343| 
   [ A0]   LDW     .D1T1   *+A10(16),A6      ; |344| 
   [ A0]   LDW     .D1T1   *A10,A3           ; |345| 
   [ A0]   MPYUS   .M1X    B5,A15,A31        ; |344| 
           MPYLI   .M1     A5,A4,A5:A4       ; |345| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L112}       ; |343| 
;** --------------------------------------------------------------------------*
;** 344	-----------------------    pointer = (short)i*3816+(*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$16 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$16) ) goto g7;  // [90]
;** 346	-----------------------    pointer -= (int)_lo(C$16);  // [90]
           ADD     .L1     A6,A31,A14        ; |344| 
           NOP             1
           ADD     .L1     A4,A3,A3          ; |345| 
           CMPLTU  .L1     A14,A3,A0         ; |345| 
   [!A0]   SUB     .L1     A14,A4,A14        ; |346| 
;** --------------------------------------------------------------------------*
$C$L112:    
           CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |350| 
           LDW     .D1T1   *+A10(20),A4      ; |350| 
;** --------------------------------------------------------------------------*
$C$L113:    
;**	-----------------------g7:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 352	-----------------------    data = pointer;  // [90]
;** 460	-----------------------    U$46 = *((double *)pointer+2480);
;** 460	-----------------------    if ( !(((*data).interpolation_flag != 0)&(U$46 >= 1.00000000000000002092e-8)) ) goto g12;
           ADDKPC  .S2     $C$RL112,B3,3     ; |350| 
$C$RL112:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MVK     .S1     2480,A3           ; |460| 
||         MVKL    .S2     0xe2308c3a,B4

           ADD     .L1     A3,A14,A3         ; |460| 
||         MVK     .S1     270,A31           ; |460| 
||         MVKL    .S2     0x3e45798e,B5

           LDDW    .D1T1   *A3,A11:A10       ; |460| 
           LDBU    .D1T1   *+A14[A31],A3     ; |460| 
           MVKH    .S2     0xe2308c3a,B4
           MVKH    .S2     0x3e45798e,B5
           NOP             1
           CMPLTDP .S1X    A11:A10,B5:B4,A4  ; |460| 
           CMPEQ   .L1     A3,0,A3           ; |460| 

           OR      .L1     A3,A4,A0
||         MVK     .S1     1376,A3           ; |466| 

   [ A0]   B       .S1     $C$L115           ; |460| 
||         ADD     .L1     A3,A14,A3         ; |466| 
|| [ A0]   MVK     .S2     1376,B4           ; |461| 
|| [ A0]   MV      .D1X    B10,A7            ; |461| 

   [!A0]   LDDW    .D1T1   *A3,A13:A12       ; |466| 
|| [ A0]   MV      .L1X    B11,A6            ; |461| 
|| [ A0]   MVK     .S1     2480,A4           ; |462| 

   [ A0]   ADD     .S1X    B4,A14,A3         ; |461| 
|| [ A0]   ADD     .D1     A4,A14,A31        ; |462| 
|| [ A0]   ZERO    .L1     A5:A4             ; |462| 

   [ A0]   STDW    .D1T1   A7:A6,*A3         ; |461| 
|| [!A0]   MV      .L1X    B10,A5

   [!A0]   MV      .L1X    B11,A4
   [ A0]   STDW    .D1T1   A5:A4,*A31        ; |462| 
           ; BRANCHCC OCCURS {$C$L115}       ; |460| 
;** --------------------------------------------------------------------------*
;** 466	-----------------------    v1 = *((double *)pointer+1376);
;** 467	-----------------------    U$53 = (double *)pointer+1376;
;** 467	-----------------------    if ( v0 >= v1 ) goto g11;

           CMPLTDP .S1     A5:A4,A13:A12,A0  ; |467| 
||         MVK     .S2     1376,B4           ; |467| 

           ADD     .L2X    B4,A14,B13        ; |467| 

   [!A0]   MVK     .S1     1376,A3           ; |475| 
|| [ A0]   ZERO    .L2     B5

   [!A0]   ADD     .L1     A3,A14,A3         ; |475| 
|| [!A0]   B       .S1     $C$L114           ; |467| 

   [!A0]   LDDW    .D1T1   *A3,A5:A4         ; |475| 
   [ A0]   CALL    .S1     pow               ; |468| 
   [!A0]   BNOP    .S1     $C$L116,2         ; |475| 
           ; BRANCHCC OCCURS {$C$L114}       ; |467| 
;** --------------------------------------------------------------------------*
;** 468	-----------------------    vmax = sqrt(pow(v0, 2.0)+(U$46+U$46)*(*data).acc);
;** 471	-----------------------    if ( vmax >= v1 ) goto g11;
;** 379	-----------------------    *U$53 = vmax;  // [73]
           ADDKPC  .S2     $C$RL113,B3,0     ; |468| 

           SET     .S2     B5,0x1e,0x1e,B5
||         ZERO    .L2     B4                ; |468| 

$C$RL113:  ; CALL OCCURS {pow} {0}           ; |468| 
;** --------------------------------------------------------------------------*
           MVK     .S1     3784,A3           ; |468| 
           ADDDP   .L1     A11:A10,A11:A10,A7:A6 ; |468| 
           ADD     .S1     A3,A14,A3         ; |468| 
           LDDW    .D1T1   *A3,A9:A8         ; |468| 
           NOP             4
           MPYDP   .M1     A9:A8,A7:A6,A7:A6 ; |468| 
           NOP             9
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |468| 
           CALLP   .S2     sqrt,B3
$C$RL114:  ; CALL OCCURS {sqrt} {0}          ; |468| 
;** --------------------------------------------------------------------------*
           CMPLTDP .S1     A5:A4,A13:A12,A0  ; |471| 
           NOP             1
           MVK     .S1     1376,A3           ; |475| 

   [ A0]   STDW    .D2T1   A5:A4,*B13        ; |379| 
||         ADD     .L1     A3,A14,A3         ; |475| 

           LDDW    .D1T1   *A3,A5:A4         ; |475| 
           NOP             1
           BNOP    .S1     $C$L116,2         ; |475| 
;** --------------------------------------------------------------------------*
$C$L114:    
;**	-----------------------g11:
;** 475	-----------------------    v0 = *((double *)data+1376);
;** 475	-----------------------    goto g13;

           SUB     .L1X    B12,1,A0          ; |458| 
||         SUB     .L2     B12,1,B12         ; |458| 
||         ADD     .S1     1,A15,A15         ; |458| 
||         MV      .S2X    A5,B10            ; |475| 

   [ A0]   BNOP    .S1     $C$L111,1         ; |458| 
||         MV      .L2X    A4,B11            ; |475| 

           ; BRANCH OCCURS {$C$L116}         ; |475| 
;** --------------------------------------------------------------------------*
$C$L115:    
;**	-----------------------g12:
;** 461	-----------------------    C$15 = (double *)data;
;** 461	-----------------------    C$15[172] = v0;
;** 462	-----------------------    C$15[310] = 0.0;
;** --------------------------------------------------------------------------*
           SUB     .L1X    B12,1,A0          ; |458| 
   [ A0]   B       .S1     $C$L111           ; |458| 

           SUB     .L2     B12,1,B12         ; |458| 
||         ADD     .L1     1,A15,A15         ; |458| 

;** --------------------------------------------------------------------------*
$C$L116:    
;**	-----------------------g13:
;** 458	-----------------------    ++i;
;** 458	-----------------------    if ( L$1 = L$1-1 ) goto g3;
   [ A0]   LDW     .D2T1   *+SP(4),A3
           NOP             3
           ; BRANCHCC OCCURS {$C$L111}       ; |458| 
;** --------------------------------------------------------------------------*
;** 480	-----------------------    temp_data = CircularBuffer<LineData>::ReadDataPtr((*this).m_data_buffer, (short)(len-1));
;** --------------------------------------------------------------------------*
;** 479	-----------------------    find_index = 1;
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
           LDW     .D2T1   *+SP(4),A3
           LDW     .D2T1   *+SP(8),A31       ; |480| 
           NOP             4

           LDW     .D1T1   *+A3(4),A4        ; |480| 
||         SUB     .L1     A31,1,A3          ; |480| 

           EXT     .S1     A3,16,16,A3       ; |480| 
           NOP             1

           CALLP   .S2     _ZN14CircularBufferI8LineDataE11ReadDataPtrEs,B3
||         MV      .L2X    A3,B4             ; |480| 

$C$RL115:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE11ReadDataPtrEs} {0}  ; |480| 
;** --------------------------------------------------------------------------*
           MVKL    .S2     0x3e45798e,B5

           MVK     .S1     1376,A3           ; |481| 
||         MVK     .S2     1104,B4           ; |481| 

           MVKH    .S2     0x3e45798e,B5
||         LDW     .D2T1   *+SP(8),A6        ; |481| 
||         MVK     .L1     0x1,A10           ; |479| 
||         MVK     .S1     270,A5            ; |481| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L117:    
;**	-----------------------g15:
;** 481	-----------------------    U$85 = temp_data+1376;
;** 481	-----------------------    U$88 = *((double *)U$85+1104);
;** 481	-----------------------    if ( ((*temp_data).interpolation_flag != 0)&(U$88 >= 1.00000000000000002092e-8)|(find_index >= len) ) goto g21;
           ADD     .L1     A3,A4,A3          ; |481| 
           LDBU    .D1T1   *+A4[A5],A5       ; |481| 
           ADD     .L2X    B4,A3,B4          ; |481| 
           LDDW    .D2T2   *B4,B7:B6         ; |481| 
           MVKL    .S2     0xe2308c3a,B4
           MVKH    .S2     0xe2308c3a,B4
           CMPEQ   .L1     A5,0,A5           ; |481| 
           NOP             1
           CMPLTDP .S2     B7:B6,B5:B4,B4    ; |481| 
           NOP             2

           OR      .S1X    A5,B4,A6
||         CMPLT   .L1     A10,A6,A5         ; |481| 

           AND     .L1     A6,A5,A0

   [ A0]   LDW     .D2T1   *+SP(4),A3
|| [!A0]   B       .S1     $C$L118           ; |481| 

   [!A0]   LDW     .D2T1   *+SP(8),A7        ; |487| 
   [!A0]   MVK     .S1     3784,A6           ; |489| 
   [!A0]   ADD     .L1     1,A10,A5          ; |492| 
           NOP             1
   [ A0]   LDW     .D1T1   *+A3(4),A15       ; |484| 
           ; BRANCHCC OCCURS {$C$L118}       ; |481| 
;** --------------------------------------------------------------------------*
;** 484	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 341	-----------------------    pointer = NULL;  // [90]
;** 343	-----------------------    if ( (C$14 = (short)(len-(++find_index))) < 0 ) goto g20;  // [90]
;** 343	-----------------------    if ( C$14 >= (*this).m_buffer_cur_length ) goto g20;  // [90]
;** 344	-----------------------    pointer = C$14*3816+(*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$13 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$13) ) goto g20;  // [90]
;** 346	-----------------------    pointer -= (int)_lo(C$13);  // [90]
;**	-----------------------g20:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 352	-----------------------    temp_data = pointer;  // [90]
;** 352	-----------------------    goto g15;  // [90]
           NOP             3
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
           LDW     .D1T1   *+A15(20),A4      ; |339| 
           ADDKPC  .S2     $C$RL116,B3,3     ; |339| 
$C$RL116:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(8),A3        ; |343| 
           ADD     .L1     1,A10,A10         ; |343| 
           MV      .L2X    A4,B4             ; |350| 
           LDW     .D1T1   *+A15(20),A4      ; |350| 
           NOP             1
           SUB     .L1     A3,A10,A3         ; |343| 
           EXT     .S1     A3,16,16,A11      ; |343| 
           CMPLT   .L1     A11,0,A3          ; |343| 
           MV      .L1     A3,A0             ; |343| 

           MV      .L2X    A3,B11            ; |343| 
|| [!A0]   LDW     .D1T1   *+A15(8),A3       ; |343| 

   [ A0]   ZERO    .L2     B10
           NOP             3
   [!A0]   CMPLT   .L1     A11,A3,A3         ; |343| 
           NOP             1
   [!A0]   MV      .L2X    A3,B10            ; |343| 
           NOP             1
           MV      .L1X    B10,A0            ; |343| 
   [ A0]   LDW     .D1T1   *A15,A14          ; |345| 
   [ A0]   LDW     .D1T1   *+A15(4),A13      ; |345| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
|| [ A0]   LDW     .D1T1   *+A15(16),A15     ; |344| 

$C$RL117:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MVK     .S1     3816,A3           ; |345| 
||         MV      .L1X    B10,A0            ; |345| 
||         ZERO    .D1     A4                ; |341| 
||         MV      .L2     B10,B0
||         MV      .S2     B11,B2            ; |345| 
||         MV      .D2     B10,B1            ; |345| 

   [ A0]   MPYLI   .M1     A3,A13,A13:A12    ; |345| 
|| [ B2]   MVK     .L1     0x1,A0
||         MV      .D1X    B11,A2
||         MVKL    .S2     0x3e45798e,B5
||         LDW     .D2T1   *+SP(8),A6        ; |481| 
||         MVK     .S1     270,A5            ; |481| 

           MV      .L2X    A3,B4             ; |345| 
           MVKH    .S2     0x3e45798e,B5

           MPYUS   .M1X    B4,A11,A3         ; |344| 
||         MVK     .S2     1104,B4           ; |481| 

           B       .S1     $C$L117           ; |352| 

   [ B0]   ADD     .L1     A15,A3,A4         ; |344| 
|| [ B0]   ADD     .S1     A12,A14,A3        ; |345| 

   [ B1]   CMPLTU  .L1     A4,A3,A1          ; |345| 
||         MVK     .S1     1376,A3           ; |481| 

   [!A0]   MVK     .L1     0x1,A1
   [ A2]   MVK     .L1     0x1,A1
   [!A1]   SUB     .L1     A4,A12,A4         ; |346| 
           ; BRANCH OCCURS {$C$L117}         ; |352| 
;** --------------------------------------------------------------------------*
$C$L118:    
;**	-----------------------g21:
;** 486	-----------------------    v0 = *(double *)U$85;
;** 487	-----------------------    dist_len = U$88;
;** 489	-----------------------    acc0 = (*temp_data).acc;
;** 492	-----------------------    if ( (i = len-(++find_index)) < 0 ) goto g35;

           SUB     .L1     A7,A5,A15         ; |492| 
||         LDDW    .D1T1   *A3,A11:A10       ; |486| 
||         ADD     .S1     A6,A4,A3          ; |489| 
||         MV      .L2     B7,B12            ; |487| 
||         MV      .S2     B6,B13            ; |487| 

           CMPLT   .L1     A15,0,A0          ; |492| 
||         LDDW    .D1T2   *A3,B11:B10       ; |489| 
||         LDW     .D2T1   *+SP(4),A3

   [ A0]   BNOP    .S1     $C$L124,4         ; |492| 
   [!A0]   LDW     .D1T1   *+A3(4),A12       ; |493| 
           ; BRANCHCC OCCURS {$C$L124}       ; |492| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    #pragma MUST_ITERATE(1, 18446744073709551615, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L119:    
;**	-----------------------g23:
;** 493	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 341	-----------------------    pointer = NULL;  // [90]
;** 343	-----------------------    if ( (short)i < 0 ) goto g27;  // [90]
           NOP             3
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
           LDW     .D1T1   *+A12(20),A4      ; |339| 
           ADDKPC  .S2     $C$RL118,B3,3     ; |339| 
$C$RL118:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*

           EXT     .S1     A15,16,16,A3      ; |343| 
||         MV      .L2X    A4,B4             ; |339| 
||         ZERO    .L1     A14               ; |341| 

           CMPLT   .L1     A3,0,A0           ; |343| 

   [ A0]   BNOP    .S2     $C$L121,3         ; |343| 
|| [!A0]   LDW     .D1T1   *+A12(8),A3       ; |343| 
||         MV      .L1     A0,A2             ; |343| branch predicate copy
|| [!A0]   EXT     .S1     A15,16,16,A4      ; |343| 

   [ A2]   CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |350| 

           CMPLT   .L1     A4,A3,A0          ; |343| 
|| [ A2]   LDW     .D1T1   *+A12(20),A4      ; |350| 

           ; BRANCHCC OCCURS {$C$L121}       ; |343| 
;** --------------------------------------------------------------------------*
;** 343	-----------------------    if ( (short)i >= (*this).m_buffer_cur_length ) goto g27;  // [90]

   [ A0]   LDW     .D1T1   *+A12(4),A4       ; |345| 
|| [ A0]   MVK     .S2     3816,B5           ; |344| 
|| [ A0]   MVK     .S1     3816,A5           ; |345| 

   [!A0]   B       .S1     $C$L120           ; |343| 
   [ A0]   LDW     .D1T1   *+A12(16),A6      ; |344| 
   [ A0]   LDW     .D1T1   *A12,A3           ; |345| 
   [ A0]   MPYUS   .M1X    B5,A15,A31        ; |344| 
           MPYLI   .M1     A5,A4,A5:A4       ; |345| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L120}       ; |343| 
;** --------------------------------------------------------------------------*
;** 344	-----------------------    pointer = (short)i*3816+(*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$12 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$12) ) goto g27;  // [90]
;** 346	-----------------------    pointer -= (int)_lo(C$12);  // [90]
           ADD     .L1     A6,A31,A14        ; |344| 
           NOP             1
           ADD     .L1     A4,A3,A3          ; |345| 
           CMPLTU  .L1     A14,A3,A0         ; |345| 
   [!A0]   SUB     .L1     A14,A4,A14        ; |346| 
;** --------------------------------------------------------------------------*
$C$L120:    
           CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |350| 
           LDW     .D1T1   *+A12(20),A4      ; |350| 
;** --------------------------------------------------------------------------*
$C$L121:    
;**	-----------------------g27:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 352	-----------------------    data = pointer;  // [90]
;** 495	-----------------------    C$9 = (double *)data+2480;
;** 495	-----------------------    C$11 = (*data).interpolation_flag;
;** 495	-----------------------    if ( !((C$11 != 0)&(*C$9 >= 1.00000000000000002092e-8)) ) goto g34;
           ADDKPC  .S2     $C$RL119,B3,3     ; |350| 
$C$RL119:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MVK     .S1     2480,A3           ; |495| 
||         MVKL    .S2     0xe2308c3a,B4

           ADD     .L1     A3,A14,A4         ; |495| 
||         MVK     .S1     270,A31           ; |495| 
||         MVKL    .S2     0x3e45798e,B5

           LDDW    .D1T1   *A4,A7:A6         ; |495| 
           LDBU    .D1T1   *+A14[A31],A0     ; |495| 
           MVKH    .S2     0xe2308c3a,B4
           MVKH    .S2     0x3e45798e,B5
           NOP             1
           CMPLTDP .S1X    A7:A6,B5:B4,A5    ; |495| 
           CMPEQ   .L1     A0,0,A3           ; |495| 

           OR      .L1     A3,A5,A1
||         MVK     .S1     1376,A3           ; |497| 

   [ A1]   B       .S1     $C$L123           ; |495| 
||         ADD     .L1     A3,A14,A3         ; |497| 

   [!A1]   LDDW    .D1T1   *A3,A13:A12       ; |497| 
   [ A1]   CMPLT   .L1     A15,1,A0          ; |492| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L123}       ; |495| 
;** --------------------------------------------------------------------------*
;** 497	-----------------------    C$10 = (double *)data+1376;
;** 497	-----------------------    v1 = *C$10;
;** 498	-----------------------    if ( C$11 ) goto g30;
;** 499	-----------------------    *C$10 = v0;
;** 500	-----------------------    *C$9 = 0.0;
;**	-----------------------g30:
;** 503	-----------------------    if ( v0 >= v1 ) goto g33;

           CMPLTDP .S1     A11:A10,A13:A12,A1 ; |503| 
|| [!A0]   STDW    .D1T1   A11:A10,*A3       ; |499| 
|| [!A0]   ZERO    .L1     A7:A6             ; |500| 

   [!A0]   STDW    .D1T1   A7:A6,*A4         ; |500| 

   [!A1]   BNOP    .S1     $C$L122,1         ; |503| 
|| [ A1]   ZERO    .L2     B5

   [ A1]   CALL    .S1     pow               ; |504| 
   [!A1]   MVK     .S1     2480,A3           ; |510| 
   [!A1]   MVK     .S1     1376,A4           ; |508| 
   [!A1]   ADD     .L1     A3,A14,A3         ; |510| 
           ; BRANCHCC OCCURS {$C$L122}       ; |503| 
;** --------------------------------------------------------------------------*
;** 504	-----------------------    vmax = sqrt(pow(v0, 2.0)+(dist_len+dist_len)*acc0);
;** 505	-----------------------    if ( vmax >= v1 ) goto g33;
;** 379	-----------------------    *((double *)data+1376) = vmax;  // [73]
           ADDKPC  .S2     $C$RL120,B3,0     ; |504| 

           SET     .S2     B5,0x1e,0x1e,B5
||         MV      .L1     A11,A5            ; |504| 
||         MV      .S1     A10,A4            ; |504| 
||         ZERO    .L2     B4                ; |504| 

$C$RL120:  ; CALL OCCURS {pow} {0}           ; |504| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B12,A9            ; |504| 
           MV      .L1X    B13,A8            ; |504| 
           MV      .L1X    B12,A7            ; |504| 
           MV      .L1X    B13,A6            ; |504| 
           ADDDP   .L1     A7:A6,A9:A8,A7:A6 ; |504| 
           NOP             7
           MPYDP   .M2X    B11:B10,A7:A6,B5:B4 ; |504| 
           NOP             9
           NOP             1
           ADDDP   .L1X    B5:B4,A5:A4,A5:A4 ; |504| 
           CALLP   .S2     sqrt,B3
$C$RL121:  ; CALL OCCURS {sqrt} {0}          ; |504| 
;** --------------------------------------------------------------------------*
           MVK     .S1     1376,A3           ; |379| 
           CMPLTDP .S1     A5:A4,A13:A12,A0  ; |505| 
           ADD     .L1     A3,A14,A3         ; |379| 

           MVK     .S1     2480,A3           ; |510| 
|| [ A0]   STDW    .D1T1   A5:A4,*A3         ; |379| 

           ADD     .L1     A3,A14,A3         ; |510| 
||         MVK     .S1     1376,A4           ; |508| 

;** --------------------------------------------------------------------------*
$C$L122:    
;**	-----------------------g33:
;** 508	-----------------------    C$8 = (double *)data;
;** 508	-----------------------    v0 = C$8[172];
;** 509	-----------------------    acc0 = (*data).acc;
;** 510	-----------------------    dist_len = C$8[310];

           CMPLT   .L1     A15,1,A0          ; |492| 
||         LDDW    .D1T1   *A3,A5:A4         ; |510| 
||         ADD     .S1     A4,A14,A3         ; |508| 

           MVK     .S2     3784,B4           ; |509| 
           LDDW    .D1T1   *A3,A11:A10       ; |508| 
           ADD     .L2X    B4,A14,B4         ; |509| 
           LDDW    .D2T2   *B4,B11:B10       ; |509| 
           MV      .L2X    A4,B13            ; |510| 
           MV      .L2X    A5,B12            ; |510| 
;** --------------------------------------------------------------------------*
$C$L123:    
;**	-----------------------g34:
;** 492	-----------------------    if ( (--i) >= 0 ) goto g23;

   [!A0]   BNOP    .S1     $C$L119,4         ; |492| 
|| [!A0]   LDW     .D2T1   *+SP(4),A3

   [!A0]   LDW     .D1T1   *+A3(4),A12       ; |493| 
||         SUB     .L1     A15,1,A15         ; |492| 

           ; BRANCHCC OCCURS {$C$L119}       ; |492| 
;** --------------------------------------------------------------------------*
$C$L124:    
;**	-----------------------g35:
;** 514	-----------------------    if ( len <= 0 ) goto g49;
           LDW     .D2T1   *+SP(8),A3
           NOP             4

           CMPGT   .L1     A3,0,A0           ; |514| 
||         MV      .S1     A3,A12            ; |514| 
||         LDW     .D2T1   *+SP(4),A3

   [!A0]   BNOP    .S1     $C$L129,3         ; |514| 
   [ A0]   LDW     .D1T1   *+A3(4),A13       ; |515| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L129}       ; |514| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    L$3 = (int)len;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L125:    
;**	-----------------------g37:
;** 515	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 343	-----------------------    if ( (*this).m_buffer_cur_length <= 0 ) goto g40;  // [90]
;** 344	-----------------------    pointer = (*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$7 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$7) ) goto g41;  // [90]
           NOP             2
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
           LDW     .D1T1   *+A13(20),A4      ; |339| 
           ADDKPC  .S2     $C$RL122,B3,3     ; |339| 
$C$RL122:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*
;** 346	-----------------------    pointer -= (int)_lo(C$7);  // [90]
;** 346	-----------------------    goto g41;  // [90]
;**	-----------------------g40:
;** 341	-----------------------    pointer = NULL;  // [90]
;**	-----------------------g41:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 110	-----------------------    if ( pointer == NULL ) goto g44;  // [47]
           LDW     .D1T1   *+A13(8),A3       ; |343| 
           MV      .L2X    A4,B4             ; |339| 
           MVK     .S1     3816,A4           ; |345| 
           NOP             2
           CMPGT   .L1     A3,0,A0           ; |343| 
   [ A0]   LDW     .D1T1   *+A13(4),A5       ; |345| 
   [ A0]   LDW     .D1T1   *A13,A3           ; |345| 
   [!A0]   ZERO    .L1     A11               ; |341| 
   [!A0]   MVK     .L1     0x1,A1            ; |345| 
           NOP             1

   [ A0]   MPYLI   .M1     A4,A5,A11:A10     ; |345| 
|| [ A0]   LDW     .D1T1   *+A13(16),A11     ; |344| 

           LDW     .D1T1   *+A13(20),A4      ; |350| 
           NOP             2
   [ A0]   ADD     .L1     A10,A3,A3         ; |345| 
   [ A0]   CMPLTU  .L1     A11,A3,A1         ; |345| 

   [!A1]   SUB     .L1     A11,A10,A11       ; |346| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3

$C$RL123:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(4),A3
||         MV      .L1     A11,A0            ; |350| 

   [!A0]   BNOP    .S1     $C$L127,2         ; |110| 
|| [!A0]   LDW     .D2T1   *+SP(4),A3

   [ A0]   CALL    .S1     _ZN13Interpolation23InsertInterpolationDataEP8LineData ; |117| 
   [ A0]   LDW     .D1T1   *A3,A4            ; |117| 
   [!A0]   LDW     .D1T1   *+A3(4),A11       ; |516| 
           ; BRANCHCC OCCURS {$C$L127}       ; |110| 
;** --------------------------------------------------------------------------*
;** 117	-----------------------    Interpolation::InsertInterpolationData((*this).m_interpolator, pointer);  // [47]
;** 120	-----------------------    if ( !(*pointer).interpolation_flag ) goto g44;  // [47]
           MV      .L2X    A11,B4            ; |117| 
           ADDKPC  .S2     $C$RL124,B3,1     ; |117| 
$C$RL124:  ; CALL OCCURS {_ZN13Interpolation23InsertInterpolationDataEP8LineData} {0}  ; |117| 
;** --------------------------------------------------------------------------*
           MVK     .S1     270,A3            ; |120| 
           LDBU    .D1T1   *+A11[A3],A0      ; |120| 
           MVK     .S1     1376,A3           ; |121| 
           ADD     .L1     A3,A11,A3         ; |121| 
           NOP             2

   [!A0]   B       .S1     $C$L126           ; |120| 
|| [ A0]   LDDW    .D1T1   *A3,A5:A4         ; |121| 

           LDW     .D2T1   *+SP(4),A3        ; |122| 

   [ A0]   CALL    .S1     memcpy            ; |122| 
|| [!A0]   LDW     .D2T1   *+SP(4),A3

   [ A0]   MVK     .S2     1432,B4           ; |122| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L126}       ; |120| 
;** --------------------------------------------------------------------------*
;** 121	-----------------------    (*this).m_last_speed = *((double *)pointer+1376);  // [47]
;** 122	-----------------------    memcpy((struct xisMovData *)this+56, (struct xisMovData *)pointer+1432, 1569u);  // [47]
;** 123	-----------------------    (*this).m_has_position = 1;  // [47]
           STDW    .D1T1   A5:A4,*+A3(24)    ; |121| 

           MVK     .S1     0x621,A6          ; |122| 
||         ADD     .L2X    B4,A11,B4         ; |122| 
||         ADDKPC  .S2     $C$RL125,B3,0     ; |122| 
||         ADDAD   .D1     A3,7,A4           ; |122| 

$C$RL125:  ; CALL OCCURS {memcpy} {0}        ; |122| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(4),A5        ; |123| 
           MVK     .S1     48,A4             ; |123| 
           MVK     .L1     1,A3              ; |123| 
           NOP             2
           STB     .D1T1   A3,*+A5[A4]       ; |123| 
           LDW     .D2T1   *+SP(4),A3
           NOP             3
;** --------------------------------------------------------------------------*
$C$L126:    
           NOP             1
           LDW     .D1T1   *+A3(4),A11       ; |516| 
;** --------------------------------------------------------------------------*
$C$L127:    
;**	-----------------------g44:
;** 516	-----------------------    this = (*this).m_data_buffer;
;** 365	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [91]
;** 367	-----------------------    if ( (*this).m_buffer_cur_length <= 0 ) goto g48;  // [91]
           NOP             3
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |365| 
           LDW     .D1T1   *+A11(20),A4      ; |365| 
           ADDKPC  .S2     $C$RL126,B3,3     ; |365| 
$C$RL126:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |365| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A11(8),A3       ; |367| 
           MV      .L2X    A4,B4             ; |365| 
           NOP             3
           CMPGT   .L1     A3,0,A0           ; |367| 

   [!A0]   BNOP    .S1     $C$L128,1         ; |367| 
|| [ A0]   LDW     .D1T1   *+A11(16),A3      ; |368| 

   [ A0]   LDW     .D1T1   *+A11(4),A4       ; |369| 
           NOP             2
           ADDK    .S1     3816,A3           ; |368| 
           ; BRANCHCC OCCURS {$C$L128}       ; |367| 
;** --------------------------------------------------------------------------*
;** 368	-----------------------    (*this).m_read_pointer = (*this).m_read_pointer+3816;  // [91]
;** 369	-----------------------    C$6 = _mpyli(3816, (*this).m_buffer_total_length);  // [91]
;** 369	-----------------------    C$5 = (*this).m_read_pointer;  // [91]
;** 369	-----------------------    if ( C$5 < (*this).m_buffer+_lo(C$6) ) goto g47;  // [91]
;** 370	-----------------------    (*this).m_read_pointer = C$5-(int)_lo(C$6);  // [91]
;**	-----------------------g47:
;** 372	-----------------------    (*this).m_buffer_cur_length = (*this).m_buffer_cur_length-1;  // [91]

           MVK     .S1     3816,A31          ; |369| 
||         LDW     .D1T1   *A11,A7           ; |369| 

           LDW     .D1T1   *+A11(8),A6       ; |372| 
||         MPYLI   .M1     A31,A4,A5:A4      ; |369| 

           STW     .D1T1   A3,*+A11(16)      ; |368| 
           LDW     .D1T1   *+A11(16),A3      ; |369| 
           NOP             2

           SUB     .L1     A6,1,A30          ; |372| 
||         ADD     .S1     A4,A7,A6          ; |369| 

           STW     .D1T1   A30,*+A11(8)      ; |372| 

           CMPLTU  .L1     A3,A6,A0          ; |369| 
||         SUB     .S1     A3,A4,A3          ; |370| 

   [!A0]   STW     .D1T1   A3,*+A11(16)      ; |370| 
;** --------------------------------------------------------------------------*
$C$L128:    
;**	-----------------------g48:
;** 375	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [91]
;** 514	-----------------------    if ( L$3 = L$3-1 ) goto g37;

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D1T1   *+A11(20),A4      ; |375| 

$C$RL127:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |375| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(4),A3
||         SUB     .L1     A12,1,A0          ; |514| 

   [ A0]   BNOP    .S1     $C$L125,3         ; |514| 
   [ A0]   LDW     .D1T1   *+A3(4),A13       ; |515| 
           SUB     .L1     A12,1,A12         ; |514| 
           ; BRANCHCC OCCURS {$C$L125}       ; |514| 
;** --------------------------------------------------------------------------*
$C$L129:    
;**	-----------------------g49:
;** 519	-----------------------    (*this).m_min_len = C$4 = 0.0;
;** 521	-----------------------    if ( end == 1 ) goto g57;
           LDW     .D2T1   *+SP(12),A6       ; |519| 
           LDW     .D2T1   *+SP(4),A3        ; |519| 
           ZERO    .L1     A5:A4             ; |519| 
           ZERO    .L2     B6                ; |523| 
           ZERO    .L2     B5:B4             ; |522| 

           CMPEQ   .L1     A6,1,A0           ; |521| 
||         MVK     .S1     1632,A6           ; |523| 

   [!A0]   LDW     .D1T1   *+A3(4),A10       ; |527| 
|| [ A0]   B       .S1     $C$L131           ; |521| 

   [!A0]   STDW    .D1T1   A5:A4,*+A3(32)    ; |526| 
           STDW    .D1T1   A5:A4,*+A3(40)    ; |519| 
   [ A0]   STB     .D1T2   B6,*+A3[A6]       ; |523| 

   [!A0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |409| 
|| [ A0]   STDW    .D1T2   B5:B4,*+A3(32)    ; |522| 

   [!A0]   LDW     .D1T1   *+A10(20),A4      ; |409| 
           ; BRANCHCC OCCURS {$C$L131}       ; |521| 
;** --------------------------------------------------------------------------*
;** 526	-----------------------    (*this).m_dist_len = C$4;
;** 527	-----------------------    this = (*this).m_data_buffer;
;** 409	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [88]
;** 411	-----------------------    buf_len = (*this).m_buffer_cur_length;  // [88]
;** 413	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [88]
;** 528	-----------------------    if ( (short)buf_len <= 0 ) goto g58;
           ADDKPC  .S2     $C$RL128,B3,3     ; |409| 
$C$RL128:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |409| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(20),A3      ; |413| 
           LDW     .D1T1   *+A10(8),A10      ; |411| 
           MV      .L2X    A4,B4             ; |413| 
           NOP             2

           MV      .L1     A3,A4             ; |413| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3

$C$RL129:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |413| 
;** --------------------------------------------------------------------------*

           EXT     .S1     A10,16,16,A3      ; |528| 
||         MV      .L2X    A10,B4            ; |411| Define a twin register
||         ZERO    .L1     A10               ; |528| 

           CMPGT   .L1     A3,0,A0           ; |528| 
||         LDW     .D2T1   *+SP(4),A3

   [!A0]   BNOP    .S1     $C$L132,3         ; |528| 
   [ A0]   LDW     .D1T1   *+A3(4),A14       ; |529| 
           EXT     .S2     B4,16,16,B12
           ; BRANCHCC OCCURS {$C$L132}       ; |528| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    L$4 = (short)buf_len;
;** 528	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           MVK     .S1     3816,A15          ; |344| 
           NOP             1
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L130:    
;**	-----------------------g52:
;** 529	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 341	-----------------------    pointer = NULL;  // [90]
;** 343	-----------------------    if ( (short)i < 0 ) goto g56;  // [90]
;** 343	-----------------------    if ( (short)i >= (*this).m_buffer_cur_length ) goto g56;  // [90]
;** 344	-----------------------    pointer = (short)i*3816+(*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$3 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$3) ) goto g56;  // [90]
;** 346	-----------------------    pointer -= (int)_lo(C$3);  // [90]
;**	-----------------------g56:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 529	-----------------------    (*this).m_dist_len = (*this).m_dist_len+*((double *)pointer+2480);
;** 528	-----------------------    ++i;
;** 528	-----------------------    if ( L$4 = L$4-1 ) goto g52;
           LDW     .D1T1   *+A14(20),A4      ; |339| 
           ADDKPC  .S2     $C$RL130,B3,3     ; |339| 
$C$RL130:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*
           EXT     .S1     A10,16,16,A3      ; |343| 
           CMPLT   .L1     A3,0,A3           ; |343| 
           MV      .L1     A3,A0             ; |343| 

           MV      .L2X    A3,B11            ; |343| 
|| [!A0]   LDW     .D1T1   *+A14(8),A3       ; |343| 

           EXT     .S1     A10,16,16,A5      ; |343| 
   [ A0]   ZERO    .L2     B10
           MV      .L2X    A4,B4             ; |350| 
           LDW     .D1T1   *+A14(20),A4      ; |350| 
   [!A0]   CMPLT   .L1     A5,A3,A3          ; |343| 
           NOP             1
   [!A0]   MV      .L2X    A3,B10            ; |343| 
           NOP             1
           MV      .L1X    B10,A0            ; |343| 
   [ A0]   LDW     .D1T1   *A14,A11          ; |345| 
   [ A0]   LDW     .D1T1   *+A14(4),A13      ; |345| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
|| [ A0]   LDW     .D1T1   *+A14(16),A14     ; |344| 

$C$RL131:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MV      .L1X    B10,A0            ; |350| 
||         MPYUS   .M1     A15,A10,A4        ; |344| 
||         MV      .L2     B10,B0
||         ZERO    .D1     A3                ; |341| 
||         MV      .S2     B10,B1            ; |345| 
||         MV      .D2     B11,B2            ; |345| 
||         MVK     .S1     2480,A31          ; |529| 

   [ A0]   MPYLI   .M1     A15,A13,A13:A12   ; |345| 
||         LDW     .D2T1   *+SP(4),A5        ; |529| 

           MV      .L1X    B11,A2
   [ B2]   MVK     .L1     0x1,A0
   [ B0]   ADD     .L1     A14,A4,A3         ; |344| 
   [ B0]   ADD     .L1     A12,A11,A4        ; |345| 

   [ B1]   CMPLTU  .L1     A3,A4,A1          ; |345| 
||         LDDW    .D1T1   *+A5(32),A5:A4    ; |529| 

   [!A0]   MVK     .L1     0x1,A1

   [ A2]   MVK     .L1     0x1,A1
||         SUB     .S1X    B12,1,A2          ; |528| 

   [!A1]   SUB     .L1     A3,A12,A3         ; |346| 
           ADD     .L1     A31,A3,A3         ; |529| 
           LDDW    .D1T1   *A3,A7:A6         ; |529| 
   [ A2]   LDW     .D2T1   *+SP(4),A3
           ADD     .L1     1,A10,A10         ; |528| 
           LDW     .D2T1   *+SP(4),A30
           SUB     .L2     B12,1,B12         ; |528| 
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |529| 
   [ A2]   LDW     .D1T1   *+A3(4),A14       ; |529| 
   [ A2]   BNOP    .S1     $C$L130,4         ; |528| 

   [ A2]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
||         STDW    .D1T1   A5:A4,*+A30(32)   ; |529| 

           ; BRANCHCC OCCURS {$C$L130}       ; |528| 
;** --------------------------------------------------------------------------*
;** 528	-----------------------    goto g58;
           LDW     .D2T2   *++SP(24),B3      ; |532| 
           LDDW    .D2T1   *++SP,A13:A12     ; |532| 
           LDDW    .D2T1   *++SP,A15:A14     ; |532| 
           LDDW    .D2T2   *++SP,B11:B10     ; |532| 
           LDDW    .D2T2   *++SP,B13:B12     ; |532| 

           LDW     .D2T1   *++SP(8),A10      ; |532| 
||         RET     .S2     B3                ; |532| 

           LDW     .D2T1   *++SP(8),A11      ; |532| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |532| 
;** --------------------------------------------------------------------------*
$C$L131:    
;**	-----------------------g57:
;** 522	-----------------------    (*this).m_dist_len = 0.0;
;** 523	-----------------------    (*this).m_has_vector = 0;
;**	-----------------------g58:
;**  	-----------------------    return;
;** --------------------------------------------------------------------------*
$C$L132:    
           LDW     .D2T2   *++SP(24),B3      ; |532| 
           LDDW    .D2T1   *++SP,A13:A12     ; |532| 
           LDDW    .D2T1   *++SP,A15:A14     ; |532| 
           LDDW    .D2T2   *++SP,B11:B10     ; |532| 
           LDDW    .D2T2   *++SP,B13:B12     ; |532| 

           LDW     .D2T1   *++SP(8),A10      ; |532| 
||         RET     .S2     B3                ; |532| 

           LDW     .D2T1   *++SP(8),A11      ; |532| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |532| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead10EndProcessEs

;******************************************************************************
;* FUNCTION NAME: LookAhead::EndProcess(short)                                *
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
_ZN9LookAhead10EndProcessEs:
;** --------------------------------------------------------------------------*
;** 537	-----------------------    if ( len <= 0 ) goto g10;

           CMPGT   .L2     B4,0,B0           ; |537| 
||         STW     .D2T1   A11,*SP--(8)      ; |535| 

           STW     .D2T1   A10,*SP--(8)      ; |535| 
||         CMPLT   .L2     B4,2,B5           ; |543| 
|| [!B0]   B       .S1     $C$L135           ; |537| 
||         SUB     .L1X    B4,1,A10          ; |540| 

           STDW    .D2T2   B13:B12,*SP--     ; |535| 
||         EXT     .S1     A10,16,16,A3      ; |542| 
||         XOR     .L2     1,B5,B12          ; |543| 

           STDW    .D2T2   B11:B10,*SP--     ; |535| 
||         MV      .L2     B4,B11            ; |535| 
||         MVK     .S2     270,B10           ; |543| 

           STDW    .D2T1   A15:A14,*SP--     ; |535| 
||         MV      .L1     A4,A14            ; |535| 
||         MV      .L2X    A3,B4             ; |542| 

           STDW    .D2T1   A13:A12,*SP--     ; |535| 

           STW     .D2T2   B3,*SP--(16)      ; |535| 
|| [ B0]   CALL    .S1     _ZN14CircularBufferI8LineDataE11ReadDataPtrEs ; |542| 

           ; BRANCHCC OCCURS {$C$L135}       ; |537| 
;** --------------------------------------------------------------------------*
;** 540	-----------------------    index = len-1;
;** 542	-----------------------    data = CircularBuffer<LineData>::ReadDataPtr((*this).m_data_buffer, (short)index);
;** 543	-----------------------    if ( !(((*data).interpolation_flag == 0u)&(len >= 2)) ) goto g9;
           LDW     .D1T1   *+A14(4),A4       ; |542| 
           ADDKPC  .S2     $C$RL132,B3,3     ; |542| 
$C$RL132:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE11ReadDataPtrEs} {0}  ; |542| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A4,B4             ; |542| Define a twin register
           LDBU    .D2T2   *+B4[B10],B4      ; |543| 
           NOP             4
           CMPEQ   .L2     B4,0,B4           ; |543| 
           AND     .L2     B12,B4,B0         ; |543| 

   [!B0]   BNOP    .S1     $C$L134,5         ; |543| 
|| [ B0]   LDW     .D1T1   *+A14(4),A15      ; |546| 
|| [ B0]   MVK     .S2     1376,B13          ; |544| 

           ; BRANCHCC OCCURS {$C$L134}       ; |543| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           ZERO    .L2     B5:B4             ; |544| 
||         ADD     .S2X    B13,A4,B6         ; |544| 
||         CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
||         LDW     .D1T1   *+A15(20),A4      ; |339| 

           STDW    .D2T2   B5:B4,*B6         ; |544| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L133:    
;**	-----------------------g4:
;** 544	-----------------------    *((double *)data+1376) = 0.0;
;** 546	-----------------------    C$2 = index-1;
;** 546	-----------------------    pos = C$2;
;** 546	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 545	-----------------------    index = C$2;
;** 341	-----------------------    pointer = NULL;  // [90]
;** 343	-----------------------    if ( pos < 0 ) goto g8;  // [90]
;** 343	-----------------------    if ( pos >= (*this).m_buffer_cur_length ) goto g8;  // [90]
;** 344	-----------------------    pointer = pos*3816+(*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$1 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$1) ) goto g8;  // [90]
;** 346	-----------------------    pointer -= (int)_lo(C$1);  // [90]
;**	-----------------------g8:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 352	-----------------------    data = pointer;  // [90]
;** 543	-----------------------    if ( !((*data).interpolation_flag|(index <= 0)) ) goto g4;
           ADDKPC  .S2     $C$RL133,B3,3     ; |339| 
$C$RL133:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*
           SUB     .L1     A10,1,A11         ; |546| 
           EXT     .S1     A11,16,16,A3      ; |546| 
           CMPLT   .L1     A3,0,A5           ; |343| 
           MV      .L1     A5,A0             ; |343| 

           MV      .L2X    A5,B12            ; |343| 
|| [!A0]   LDW     .D1T1   *+A15(8),A5       ; |343| 

   [ A0]   ZERO    .L2     B10
           MV      .L2X    A4,B4             ; |350| 
           LDW     .D1T1   *+A15(20),A4      ; |350| 
           NOP             1
   [!A0]   CMPLT   .L1     A3,A5,A3          ; |343| 
           NOP             1
   [!A0]   MV      .L2X    A3,B10            ; |343| 
           NOP             1
           MV      .L1X    B10,A0            ; |343| 
   [ A0]   LDW     .D1T1   *A15,A3           ; |345| 
   [ A0]   LDW     .D1T1   *+A15(4),A13      ; |345| 
   [ A0]   LDW     .D1T1   *+A15(16),A15     ; |344| 
           NOP             2

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
|| [ A0]   STW     .D2T1   A3,*+SP(4)        ; |345| 

$C$RL134:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MV      .L2     B10,B0            ; |345| 
||         MVK     .S1     3816,A3           ; |344| 
||         MV      .L1X    B10,A0            ; |350| 

   [ A0]   MPYLI   .M1     A3,A13,A13:A12    ; |345| 

           MPYUS   .M1     A3,A11,A5         ; |344| 
|| [ A0]   LDW     .D2T1   *+SP(4),A3

           ZERO    .L1     A4                ; |341| 
           MVK     .S1     270,A31           ; |543| 
           MV      .L1X    B10,A1            ; |344| 
   [ A0]   ADD     .L1     A15,A5,A4         ; |344| 

   [ A0]   ADD     .L1     A12,A3,A3         ; |345| 
||         MV      .S1X    B12,A0            ; |345| 

   [ A0]   MVK     .S1     0x1,A1
|| [ B0]   CMPLTU  .L1     A4,A3,A2          ; |345| 

   [!A1]   MVK     .L1     0x1,A2
   [ A0]   MVK     .L1     0x1,A2
   [!A2]   SUB     .L1     A4,A12,A4         ; |346| 
           LDBU    .D1T1   *+A4[A31],A3      ; |543| 
           CMPGT   .L2X    A10,1,B4          ; |543| 
           XOR     .L2     1,B4,B4           ; |543| 
           MV      .L1     A11,A10           ; |545| 
           NOP             1
           OR      .L2X    B4,A3,B0          ; |543| 

   [!B0]   BNOP    .S1     $C$L133,2         ; |543| 
|| [!B0]   LDW     .D1T1   *+A14(4),A15      ; |546| 
|| [!B0]   ZERO    .L2     B5:B4             ; |544| 
|| [!B0]   ADD     .S2X    B13,A4,B6         ; |544| 

   [!B0]   STDW    .D2T2   B5:B4,*B6         ; |544| 
   [!B0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
   [!B0]   LDW     .D1T1   *+A15(20),A4      ; |339| 
           ; BRANCHCC OCCURS {$C$L133}       ; |543| 
;** --------------------------------------------------------------------------*
$C$L134:    
;**	-----------------------g9:
;** 548	-----------------------    data = CircularBuffer<LineData>::ReadDataPtr((*this).m_data_buffer, (short)index);
;** 379	-----------------------    *((double *)data+1376) = 0.0;  // [73]
;** 550	-----------------------    LookAhead::GetLookAheadData(this, len, 1);
;**	-----------------------g10:
;**  	-----------------------    return;
           EXT     .S1     A10,16,16,A3      ; |548| 
           LDW     .D1T1   *+A14(4),A4       ; |548| 

           MV      .L2X    A3,B4             ; |548| 
||         CALLP   .S2     _ZN14CircularBufferI8LineDataE11ReadDataPtrEs,B3

$C$RL135:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE11ReadDataPtrEs} {0}  ; |548| 
;** --------------------------------------------------------------------------*
           MVK     .S2     1376,B4           ; |379| 

           ADD     .S2X    B4,A4,B6          ; |379| 
||         ZERO    .L2     B5:B4             ; |379| 

           CALLP   .S2     _ZN9LookAhead16GetLookAheadDataEsb,B3
||         STDW    .D2T2   B5:B4,*B6         ; |379| 
||         MV      .L2     B11,B4            ; |550| 
||         MV      .L1     A14,A4            ; |550| 
||         MVK     .S1     0x1,A6            ; |550| 

$C$RL136:  ; CALL OCCURS {_ZN9LookAhead16GetLookAheadDataEsb} {0}  ; |550| 
;** --------------------------------------------------------------------------*
$C$L135:    
           LDW     .D2T2   *++SP(16),B3      ; |551| 
           LDDW    .D2T1   *++SP,A13:A12     ; |551| 
           LDDW    .D2T1   *++SP,A15:A14     ; |551| 
           LDDW    .D2T2   *++SP,B11:B10     ; |551| 
           LDDW    .D2T2   *++SP,B13:B12     ; |551| 

           LDW     .D2T1   *++SP(8),A10      ; |551| 
||         RET     .S2     B3                ; |551| 

           LDW     .D2T1   *++SP(8),A11      ; |551| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |551| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead17CalculateStopDistEi

;******************************************************************************
;* FUNCTION NAME: LookAhead::CalculateStopDist(int)                           *
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
_ZN9LookAhead17CalculateStopDistEi:
;** --------------------------------------------------------------------------*
;* 1563	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 343	-----------------------    K$11 = (short)buf_index;  // [90]
;** 341	-----------------------    pointer = NULL;  // [90]
;** 343	-----------------------    if ( K$11 < 0 ) goto g5;  // [90]
           STW     .D2T1   A11,*SP--(8)      ; |1562| 
           STW     .D2T1   A10,*SP--(8)      ; |1562| 
           STDW    .D2T2   B13:B12,*SP--     ; |1562| 
           STDW    .D2T2   B11:B10,*SP--     ; |1562| 
           STDW    .D2T1   A15:A14,*SP--     ; |1562| 
           STDW    .D2T1   A13:A12,*SP--     ; |1562| 
           STW     .D2T2   B3,*SP--(32)      ; |1562| 
           LDW     .D1T1   *+A4(4),A11       ; |1563| 
           STW     .D2T1   A4,*+SP(16)       ; |1562| 
           MV      .L2     B4,B10            ; |1562| 
           NOP             2

           CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A11(20),A4      ; |339| 

$C$RL137:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*

           EXT     .S2     B10,16,16,B5      ; |343| 
||         MV      .L2X    A4,B4             ; |339| 

           CMPLT   .L2     B5,0,B0           ; |343| 

           MV      .L2     B0,B1             ; |343| branch predicate copy
|| [!B0]   LDW     .D1T1   *+A11(8),A3       ; |343| 
|| [ B0]   B       .S1     $C$L136           ; |343| 

   [ B1]   CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |350| 
   [ B1]   LDW     .D1T1   *+A11(20),A4      ; |350| 
           ZERO    .L1     A10               ; |341| 
           NOP             1
           CMPLT   .L2X    B5,A3,B0          ; |343| 
           ; BRANCHCC OCCURS {$C$L136}       ; |343| 
;** --------------------------------------------------------------------------*
;** 343	-----------------------    if ( K$11 >= (*this).m_buffer_cur_length ) goto g5;  // [90]
;** 344	-----------------------    pointer = K$11*3816+(*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$23 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$23) ) goto g5;  // [90]
;** 346	-----------------------    pointer -= (int)_lo(C$23);  // [90]

           MVK     .S2     3816,B6           ; |344| 
|| [ B0]   LDW     .D1T1   *+A11(4),A7       ; |345| 

           MVK     .S1     3816,A5           ; |345| 
           MPYUS   .M2     B6,B5,B31         ; |344| 
   [ B0]   LDW     .D1T1   *+A11(16),A3      ; |344| 
   [ B0]   LDW     .D1T1   *A11,A6           ; |345| 
   [ B0]   MPYLI   .M1     A5,A7,A5:A4       ; |345| 
   [!B0]   MVK     .L1     0x1,A0
           NOP             1
   [ B0]   ADD     .L1X    A3,B31,A10        ; |344| 
   [ B0]   ADD     .L1     A4,A6,A3          ; |345| 

   [ B0]   CMPLTU  .L1     A10,A3,A0         ; |345| 
||         CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |350| 

   [!A0]   SUB     .L1     A10,A4,A10        ; |346| 
||         LDW     .D1T1   *+A11(20),A4      ; |350| 

           NOP             3
;** --------------------------------------------------------------------------*
$C$L136:    
;**	-----------------------g5:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;* 1565	-----------------------    if ( pointer ) goto g7;
;* 1566	-----------------------    return 0.0;
           ADDKPC  .S2     $C$RL138,B3,0     ; |350| 
$C$RL138:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MV      .D1     A10,A0            ; |1566| 
||         MVKL    .S1     0xe2308c3a,A31
||         ADD     .L2     1,B10,B11         ; |1570| 
||         ZERO    .L1     A7:A6             ; |1574| 
||         ZERO    .S2     B10               ; |1572| 

   [!A0]   B       .S2     $C$L146           ; |1566| 
||         MVKL    .S1     0x3e45798e,A3
||         INTDP   .L2     B11,B13:B12       ; |1577| 
||         STW     .D2T1   A6,*+SP(4)        ; |1572| 
||         ZERO    .L1     A5:A4             ; |1566| 

           MVKH    .S1     0xe2308c3a,A31

           MVKH    .S1     0x3e45798e,A3
||         STW     .D2T1   A31,*+SP(20)      ; |1577| 

           STW     .D2T1   A3,*+SP(24)       ; |1577| 
||         MVK     .S1     1376,A30          ; |1572| 

   [ A0]   LDW     .D2T1   *+SP(16),A3
           ADD     .L1     A30,A10,A10       ; |1572| 
           ; BRANCHCC OCCURS {$C$L146}       ; |1566| 
;** --------------------------------------------------------------------------*
;**	-----------------------g7:
;* 1570	-----------------------    next_index = buf_index+1;
;* 1571	-----------------------    this = (*this).m_data_buffer;
;** 409	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [88]
;** 411	-----------------------    buf_len = (*this).m_buffer_cur_length;  // [88]
;** 413	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [88]
;* 1571	-----------------------    buf_len = (double)buf_len;
;* 1572	-----------------------    dec_speed = *((double *)pointer+1376);
;* 1573	-----------------------    last_dec_speed = dec_speed;
;* 1574	-----------------------    stop_dist = 0.0;
;* 1577	-----------------------    if ( !(((double)next_index < buf_len)&(last_dec_speed > 1.00000000000000002092e-8)) ) goto g19;
           NOP             3
           LDW     .D1T1   *+A3(4),A11       ; |1571| 
           NOP             3
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |409| 
           LDW     .D1T1   *+A11(20),A4      ; |409| 
           ADDKPC  .S2     $C$RL139,B3,3     ; |409| 
$C$RL139:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |409| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A11(8),A12      ; |411| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         MV      .L2X    A4,B4             ; |413| 
||         LDW     .D1T1   *+A11(20),A4      ; |413| 

$C$RL140:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |413| 
;** --------------------------------------------------------------------------*

           LDDW    .D1T1   *A10,A11:A10      ; |1572| 
||         INTDP   .L2X    A12,B5:B4         ; |1571| 

           LDW     .D2T1   *+SP(24),A5       ; |1573| 
           LDW     .D2T1   *+SP(20),A4       ; |1573| 
           NOP             2

           MV      .L1     A10,A12           ; |1573| 
||         STW     .D2T2   B4,*+SP(8)        ; |1571| 

           MV      .L1     A11,A13           ; |1573| 
           CMPGTDP .S1     A13:A12,A5:A4,A3  ; |1577| 
           CMPLTDP .S2     B13:B12,B5:B4,B4  ; |1577| 
           STW     .D2T2   B5,*+SP(12)       ; |1571| 

           AND     .L2X    A3,B4,B0          ; |1577| 
||         LDW     .D2T1   *+SP(16),A3

   [!B0]   BNOP    .S1     $C$L145,3         ; |1577| 
   [ B0]   LDW     .D1T1   *+A3(4),A15       ; |1578| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L145}       ; |1577| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L137:    
;**	-----------------------g9:
;* 1578	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 341	-----------------------    pointer = NULL;  // [90]
;** 343	-----------------------    if ( (short)next_index < 0 ) goto g13;  // [90]
           NOP             2
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
           LDW     .D1T1   *+A15(20),A4      ; |339| 
           ADDKPC  .S2     $C$RL141,B3,3     ; |339| 
$C$RL141:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*

           EXT     .S2     B11,16,16,B5      ; |343| 
||         MV      .L2X    A4,B4             ; |339| 

           CMPLT   .L2     B5,0,B0           ; |343| 

           MV      .L2     B0,B2             ; |343| branch predicate copy
|| [!B0]   LDW     .D1T1   *+A15(8),A3       ; |343| 
|| [ B0]   B       .S1     $C$L139           ; |343| 

   [ B2]   CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |350| 
   [ B2]   LDW     .D1T1   *+A15(20),A4      ; |350| 
           ZERO    .L1     A14               ; |341| 
   [!B0]   EXT     .S2     B11,16,16,B5      ; |343| 
           CMPLT   .L2X    B5,A3,B0          ; |343| 
           ; BRANCHCC OCCURS {$C$L139}       ; |343| 
;** --------------------------------------------------------------------------*
;** 343	-----------------------    if ( (short)next_index >= (*this).m_buffer_cur_length ) goto g13;  // [90]

   [ B0]   LDW     .D1T1   *+A15(4),A4       ; |345| 
|| [ B0]   MVK     .S1     3816,A5           ; |345| 
|| [ B0]   MVK     .S2     3816,B5           ; |344| 

   [!B0]   BNOP    .S1     $C$L138,2         ; |343| 
|| [ B0]   LDW     .D1T1   *+A15(16),A6      ; |344| 
|| [ B0]   MPYUS   .M2     B5,B11,B5         ; |344| 

   [ B0]   LDW     .D1T1   *A15,A3           ; |345| 
           MPYLI   .M1     A5,A4,A5:A4       ; |345| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L138}       ; |343| 
;** --------------------------------------------------------------------------*
;** 344	-----------------------    pointer = (short)next_index*3816+(*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$22 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$22) ) goto g13;  // [90]
;** 346	-----------------------    pointer -= (int)_lo(C$22);  // [90]
           ADD     .L1X    A6,B5,A14         ; |344| 
           NOP             1
           ADD     .L1     A4,A3,A3          ; |345| 
           CMPLTU  .L1     A14,A3,A0         ; |345| 
   [!A0]   SUB     .L1     A14,A4,A14        ; |346| 
;** --------------------------------------------------------------------------*
$C$L138:    
           CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |350| 
           LDW     .D1T1   *+A15(20),A4      ; |350| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L139:    
;**	-----------------------g13:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 352	-----------------------    next_data = pointer;  // [90]
;* 1580	-----------------------    if ( next_data == NULL ) goto g18;
           ADDKPC  .S2     $C$RL142,B3,0     ; |350| 
$C$RL142:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MVK     .S1     270,A3            ; |1580| 
||         MV      .L1     A14,A0            ; |352| 

           MV      .L1     A0,A1             ; guard predicate rewrite
|| [!A0]   B       .S2     $C$L144           ; |1580| 
||         MV      .S1     A0,A2             ; |352| branch predicate copy
|| [ A0]   LDBU    .D1T1   *+A14[A3],A0      ; |1580| 

   [!A2]   ADD     .L2     1,B11,B11         ; |1577| 
|| [!A2]   LDW     .D2T2   *+SP(12),B7       ; |1577| 
|| [!A2]   MVKL    .S1     0xe2308c3a,A4
|| [!A1]   MVK     .L1     0x1,A0            ; |1580| nullify predicate

           INTDP   .L2     B11,B5:B4         ; |1577| 
|| [!A2]   LDW     .D2T2   *+SP(8),B6        ; |1577| 
|| [!A2]   MVKL    .S1     0x3e45798e,A5

   [!A2]   MVKH    .S1     0xe2308c3a,A4
   [!A2]   MVKH    .S1     0x3e45798e,A5

   [!A0]   B       .S2     $C$L143           ; |1580| 
|| [!A2]   CMPGTDP .S1     A11:A10,A5:A4,A3  ; |1577| 

           ; BRANCHCC OCCURS {$C$L144}       ; |1580| 
;** --------------------------------------------------------------------------*
;* 1580	-----------------------    if ( !(*next_data).interpolation_flag ) goto g18;
           NOP             1
   [ A0]   MVK     .S1     3784,A3           ; |1584| 
   [ A0]   ADD     .L1     A3,A14,A3         ; |1584| 
   [ A0]   LDDW    .D1T1   *A3,A5:A4         ; |1584| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L143}       ; |1580| 
;** --------------------------------------------------------------------------*
;* 1584	-----------------------    C$21 = (*next_data).acc;
;* 1584	-----------------------    speed_square = dec_speed*dec_speed-(C$21+C$21)**((double *)next_data+2480);
;* 1586	-----------------------    (speed_square > 0.0) ? (dec_speed = sqrt(speed_square)) : (dec_speed = -1.00000000000000002092e-8);
           MVK     .S2     2480,B4           ; |1584| 
           ADD     .L2X    B4,A14,B4         ; |1584| 
           LDDW    .D2T2   *B4,B5:B4         ; |1584| 
           ADDDP   .L1     A5:A4,A5:A4,A5:A4 ; |1584| 
           MPYDP   .M1     A11:A10,A11:A10,A7:A6 ; |1584| 
           NOP             5
           MPYDP   .M1X    B5:B4,A5:A4,A5:A4 ; |1584| 
           NOP             9
           SUBDP   .S1     A7:A6,A5:A4,A5:A4 ; |1584| 
           ZERO    .L1     A7:A6             ; |1586| 
           NOP             5
           CMPGTDP .S1     A5:A4,A7:A6,A0    ; |1586| 
           NOP             1

   [!A0]   B       .S2     $C$L140           ; |1586| 
|| [!A0]   MVKL    .S1     0xe2308c3a,A10
|| [!A0]   ZERO    .L1     A5:A4             ; |1591| 

   [ A0]   CALL    .S2     sqrt              ; |1586| 
|| [!A0]   MVKL    .S1     0xbe45798e,A11

   [!A0]   MVKH    .S1     0xe2308c3a,A10
   [!A0]   MVKH    .S1     0xbe45798e,A11
   [!A0]   CMPLTDP .S1     A11:A10,A5:A4,A0  ; |1591| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L140}       ; |1586| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     $C$RL143,B3,0     ; |1586| 
$C$RL143:  ; CALL OCCURS {sqrt} {0}          ; |1586| 
;** --------------------------------------------------------------------------*

           B       .S2     $C$L141           ; |1586| 
||         MV      .S1     A4,A10            ; |1586| 
||         MV      .D1     A5,A11            ; |1586| 
||         ZERO    .L1     A5:A4             ; |1591| 

           CMPLTDP .S1     A11:A10,A5:A4,A0  ; |1591| 
           NOP             1
   [!A0]   BNOP    .S1     $C$L142,2         ; |1591| 
           ; BRANCH OCCURS {$C$L141}         ; |1586| 
;** --------------------------------------------------------------------------*
$C$L140:    
   [!A0]   BNOP    .S1     $C$L142,2         ; |1591| 
;** --------------------------------------------------------------------------*
$C$L141:    
;* 1591	-----------------------    if ( dec_speed >= 0.0 ) goto g17;

   [!A0]   MVK     .S1     2480,A3           ; |1599| 
|| [!A0]   LDW     .D2T1   *+SP(4),A4        ; |1601| 
|| [!A0]   MV      .L1X    B10,A5            ; |1601| 

   [!A0]   ADD     .L1     A3,A14,A3         ; |1599| 
   [!A0]   LDDW    .D1T1   *A3,A7:A6         ; |1599| 
           ; BRANCHCC OCCURS {$C$L142}       ; |1591| 
;** --------------------------------------------------------------------------*
;* 1594	-----------------------    C$20 = (*next_data).acc;
;** --------------------------------------------------------------------------*
;* 1594	-----------------------    stop_dist += last_dec_speed*last_dec_speed/(C$20+C$20);
;* 1595	-----------------------    return stop_dist;
           MVK     .S1     3784,A3           ; |1594| 
           ADD     .L1     A3,A14,A3         ; |1594| 
           LDDW    .D1T1   *A3,A7:A6         ; |1594| 
           MPYDP   .M1     A13:A12,A13:A12,A5:A4 ; |1594| 
           NOP             3
           ADDDP   .L1     A7:A6,A7:A6,A7:A6 ; |1594| 
           NOP             7
           MV      .L2X    A6,B4             ; |1594| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A7,B5             ; |1594| 

$C$RL144:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |1594| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(4),A6        ; |1594| 
           LDW     .D2T2   *++SP(32),B3      ; |1612| 
           LDDW    .D2T1   *++SP,A13:A12     ; |1612| 
           LDDW    .D2T1   *++SP,A15:A14     ; |1612| 

           MV      .L1X    B10,A7            ; |1594| 
||         LDDW    .D2T2   *++SP,B11:B10     ; |1612| 

           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |1594| 
||         LDDW    .D2T2   *++SP,B13:B12     ; |1612| 

           LDW     .D2T1   *++SP(8),A10      ; |1612| 
||         RET     .S2     B3                ; |1612| 

           LDW     .D2T1   *++SP(8),A11      ; |1612| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1612| 
;** --------------------------------------------------------------------------*
$C$L142:    
;**	-----------------------g17:
;* 1599	-----------------------    stop_dist += *((double *)next_data+2480);
;* 1601	-----------------------    last_dec_speed = dec_speed;
           MV      .L1     A11,A13           ; |1601| 
           MV      .L1     A10,A12           ; |1601| 
           NOP             2
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |1599| 
           NOP             6
           STW     .D2T1   A4,*+SP(4)        ; |1599| 
           MV      .L2X    A5,B10            ; |1599| 
;** --------------------------------------------------------------------------*
$C$L143:    

           LDW     .D2T2   *+SP(8),B6        ; |1577| 
||         MVKL    .S1     0x3e45798e,A5
||         ADD     .L2     1,B11,B11         ; |1577| 

           INTDP   .L2     B11,B5:B4         ; |1577| 
||         LDW     .D2T2   *+SP(12),B7       ; |1577| 
||         MVKL    .S1     0xe2308c3a,A4

           MVKH    .S1     0x3e45798e,A5
           MVKH    .S1     0xe2308c3a,A4
           CMPGTDP .S1     A11:A10,A5:A4,A3  ; |1577| 
;** --------------------------------------------------------------------------*
$C$L144:    
;**	-----------------------g18:
;* 1577	-----------------------    if ( !(((double)(++next_index) >= buf_len)|(dec_speed <= 1.00000000000000002092e-8)) ) goto g9;
           NOP             1
           CMPLTDP .S2     B5:B4,B7:B6,B4    ; |1577| 
           NOP             1

           AND     .L2X    B4,A3,B0
||         LDW     .D2T1   *+SP(16),A3

   [ B0]   BNOP    .S1     $C$L137,3         ; |1577| 
   [ B0]   LDW     .D1T1   *+A3(4),A15       ; |1578| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L137}       ; |1577| 
;** --------------------------------------------------------------------------*
$C$L145:    
;**	-----------------------g19:
;* 1609	-----------------------    return (dec_speed > 1.00000000000000002092e-8) ? 9999.0 : stop_dist;
           MV      .L2X    A5,B5
           MV      .L2X    A4,B4

           CMPGTDP .S2X    A11:A10,B5:B4,B0  ; |1609| 
||         MVKL    .S1     0x40c38780,A5

           MVKH    .S1     0x40c38780,A5

   [!B0]   MV      .L1X    B10,A5            ; |1609| 
|| [!B0]   LDW     .D2T1   *+SP(4),A4        ; |1609| 
||         ZERO    .S1     A4                ; |1609| 

;** --------------------------------------------------------------------------*
$C$L146:    
           LDW     .D2T2   *++SP(32),B3      ; |1612| 
           LDDW    .D2T1   *++SP,A13:A12     ; |1612| 
           LDDW    .D2T1   *++SP,A15:A14     ; |1612| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1612| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1612| 

           LDW     .D2T1   *++SP(8),A10      ; |1612| 
||         RET     .S2     B3                ; |1612| 

           LDW     .D2T1   *++SP(8),A11      ; |1612| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1612| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead15ForceOneProcessEv

;******************************************************************************
;* FUNCTION NAME: LookAhead::ForceOneProcess()                                *
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
_ZN9LookAhead15ForceOneProcessEv:
;** --------------------------------------------------------------------------*
;** 555	-----------------------    this = (*this).m_data_buffer;
;** 409	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [88]
;** 411	-----------------------    buf_len = (*this).m_buffer_cur_length;  // [88]
;** 413	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [88]
;** 415	-----------------------    if ( (len = buf_len) <= 0 ) goto g35;  // [88]
           STW     .D2T1   A11,*SP--(8)      ; |554| 
           STW     .D2T1   A10,*SP--(8)      ; |554| 
           STDW    .D2T2   B13:B12,*SP--     ; |554| 
           STDW    .D2T2   B11:B10,*SP--     ; |554| 
           STDW    .D2T1   A15:A14,*SP--     ; |554| 
           STDW    .D2T1   A13:A12,*SP--     ; |554| 

           STW     .D2T2   B3,*SP--(16)      ; |554| 
||         MV      .L1     A4,A15            ; |554| 

           LDW     .D1T1   *+A15(4),A10      ; |555| 
           NOP             4

           CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(20),A4      ; |409| 

$C$RL145:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |409| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(20),A3      ; |413| 
           LDW     .D1T1   *+A10(8),A10      ; |411| 
           MV      .L2X    A4,B4             ; |413| 
           NOP             2

           MV      .L1     A3,A4             ; |413| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3

$C$RL146:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |413| 
;** --------------------------------------------------------------------------*
           EXT     .S1     A10,16,16,A11     ; |415| 
           CMPGT   .L1     A11,0,A0          ; |415| 

   [!A0]   BNOP    .S1     $C$L154,3         ; |415| 
|| [ A0]   LDW     .D1T2   *+A15(4),B10      ; |563| 

   [ A0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
   [ A0]   LDW     .D2T1   *+B10(20),A4      ; |339| 
           ; BRANCHCC OCCURS {$C$L154}       ; |415| 
;** --------------------------------------------------------------------------*
;** 563	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 343	-----------------------    if ( (*this).m_buffer_cur_length <= 0 ) goto g5;  // [90]
;** 344	-----------------------    pointer = (*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$12 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$12) ) goto g6;  // [90]
           ADDKPC  .S2     $C$RL147,B3,3     ; |339| 
$C$RL147:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*
;** 346	-----------------------    pointer -= (int)_lo(C$12);  // [90]
;** 346	-----------------------    goto g6;  // [90]
;**	-----------------------g5:
;** 341	-----------------------    pointer = NULL;  // [90]
;**	-----------------------g6:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 352	-----------------------    data = pointer;  // [90]
;** 577	-----------------------    v0 = (*this).m_last_speed;
;** 578	-----------------------    C$11 = (double *)data;
;** 578	-----------------------    v1 = C$11[172];
;** 579	-----------------------    U$40 = (struct ineData *)C$11;
;** 579	-----------------------    C$9 = (double *)U$40+1376;
;** 579	-----------------------    if ( v0 >= *C$9 ) goto g9;
           LDW     .D2T2   *+B10(8),B4       ; |343| 
           MVK     .S2     3816,B5           ; |345| 
           ZERO    .L1     A10               ; |341| 
           NOP             2
           CMPGT   .L2     B4,0,B0           ; |343| 
   [ B0]   LDW     .D2T2   *+B10(4),B6       ; |345| 
   [ B0]   LDW     .D2T2   *B10,B4           ; |345| 
   [ B0]   LDW     .D2T1   *+B10(16),A10     ; |344| 
   [!B0]   MVK     .L1     0x1,A0            ; |345| 
           NOP             1
   [ B0]   MPYLI   .M2     B5,B6,B13:B12     ; |345| 
           LDW     .D2T2   *+B10(20),B5      ; |350| 
           NOP             2
   [ B0]   ADD     .L2     B12,B4,B4         ; |345| 
           NOP             1
   [ B0]   CMPLTU  .L1X    A10,B4,A0         ; |345| 
   [!A0]   SUB     .L1X    A10,B12,A10       ; |346| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         MV      .L2X    A4,B4             ; |350| 
||         MV      .L1X    B5,A4             ; |350| 

$C$RL148:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MVK     .S1     1376,A3           ; |579| 
||         LDDW    .D1T1   *+A15(24),A5:A4   ; |577| 
||         MVK     .S2     2480,B5           ; |580| 
||         ZERO    .L2     B31

           ADD     .L1     A3,A10,A12        ; |579| 
||         ADD     .L2X    B5,A10,B6         ; |580| 
||         MVK     .S1     3784,A31          ; |580| 
||         STW     .D2T1   A10,*+SP(4)       ; |352| 
||         SET     .S2     B31,0x1e,0x1e,B5

           LDDW    .D1T1   *A12,A7:A6        ; |579| 
           MV      .L2X    A3,B4             ; |579| 
           ADD     .L2X    B4,A10,B4         ; |578| 
           ADD     .L1     A31,A10,A10       ; |580| 
           LDDW    .D2T2   *B4,B13:B12       ; |578| 
           CMPLTDP .S1     A5:A4,A7:A6,A0    ; |579| 
           ZERO    .L2     B4                ; |580| 

   [!A0]   B       .S1     $C$L147           ; |579| 
|| [!A0]   SUB     .L1     A11,1,A3          ; |590| 
||         MV      .D1     A0,A1             ; guard predicate rewrite
|| [ A0]   LDDW    .D2T2   *B6,B11:B10       ; |580| 

   [ A0]   CALL    .S2     pow               ; |580| 
|| [!A0]   EXT     .S1     A3,16,16,A14      ; |590| 
|| [!A1]   ZERO    .L1     A11:A10           ; |586| 

   [!A0]   CMPGT   .L1     A14,0,A0          ; |590| 
   [ A1]   MVK     .L1     0x1,A0            ; |586| nullify predicate
   [!A0]   BNOP    .S1     $C$L149,1         ; |590| 
           ; BRANCHCC OCCURS {$C$L147}       ; |579| 
;** --------------------------------------------------------------------------*
;** 580	-----------------------    C$10 = *((double *)U$40+2480);
;** 580	-----------------------    vmax = sqrt(pow(v0, 2.0)+(C$10+C$10)*(*data).acc);
;** 582	-----------------------    if ( vmax >= v1 ) goto g9;
;** 379	-----------------------    *C$9 = vmax;  // [73]
           ADDKPC  .S2     $C$RL149,B3,0     ; |580| 
$C$RL149:  ; CALL OCCURS {pow} {0}           ; |580| 
;** --------------------------------------------------------------------------*
           ADDDP   .L2     B11:B10,B11:B10,B5:B4 ; |580| 
           LDDW    .D1T1   *A10,A7:A6        ; |580| 
           NOP             6
           MPYDP   .M1X    A7:A6,B5:B4,A7:A6 ; |580| 
           NOP             9
           ADDDP   .L1     A7:A6,A5:A4,A5:A4 ; |580| 
           CALLP   .S2     sqrt,B3
$C$RL150:  ; CALL OCCURS {sqrt} {0}          ; |580| 
;** --------------------------------------------------------------------------*
           SUB     .L1     A11,1,A3          ; |590| 
           EXT     .S1     A3,16,16,A14      ; |590| 

           CMPGT   .L1     A14,0,A0          ; |590| 
||         CMPLTDP .S2X    A5:A4,B13:B12,B0  ; |582| 

   [!A0]   B       .S1     $C$L149           ; |590| 

   [ B0]   STDW    .D1T1   A5:A4,*A12        ; |379| 
||         ZERO    .L1     A11:A10           ; |586| 

;** --------------------------------------------------------------------------*
$C$L147:    
;**	-----------------------g9:
;** 586	-----------------------    min_square_f = 0.0;
;** 590	-----------------------    if ( (C$8 = (short)(len-1)) <= 0 ) goto g21;
   [ A0]   LDW     .D1T1   *+A15(4),A13      ; |591| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L149}       ; |590| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    i = C$8;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
           LDW     .D1T1   *+A13(20),A4      ; |339| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L148:    
;**	-----------------------g11:
;** 591	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 343	-----------------------    if ( i >= (*this).m_buffer_cur_length ) goto g14;  // [90]
;** 344	-----------------------    pointer = i*3816+(*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$7 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$7) ) goto g15;  // [90]
;** 346	-----------------------    pointer -= (int)_lo(C$7);  // [90]
;** 346	-----------------------    goto g15;  // [90]
;**	-----------------------g14:
;** 341	-----------------------    pointer = NULL;  // [90]
;**	-----------------------g15:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 352	-----------------------    next_data = pointer;  // [90]
;** 592	-----------------------    if ( next_data == NULL ) goto g20;
;** 592	-----------------------    if ( !(*next_data).interpolation_flag ) goto g20;
;** 593	-----------------------    C$6 = *((double *)next_data+1376);
;** 593	-----------------------    square_f = C$6*C$6;
;** 594	-----------------------    if ( square_f <= min_square_f ) goto g19;
;** 595	-----------------------    square_f = min_square_f;
;**	-----------------------g19:
;** 597	-----------------------    C$5 = (*next_data).acc;
;** 597	-----------------------    min_square_f = square_f+(C$5+C$5)**((double *)next_data+2480);
;**	-----------------------g20:
;** 590	-----------------------    if ( (--i) > 0 ) goto g11;
           ADDKPC  .S2     $C$RL151,B3,3     ; |339| 
$C$RL151:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A13(8),A3       ; |343| 
           MV      .L2X    A4,B4             ; |350| 
           LDW     .D1T1   *+A13(20),A4      ; |350| 
           NOP             2
           CMPLT   .L1     A14,A3,A3         ; |343| 
           MV      .L1     A3,A0             ; |343| 
   [ A0]   LDW     .D1T1   *+A13(4),A12      ; |345| 
   [ A0]   LDW     .D1T2   *+A13(16),B12     ; |344| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
|| [ A0]   LDW     .D1T2   *A13,B11          ; |345| 
||         MV      .L2X    A3,B10            ; |343| 

$C$RL152:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MVK     .S1     3816,A3           ; |344| 
||         MV      .L1X    B10,A0            ; |344| 

   [ A0]   MPYLI   .M1     A3,A12,A13:A12    ; |345| 
           MPYLI   .M1     A3,A14,A7:A6      ; |344| 
           NOP             2
   [ A0]   ADD     .L1X    A12,B11,A3        ; |345| 
   [ A0]   ADD     .L1X    B12,A6,A1         ; |344| 

   [ A0]   CMPLTU  .L1     A1,A3,A0          ; |345| 
|| [!A0]   MVK     .S1     0x1,A0            ; |345| 
|| [!A0]   ZERO    .D1     A1                ; |341| 

   [!A0]   SUB     .L1     A1,A12,A1         ; |346| 
||         MVK     .S1     270,A3            ; |592| 

   [ A1]   LDBU    .D1T1   *+A1[A3],A0       ; |592| 
   [!A1]   ZERO    .L1     A0
           NOP             3
   [ A0]   MVK     .S1     3784,A3           ; |597| 
   [ A0]   ADD     .L1     A3,A1,A3          ; |597| 

   [ A0]   LDDW    .D1T1   *A3,A7:A6         ; |597| 
|| [ A0]   MVK     .S1     1376,A3           ; |593| 

   [ A0]   ADD     .L1     A3,A1,A3          ; |593| 
   [ A0]   LDDW    .D1T1   *A3,A5:A4         ; |593| 
   [ A0]   MVK     .S2     2480,B4           ; |597| 
   [ A0]   ADD     .L2X    B4,A1,B4          ; |597| 
   [ A0]   ADDDP   .L1     A7:A6,A7:A6,A7:A6 ; |597| 
   [ A0]   LDDW    .D2T2   *B4,B5:B4         ; |597| 
   [ A0]   MPYDP   .M1     A5:A4,A5:A4,A5:A4 ; |593| 
           MV      .L2X    A0,B0
   [!A1]   MVK     .L1     0x1,A3
           NOP             3
   [ A0]   MPYDP   .M2X    B5:B4,A7:A6,B5:B4 ; |597| 
           NOP             3
   [ A0]   CMPGTDP .S1     A5:A4,A11:A10,A2  ; |594| 
   [!A1]   MV      .L2X    A3,B0
   [!B0]   ZERO    .L1     A2

   [!A1]   ZERO    .S1     A2
||         CMPGT   .L1     A14,1,A1          ; |590| 

   [ A1]   BNOP    .S2     $C$L148,2         ; |590| 
|| [ A1]   LDW     .D1T1   *+A15(4),A13      ; |591| 
|| [ A2]   MV      .L1     A10,A4            ; |595| 
|| [ A2]   MV      .S1     A11,A5            ; |595| 

   [ A0]   ADDDP   .L1X    B5:B4,A5:A4,A11:A10 ; |597| 
   [ A1]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 

   [ A1]   LDW     .D1T1   *+A13(20),A4      ; |339| 
||         SUB     .L1     A14,1,A14         ; |590| 

           ; BRANCHCC OCCURS {$C$L148}       ; |590| 
;** --------------------------------------------------------------------------*
$C$L149:    
;**	-----------------------g21:
;** 601	-----------------------    U$114 = data;
;** 601	-----------------------    Q$2 = 310;
;** 601	-----------------------    if ( min_square_f >= *((double *)data+1376)**((double *)U$114+1376) ) goto g23;
           LDW     .D2T1   *+SP(4),A4        ; |601| 
           MVK     .S2     1376,B4           ; |601| 
           LDW     .D2T2   *+SP(4),B11       ; |602| 
           MVK     .S2     0x136,B10         ; |601| 
           MVK     .S1     1376,A6           ; |602| 

           ADD     .L1X    B4,A4,A3          ; |601| 
||         ADD     .L2X    B4,A4,B4          ; |601| 

           LDDW    .D1T1   *A3,A5:A4         ; |601| 
||         LDDW    .D2T2   *B4,B5:B4         ; |601| 

           ADD     .L1X    A6,B11,A12        ; |602| 
           NOP             3
           MPYDP   .M1X    B5:B4,A5:A4,A5:A4 ; |601| 
           NOP             9
           CMPLTDP .S1     A11:A10,A5:A4,A0  ; |601| 

           MV      .L1     A10,A4            ; |602| 
||         MV      .D1     A11,A5            ; |602| 

   [!A0]   B       .S1     $C$L150           ; |601| 
|| [!A0]   LDDW    .D2T2   *+B11[B10],B5:B4  ; |606| 
|| [!A0]   LDDW    .D1T1   *+A15(32),A5:A4   ; |606| 

   [ A0]   CALL    .S1     sqrt              ; |602| 
           NOP             4
           ; BRANCHCC OCCURS {$C$L150}       ; |601| 
;** --------------------------------------------------------------------------*
;** 602	-----------------------    *((double *)U$114+1376) = sqrt(min_square_f);
           ADDKPC  .S2     $C$RL153,B3,0     ; |602| 
$C$RL153:  ; CALL OCCURS {sqrt} {0}          ; |602| 
;** --------------------------------------------------------------------------*
           STDW    .D1T1   A5:A4,*A12        ; |602| 

           LDDW    .D2T2   *+B11[B10],B5:B4  ; |606| 
||         LDDW    .D1T1   *+A15(32),A5:A4   ; |606| 

           NOP             4
;** --------------------------------------------------------------------------*
$C$L150:    
;**	-----------------------g23:
;** 606	-----------------------    (*this).m_dist_len = (*this).m_dist_len-*((Q$2<<3)+(double *)U$114);
;** 607	-----------------------    (*this).m_min_len = 0.0;
;** 608	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 343	-----------------------    if ( (*this).m_buffer_cur_length <= 0 ) goto g26;  // [90]
;** 344	-----------------------    pointer = (*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$4 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$4) ) goto g27;  // [90]
           SUBDP   .L1X    A5:A4,B5:B4,A5:A4 ; |606| 
           LDW     .D1T1   *+A15(4),A12      ; |608| 
           ZERO    .L1     A7:A6             ; |607| 
           STDW    .D1T1   A7:A6,*+A15(40)   ; |607| 
           NOP             3

           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
||         STDW    .D1T1   A5:A4,*+A15(32)   ; |606| 

           LDW     .D1T1   *+A12(20),A4      ; |339| 
           ADDKPC  .S2     $C$RL154,B3,3     ; |339| 
$C$RL154:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*
;** 346	-----------------------    pointer -= (int)_lo(C$4);  // [90]
;** 346	-----------------------    goto g27;  // [90]
;**	-----------------------g26:
;** 341	-----------------------    pointer = NULL;  // [90]
;**	-----------------------g27:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 110	-----------------------    if ( pointer == NULL ) goto g30;  // [47]
           LDW     .D1T1   *+A12(8),A3       ; |343| 
           MVK     .S1     3816,A5           ; |345| 
           NOP             3
           CMPGT   .L1     A3,0,A0           ; |343| 
   [ A0]   LDW     .D1T1   *+A12(4),A6       ; |345| 
   [ A0]   LDW     .D1T1   *A12,A3           ; |345| 
   [ A0]   LDW     .D1T2   *+A12(16),B4      ; |344| 
   [!A0]   MVK     .L2     0x1,B0            ; |345| 
           NOP             1
   [ A0]   MPYLI   .M1     A5,A6,A11:A10     ; |345| 
           NOP             3
   [ A0]   ADD     .L1     A10,A3,A3         ; |345| 
           ZERO    .L1     A11               ; |341| 

   [ A0]   CMPLTU  .L2X    B4,A3,B0          ; |345| 
|| [ A0]   MV      .L1X    B4,A11            ; |344| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         MV      .L2X    A4,B4             ; |350| 
||         LDW     .D1T1   *+A12(20),A4      ; |350| 
|| [!B0]   SUB     .L1     A11,A10,A11       ; |346| 

$C$RL155:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MV      .L1     A11,A0            ; |117| 
||         MVK     .S1     270,A10           ; |120| 

   [!A0]   B       .S1     $C$L152           ; |110| 
|| [!A0]   LDW     .D1T1   *+A15(4),A10      ; |609| 

   [ A0]   CALL    .S1     _ZN13Interpolation23InsertInterpolationDataEP8LineData ; |117| 
   [ A0]   LDW     .D1T1   *A15,A4           ; |117| 
           MV      .L2X    A11,B4            ; |120| 
   [!A0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |365| 
   [!A0]   LDW     .D1T1   *+A10(20),A4      ; |365| 
           ; BRANCHCC OCCURS {$C$L152}       ; |110| 
;** --------------------------------------------------------------------------*
;** 117	-----------------------    Interpolation::InsertInterpolationData((*this).m_interpolator, pointer);  // [47]
;** 120	-----------------------    if ( !(*pointer).interpolation_flag ) goto g30;  // [47]
           ADDKPC  .S2     $C$RL156,B3,0     ; |117| 
$C$RL156:  ; CALL OCCURS {_ZN13Interpolation23InsertInterpolationDataEP8LineData} {0}  ; |117| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B4
           MV      .L2X    A10,B5
           LDBU    .D2T2   *+B4[B5],B0       ; |120| 
           MVK     .S1     1376,A3           ; |121| 
           ADDAD   .D1     A15,7,A4          ; |122| 
           MVK     .L1     1,A10             ; |123| 
           ADD     .L2X    A3,B4,B5          ; |121| 

   [!B0]   B       .S1     $C$L151           ; |120| 
|| [!B0]   LDW     .D1T1   *+A15(4),A10      ; |609| 
|| [ B0]   LDDW    .D2T2   *B5,B7:B6         ; |121| 

   [ B0]   CALL    .S1     memcpy            ; |122| 
           MVK     .S2     1432,B31          ; |122| 
           MVK     .S1     48,A12            ; |123| 
           MVK     .S1     0x621,A6          ; |122| 
           ADD     .L2     B31,B4,B4         ; |122| 
           ; BRANCHCC OCCURS {$C$L151}       ; |120| 
;** --------------------------------------------------------------------------*
;** 121	-----------------------    (*this).m_last_speed = *((double *)pointer+1376);  // [47]
;** 122	-----------------------    memcpy((struct xisMovData *)this+56, (struct xisMovData *)pointer+1432, 1569u);  // [47]
;** 123	-----------------------    (*this).m_has_position = 1;  // [47]

           STDW    .D1T2   B7:B6,*+A15(24)   ; |121| 
||         ADDKPC  .S2     $C$RL157,B3,0     ; |122| 

$C$RL157:  ; CALL OCCURS {memcpy} {0}        ; |122| 
;** --------------------------------------------------------------------------*
           STB     .D1T1   A10,*+A15[A12]    ; |123| 
           LDW     .D1T1   *+A15(4),A10      ; |609| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L151:    
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |365| 
           LDW     .D1T1   *+A10(20),A4      ; |365| 
;** --------------------------------------------------------------------------*
$C$L152:    
;**	-----------------------g30:
;** 609	-----------------------    this = (*this).m_data_buffer;
;** 365	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [91]
;** 367	-----------------------    if ( (*this).m_buffer_cur_length <= 0 ) goto g34;  // [91]
           ADDKPC  .S2     $C$RL158,B3,3     ; |365| 
$C$RL158:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |365| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(8),A3       ; |367| 
           MV      .L2X    A4,B4             ; |365| 
           MVK     .S1     3816,A4           ; |369| 
           NOP             2
           CMPGT   .L1     A3,0,A0           ; |367| 

   [!A0]   B       .S1     $C$L153           ; |367| 
|| [ A0]   LDW     .D1T1   *+A10(16),A3      ; |368| 

   [ A0]   LDW     .D1T1   *+A10(4),A5       ; |369| 
           NOP             3
           ADDK    .S1     3816,A3           ; |368| 
           ; BRANCHCC OCCURS {$C$L153}       ; |367| 
;** --------------------------------------------------------------------------*
;** 368	-----------------------    (*this).m_read_pointer = (*this).m_read_pointer+3816;  // [91]
;** 369	-----------------------    C$3 = _mpyli(3816, (*this).m_buffer_total_length);  // [91]
;** 369	-----------------------    C$2 = (*this).m_read_pointer;  // [91]
;** 369	-----------------------    if ( C$2 < (*this).m_buffer+_lo(C$3) ) goto g33;  // [91]
;** 370	-----------------------    (*this).m_read_pointer = C$2-(int)_lo(C$3);  // [91]
;**	-----------------------g33:
;** 372	-----------------------    (*this).m_buffer_cur_length = (*this).m_buffer_cur_length-1;  // [91]

           LDW     .D1T1   *A10,A6           ; |369| 
||         MPYLI   .M1     A4,A5,A5:A4       ; |369| 

           STW     .D1T1   A3,*+A10(16)      ; |368| 
           LDW     .D1T1   *+A10(16),A3      ; |369| 
           LDW     .D1T1   *+A10(8),A7       ; |372| 
           NOP             2
           ADD     .L1     A4,A6,A6          ; |369| 

           CMPLTU  .L1     A3,A6,A0          ; |369| 
||         SUB     .S1     A3,A4,A3          ; |370| 

           SUB     .L1     A7,1,A31          ; |372| 
|| [!A0]   STW     .D1T1   A3,*+A10(16)      ; |370| 

           STW     .D1T1   A31,*+A10(8)      ; |372| 
;** --------------------------------------------------------------------------*
$C$L153:    
;**	-----------------------g34:
;** 375	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [91]
;**	-----------------------g35:
;**  	-----------------------    return;

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D1T1   *+A10(20),A4      ; |375| 

$C$RL159:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |375| 
;** --------------------------------------------------------------------------*
$C$L154:    
           LDW     .D2T2   *++SP(16),B3      ; |610| 
           LDDW    .D2T1   *++SP,A13:A12     ; |610| 
           LDDW    .D2T1   *++SP,A15:A14     ; |610| 
           LDDW    .D2T2   *++SP,B11:B10     ; |610| 
           LDDW    .D2T2   *++SP,B13:B12     ; |610| 

           LDW     .D2T1   *++SP(8),A10      ; |610| 
||         RET     .S2     B3                ; |610| 

           LDW     .D2T1   *++SP(8),A11      ; |610| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |610| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead13NormalProcessEv

;******************************************************************************
;* FUNCTION NAME: LookAhead::NormalProcess()                                  *
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
_ZN9LookAhead13NormalProcessEv:
;** --------------------------------------------------------------------------*
;** 616	-----------------------    U$2 = (*this).m_min_len;
;** 616	-----------------------    if ( U$2 != 0.0 ) goto g3;
           STW     .D2T2   B13,*SP--(8)      ; |613| 

           STDW    .D2T1   A11:A10,*SP--     ; |613| 
||         MV      .L1     A4,A10            ; |613| 

           LDDW    .D1T1   *+A10(40),A7:A6   ; |616| 
           ZERO    .L1     A5:A4             ; |616| 
           ZERO    .L2     B4                ; |619| 
           MV      .L2     B3,B13            ; |613| 
           NOP             1
           CMPEQDP .S1     A7:A6,A5:A4,A0    ; |616| 
           MV      .L1     A10,A4            ; |619| 

   [!A0]   B       .S1     $C$L155           ; |616| 
|| [!A0]   LDDW    .D1T1   *+A10(32),A5:A4   ; |625| 

   [ A0]   CALL    .S1     _ZN9LookAhead17CalculateStopDistEi ; |619| 
   [!A0]   MVK     .L1     0x1,A11           ; |630| 
           NOP             2
   [!A0]   CMPLTDP .S1     A5:A4,A7:A6,A0    ; |625| 
           ; BRANCHCC OCCURS {$C$L155}       ; |616| 
;** --------------------------------------------------------------------------*
;** 619	-----------------------    stop_dist = LookAhead::CalculateStopDist(this, 0);
;** 622	-----------------------    (*this).m_min_len = (*this).m_min_len+stop_dist;
;**  	-----------------------    U$2 = (*this).m_min_len;
           ADDKPC  .S2     $C$RL160,B3,0     ; |619| 
$C$RL160:  ; CALL OCCURS {_ZN9LookAhead17CalculateStopDistEi} {0}  ; |619| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A10(40),A7:A6   ; |622| 
           MVK     .L1     0x1,A11           ; |630| 
           NOP             3
           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |622| 
           NOP             6
           STDW    .D1T1   A5:A4,*+A10(40)   ; |622| 
           LDDW    .D1T1   *+A10(40),A7:A6
           LDDW    .D1T1   *+A10(32),A5:A4   ; |625| 
           NOP             4
           CMPLTDP .S1     A5:A4,A7:A6,A0    ; |625| 
;** --------------------------------------------------------------------------*
$C$L155:    
;**	-----------------------g3:
;** 625	-----------------------    if ( (*this).m_dist_len < U$2 ) goto g5;
           MV      .L1     A10,A4            ; |627| 

   [ A0]   B       .S1     $C$L156           ; |625| 
|| [ A0]   MV      .L2     B13,B3            ; |631| 
|| [ A0]   LDDW    .D2T1   *++SP,A11:A10     ; |631| 
|| [ A0]   ZERO    .L1     A4                ; |630| 

   [!A0]   CALL    .S1     _ZN9LookAhead15ForceOneProcessEv ; |627| 
|| [ A0]   LDW     .D2T2   *++SP(8),B13      ; |631| 

   [ A0]   RETNOP  .S2     B3,3              ; |631| 
           ; BRANCHCC OCCURS {$C$L156}       ; |625| 
;** --------------------------------------------------------------------------*
;** 627	-----------------------    LookAhead::ForceOneProcess(this);
;** 630	-----------------------    return 1;
           ADDKPC  .S2     $C$RL161,B3,0     ; |627| 
$C$RL161:  ; CALL OCCURS {_ZN9LookAhead15ForceOneProcessEv} {0}  ; |627| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |631| 

           RET     .S2     B3                ; |631| 
||         MV      .L1     A11,A4            ; |630| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |631| 

           LDW     .D2T2   *++SP(8),B13      ; |631| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |631| 
;** --------------------------------------------------------------------------*
$C$L156:    
;**	-----------------------g5:
;** 630	-----------------------    return 0;
           NOP             2
           ; BRANCH OCCURS {B3}              ; |631| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead15LookAheadHandleEv

;******************************************************************************
;* FUNCTION NAME: LookAhead::LookAheadHandle()                                *
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
;*   Local Frame Size  : 0 Args + 28 Auto + 56 Save = 84 byte                 *
;******************************************************************************
_ZN9LookAhead15LookAheadHandleEv:
;** --------------------------------------------------------------------------*
;** 219	-----------------------    this = (*this).m_data_buffer;
;** 409	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [88]
;** 411	-----------------------    buf_len = (*this).m_buffer_cur_length;  // [88]
;** 413	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [88]
;** 415	-----------------------    len = buf_len;  // [88]
;** 221	-----------------------    C$19 = (*this).m_prepare_count;
;** 221	-----------------------    if ( len <= C$19 ) goto g85;
           STW     .D2T1   A11,*SP--(8)      ; |218| 
           STW     .D2T1   A10,*SP--(8)      ; |218| 
           STDW    .D2T2   B13:B12,*SP--     ; |218| 
           STDW    .D2T2   B11:B10,*SP--     ; |218| 
           STDW    .D2T1   A15:A14,*SP--     ; |218| 
           STDW    .D2T1   A13:A12,*SP--     ; |218| 

           STW     .D2T2   B3,*SP--(40)      ; |218| 
||         MV      .L1     A4,A11            ; |218| 

           LDW     .D1T1   *+A11(4),A10      ; |219| 
           NOP             4

           CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(20),A4      ; |409| 

$C$RL162:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |409| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A10(8),B10      ; |411| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         MV      .L2X    A4,B4             ; |413| 
||         LDW     .D1T1   *+A10(20),A4      ; |413| 

$C$RL163:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |413| 
;** --------------------------------------------------------------------------*
           MVK     .S1     1640,A3           ; |221| 
           ADD     .L1     A3,A11,A3         ; |221| 
           LDH     .D1T1   *A3,A3            ; |221| 
           EXT     .S2     B10,16,16,B10     ; |415| 
           NOP             3

           CMPGT   .L1X    B10,A3,A0         ; |221| 
||         STW     .D2T1   A3,*+SP(16)       ; |226| 

   [!A0]   B       .S2     $C$L194           ; |221| 
|| [ A0]   SUB     .L1     A3,1,A14          ; |230| 
||         MV      .D1     A0,A2             ; |221| branch predicate copy
|| [ A0]   MVK     .S1     270,A10           ; |232| 

   [ A0]   EXT     .S1     A14,16,16,A3      ; |231| 
||         LDW     .D2T1   *+SP(16),A0       ; |231| 

   [!A2]   LDHU    .D1T1   *+A11(8),A3       ; |364| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L194}       ; |221| 
;** --------------------------------------------------------------------------*
;** 226	-----------------------    if ( !(cur = C$19) ) goto g12;

           LDW     .D2T2   *+SP(16),B4       ; |231| 
|| [!A0]   B       .S1     $C$L159           ; |226| 

   [ A0]   CALL    .S1     _ZN14CircularBufferI8LineDataE11ReadDataPtrEs ; |231| 
   [ A0]   LDW     .D1T1   *+A11(4),A4       ; |231| 
           NOP             2

           CMPGT   .L2     B4,1,B11          ; |232| 
||         MV      .S2X    A3,B4             ; |231| 
|| [!A0]   LDW     .D2T2   *+SP(16),B4

           ; BRANCHCC OCCURS {$C$L159}       ; |226| 
;** --------------------------------------------------------------------------*
;** 230	-----------------------    index = cur-1;
;** 231	-----------------------    data = CircularBuffer<LineData>::ReadDataPtr((*this).m_data_buffer, (short)index);
;** 232	-----------------------    if ( !(((*data).interpolation_flag == 0u)&(index > 0)) ) goto g10;
           ADDKPC  .S2     $C$RL164,B3,0     ; |231| 
$C$RL164:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE11ReadDataPtrEs} {0}  ; |231| 
;** --------------------------------------------------------------------------*
           LDBU    .D1T1   *+A4[A10],A3      ; |232| 
           NOP             4
           CMPEQ   .L1     A3,0,A3           ; |232| 
           NOP             1
           AND     .L2X    B11,A3,B0         ; |232| 

   [!B0]   BNOP    .S1     $C$L158,5         ; |232| 
|| [ B0]   LDW     .D1T1   *+A11(4),A15      ; |234| 

           ; BRANCHCC OCCURS {$C$L158}       ; |232| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
           LDW     .D1T1   *+A15(20),A4      ; |339| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L157:    
;**	-----------------------g5:
;** 234	-----------------------    C$18 = index-1;
;** 234	-----------------------    pos = C$18;
;** 234	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 233	-----------------------    index = C$18;
;** 341	-----------------------    pointer = NULL;  // [90]
;** 343	-----------------------    if ( pos < 0 ) goto g9;  // [90]
;** 343	-----------------------    if ( pos >= (*this).m_buffer_cur_length ) goto g9;  // [90]
;** 344	-----------------------    pointer = pos*3816+(*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$17 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$17) ) goto g9;  // [90]
;** 346	-----------------------    pointer -= (int)_lo(C$17);  // [90]
;**	-----------------------g9:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 352	-----------------------    data = pointer;  // [90]
;** 232	-----------------------    if ( !((*data).interpolation_flag|(index <= 0)) ) goto g5;
           ADDKPC  .S2     $C$RL165,B3,3     ; |339| 
$C$RL165:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*
           SUB     .L1     A14,1,A10         ; |234| 
           EXT     .S1     A10,16,16,A3      ; |234| 
           CMPLT   .L1     A3,0,A5           ; |343| 
           MV      .L1     A5,A0             ; |343| 

           MV      .L2X    A5,B12            ; |343| 
|| [!A0]   LDW     .D1T1   *+A15(8),A5       ; |343| 

   [ A0]   ZERO    .L2     B11
           MV      .L2X    A4,B4             ; |350| 
           LDW     .D1T1   *+A15(20),A4      ; |350| 
           NOP             1
   [!A0]   CMPLT   .L1     A3,A5,A3          ; |343| 
           NOP             1
   [!A0]   MV      .L2X    A3,B11            ; |343| 
           NOP             1
           MV      .L1X    B11,A0            ; |343| 
   [ A0]   LDW     .D1T2   *A15,B13          ; |345| 
   [ A0]   LDW     .D1T1   *+A15(4),A13      ; |345| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
|| [ A0]   LDW     .D1T1   *+A15(16),A15     ; |344| 

$C$RL166:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MV      .L1X    B11,A0            ; |350| 
||         MVK     .S1     3816,A3           ; |344| 
||         ZERO    .D1     A4                ; |341| 
||         MV      .L2     B11,B0            ; |345| 

           MVK     .S1     270,A31           ; |232| 
|| [ A0]   MPYLI   .M1     A3,A13,A13:A12    ; |345| 

           MPYUS   .M1     A3,A10,A3         ; |344| 
           MV      .L1X    B11,A1            ; |344| 
   [ A0]   ADD     .L1     A15,A3,A4         ; |344| 
   [ A0]   ADD     .L1X    A12,B13,A3        ; |345| 

           MV      .S1X    B12,A0            ; |345| 
|| [ B0]   CMPLTU  .L1     A4,A3,A2          ; |345| 

   [ A0]   MVK     .L1     0x1,A1
   [!A1]   MVK     .L1     0x1,A2
   [ A0]   MVK     .L1     0x1,A2
   [!A2]   SUB     .L1     A4,A12,A4         ; |346| 
           LDBU    .D1T1   *+A4[A31],A3      ; |232| 
           CMPGT   .L2X    A14,1,B4          ; |232| 
           XOR     .L2     1,B4,B4           ; |232| 
           MV      .L1     A10,A14           ; |233| 
           NOP             1
           OR      .L2X    B4,A3,B0          ; |232| 

   [!B0]   BNOP    .S1     $C$L157,3         ; |232| 
|| [!B0]   LDW     .D1T1   *+A11(4),A15      ; |234| 

   [!B0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
   [!B0]   LDW     .D1T1   *+A15(20),A4      ; |339| 
           ; BRANCHCC OCCURS {$C$L157}       ; |232| 
;** --------------------------------------------------------------------------*
$C$L158:    
;**	-----------------------g10:
;** 236	-----------------------    if ( !(*data).interpolation_flag ) goto g12;
;** 243	-----------------------    (*this).m_pre_data = data;
           MVK     .S1     270,A3            ; |236| 
           LDBU    .D1T1   *+A4[A3],A0       ; |236| 
           MVK     .S1     1648,A31          ; |243| 
           ADD     .L1     A31,A11,A3        ; |243| 
           LDW     .D2T2   *+SP(16),B4
           NOP             1
   [ A0]   STW     .D1T1   A4,*A3            ; |243| 
;** --------------------------------------------------------------------------*
$C$L159:    
;**	-----------------------g12:
;** 247	-----------------------    if ( cur >= len ) goto g85;
           NOP             4
           CMPLT   .L2     B4,B10,B0         ; |247| 

   [!B0]   BNOP    .S1     $C$L193,5         ; |247| 
|| [ B0]   LDW     .D1T1   *+A11(4),A12      ; |248| 

           ; BRANCHCC OCCURS {$C$L193}       ; |247| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
           LDW     .D1T1   *+A12(20),A4      ; |339| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L160
;** --------------------------------------------------------------------------*
$C$L160:    
;**	-----------------------g14:
;** 248	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 341	-----------------------    pointer = NULL;  // [90]
;** 343	-----------------------    if ( cur < 0 ) goto g18;  // [90]
           ADDKPC  .S2     $C$RL167,B3,3     ; |339| 
$C$RL167:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(16),B5       ; |339| 
           MV      .L2X    A4,B4             ; |339| 
           ZERO    .L1     A10               ; |341| 
           NOP             2
           CMPLT   .L2     B5,0,B0           ; |343| 

           MV      .L2     B0,B2             ; |343| branch predicate copy
|| [!B0]   LDW     .D1T1   *+A12(8),A3       ; |343| 
|| [ B0]   B       .S1     $C$L162           ; |343| 

   [ B2]   CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |350| 
   [ B2]   LDW     .D1T1   *+A12(20),A4      ; |350| 
           NOP             2
           CMPLT   .L2X    B5,A3,B0          ; |343| 
           ; BRANCHCC OCCURS {$C$L162}       ; |343| 
;** --------------------------------------------------------------------------*
;** 343	-----------------------    if ( cur >= (*this).m_buffer_cur_length ) goto g18;  // [90]

   [ B0]   LDW     .D1T1   *+A12(4),A4       ; |345| 
|| [ B0]   LDW     .D2T2   *+SP(16),B6       ; |345| 
|| [ B0]   MVK     .S1     3816,A5           ; |345| 
|| [ B0]   MVK     .S2     3816,B5           ; |344| 

   [!B0]   BNOP    .S1     $C$L161,2         ; |343| 
|| [ B0]   LDW     .D1T1   *+A12(16),A6      ; |344| 

   [ B0]   LDW     .D1T1   *A12,A3           ; |345| 

   [ B0]   MPYUS   .M2     B5,B6,B5          ; |344| 
||         MPYLI   .M1     A5,A4,A5:A4       ; |345| 

           NOP             1
           ; BRANCHCC OCCURS {$C$L161}       ; |343| 
;** --------------------------------------------------------------------------*
;** 344	-----------------------    pointer = cur*3816+(*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$16 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$16) ) goto g18;  // [90]
;** 346	-----------------------    pointer -= (int)_lo(C$16);  // [90]
           ADD     .L1X    A6,B5,A10         ; |344| 
           NOP             1
           ADD     .L1     A4,A3,A3          ; |345| 
           CMPLTU  .L1     A10,A3,A0         ; |345| 
   [!A0]   SUB     .L1     A10,A4,A10        ; |346| 
;** --------------------------------------------------------------------------*
$C$L161:    
           CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |350| 
           LDW     .D1T1   *+A12(20),A4      ; |350| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L162:    
;**	-----------------------g18:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 352	-----------------------    data = pointer;  // [90]
;** 255	-----------------------    if ( !(*data).interpolation_flag ) goto g20;
           ADDKPC  .S2     $C$RL168,B3,0     ; |350| 
$C$RL168:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MV      .L1     A10,A4            ; |352| 
||         STW     .D2T1   A10,*+SP(24)      ; |352| 
||         MVK     .S1     270,A3            ; |255| 

           LDBU    .D1T1   *+A4[A3],A0       ; |255| 
           MVK     .S1     1648,A3           ; |262| 
           ADD     .L1     A3,A11,A3         ; |262| 
           NOP             2

   [!A0]   B       .S2     $C$L163           ; |255| 
|| [!A0]   MV      .L1     A10,A4            ; |265| 
|| [!A0]   MVK     .S1     268,A3            ; |265| 
|| [ A0]   LDW     .D1T2   *A3,B4            ; |262| 

   [ A0]   CALL    .S1     _ZN9LookAhead14PrepareProcessEP8LineDataS1_ ; |262| 
|| [!A0]   LDBU    .D1T1   *+A4[A3],A0       ; |265| 

           NOP             4
           ; BRANCHCC OCCURS {$C$L163}       ; |255| 
;** --------------------------------------------------------------------------*
;** 262	-----------------------    LookAhead::PrepareProcess(this, (*this).m_pre_data, data);

           MV      .L1     A4,A6             ; |262| 
||         MV      .S1     A11,A4            ; |262| 
||         ADDKPC  .S2     $C$RL169,B3,0     ; |262| 

$C$RL169:  ; CALL OCCURS {_ZN9LookAhead14PrepareProcessEP8LineDataS1_} {0}  ; |262| 

           MVK     .S1     268,A3            ; |265| 
||         MV      .L1     A10,A4            ; |265| 

           LDBU    .D1T1   *+A4[A3],A0       ; |265| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L163:    
;**	-----------------------g20:
;** 265	-----------------------    if ( (*data).over_flag ) goto g53;

           MV      .L1     A4,A12
||         MV      .D1     A0,A1             ; branch predicate copy
|| [ A0]   B       .S2     $C$L177           ; |265| 
|| [!A0]   MVK     .S1     0x54c,A3          ; |292| 

   [!A0]   LDB     .D1T1   *+A3[A12],A0      ; |292| 
|| [ A1]   ADD     .L1     2,A3,A3

   [ A1]   LDBU    .D1T1   *+A10[A3],A0      ; |273| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L177}       ; |265| 
;** --------------------------------------------------------------------------*
;** 292	-----------------------    U$95 = data;
;** 292	-----------------------    Q$2 = 1354;
;** 292	-----------------------    if ( *((Q$4 = 1356)+(char *)U$95) ) goto g34;

   [ A0]   MVK     .S2     1376,B4           ; |298| 
|| [ A0]   B       .S1     $C$L170           ; |292| 
|| [ A0]   LDW     .D2T2   *+SP(16),B12      ; |298| 

   [!A0]   CALL    .S1     _ZN8LineData10NeedToStopEv ; |292| 
           ADD     .L2X    -2,A3,B11
   [ A0]   ADD     .L2X    B4,A12,B11        ; |298| 
   [ A0]   ZERO    .L2     B5:B4             ; |298| 
   [ A0]   CMPGT   .L1X    B12,0,A0          ; |306| 
           ; BRANCHCC OCCURS {$C$L170}       ; |292| 
;** --------------------------------------------------------------------------*
;** 292	-----------------------    if ( LineData::NeedToStop(data) ) goto g34;
           ADDKPC  .S2     $C$RL170,B3,0     ; |292| 
$C$RL170:  ; CALL OCCURS {_ZN8LineData10NeedToStopEv} {0}  ; |292| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |292| 

   [ A0]   B       .S1     $C$L170           ; |292| 
|| [ A0]   LDW     .D2T2   *+SP(16),B12      ; |298| 
|| [ A0]   MVK     .S2     1376,B4           ; |298| 

   [!A0]   CALL    .S1     _ZN9MCommands6HasCmdEj ; |292| 
   [ A0]   ADD     .L2X    B4,A12,B11        ; |298| 
   [!A0]   MVK     .S1     3128,A3           ; |292| 
   [ A0]   ZERO    .L2     B5:B4             ; |298| 
   [ A0]   CMPGT   .L1X    B12,0,A0          ; |306| 
           ; BRANCHCC OCCURS {$C$L170}       ; |292| 
;** --------------------------------------------------------------------------*
;** 292	-----------------------    if ( MCommands::HasCmd((struct Commands *)data+3128, 1u) ) goto g34;

           MVK     .L2     0x1,B4            ; |292| 
||         ADD     .L1     A3,A12,A4         ; |292| 
||         ADDKPC  .S2     $C$RL171,B3,0     ; |292| 

$C$RL171:  ; CALL OCCURS {_ZN9MCommands6HasCmdEj} {0}  ; |292| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |292| 

           MV      .L1     A0,A1             ; |292| branch predicate copy
|| [!A0]   LDW     .D1T1   *+A11(12),A3      ; |292| 
|| [ A0]   B       .S1     $C$L169           ; |292| 

   [ A1]   LDW     .D2T2   *+SP(16),B12      ; |298| 
   [!A0]   MVK     .S1     159,A4            ; |292| 
   [ A1]   MVK     .S2     1376,B4           ; |298| 
           NOP             1
   [!A0]   LDBU    .D1T1   *+A3[A4],A0       ; |292| 
           ; BRANCHCC OCCURS {$C$L169}       ; |292| 
;** --------------------------------------------------------------------------*
;** 292	-----------------------    if ( (*(*this).m_channel_config).machining_mode ) goto g34;
           MV      .L1X    B11,A3
           NOP             3

   [!A0]   MVK     .S2     3672,B4           ; |292| 
|| [!A0]   LDBU    .D1T1   *+A3[A12],A3      ; |292| 
|| [!A0]   MVK     .S1     269,A4            ; |292| 
|| [!A0]   ZERO    .L2     B6                ; |292| 

   [!A0]   MVK     .S1     3808,A31          ; |292| 
|| [!A0]   ADD     .L2X    B4,A12,B4         ; |292| 
|| [ A0]   B       .S2     $C$L168           ; |292| 

   [!A0]   LDDW    .D2T2   *B4,B5:B4         ; |292| 
   [!A0]   LDBU    .D1T1   *+A10[A4],A5      ; |292| 
   [!A0]   LDBU    .D1T1   *+A10[A31],A6     ; |292| 
           CMPEQ   .L1     A3,1,A4           ; |292| 
   [!A0]   CMPEQ   .L2X    A3,2,B7           ; |292| 
           ; BRANCHCC OCCURS {$C$L168}       ; |292| 
;** --------------------------------------------------------------------------*
;** 292	-----------------------    C$15 = *(Q$2+(unsigned char *)U$95);
;** 292	-----------------------    if ( !((((C$15 == 1)|(C$15 == 2)|(*data).protection_zone_alarm_flag|(*data).feedback_flag) == 0)&(*((unsigned long long *)U$95+3672) == 0uLL)) ) goto g34;

           CMPEQ   .L2     B5,B6,B0          ; |292| 
||         OR      .S2X    B7,A4,B5          ; |292| 
||         MVK     .S1     1648,A3           ; |327| 

           OR      .S2X    A5,B5,B5          ; |292| 
|| [ B0]   CMPEQ   .L2     B4,B6,B0          ; |292| 
||         ADD     .L1     A3,A11,A3         ; |327| 

           OR      .L2X    A6,B5,B4          ; |292| 
           CMPEQ   .L2     B4,0,B4           ; |292| 
           AND     .L2     B0,B4,B0          ; |292| 

   [!B0]   BNOP    .S1     $C$L170,2         ; |292| 
|| [ B0]   LDW     .D1T1   *A3,A0            ; |327| 
|| [!B0]   LDW     .D2T2   *+SP(16),B12      ; |298| 
|| [!B0]   MVK     .L1     0x1,A0            ; |327| nullify predicate
|| [!B0]   MVK     .S2     1376,B4           ; |298| 

   [!B0]   ADD     .L2X    B4,A12,B11        ; |298| 
   [!B0]   ZERO    .L2     B5:B4             ; |298| 

   [!A0]   B       .S1     $C$L165           ; |327| 
|| [!B0]   CMPGT   .L1X    B12,0,A0          ; |306| 

           ; BRANCHCC OCCURS {$C$L170}       ; |292| 
;** --------------------------------------------------------------------------*
;** 327	-----------------------    C$13 = (*this).m_pre_data;
;** 327	-----------------------    if ( C$13 == NULL ) goto g31;
           LDW     .D2T2   *+SP(16),B4
           MVK     .S1     270,A3            ; |327| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L165}       ; |327| 
;** --------------------------------------------------------------------------*
;** 327	-----------------------    if ( !(U$27 = (*data).interpolation_flag) ) goto g31;
           LDBU    .D1T1   *+A10[A3],A13     ; |327| 
           MVK     .S1     1376,A3           ; |330| 
           ADD     .L1     A3,A0,A3          ; |330| 
           NOP             2
           MV      .L2X    A13,B0

   [!B0]   BNOP    .S1     $C$L164,1         ; |327| 
|| [ B0]   LDDW    .D1T1   *A3,A5:A4         ; |330| 
|| [ B0]   MVK     .S2     3784,B4           ; |330| 
|| [!B0]   LDW     .D2T2   *+SP(16),B4

   [ B0]   ADD     .L2X    B4,A10,B4         ; |330| 
   [ B0]   LDDW    .D2T2   *B4,B5:B4         ; |330| 
           NOP             1
           MPYDP   .M1     A5:A4,A5:A4,A5:A4 ; |330| 
           ; BRANCHCC OCCURS {$C$L164}       ; |327| 
;** --------------------------------------------------------------------------*
;** 330	-----------------------    C$14 = (*data).acc;
;** 330	-----------------------    C$12 = *((double *)C$13+1376);
;** 330	-----------------------    if ( *((double *)U$95+2480) >= C$12*C$12/(C$14+C$14) ) goto g30;
;** 345	-----------------------    ++cur;
;** 345	-----------------------    goto g32;
           NOP             2
           ADDDP   .L2     B5:B4,B5:B4,B5:B4 ; |330| 
           CALL    .S1     __c6xabi_divd     ; |330| 
           ADDKPC  .S2     $C$RL172,B3,4     ; |330| 
$C$RL172:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |330| 
;** --------------------------------------------------------------------------*
           MVK     .S1     2480,A3           ; |330| 
           ADD     .L1     A3,A12,A3         ; |330| 
           LDDW    .D1T1   *A3,A7:A6         ; |330| 
           LDW     .D2T2   *+SP(16),B4       ; |330| 
           NOP             3
           CMPLTDP .S1     A7:A6,A5:A4,A0    ; |330| 
           ADD     .L2     1,B4,B4           ; |345| 

   [ A0]   B       .S1     $C$L167           ; |345| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
|| [!A0]   LDW     .D2T2   *+SP(16),B4       ; |339| 
|| [ A0]   EXT     .S2     B4,16,16,B4       ; |345| 

   [!A0]   CALL    .S1     _ZN9LookAhead16GetLookAheadDataEsb ; |339| 
|| [ A0]   STW     .D2T2   B4,*+SP(16)       ; |345| 

   [ A0]   MV      .L1     A13,A0
   [ A1]   BNOP    .S1     $C$L191,2         ; |357| 
           ; BRANCHCC OCCURS {$C$L167}       ; |345| 
;** --------------------------------------------------------------------------*
;**	-----------------------g30:
;** 339	-----------------------    LookAhead::GetLookAheadData(this, cur, 0);
;** 342	-----------------------    len -= cur;
;**  	-----------------------    U$27 = (*data).interpolation_flag;
;** 343	-----------------------    cur = 1;
;** 344	-----------------------    goto g32;

           ZERO    .L1     A6                ; |339| 
||         MV      .S1     A11,A4            ; |339| 
||         ADDKPC  .S2     $C$RL173,B3,0     ; |339| 

$C$RL173:  ; CALL OCCURS {_ZN9LookAhead16GetLookAheadDataEsb} {0}  ; |339| 
;** --------------------------------------------------------------------------*

           LDW     .D2T2   *+SP(16),B4       ; |339| 
||         MVK     .S1     270,A3
||         MVK     .L2     0x1,B31           ; |343| 

           BNOP    .S1     $C$L166,3         ; |344| 
||         LDBU    .D1T1   *+A10[A3],A13
||         STW     .D2T2   B31,*+SP(16)

           SUB     .L2     B10,B4,B4         ; |342| 
           EXT     .S2     B4,16,16,B10      ; |342| 
           ; BRANCH OCCURS {$C$L166}         ; |344| 
;** --------------------------------------------------------------------------*
$C$L164:    
;** --------------------------------------------------------------------------*
$C$L165:    
;**	-----------------------g31:
;** 348	-----------------------    ++cur;
;**  	-----------------------    U$27 = (*data).interpolation_flag;

           ADD     .L2     1,B4,B4           ; |348| 
||         MVK     .S1     270,A3

           EXT     .S2     B4,16,16,B4       ; |348| 
||         LDBU    .D1T1   *+A10[A3],A13

           STW     .D2T2   B4,*+SP(16)       ; |348| 
;** --------------------------------------------------------------------------*
$C$L166:    
           NOP             1
           BNOP    .S1     $C$L191,1         ; |357| 
           MV      .L1     A13,A0
;** --------------------------------------------------------------------------*
$C$L167:    
;**	-----------------------g32:
;** 350	-----------------------    if ( !U$27 ) goto g84;
;** 357	-----------------------    (*this).m_pre_data = data;
;** 357	-----------------------    goto g84;

           LDW     .D2T2   *+SP(16),B4
|| [ A0]   MVK     .S1     1648,A3           ; |357| 

   [ A0]   ADD     .L1     A3,A11,A3         ; |357| 
   [ A0]   STW     .D1T1   A10,*A3           ; |357| 
           ; BRANCH OCCURS {$C$L191}         ; |357| 
;** --------------------------------------------------------------------------*
$C$L168:    
           LDW     .D2T2   *+SP(16),B12      ; |298| 
           MVK     .S2     1376,B4           ; |298| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L169:    

           ZERO    .L2     B5:B4             ; |298| 
||         CMPGT   .L1X    B12,0,A0          ; |306| 
||         ADD     .S2X    B4,A12,B11        ; |298| 

;** --------------------------------------------------------------------------*
$C$L170:    
;**	-----------------------g34:
;** 298	-----------------------    U$149 = (double *)U$95+1376;
;** 298	-----------------------    *U$149 = 0.0;
;** 306	-----------------------    if ( (len = cur) <= 0 ) goto g43;

   [!A0]   B       .S1     $C$L173           ; |306| 
||         STDW    .D2T2   B5:B4,*B11        ; |298| 

   [ A0]   CALL    .S1     _ZN14CircularBufferI8LineDataE11ReadDataPtrEs ; |542| 
|| [ A0]   LDW     .D1T1   *+A11(4),A4       ; |542| 

   [!A0]   LDW     .D2T1   *+SP(24),A10      ; |308| 
   [!A0]   MVK     .S1     270,A3            ; |308| 
   [ A0]   SUB     .L1X    B12,1,A12         ; |540| 
   [ A0]   EXT     .S1     A12,16,16,A3      ; |542| 
           ; BRANCHCC OCCURS {$C$L173}       ; |306| 
;** --------------------------------------------------------------------------*
;** 540	-----------------------    index = len-1;  // [51]
;** 542	-----------------------    data = CircularBuffer<LineData>::ReadDataPtr((*this).m_data_buffer, (short)index);  // [51]
;** 543	-----------------------    if ( !(((*data).interpolation_flag == 0u)&(len >= 2)) ) goto g42;  // [51]

           MV      .L2X    A3,B4             ; |542| 
||         ADDKPC  .S2     $C$RL174,B3,0     ; |542| 

$C$RL174:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE11ReadDataPtrEs} {0}  ; |542| 
;** --------------------------------------------------------------------------*
           MVK     .S1     270,A3            ; |543| 
           LDBU    .D1T1   *+A4[A3],A3       ; |543| 
           CMPLT   .L2     B12,2,B4          ; |543| 
           XOR     .L2     1,B4,B4           ; |543| 
           NOP             2
           CMPEQ   .L1     A3,0,A3           ; |543| 
           NOP             1
           AND     .L2X    B4,A3,B0          ; |543| 

   [!B0]   BNOP    .S1     $C$L172,5         ; |543| 
|| [ B0]   LDW     .D1T1   *+A11(4),A10      ; |546| 
|| [ B0]   MVK     .S2     1376,B13          ; |544| 

           ; BRANCHCC OCCURS {$C$L172}       ; |543| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           ZERO    .L2     B5:B4             ; |544| 
||         ADD     .S2X    B13,A4,B6         ; |544| 
||         CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
||         LDW     .D1T1   *+A10(20),A4      ; |339| 

           STDW    .D2T2   B5:B4,*B6         ; |544| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L171:    
;**	-----------------------g37:
;** 544	-----------------------    *((double *)data+1376) = 0.0;  // [51]
;** 546	-----------------------    C$11 = index-1;  // [51]
;** 546	-----------------------    pos = C$11;  // [51]
;** 546	-----------------------    this = (*this).m_data_buffer;  // [51]
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 545	-----------------------    index = C$11;  // [51]
;** 341	-----------------------    pointer = NULL;  // [90]
;** 343	-----------------------    if ( pos < 0 ) goto g41;  // [90]
;** 343	-----------------------    if ( pos >= (*this).m_buffer_cur_length ) goto g41;  // [90]
;** 344	-----------------------    pointer = pos*3816+(*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$10 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$10) ) goto g41;  // [90]
;** 346	-----------------------    pointer -= (int)_lo(C$10);  // [90]
;**	-----------------------g41:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 352	-----------------------    data = pointer;  // [90]
;** 543	-----------------------    if ( !((*data).interpolation_flag|(index <= 0)) ) goto g37;  // [51]
           ADDKPC  .S2     $C$RL175,B3,3     ; |339| 
$C$RL175:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*
           SUB     .L1     A12,1,A13         ; |546| 
           EXT     .S1     A13,16,16,A3      ; |546| 
           CMPLT   .L1     A3,0,A5           ; |343| 

           MV      .L1     A5,A0             ; |343| 
||         STW     .D2T1   A5,*+SP(20)       ; |343| 

   [!A0]   LDW     .D1T1   *+A10(8),A5       ; |343| 
   [ A0]   ZERO    .L1     A3
   [ A0]   STW     .D2T1   A3,*+SP(28)       ; |343| 
           MV      .L2X    A4,B4             ; |350| 
           LDW     .D1T1   *+A10(20),A4      ; |350| 
   [!A0]   CMPLT   .L1     A3,A5,A3          ; |343| 
   [!A0]   STW     .D2T1   A3,*+SP(28)       ; |343| 
           LDW     .D2T1   *+SP(28),A0       ; |343| 
           NOP             4
   [ A0]   LDW     .D1T1   *A10,A14          ; |345| 
   [ A0]   LDW     .D1T1   *+A10(4),A15      ; |345| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
|| [ A0]   LDW     .D1T1   *+A10(16),A10     ; |344| 

$C$RL176:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(28),A0       ; |350| 
           MVK     .S1     3816,A3           ; |344| 
           ZERO    .L1     A4                ; |341| 
           MVK     .S1     270,A31           ; |543| 
           CMPGT   .L2X    A12,1,B4          ; |543| 
   [ A0]   MPYLI   .M1     A3,A15,A3:A2      ; |345| 
           MV      .L2X    A0,B0             ; |341| 
           MV      .L2X    A0,B1             ; |341| 
           XOR     .L2     1,B4,B4           ; |543| 

   [ A0]   STW     .D2T1   A2,*+SP(12)       ; |345| 
||         MVK     .S1     3816,A3           ; |344| 

           MPYUS   .M1     A3,A13,A5         ; |344| 
|| [ B0]   LDW     .D2T1   *+SP(12),A3

           MV      .L1     A13,A12           ; |545| 
   [ B0]   ADD     .L1     A10,A5,A4         ; |344| 
           NOP             2

   [ B0]   ADD     .L1     A3,A14,A3         ; |345| 
||         LDW     .D2T2   *+SP(20),B0       ; |345| 

   [ B1]   CMPLTU  .L1     A4,A3,A1          ; |345| 
           NOP             3

   [ B0]   MVK     .L1     0x1,A0
||         MV      .S1X    B0,A2

   [!A0]   MVK     .L1     0x1,A1
   [ A2]   MVK     .L1     0x1,A1
   [!A1]   LDW     .D2T1   *+SP(12),A3
           NOP             4
   [!A1]   SUB     .L1     A4,A3,A4          ; |346| 
           LDBU    .D1T1   *+A4[A31],A3      ; |543| 
           NOP             4
           OR      .L2X    B4,A3,B0          ; |543| 

   [!B0]   BNOP    .S1     $C$L171,2         ; |543| 
|| [!B0]   LDW     .D1T1   *+A11(4),A10      ; |546| 
|| [!B0]   ZERO    .L2     B5:B4             ; |544| 
|| [!B0]   ADD     .S2X    B13,A4,B6         ; |544| 

   [!B0]   STDW    .D2T2   B5:B4,*B6         ; |544| 
   [!B0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
   [!B0]   LDW     .D1T1   *+A10(20),A4      ; |339| 
           ; BRANCHCC OCCURS {$C$L171}       ; |543| 
;** --------------------------------------------------------------------------*
$C$L172:    
;**	-----------------------g42:
;** 548	-----------------------    data = CircularBuffer<LineData>::ReadDataPtr((*this).m_data_buffer, (short)index);  // [51]
;** 379	-----------------------    *((double *)data+1376) = 0.0;  // [73]
;** 550	-----------------------    LookAhead::GetLookAheadData(this, len, 1);  // [51]
           EXT     .S1     A12,16,16,A3      ; |548| 
           LDW     .D1T1   *+A11(4),A4       ; |548| 

           MV      .L2X    A3,B4             ; |548| 
||         CALLP   .S2     _ZN14CircularBufferI8LineDataE11ReadDataPtrEs,B3

$C$RL177:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE11ReadDataPtrEs} {0}  ; |548| 
;** --------------------------------------------------------------------------*
           MVK     .S2     1376,B4           ; |379| 

           ADD     .S2X    B4,A4,B6          ; |379| 
||         ZERO    .L2     B5:B4             ; |379| 

           CALLP   .S2     _ZN9LookAhead16GetLookAheadDataEsb,B3
||         STDW    .D2T2   B5:B4,*B6         ; |379| 
||         MV      .L2     B12,B4            ; |550| 
||         MV      .L1     A11,A4            ; |550| 
||         MVK     .S1     0x1,A6            ; |550| 

$C$RL178:  ; CALL OCCURS {_ZN9LookAhead16GetLookAheadDataEsb} {0}  ; |550| 
           LDW     .D2T1   *+SP(24),A10      ; |308| 
           MVK     .S1     270,A3            ; |308| 
           NOP             2
;** --------------------------------------------------------------------------*
$C$L173:    
;**	-----------------------g43:
;** 308	-----------------------    if ( !(*data).interpolation_flag ) goto g45;
;** 379	-----------------------    *U$149 = 0.0;  // [73]
;** 310	-----------------------    (*this).m_pre_data = data;
;**	-----------------------g45:
;** 110	-----------------------    if ( data == NULL ) goto g48;  // [47]
           MVK     .S1     1648,A31          ; |310| 
           LDBU    .D1T1   *+A10[A3],A0      ; |308| 
           ZERO    .L2     B5:B4             ; |379| 
           ADD     .L1     A31,A11,A3        ; |310| 
           NOP             2
   [ A0]   STDW    .D2T2   B5:B4,*B11        ; |379| 

   [ A0]   STW     .D1T1   A10,*A3           ; |310| 
||         MV      .L1     A10,A0            ; |310| 

   [!A0]   B       .S1     $C$L174           ; |110| 
   [ A0]   CALL    .S1     _ZN13Interpolation23InsertInterpolationDataEP8LineData ; |117| 
   [ A0]   LDW     .D1T1   *A11,A4           ; |117| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L174}       ; |110| 
;** --------------------------------------------------------------------------*
;** 117	-----------------------    Interpolation::InsertInterpolationData((*this).m_interpolator, data);  // [47]
;** 120	-----------------------    if ( !(*data).interpolation_flag ) goto g48;  // [47]

           MV      .L2X    A0,B4             ; |117| 
||         ADDKPC  .S2     $C$RL179,B3,0     ; |117| 

$C$RL179:  ; CALL OCCURS {_ZN13Interpolation23InsertInterpolationDataEP8LineData} {0}  ; |117| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(24),A10      ; |120| 
           MVK     .S1     270,A3            ; |120| 
           NOP             3
           LDBU    .D1T1   *+A10[A3],A0      ; |120| 
           NOP             4

   [!A0]   BNOP    .S2     $C$L175,1         ; |120| 
|| [!A0]   LDW     .D1T1   *+A11(4),A10      ; |315| 
|| [ A0]   LDDW    .D2T2   *B11,B5:B4        ; |121| 
|| [ A0]   MVK     .S1     1432,A3           ; |122| 

   [ A0]   CALL    .S1     memcpy            ; |122| 
   [ A0]   ADD     .L1     A3,A10,A3         ; |122| 
   [!A0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |365| 
   [!A0]   LDW     .D1T1   *+A10(20),A4      ; |365| 
           ; BRANCHCC OCCURS {$C$L175}       ; |120| 
;** --------------------------------------------------------------------------*
;** 121	-----------------------    (*this).m_last_speed = *U$149;  // [47]
;** 122	-----------------------    memcpy((struct xisMovData *)this+56, (struct xisMovData *)data+1432, 1569u);  // [47]
;** 123	-----------------------    (*this).m_has_position = 1;  // [47]
           ADDAD   .D1     A11,7,A4          ; |122| 

           STDW    .D1T2   B5:B4,*+A11(24)   ; |121| 
||         MV      .L2X    A3,B4             ; |122| 
||         MVK     .S1     0x621,A6          ; |122| 
||         ADDKPC  .S2     $C$RL180,B3,0     ; |122| 

$C$RL180:  ; CALL OCCURS {memcpy} {0}        ; |122| 
;** --------------------------------------------------------------------------*

           MVK     .L1     1,A3              ; |123| 
||         MVK     .S1     48,A4             ; |123| 

           STB     .D1T1   A3,*+A11[A4]      ; |123| 
;** --------------------------------------------------------------------------*
$C$L174:    
           LDW     .D1T1   *+A11(4),A10      ; |315| 
           NOP             3
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |365| 
           LDW     .D1T1   *+A10(20),A4      ; |365| 
;** --------------------------------------------------------------------------*
$C$L175:    
;**	-----------------------g48:
;** 315	-----------------------    this = (*this).m_data_buffer;
;** 365	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [91]
;** 367	-----------------------    if ( (*this).m_buffer_cur_length <= 0 ) goto g52;  // [91]
           ADDKPC  .S2     $C$RL181,B3,3     ; |365| 
$C$RL181:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |365| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(8),A3       ; |367| 
           MV      .L2X    A4,B4             ; |365| 
           NOP             3
           CMPGT   .L1     A3,0,A0           ; |367| 

   [!A0]   BNOP    .S1     $C$L176,1         ; |367| 
|| [ A0]   LDW     .D1T1   *+A10(16),A3      ; |368| 

   [ A0]   LDW     .D1T1   *+A10(4),A4       ; |369| 
           NOP             2
           ADDK    .S1     3816,A3           ; |368| 
           ; BRANCHCC OCCURS {$C$L176}       ; |367| 
;** --------------------------------------------------------------------------*
;** 368	-----------------------    (*this).m_read_pointer = (*this).m_read_pointer+3816;  // [91]
;** 369	-----------------------    C$9 = _mpyli(3816, (*this).m_buffer_total_length);  // [91]
;** 369	-----------------------    C$8 = (*this).m_read_pointer;  // [91]
;** 369	-----------------------    if ( C$8 < (*this).m_buffer+_lo(C$9) ) goto g51;  // [91]
;** 370	-----------------------    (*this).m_read_pointer = C$8-(int)_lo(C$9);  // [91]
;**	-----------------------g51:
;** 372	-----------------------    (*this).m_buffer_cur_length = (*this).m_buffer_cur_length-1;  // [91]

           MVK     .S1     3816,A31          ; |369| 
||         LDW     .D1T1   *A10,A7           ; |369| 

           STW     .D1T1   A3,*+A10(16)      ; |368| 
||         MPYLI   .M1     A31,A4,A5:A4      ; |369| 

           LDW     .D1T1   *+A10(16),A3      ; |369| 
           LDW     .D1T1   *+A10(8),A6       ; |372| 
           NOP             2
           ADD     .L1     A4,A7,A5          ; |369| 

           CMPLTU  .L1     A3,A5,A0          ; |369| 
||         SUB     .S1     A3,A4,A3          ; |370| 

           SUB     .L1     A6,1,A6           ; |372| 
|| [!A0]   STW     .D1T1   A3,*+A10(16)      ; |370| 

           STW     .D1T1   A6,*+A10(8)       ; |372| 
;** --------------------------------------------------------------------------*
$C$L176:    
;**	-----------------------g52:
;** 375	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [91]
;** 318	-----------------------    len = len-cur-1;
;** 319	-----------------------    cur = 0;
;** 320	-----------------------    goto g84;

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D1T1   *+A10(20),A4      ; |375| 

$C$RL182:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |375| 
;** --------------------------------------------------------------------------*

           B       .S1     $C$L192           ; |320| 
||         SUB     .L2     B10,B12,B4        ; |318| 
||         ZERO    .S2     B31               ; |319| 

           SUB     .L2     B4,1,B4           ; |318| 
||         STW     .D2T2   B31,*+SP(16)      ; |318| 

           EXT     .S2     B4,16,16,B10      ; |318| 
||         LDW     .D2T2   *+SP(16),B4

           NOP             3
           ; BRANCH OCCURS {$C$L192}         ; |320| 
;** --------------------------------------------------------------------------*
$C$L177:    
;**	-----------------------g53:
;** 273	-----------------------    if ( (*data).interpolation_flag ) goto g71;
           LDW     .D2T2   *+SP(16),B12      ; |276| 

   [ A0]   BNOP    .S1     $C$L184,3         ; |273| 
|| [ A0]   LDW     .D2T2   *+SP(16),B4

           CMPGT   .L2     B12,0,B0          ; |277| 
           ADD     .L2     1,B4,B4           ; |274| 
           ; BRANCHCC OCCURS {$C$L184}       ; |273| 
;** --------------------------------------------------------------------------*
;** 276	-----------------------    U$149 = (double *)data+1376;
;** 276	-----------------------    *U$149 = 0.0;
;** 277	-----------------------    if ( (len = cur) <= 0 ) goto g63;

   [!B0]   LDW     .D2T1   *+SP(24),A0
|| [ B0]   MVK     .L1     0x1,A0            ; nullify predicate
|| [!B0]   B       .S2     $C$L180           ; |277| 
||         MVK     .S1     1376,A3           ; |276| 
|| [ B0]   SUB     .D1X    B12,1,A12         ; |540| 

           ADD     .S1     A3,A10,A3         ; |276| 
||         ZERO    .L1     A5:A4             ; |276| 

           STDW    .D1T1   A5:A4,*A3         ; |276| 

   [ B0]   LDW     .D1T1   *+A11(4),A4       ; |542| 
|| [ B0]   CALL    .S1     _ZN14CircularBufferI8LineDataE11ReadDataPtrEs ; |542| 

           STW     .D2T1   A3,*+SP(20)       ; |276| 
   [!A0]   B       .S1     $C$L181           ; |110| 
           ; BRANCHCC OCCURS {$C$L180}       ; |277| 
;** --------------------------------------------------------------------------*
;** 540	-----------------------    index = len-1;  // [51]
;** 542	-----------------------    data = CircularBuffer<LineData>::ReadDataPtr((*this).m_data_buffer, (short)index);  // [51]
;** 543	-----------------------    if ( !(((*data).interpolation_flag == 0u)&(len >= 2)) ) goto g62;  // [51]
           EXT     .S1     A12,16,16,A3      ; |542| 
           ADDKPC  .S2     $C$RL183,B3,0     ; |542| 
           MV      .L2X    A3,B4             ; |542| 
$C$RL183:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE11ReadDataPtrEs} {0}  ; |542| 
;** --------------------------------------------------------------------------*
           MVK     .S1     270,A3            ; |543| 
           LDBU    .D1T1   *+A4[A3],A3       ; |543| 
           CMPLT   .L2     B12,2,B4          ; |543| 
           XOR     .L2     1,B4,B4           ; |543| 
           NOP             2
           CMPEQ   .L1     A3,0,A3           ; |543| 
           NOP             1
           AND     .L2X    B4,A3,B0          ; |543| 

   [!B0]   BNOP    .S1     $C$L179,5         ; |543| 
|| [ B0]   LDW     .D1T1   *+A11(4),A10      ; |546| 
|| [ B0]   MVK     .S2     1376,B13          ; |544| 

           ; BRANCHCC OCCURS {$C$L179}       ; |543| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           ZERO    .L2     B7:B6             ; |544| 
||         ADD     .S2X    B13,A4,B4         ; |544| 
||         CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
||         LDW     .D1T1   *+A10(20),A4      ; |339| 

           STDW    .D2T2   B7:B6,*B4         ; |544| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L178:    
;**	-----------------------g57:
;** 544	-----------------------    *((double *)data+1376) = 0.0;  // [51]
;** 546	-----------------------    C$7 = index-1;  // [51]
;** 546	-----------------------    pos = C$7;  // [51]
;** 546	-----------------------    this = (*this).m_data_buffer;  // [51]
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 545	-----------------------    index = C$7;  // [51]
;** 341	-----------------------    pointer = NULL;  // [90]
;** 343	-----------------------    if ( pos < 0 ) goto g61;  // [90]
;** 343	-----------------------    if ( pos >= (*this).m_buffer_cur_length ) goto g61;  // [90]
;** 344	-----------------------    pointer = pos*3816+(*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$6 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$6) ) goto g61;  // [90]
;** 346	-----------------------    pointer -= (int)_lo(C$6);  // [90]
;**	-----------------------g61:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 352	-----------------------    data = pointer;  // [90]
;** 543	-----------------------    if ( !((*data).interpolation_flag|(index <= 0)) ) goto g57;  // [51]
           ADDKPC  .S2     $C$RL184,B3,3     ; |339| 
$C$RL184:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*
           SUB     .L1     A12,1,A13         ; |546| 
           EXT     .S1     A13,16,16,A3      ; |546| 
           CMPLT   .L1     A3,0,A5           ; |343| 

           MV      .L1     A5,A0             ; |343| 
||         STW     .D2T1   A5,*+SP(28)       ; |343| 

   [!A0]   LDW     .D1T1   *+A10(8),A5       ; |343| 
   [ A0]   ZERO    .L2     B11
           MV      .L2X    A4,B4             ; |350| 
           LDW     .D1T1   *+A10(20),A4      ; |350| 
           NOP             1
   [!A0]   CMPLT   .L1     A3,A5,A3          ; |343| 
           NOP             1
   [!A0]   MV      .L2X    A3,B11            ; |343| 
           NOP             1
           MV      .L1X    B11,A0            ; |343| 
   [ A0]   LDW     .D1T1   *A10,A14          ; |345| 
   [ A0]   LDW     .D1T1   *+A10(4),A15      ; |345| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
|| [ A0]   LDW     .D1T1   *+A10(16),A10     ; |344| 

$C$RL185:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MV      .L1X    B11,A0            ; |350| 
||         MVK     .S1     3816,A3           ; |344| 

   [ A0]   MPYLI   .M1     A3,A15,A3:A2      ; |345| 
           ZERO    .L1     A4                ; |341| 
           MV      .L2     B11,B0            ; |345| 
           MV      .L1X    B11,A1            ; |344| 

           MVK     .S1     3816,A3           ; |344| 
|| [ A0]   STW     .D2T1   A2,*+SP(8)        ; |345| 

           MPYUS   .M1     A3,A13,A5         ; |344| 
   [ A0]   ADD     .L1     A2,A14,A3         ; |345| 

   [ A0]   ADD     .L1     A10,A5,A4         ; |344| 
||         LDW     .D2T1   *+SP(28),A0       ; |345| 

   [ B0]   CMPLTU  .L1     A4,A3,A2          ; |345| 
           MVK     .S1     270,A31           ; |543| 
           CMPGT   .L2X    A12,1,B4          ; |543| 
           XOR     .L2     1,B4,B4           ; |543| 
   [ A0]   MVK     .L1     0x1,A1
   [!A1]   MVK     .L1     0x1,A2
   [ A0]   MVK     .L1     0x1,A2
   [!A2]   LDW     .D2T1   *+SP(8),A3
           MV      .L1     A13,A12           ; |545| 
           NOP             3
   [!A2]   SUB     .L1     A4,A3,A4          ; |346| 
           LDBU    .D1T1   *+A4[A31],A3      ; |543| 
           NOP             4
           OR      .L2X    B4,A3,B0          ; |543| 

   [!B0]   BNOP    .S1     $C$L178,2         ; |543| 
|| [!B0]   LDW     .D1T1   *+A11(4),A10      ; |546| 
|| [!B0]   ZERO    .L2     B7:B6             ; |544| 
|| [!B0]   ADD     .S2X    B13,A4,B4         ; |544| 

   [!B0]   STDW    .D2T2   B7:B6,*B4         ; |544| 
   [!B0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
   [!B0]   LDW     .D1T1   *+A10(20),A4      ; |339| 
           ; BRANCHCC OCCURS {$C$L178}       ; |543| 
;** --------------------------------------------------------------------------*
$C$L179:    
;**	-----------------------g62:
;** 548	-----------------------    data = CircularBuffer<LineData>::ReadDataPtr((*this).m_data_buffer, (short)index);  // [51]
;** 379	-----------------------    *((double *)data+1376) = 0.0;  // [73]
;** 550	-----------------------    LookAhead::GetLookAheadData(this, len, 1);  // [51]
           EXT     .S1     A12,16,16,A3      ; |548| 
           LDW     .D1T1   *+A11(4),A4       ; |548| 

           MV      .L2X    A3,B4             ; |548| 
||         CALLP   .S2     _ZN14CircularBufferI8LineDataE11ReadDataPtrEs,B3

$C$RL186:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE11ReadDataPtrEs} {0}  ; |548| 
;** --------------------------------------------------------------------------*
           MVK     .S2     1376,B4           ; |379| 

           ADD     .S2X    B4,A4,B6          ; |379| 
||         ZERO    .L2     B5:B4             ; |379| 

           CALLP   .S2     _ZN9LookAhead16GetLookAheadDataEsb,B3
||         STDW    .D2T2   B5:B4,*B6         ; |379| 
||         MV      .L2     B12,B4            ; |550| 
||         MV      .L1     A11,A4            ; |550| 
||         MVK     .S1     0x1,A6            ; |550| 

$C$RL187:  ; CALL OCCURS {_ZN9LookAhead16GetLookAheadDataEsb} {0}  ; |550| 
           LDW     .D2T1   *+SP(24),A0
           NOP             4
   [!A0]   B       .S1     $C$L181           ; |110| 
;** --------------------------------------------------------------------------*
$C$L180:    
;**	-----------------------g63:
;** 110	-----------------------    if ( data == NULL ) goto g66;  // [47]
   [ A0]   CALL    .S1     _ZN13Interpolation23InsertInterpolationDataEP8LineData ; |117| 
   [ A0]   LDW     .D1T1   *A11,A4           ; |117| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L181}       ; |110| 
;** --------------------------------------------------------------------------*
;** 117	-----------------------    Interpolation::InsertInterpolationData((*this).m_interpolator, data);  // [47]
;** 120	-----------------------    if ( !(*data).interpolation_flag ) goto g66;  // [47]

           MV      .L2X    A0,B4             ; |117| 
||         ADDKPC  .S2     $C$RL188,B3,0     ; |117| 

$C$RL188:  ; CALL OCCURS {_ZN13Interpolation23InsertInterpolationDataEP8LineData} {0}  ; |117| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(24),A10      ; |120| 
           MVK     .S1     270,A3            ; |120| 
           NOP             3
           LDBU    .D1T1   *+A10[A3],A0      ; |120| 
           LDW     .D2T1   *+SP(20),A3
           NOP             3

   [!A0]   B       .S2     $C$L182           ; |120| 
|| [!A0]   LDW     .D1T1   *+A11(4),A10      ; |279| 
|| [ A0]   MVK     .S1     1432,A31          ; |122| 

   [ A0]   LDDW    .D1T1   *A3,A5:A4         ; |121| 
   [ A0]   CALL    .S1     memcpy            ; |122| 
   [ A0]   ADD     .L1     A31,A10,A3        ; |122| 
   [!A0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |365| 
   [!A0]   LDW     .D1T1   *+A10(20),A4      ; |365| 
           ; BRANCHCC OCCURS {$C$L182}       ; |120| 
;** --------------------------------------------------------------------------*
;** 121	-----------------------    (*this).m_last_speed = *U$149;  // [47]
;** 122	-----------------------    memcpy((struct xisMovData *)this+56, (struct xisMovData *)data+1432, 1569u);  // [47]
;** 123	-----------------------    (*this).m_has_position = 1;  // [47]
           STDW    .D1T1   A5:A4,*+A11(24)   ; |121| 

           MVK     .S1     0x621,A6          ; |122| 
||         MV      .L2X    A3,B4             ; |122| 
||         ADDKPC  .S2     $C$RL189,B3,0     ; |122| 
||         ADDAD   .D1     A11,7,A4          ; |122| 

$C$RL189:  ; CALL OCCURS {memcpy} {0}        ; |122| 
;** --------------------------------------------------------------------------*

           MVK     .L1     1,A3              ; |123| 
||         MVK     .S1     48,A4             ; |123| 

           STB     .D1T1   A3,*+A11[A4]      ; |123| 
;** --------------------------------------------------------------------------*
$C$L181:    
           LDW     .D1T1   *+A11(4),A10      ; |279| 
           NOP             3
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |365| 
           LDW     .D1T1   *+A10(20),A4      ; |365| 
;** --------------------------------------------------------------------------*
$C$L182:    
;**	-----------------------g66:
;** 279	-----------------------    this = (*this).m_data_buffer;
;** 365	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [91]
;** 367	-----------------------    if ( (*this).m_buffer_cur_length <= 0 ) goto g70;  // [91]
           ADDKPC  .S2     $C$RL190,B3,3     ; |365| 
$C$RL190:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |365| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(8),A3       ; |367| 
           MV      .L2X    A4,B4             ; |365| 
           NOP             3
           CMPGT   .L1     A3,0,A0           ; |367| 

   [!A0]   BNOP    .S1     $C$L183,2         ; |367| 
|| [ A0]   LDW     .D1T1   *+A10(16),A4      ; |368| 

   [ A0]   LDW     .D1T1   *+A10(4),A3       ; |369| 
           NOP             1
           ADDK    .S1     3816,A4           ; |368| 
           ; BRANCHCC OCCURS {$C$L183}       ; |367| 
;** --------------------------------------------------------------------------*
;** 368	-----------------------    (*this).m_read_pointer = (*this).m_read_pointer+3816;  // [91]
;** 369	-----------------------    C$5 = _mpyli(3816, (*this).m_buffer_total_length);  // [91]
;** 369	-----------------------    C$4 = (*this).m_read_pointer;  // [91]
;** 369	-----------------------    if ( C$4 < (*this).m_buffer+_lo(C$5) ) goto g69;  // [91]
;** 370	-----------------------    (*this).m_read_pointer = C$4-(int)_lo(C$5);  // [91]
;**	-----------------------g69:
;** 372	-----------------------    (*this).m_buffer_cur_length = (*this).m_buffer_cur_length-1;  // [91]

           MVK     .S1     3816,A31          ; |369| 
||         LDW     .D1T1   *A10,A7           ; |369| 

           LDW     .D1T1   *+A10(8),A6       ; |372| 

           STW     .D1T1   A4,*+A10(16)      ; |368| 
||         MPYLI   .M1     A31,A3,A5:A4      ; |369| 

           LDW     .D1T1   *+A10(16),A3      ; |369| 
           NOP             2

           SUB     .L1     A6,1,A30          ; |372| 
||         ADD     .S1     A4,A7,A6          ; |369| 

           STW     .D1T1   A30,*+A10(8)      ; |372| 

           CMPLTU  .L1     A3,A6,A0          ; |369| 
||         SUB     .S1     A3,A4,A3          ; |370| 

   [!A0]   STW     .D1T1   A3,*+A10(16)      ; |370| 
;** --------------------------------------------------------------------------*
$C$L183:    
;**	-----------------------g70:
;** 375	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [91]
;** 377	-----------------------    goto g80;  // [91]

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D1T1   *+A10(20),A4      ; |375| 

$C$RL191:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |375| 
;** --------------------------------------------------------------------------*
           BNOP    .S1     $C$L187,5         ; |377| 
           ; BRANCH OCCURS {$C$L187}         ; |377| 
;** --------------------------------------------------------------------------*
$C$L184:    
;**	-----------------------g71:
;** 274	-----------------------    if ( (len = cur+1) <= 0 ) goto g80;
           EXT     .S2     B4,16,16,B12      ; |274| 
           CMPGT   .L2     B12,0,B0          ; |274| 

   [!B0]   B       .S1     $C$L188           ; |274| 
|| [!B0]   LDW     .D2T1   *+SP(24),A10      ; |284| 

   [ B0]   CALL    .S1     _ZN14CircularBufferI8LineDataE11ReadDataPtrEs ; |542| 
|| [ B0]   LDW     .D2T2   *+SP(16),B4       ; |542| 
|| [ B0]   LDW     .D1T1   *+A11(4),A4       ; |542| 

   [!B0]   CALL    .S1     _ZN9MCommands6HasCmdEj ; |284| 
   [!B0]   MVK     .S1     3128,A3           ; |284| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L188}       ; |274| 
;** --------------------------------------------------------------------------*
;** 540	-----------------------    index = len-1;  // [51]
;** 542	-----------------------    data = CircularBuffer<LineData>::ReadDataPtr((*this).m_data_buffer, cur);  // [51]
;** 543	-----------------------    if ( !(((*data).interpolation_flag == 0u)&(index > 0)) ) goto g79;  // [51]
           ADDKPC  .S2     $C$RL192,B3,0     ; |542| 
$C$RL192:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE11ReadDataPtrEs} {0}  ; |542| 
;** --------------------------------------------------------------------------*
           MVK     .S1     270,A3            ; |543| 
           LDBU    .D1T1   *+A4[A3],A3       ; |543| 
           SUB     .L1X    B12,1,A13         ; |540| 
           CMPGT   .L2     B12,1,B4          ; |543| 
           NOP             2
           CMPEQ   .L1     A3,0,A3           ; |543| 
           NOP             1
           AND     .L2X    B4,A3,B0          ; |543| 

   [!B0]   BNOP    .S1     $C$L186,5         ; |543| 
|| [ B0]   LDW     .D1T1   *+A11(4),A10      ; |546| 
|| [ B0]   MVK     .S2     1376,B13          ; |544| 

           ; BRANCHCC OCCURS {$C$L186}       ; |543| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           ZERO    .L2     B5:B4             ; |544| 
||         ADD     .S2X    B13,A4,B6         ; |544| 
||         CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
||         LDW     .D1T1   *+A10(20),A4      ; |339| 

           STDW    .D2T2   B5:B4,*B6         ; |544| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L185:    
;**	-----------------------g74:
;** 544	-----------------------    *((double *)data+1376) = 0.0;  // [51]
;** 546	-----------------------    C$3 = index-1;  // [51]
;** 546	-----------------------    pos = C$3;  // [51]
;** 546	-----------------------    this = (*this).m_data_buffer;  // [51]
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [90]
;** 545	-----------------------    index = C$3;  // [51]
;** 341	-----------------------    pointer = NULL;  // [90]
;** 343	-----------------------    if ( pos < 0 ) goto g78;  // [90]
;** 343	-----------------------    if ( pos >= (*this).m_buffer_cur_length ) goto g78;  // [90]
;** 344	-----------------------    pointer = pos*3816+(*this).m_read_pointer;  // [90]
;** 345	-----------------------    C$2 = _mpyli(3816, (*this).m_buffer_total_length);  // [90]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$2) ) goto g78;  // [90]
;** 346	-----------------------    pointer -= (int)_lo(C$2);  // [90]
;**	-----------------------g78:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [90]
;** 352	-----------------------    data = pointer;  // [90]
;** 543	-----------------------    if ( !((*data).interpolation_flag|(index <= 0)) ) goto g74;  // [51]
           ADDKPC  .S2     $C$RL193,B3,3     ; |339| 
$C$RL193:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*
           SUB     .L1     A13,1,A12         ; |546| 
           EXT     .S1     A12,16,16,A5      ; |546| 
           CMPLT   .L1     A5,0,A3           ; |343| 

           MV      .L1     A3,A0             ; |343| 
||         STW     .D2T1   A3,*+SP(20)       ; |343| 

   [!A0]   LDW     .D1T1   *+A10(8),A3       ; |343| 
   [ A0]   ZERO    .L2     B11
           MV      .L2X    A4,B4             ; |350| 
           LDW     .D1T1   *+A10(20),A4      ; |350| 
           NOP             1
   [!A0]   CMPLT   .L1     A5,A3,A3          ; |343| 
           NOP             1
   [!A0]   MV      .L2X    A3,B11            ; |343| 
           NOP             1
           MV      .L1X    B11,A0            ; |343| 
   [ A0]   LDW     .D1T1   *A10,A14          ; |345| 
   [ A0]   LDW     .D1T1   *+A10(4),A15      ; |345| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
|| [ A0]   LDW     .D1T1   *+A10(16),A10     ; |344| 

$C$RL194:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           MV      .L1X    B11,A0            ; |350| 
||         MVK     .S1     3816,A3           ; |344| 

   [ A0]   MPYLI   .M1     A3,A15,A3:A2      ; |345| 
           LDW     .D2T2   *+SP(20),B0       ; |345| 
           ZERO    .L1     A4                ; |341| 
           MVK     .S1     270,A31           ; |543| 

           MVK     .S1     3816,A3           ; |344| 
|| [ A0]   STW     .D2T1   A2,*+SP(4)        ; |345| 

           MPYUS   .M1     A3,A12,A5         ; |344| 
|| [ A0]   ADD     .L1     A2,A14,A3         ; |345| 
||         MV      .S1X    B11,A2            ; |344| 

   [ B0]   MVK     .L1     0x1,A2
   [ A0]   ADD     .L1     A10,A5,A4         ; |344| 

   [ A0]   CMPLTU  .L1     A4,A3,A1          ; |345| 
||         MV      .S1X    B0,A0

   [!A2]   MVK     .L1     0x1,A1
   [ A0]   MVK     .L1     0x1,A1
   [!A1]   LDW     .D2T1   *+SP(4),A3
           CMPGT   .L2X    A13,1,B4          ; |543| 
           XOR     .L2     1,B4,B4           ; |543| 
           MV      .L1     A12,A13           ; |545| 
           NOP             1
   [!A1]   SUB     .L1     A4,A3,A4          ; |346| 
           LDBU    .D1T1   *+A4[A31],A3      ; |543| 
           NOP             4
           OR      .L2X    B4,A3,B0          ; |543| 

   [!B0]   BNOP    .S1     $C$L185,2         ; |543| 
|| [!B0]   LDW     .D1T1   *+A11(4),A10      ; |546| 
|| [!B0]   ZERO    .L2     B5:B4             ; |544| 
|| [!B0]   ADD     .S2X    B13,A4,B6         ; |544| 

   [!B0]   STDW    .D2T2   B5:B4,*B6         ; |544| 
   [!B0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
   [!B0]   LDW     .D1T1   *+A10(20),A4      ; |339| 
           ; BRANCHCC OCCURS {$C$L185}       ; |543| 
;** --------------------------------------------------------------------------*
$C$L186:    
;**	-----------------------g79:
;** 548	-----------------------    data = CircularBuffer<LineData>::ReadDataPtr((*this).m_data_buffer, (short)index);  // [51]
;** 379	-----------------------    *((double *)data+1376) = 0.0;  // [73]
;** 550	-----------------------    LookAhead::GetLookAheadData(this, len, 1);  // [51]
           EXT     .S1     A13,16,16,A3      ; |548| 
           LDW     .D1T1   *+A11(4),A4       ; |548| 

           MV      .L2X    A3,B4             ; |548| 
||         CALLP   .S2     _ZN14CircularBufferI8LineDataE11ReadDataPtrEs,B3

$C$RL195:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE11ReadDataPtrEs} {0}  ; |548| 
;** --------------------------------------------------------------------------*
           MVK     .S2     1376,B4           ; |379| 

           ADD     .S2X    B4,A4,B6          ; |379| 
||         ZERO    .L2     B5:B4             ; |379| 

           CALLP   .S2     _ZN9LookAhead16GetLookAheadDataEsb,B3
||         STDW    .D2T2   B5:B4,*B6         ; |379| 
||         MV      .L2     B12,B4            ; |550| 
||         MV      .L1     A11,A4            ; |550| 
||         MVK     .S1     0x1,A6            ; |550| 

$C$RL196:  ; CALL OCCURS {_ZN9LookAhead16GetLookAheadDataEsb} {0}  ; |550| 
;** --------------------------------------------------------------------------*
$C$L187:    

           LDW     .D2T1   *+SP(24),A10      ; |284| 
||         CALL    .S1     _ZN9MCommands6HasCmdEj ; |284| 

           MVK     .S1     3128,A3           ; |284| 
           NOP             2
;** --------------------------------------------------------------------------*
$C$L188:    
;**	-----------------------g80:
;** 284	-----------------------    C$1 = (struct Commands *)data+3128;
;** 284	-----------------------    if ( MCommands::HasCmd(C$1, 2u) ) goto g82;
           MVK     .L2     0x2,B4            ; |284| 

           ADDKPC  .S2     $C$RL197,B3,0     ; |284| 
||         ADD     .L1     A3,A10,A4         ; |284| 
||         ADD     .S1     A3,A10,A10        ; |284| 

$C$RL197:  ; CALL OCCURS {_ZN9MCommands6HasCmdEj} {0}  ; |284| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |284| 
   [ A0]   B       .S1     $C$L189           ; |284| 
   [ A0]   CALL    .S1     _ZN9LookAhead5ResetEv ; |285| 
   [!A0]   CALL    .S1     _ZN9MCommands6HasCmdEj ; |284| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L189}       ; |284| 
;** --------------------------------------------------------------------------*
;** 284	-----------------------    if ( !MCommands::HasCmd(C$1, 30u) ) goto g83;
           ADDKPC  .S2     $C$RL198,B3,0     ; |284| 

           MVK     .S2     0x1e,B4           ; |284| 
||         MV      .L1     A10,A4            ; |284| 

$C$RL198:  ; CALL OCCURS {_ZN9MCommands6HasCmdEj} {0}  ; |284| 
;** --------------------------------------------------------------------------*

           LDW     .D2T2   *+SP(16),B4
||         MV      .L1     A4,A0             ; |284| 

   [!A0]   BNOP    .S2     $C$L190,1         ; |284| 
|| [!A0]   ZERO    .L1     A4                ; |291| 
|| [!A0]   MVK     .S1     1648,A3           ; |291| 

   [!A0]   ADD     .L1     A3,A11,A3         ; |291| 
   [!A0]   MV      .L2X    A4,B31            ; |289| 
           SUB     .L2     B10,B4,B4         ; |289| 
           SUB     .L2     B4,1,B4           ; |289| 
           ; BRANCHCC OCCURS {$C$L190}       ; |284| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ZN9LookAhead5ResetEv ; |285| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L189:    
;**	-----------------------g82:
;** 285	-----------------------    LookAhead::Reset(this);

           MV      .L1     A11,A4            ; |285| 
||         ADDKPC  .S2     $C$RL199,B3,0     ; |285| 

$C$RL199:  ; CALL OCCURS {_ZN9LookAhead5ResetEv} {0}  ; |285| 
           LDW     .D2T2   *+SP(16),B4
           MVK     .S1     1648,A3           ; |291| 
           ZERO    .L1     A4                ; |291| 
           ADD     .L1     A3,A11,A3         ; |291| 
           MV      .L2X    A4,B31            ; |289| 
           SUB     .L2     B10,B4,B4         ; |289| 
           SUB     .L2     B4,1,B4           ; |289| 
;** --------------------------------------------------------------------------*
$C$L190:    
;**	-----------------------g83:
;** 289	-----------------------    len = len-cur-1;
;** 291	-----------------------    (*this).m_pre_data = NULL;
;** 290	-----------------------    cur = 0;

           STW     .D1T1   A4,*A3            ; |291| 
||         STW     .D2T2   B31,*+SP(16)      ; |291| 
||         EXT     .S2     B4,16,16,B10      ; |289| 

;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(16),B4
           NOP             2
;** --------------------------------------------------------------------------*
$C$L191:    
           NOP             1
;** --------------------------------------------------------------------------*
$C$L192:    
;**	-----------------------g84:
;** 247	-----------------------    if ( cur < len ) goto g14;
           NOP             1
           CMPLT   .L2     B4,B10,B0         ; |247| 

   [ B0]   BNOP    .S1     $C$L160,3         ; |247| 
|| [ B0]   LDW     .D1T1   *+A11(4),A12      ; |248| 

   [ B0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
   [ B0]   LDW     .D1T1   *+A12(20),A4      ; |339| 
           ; BRANCHCC OCCURS {$C$L160}       ; |247| 
;** --------------------------------------------------------------------------*
$C$L193:    
           LDHU    .D1T1   *+A11(8),A3       ; |364| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L194:    
;**	-----------------------g85:
;** 364	-----------------------    if ( len >= (*this).m_lookahead_count ) goto g94;
           CMPLT   .L2     B10,2,B0          ; |370| 
           CMPLT   .L2X    B10,A3,B1         ; |364| 
   [!B1]   BNOP    .S1     $C$L197,5         ; |364| 
           ; BRANCHCC OCCURS {$C$L197}       ; |364| 
;** --------------------------------------------------------------------------*
;** 370	-----------------------    if ( len < 2 ) goto g96;

   [ B0]   BNOP    .S1     $C$L199,4         ; |370| 
|| [!B0]   LDDW    .D1T1   *+A11(40),A7:A6   ; |616| 
||         ZERO    .L2     B5:B4             ; |616| 

           CMPEQDP .S2X    A7:A6,B5:B4,B0    ; |616| 
           ; BRANCHCC OCCURS {$C$L199}       ; |370| 
;** --------------------------------------------------------------------------*
;** 616	-----------------------    U$359 = (*this).m_min_len;  // [53]
;** 616	-----------------------    if ( U$359 != 0.0 ) goto g89;  // [53]
           MV      .L1     A11,A4            ; |619| 

   [!B0]   B       .S1     $C$L195           ; |616| 
|| [!B0]   LDDW    .D1T1   *+A11(32),A5:A4   ; |625| 

   [ B0]   CALL    .S1     _ZN9LookAhead17CalculateStopDistEi ; |619| 
           ZERO    .L2     B4                ; |619| 
           MV      .L2     B0,B1             ; guard predicate rewrite
           NOP             1
   [!B1]   CMPLTDP .S1     A5:A4,A7:A6,A0    ; |625| 
           ; BRANCHCC OCCURS {$C$L195}       ; |616| 
;** --------------------------------------------------------------------------*
;** 619	-----------------------    stop_dist = LookAhead::CalculateStopDist(this, 0);  // [53]
;** 622	-----------------------    (*this).m_min_len = (*this).m_min_len+stop_dist;  // [53]
;**  	-----------------------    U$359 = (*this).m_min_len;
           ADDKPC  .S2     $C$RL200,B3,0     ; |619| 
$C$RL200:  ; CALL OCCURS {_ZN9LookAhead17CalculateStopDistEi} {0}  ; |619| 
;** --------------------------------------------------------------------------*
           LDDW    .D1T1   *+A11(40),A7:A6   ; |622| 
           NOP             4
           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |622| 
           NOP             6
           STDW    .D1T1   A5:A4,*+A11(40)   ; |622| 
           LDDW    .D1T1   *+A11(40),A7:A6
           LDDW    .D1T1   *+A11(32),A5:A4   ; |625| 
           NOP             4
           CMPLTDP .S1     A5:A4,A7:A6,A0    ; |625| 
;** --------------------------------------------------------------------------*
$C$L195:    
;**	-----------------------g89:
;** 625	-----------------------    if ( (*this).m_dist_len >= U$359 ) goto g91;  // [53]
;** 614	-----------------------    res = 0;  // [53]
;**  	-----------------------    goto g92;

           ZERO    .L2     B0                ; |614| 
||         MV      .L1     A11,A4            ; |627| 

   [ A0]   B       .S1     $C$L196
|| [ A0]   SUB     .L2     B10,1,B4          ; |372| 

   [!A0]   CALL    .S1     _ZN9LookAhead15ForceOneProcessEv ; |627| 
   [ A0]   BNOP    .S1     $C$L200,3         ; |372| 
           ; BRANCHCC OCCURS {$C$L196}  
;** --------------------------------------------------------------------------*
;**	-----------------------g91:
;** 627	-----------------------    LookAhead::ForceOneProcess(this);  // [53]
;** 628	-----------------------    res = 1;  // [53]
           ADDKPC  .S2     $C$RL201,B3,0     ; |627| 
$C$RL201:  ; CALL OCCURS {_ZN9LookAhead15ForceOneProcessEv} {0}  ; |627| 
;** --------------------------------------------------------------------------*
           BNOP    .S1     $C$L200,2         ; |372| 

           SUB     .L2     B10,1,B4          ; |372| 
||         MVK     .S2     0x1,B0            ; |628| 

;** --------------------------------------------------------------------------*
$C$L196:    
;**	-----------------------g92:
;** 630	-----------------------    if ( !res ) goto g96;  // [53]
;** 372	-----------------------    --len;
;** 372	-----------------------    goto g96;
;**	-----------------------g94:
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           MVK     .S1     1640,A3           ; |374| 
|| [ B0]   EXT     .S2     B4,16,16,B10      ; |372| 

           ADD     .L1     A3,A11,A3         ; |374| 
           ; BRANCH OCCURS {$C$L200}         ; |372| 
;** --------------------------------------------------------------------------*
$C$L197:    
           CALL    .S1     _ZN9LookAhead15ForceOneProcessEv ; |367| 
           MV      .L1     A11,A4            ; |367| 
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L198:    
;**	-----------------------g95:
;** 367	-----------------------    LookAhead::ForceOneProcess(this);
;** 366	-----------------------    if ( (*this).m_lookahead_count <= (--len) ) goto g95;
           ADDKPC  .S2     $C$RL202,B3,0     ; |367| 
$C$RL202:  ; CALL OCCURS {_ZN9LookAhead15ForceOneProcessEv} {0}  ; |367| 
;** --------------------------------------------------------------------------*
           LDHU    .D1T1   *+A11(8),A3       ; |366| 
           SUB     .L2     B10,1,B4          ; |366| 
           EXT     .S2     B4,16,16,B10      ; |366| 
           NOP             2
           CMPGT   .L1X    A3,B10,A0         ; |366| 
   [!A0]   B       .S1     $C$L198           ; |366| 
   [!A0]   CALL    .S1     _ZN9LookAhead15ForceOneProcessEv ; |367| 
   [!A0]   MV      .L1     A11,A4            ; |367| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L198}       ; |366| 
;** --------------------------------------------------------------------------*
$C$L199:    
           MVK     .S1     1640,A3           ; |374| 
           ADD     .L1     A3,A11,A3         ; |374| 
;** --------------------------------------------------------------------------*
$C$L200:    
;**	-----------------------g96:
;** 374	-----------------------    (*this).m_prepare_count = len;
;**  	-----------------------    return;
           STH     .D1T2   B10,*A3           ; |374| 
           LDW     .D2T2   *++SP(40),B3      ; |375| 
           LDDW    .D2T1   *++SP,A13:A12     ; |375| 
           LDDW    .D2T1   *++SP,A15:A14     ; |375| 
           LDDW    .D2T2   *++SP,B11:B10     ; |375| 
           LDDW    .D2T2   *++SP,B13:B12     ; |375| 

           LDW     .D2T1   *++SP(8),A10      ; |375| 
||         RET     .S2     B3                ; |375| 

           LDW     .D2T1   *++SP(8),A11      ; |375| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |375| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead7ProcessEP8LineData

;******************************************************************************
;* FUNCTION NAME: LookAhead::Process(LineData *)                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,  *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,DP,SP,A16,   *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_ZN9LookAhead7ProcessEP8LineData:
;** --------------------------------------------------------------------------*
;** 130	-----------------------    (*line_data).is_consider_angle = 0;
;** 138	-----------------------    K$5 = line_data;
;** 138	-----------------------    Q$1 = 170;
;** 138	-----------------------    K$8 = (double *)K$5+2480;
;** 138	-----------------------    if ( *K$8 >= 1.00000000000000002092e-8 ) goto g3;
;** 139	-----------------------    (*line_data).interpolation_flag = 0u;
;**	-----------------------g3:
;** 129	-----------------------    res = 0;
;** 141	-----------------------    if ( !MCommands::HasCmd((struct Commands *)line_data+3128, 6u) ) goto g10;
           STW     .D2T2   B13,*SP--(8)      ; |128| 
           STDW    .D2T2   B11:B10,*SP--     ; |128| 

           STDW    .D2T1   A13:A12,*SP--     ; |128| 
||         MV      .L2     B4,B10            ; |128| 
||         MVK     .S2     2480,B4           ; |138| 

           STDW    .D2T1   A11:A10,*SP--     ; |128| 
||         ADD     .L2     B4,B10,B11        ; |138| 

           LDDW    .D2T2   *B11,B5:B4        ; |138| 
           MVKL    .S1     0x3e45798e,A5
           MVKH    .S1     0x3e45798e,A5

           MV      .L1     A4,A10            ; |128| 
||         MVKL    .S1     0xe2308c3a,A4

           MVKH    .S1     0xe2308c3a,A4
           CMPLTDP .S1X    B5:B4,A5:A4,A0    ; |138| 
           MVK     .S2     3128,B4           ; |141| 

           ADD     .L2     B4,B10,B5         ; |141| 
||         MVK     .S2     3780,B7           ; |130| 
||         ZERO    .L1     A3                ; |130| 

           MV      .L2     B3,B13            ; |128| 
||         MVK     .S2     270,B6            ; |139| 
||         STB     .D2T1   A3,*+B10[B7]      ; |130| 

           CALLP   .S2     _ZN9MCommands6HasCmdEj,B3
||         MV      .L1X    B5,A4             ; |141| 
|| [ A0]   STB     .D2T1   A3,*+B10[B6]      ; |139| 
||         MVK     .L2     0x6,B4            ; |141| 

$C$RL203:  ; CALL OCCURS {_ZN9MCommands6HasCmdEj} {0}  ; |141| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |141| 
||         MVK     .S2     270,B4            ; |152| 

           MV      .L1     A0,A1             ; |141| branch predicate copy
|| [!A0]   B       .S1     $C$L207           ; |141| 
|| [ A0]   LDW     .D1T1   *+A10(12),A3      ; |142| 

   [!A1]   LDBU    .D2T2   *+B10[B4],B0      ; |152| 
           MVK     .S1     0xaa,A6           ; |138| 
           ZERO    .L1     A11               ; |129| 
           MV      .L1X    B10,A7            ; |128| 
   [ A0]   LDBU    .D1T1   *+A3(2),A0        ; |142| 
           ; BRANCHCC OCCURS {$C$L207}       ; |141| 
;** --------------------------------------------------------------------------*
;** 142	-----------------------    C$12 = (*this).m_channel_config;
;** 142	-----------------------    if ( !(C$11 = (*C$12).axis_number) ) goto g10;

           MVK     .S1     0x1ed8,A4
||         MV      .L1     A11,A5

           MVK     .S2     270,B4            ; |152| 
           ADD     .L1     A4,A3,A3
           SUB     .L1     A3,4,A4

           MV      .L2X    A0,B0
|| [!A0]   B       .S2     $C$L207           ; |142| 
|| [ A0]   MVK     .L1     1,A9              ; |148| 
|| [ A0]   MVK     .S1     1664,A8           ; |148| 

           CMPGT   .L2     B0,1,B1
|| [!A0]   LDBU    .D2T2   *+B10[B4],B0      ; |152| 

   [!A0]   ZERO    .L2     B1                ; nullify predicate
   [ B1]   BNOP    .S1     $C$L202,2
           ; BRANCHCC OCCURS {$C$L207}       ; |142| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$31 = (struct CCCTAxisConfig **)C$12+(K$27 = 7896)-4;
;**  	-----------------------    L$1 = (int)C$11;
;** 142	-----------------------    index = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 255, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
   [ B1]   LDW     .D1T1   *++A4,A3          ; |144| (P) <0,0> 
           NOP             2
           ; BRANCHCC OCCURS {$C$L202} {0} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L201
;** --------------------------------------------------------------------------*
$C$L201:    
;**	-----------------------g6:
;** 144	-----------------------    C$10 = *(++U$31);
;** 144	-----------------------    if ( !(*C$10).tool_change_axis_move ) goto g9;
;** 144	-----------------------    if ( (*C$10).axis_type == 4 ) goto g9;
;** 148	-----------------------    (*this).m_tool_change_axis_move = (*this).m_tool_change_axis_move|1<<index;
;**	-----------------------g9:
;** 142	-----------------------    ++index;
;** 142	-----------------------    if ( L$1 = L$1-1 ) goto g6;
           LDW     .D1T1   *++A4,A3          ; |144| 
           NOP             4
           LDBU    .D1T1   *+A3(9),A0        ; |144| 
           NOP             4
   [ A0]   LDBU    .D1T1   *A3,A3            ; |144| 
           NOP             4
;** --------------------------------------------------------------------------*

   [ A0]   CMPEQ   .L1     A3,4,A0           ; |144| 
|| [!A0]   MVK     .D1     0x1,A0
||         SUB     .L2     B0,1,B0           ; |142| 
||         SHL     .S1     A9,A5,A16         ; |148| 

   [!A0]   LDBU    .D1T1   *+A10[A8],A3      ; |148| 
||         ADD     .L1     1,A5,A5           ; |142| 

   [ B0]   B       .S1     $C$L201           ; |142| 
   [!B0]   BNOP    .S1     $C$L206,2
   [!A0]   OR      .L1     A16,A3,A3         ; |148| 
   [!A0]   STB     .D1T1   A3,*+A10[A8]      ; |148| 
           ; BRANCHCC OCCURS {$C$L201}       ; |142| 
;** --------------------------------------------------------------------------*
           MVK     .S2     270,B4            ; |152| 
           ; BRANCH OCCURS {$C$L206}  
;** --------------------------------------------------------------------------*
$C$L202:    

           MV      .L2X    A9,B6
||         SUB     .L1X    B0,2,A1
||         DINT                              ; interrupts off

           MV      .L2X    A10,B9
           MV      .L2X    A8,B7
           MV      .L2X    A5,B8
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 142
;*      Loop opening brace source line   : 142
;*      Loop closing brace source line   : 150
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 255                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 18
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     1        1     
;*      .D units                     3*       2     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             3*       2     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 18 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages       : 0
;*
;*      Prolog not removed
;*      Collapsed prolog stages       : 0
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh4
;*
;*      Minimum safe trip count       : 2
;*----------------------------------------------------------------------------*
$C$L203:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L204:    ; PIPED LOOP KERNEL
           LDBU    .D1T1   *+A3(9),A0        ; |144| <0,5>  ^ 
           NOP             4
   [ A0]   LDBU    .D1T1   *A3,A3            ; |144| <0,10>  ^ 
           NOP             4

   [!A0]   MVK     .S1     0x1,A0            ; <0,15> 
|| [ A0]   CMPEQ   .L1     A3,4,A0           ; |144| <0,15>  ^ 

   [!A0]   LDBU    .D2T2   *+B9[B7],B5       ; |148| <0,16>  ^ 
   [ A1]   BDEC    .S1     $C$L204,A1        ; |142| <0,17> 
           LDW     .D1T1   *++A4,A3          ; |144| <1,0> 
           NOP             1
           SHL     .S2     B6,B8,B4          ; |148| <0,20> 
   [!A0]   OR      .L2     B4,B5,B4          ; |148| <0,21>  ^ 

           ADD     .L2     1,B8,B8           ; |142| <0,22> 
|| [!A0]   STB     .D2T2   B4,*+B9[B7]       ; |148| <0,22>  ^ 

;** --------------------------------------------------------------------------*
$C$L205:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           LDBU    .D1T1   *+A3(9),A0        ; |144| (E) <1,5>  ^ 
           SHL     .S2     B6,B8,B4          ; |148| (E) <1,20> 
           RINT                              ; interrupts on
           MV      .L1X    B9,A10
           NOP             1
   [ A0]   LDBU    .D1T1   *A3,A3            ; |144| (E) <1,10>  ^ 
           NOP             4

   [!A0]   MVK     .S1     0x1,A0            ; (E) <1,15> 
|| [ A0]   CMPEQ   .L1     A3,4,A0           ; |144| (E) <1,15>  ^ 

   [!A0]   LDBU    .D2T2   *+B9[B7],B5       ; |148| (E) <1,16>  ^ 
           NOP             4
   [!A0]   OR      .L2     B4,B5,B4          ; |148| (E) <1,21>  ^ 

   [!A0]   STB     .D2T2   B4,*+B9[B7]       ; |148| (E) <1,22>  ^ 
||         MVK     .S2     270,B4            ; |152| 

;** --------------------------------------------------------------------------*
$C$L206:    
           LDBU    .D2T2   *+B10[B4],B0      ; |152| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L207:    
;**	-----------------------g10:
;** 152	-----------------------    if ( !(*line_data).interpolation_flag ) goto g26;

           MVK     .S1     1664,A3           ; |158| 
|| [!B0]   B       .S2     $C$L214           ; |152| 

   [ B0]   LDBU    .D1T1   *+A10[A3],A0      ; |158| 
           ZERO    .L1     A5:A4             ; |153| 
   [!B0]   STDW    .D2T1   A5:A4,*B11        ; |153| 
   [!B0]   STDW    .D1T1   A5:A4,*+A7[A6]    ; |155| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L214}       ; |152| 
;** --------------------------------------------------------------------------*
;** 158	-----------------------    if ( (*this).m_tool_change_axis_move ) goto g15;

           ADD     .L1X    4,B4,A3
||         ADD     .L2     4,B4,B4

           ADD     .L1X    A3,B10,A3         ; |159| 
||         ADD     .L2     B4,B10,B4         ; |168| 
|| [ A0]   B       .S1     $C$L209           ; |158| 

   [ A0]   LDHU    .D2T2   *B4,B4            ; |168| 
|| [!A0]   LDHU    .D1T1   *A3,A3            ; |159| 

   [!A0]   MVK     .S1     30,A4             ; |162| 
   [ A0]   MVK     .S2     20,B5             ; |184| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L209}       ; |158| 
;** --------------------------------------------------------------------------*
;** 159	-----------------------    C$9 = (*line_data).interpolation_type;
;** 159	-----------------------    if ( !((C$9 != 0)&(C$9 != 10)) ) goto g14;

           CMPEQ   .L1     A3,10,A30         ; |159| 
||         MVK     .S1     24,A31            ; |162| 
||         MVK     .S2     20,B4             ; |162| 

           CMPEQ   .L1     A3,0,A29          ; |159| 
||         CMPEQ   .L2X    A3,B4,B4          ; |162| 
||         MVK     .S2     1644,B5           ; |160| 

           OR      .S1     A29,A30,A0
||         CMPEQ   .L1     A3,A4,A5          ; |162| 
||         ADD     .L2X    B5,A10,B5         ; |160| 

   [ A0]   B       .S1     $C$L208           ; |159| 
||         CMPEQ   .L1     A3,A31,A4         ; |162| 

           OR      .L2X    B4,A5,B4

           OR      .L2X    B4,A4,B4
||         MV      .L1     A10,A4            ; |160| 

           XOR     .L2     1,B4,B0
||         MV      .S2     B10,B4            ; |160| 

   [ A0]   MVK     .L2     0x1,B0            ; nullify predicate
   [!B0]   B       .S1     $C$L210           ; |162| 
           ; BRANCHCC OCCURS {$C$L208}       ; |159| 
;** --------------------------------------------------------------------------*
;** 162	-----------------------    if ( !((C$9 != 20)&(C$9 != 30)&(C$9 != 24)) ) goto g17;
   [ B0]   B       .S1     $C$L215           ; |162| 
   [!B0]   CALL    .S1     _ZN9LookAhead15CalculateArcAccEP8LineData ; |186| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L210}       ; |162| 
;** --------------------------------------------------------------------------*
;** 162	-----------------------    goto g27;
           NOP             1
           ; BRANCH OCCURS {$C$L215}         ; |162| 
;** --------------------------------------------------------------------------*
$C$L208:    
;**	-----------------------g14:
;** 160	-----------------------    LookAhead::CalculateLineAcc(this, line_data, (*this).m_start_point);
;** 161	-----------------------    goto g27;
           CALL    .S1     _ZN9LookAhead16CalculateLineAccEP8LineDataPd ; |160| 
           LDW     .D2T1   *B5,A6            ; |160| 
           ADDKPC  .S2     $C$RL204,B3,3     ; |160| 
$C$RL204:  ; CALL OCCURS {_ZN9LookAhead16CalculateLineAccEP8LineDataPd} {0}  ; |160| 
;** --------------------------------------------------------------------------*
           BNOP    .S1     $C$L215,5         ; |161| 
           ; BRANCH OCCURS {$C$L215}         ; |161| 
;** --------------------------------------------------------------------------*
$C$L209:    
;**	-----------------------g15:
;** 168	-----------------------    C$8 = (*line_data).interpolation_type;
;** 168	-----------------------    if ( !((C$8 != 0)&(C$8 != 10)) ) goto g18;

           MVK     .S1     30,A3             ; |184| 
||         MVK     .S2     24,B7             ; |184| 
||         CMPEQ   .L2     B4,B5,B6          ; |184| 

           CMPEQ   .L2     B4,10,B5          ; |168| 
||         CMPEQ   .L1X    B4,A3,A3          ; |184| 
||         MVK     .S1     3800,A4           ; |170| 
||         MVK     .S2     3784,B29          ; |169| 

           CMPEQ   .L2     B4,0,B30          ; |168| 
||         OR      .L1X    A3,B6,A3          ; |184| 
||         ADD     .S2     B29,B10,B6        ; |169| 

           CMPEQ   .L2     B4,B7,B31         ; |184| 
||         OR      .S2     B30,B5,B0
||         ADD     .L1X    A4,B10,A5         ; |170| 

   [ B0]   LDW     .D1T1   *+A10(12),A4      ; |169| 
|| [ B0]   B       .S1     $C$L211           ; |168| 

           OR      .L1X    B31,A3,A0         ; |184| 
||         MVK     .S1     7896,A3           ; |169| 

   [ B0]   MVK     .L1     0x1,A0            ; nullify predicate
   [!A0]   BNOP    .S1     $C$L215,1         ; |184| 
           ADD     .L1     A3,A4,A3          ; |169| 
           ; BRANCHCC OCCURS {$C$L211}       ; |168| 
;** --------------------------------------------------------------------------*
;** 184	-----------------------    if ( !((C$8 == 20)|(C$8 == 30)|(C$8 == 24)) ) goto g27;
           NOP             3
           ; BRANCHCC OCCURS {$C$L215}       ; |184| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ZN9LookAhead15CalculateArcAccEP8LineData ; |186| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L210:    
;**	-----------------------g17:
;** 186	-----------------------    LookAhead::CalculateArcAcc(this, line_data);
;** 186	-----------------------    goto g27;
           ADDKPC  .S2     $C$RL205,B3,0     ; |186| 

           MV      .L1     A10,A4            ; |186| 
||         MV      .L2     B10,B4            ; |186| 

$C$RL205:  ; CALL OCCURS {_ZN9LookAhead15CalculateArcAccEP8LineData} {0}  ; |186| 
;** --------------------------------------------------------------------------*
           BNOP    .S1     $C$L215,5         ; |186| 
           ; BRANCH OCCURS {$C$L215}         ; |186| 
;** --------------------------------------------------------------------------*
$C$L211:    
;**	-----------------------g18:
;** 169	-----------------------    C$6 = (*this).m_channel_config;
;** 169	-----------------------    C$7 = *((struct CCCTAxisConfig **)C$6+7896);
;** 169	-----------------------    (*line_data).acc = (*C$7).max_axis_acc;
;** 170	-----------------------    (*line_data).jerk = (*C$7).max_axis_jerk;
;** 172	-----------------------    if ( !(*C$6).axis_number ) goto g27;
;**  	-----------------------    K$83 = (struct xisMovData *)line_data+1432;
;** 172	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           LDW     .D1T1   *A3,A3            ; |169| 
           LDBU    .D1T1   *+A4(2),A0        ; |172| 
           ZERO    .L1     A12               ; |172| 
           MVK     .S1     1432,A31
           ADD     .L1X    A31,B10,A13
           LDDW    .D1T2   *+A3(32),B5:B4    ; |169| 
           NOP             4
           STDW    .D2T2   B5:B4,*B6         ; |169| 

   [!A0]   BNOP    .S1     $C$L215,4         ; |172| 
||         LDDW    .D1T1   *+A3(48),A7:A6    ; |170| 

           STDW    .D1T1   A7:A6,*A5         ; |170| 
           ; BRANCHCC OCCURS {$C$L215}       ; |172| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |173| 
           EXTU    .S1     A12,24,24,A3      ; |173| 
           MV      .L1     A13,A4            ; |173| 
           MV      .L2X    A3,B4             ; |173| 
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L212:    
;**	-----------------------g20:
;** 173	-----------------------    if ( !AxisMovData::CheckMask(K$83, (unsigned char)i) ) goto g25;
           ADDKPC  .S2     $C$RL206,B3,0     ; |173| 
$C$RL206:  ; CALL OCCURS {_ZN11AxisMovData9CheckMaskEh} {0}  ; |173| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |173| 

   [!A0]   BNOP    .S1     $C$L213,4         ; |173| 
|| [ A0]   LDW     .D1T1   *+A10(12),A3      ; |175| 

           ADDAW   .D1     A3,A12,A3         ; |175| 
           ; BRANCHCC OCCURS {$C$L213}       ; |173| 
;** --------------------------------------------------------------------------*
;** 174	-----------------------    (*this).m_tool_change_axis_move = (*this).m_tool_change_axis_move&~(1<<i);
;** 175	-----------------------    U$90 = *(i*4+(*this).m_channel_config+7896);
;** 175	-----------------------    C$5 = (*U$90).max_axis_acc;
;** 175	-----------------------    if ( (*line_data).acc <= C$5 ) goto g23;
;** 176	-----------------------    (*line_data).acc = C$5;
;**	-----------------------g23:
;** 178	-----------------------    C$4 = (*U$90).max_axis_jerk;
;** 178	-----------------------    if ( (*line_data).jerk <= C$4 ) goto g25;
;** 179	-----------------------    (*line_data).jerk = C$4;

           MVK     .L1     1,A29             ; |174| 
||         ADDK    .S1     7896,A3           ; |175| 

           LDW     .D1T1   *A3,A3            ; |175| 
           MVK     .S2     3784,B6           ; |176| 
           MVK     .S1     3784,A4           ; |175| 
           ADD     .L1X    A4,B10,A4         ; |175| 
           LDDW    .D1T1   *A4,A5:A4         ; |175| 
           LDDW    .D1T2   *+A3(32),B5:B4    ; |175| 
           MVK     .S2     3800,B31          ; |179| 
           ADD     .L2     B6,B10,B6         ; |176| 
           MVK     .S1     3800,A31          ; |178| 
           MVK     .S1     1664,A30          ; |174| 
           CMPGTDP .S1X    A5:A4,B5:B4,A0    ; |175| 
           LDBU    .D1T1   *+A10[A30],A6     ; |174| 

   [ A0]   STDW    .D2T2   B5:B4,*B6         ; |176| 
||         ADD     .L2X    A31,B10,B4        ; |178| 

           LDDW    .D1T1   *+A3(48),A5:A4    ; |178| 
||         LDDW    .D2T2   *B4,B5:B4         ; |178| 

           ADD     .L2     B31,B10,B30       ; |179| 
           MVK     .S1     1664,A28          ; |174| 
           SHL     .S1     A29,A12,A3        ; |174| 
           ANDN    .L1     A6,A3,A3          ; |174| 
           CMPGTDP .S2X    B5:B4,A5:A4,B0    ; |178| 
           STB     .D1T1   A3,*+A10[A28]     ; |174| 
   [ B0]   STDW    .D2T1   A5:A4,*B30        ; |179| 
;** --------------------------------------------------------------------------*
$C$L213:    
;**	-----------------------g25:
;** 172	-----------------------    if ( (*(*this).m_channel_config).axis_number > (++i) ) goto g20;
           LDW     .D1T1   *+A10(12),A3      ; |172| 
           ADD     .L1     1,A12,A12         ; |172| 
           NOP             3
           LDBU    .D1T1   *+A3(2),A3        ; |172| 
           NOP             4
           CMPGT   .L1     A3,A12,A0         ; |172| 

   [ A0]   B       .S2     $C$L212           ; |172| 
|| [ A0]   EXTU    .S1     A12,24,24,A3      ; |173| 
|| [ A0]   MV      .L1     A13,A4            ; |173| 

   [ A0]   CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |173| 

   [!A0]   BNOP    .S1     $C$L216,3         ; |172| 
|| [ A0]   MV      .L2X    A3,B4             ; |173| 

           ; BRANCHCC OCCURS {$C$L212}       ; |172| 
;** --------------------------------------------------------------------------*
;** 172	-----------------------    goto g27;
           CALL    .S1     _ZN14CircularBufferI8LineDataE9WriteDataEPKS0_i ; |191| 
           LDW     .D1T1   *+A10(4),A4       ; |191| 
           ; BRANCH OCCURS {$C$L216}         ; |172| 
;** --------------------------------------------------------------------------*
$C$L214:    
;**	-----------------------g26:
;** 153	-----------------------    *K$8 = C$3 = 0.0;
;** 155	-----------------------    *((Q$1<<3)+(double *)K$5) = C$3;
;** --------------------------------------------------------------------------*
$C$L215:    
           CALL    .S1     _ZN14CircularBufferI8LineDataE9WriteDataEPKS0_i ; |191| 
           LDW     .D1T1   *+A10(4),A4       ; |191| 
;** --------------------------------------------------------------------------*
$C$L216:    
;**	-----------------------g27:
;** 191	-----------------------    len = CircularBuffer<LineData>::WriteData((*this).m_data_buffer, line_data, 1);
;** 193	-----------------------    if ( !(*line_data).interpolation_flag ) goto g31;
           ADDKPC  .S2     $C$RL207,B3,2     ; |191| 

           MV      .L2     B10,B4            ; |191| 
||         MVK     .L1     0x1,A6            ; |191| 

$C$RL207:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE9WriteDataEPKS0_i} {0}  ; |191| 
;** --------------------------------------------------------------------------*
           MVK     .S2     270,B5            ; |193| 
           LDBU    .D2T2   *+B10[B5],B0      ; |193| 
           MV      .L2X    A4,B4             ; |191| 
           EXT     .S2     B4,16,16,B11      ; |191| 
           NOP             2

   [!B0]   BNOP    .S1     $C$L220,4         ; |193| 
|| [ B0]   LDW     .D1T1   *+A10(12),A3      ; |194| 

   [ B0]   LDBU    .D1T1   *+A3(2),A0        ; |194| 
           ; BRANCHCC OCCURS {$C$L220}       ; |193| 
;** --------------------------------------------------------------------------*
;** 194	-----------------------    if ( !(C$2 = (*(*this).m_channel_config).axis_number) ) goto g31;
           MVK     .S2     1440,B4
           ADD     .L2     B4,B10,B6
           ZERO    .L2     B4
           NOP             1

   [!A0]   BNOP    .S1     $C$L220,5         ; |194| 
|| [ A0]   SUB     .L1     A0,1,A4

           ; BRANCHCC OCCURS {$C$L220}       ; |194| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$113 = (double * const)line_data+1440;
;**  	-----------------------    L$2 = (int)C$2;
;**  	-----------------------    U$112 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g30:
;** 195	-----------------------    *((*this).m_start_point+U$112) = *U$113++;
;** 194	-----------------------    U$112 += 8;
;** 194	-----------------------    if ( L$2 = L$2-1 ) goto g30;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 194
;*      Loop opening brace source line   : 194
;*      Loop closing brace source line   : 196
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1        2*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          3        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
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
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L217:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;12               ; (P) 
||         MV      .L1     A10,A5
||         MVK     .S1     1644,A4           ; |195| 
||         MVC     .S2X    A4,ILC

;** --------------------------------------------------------------------------*
$C$L218:    ; PIPED LOOP KERNEL
           ADD     .L1     A4,A5,A7          ; |195| (P) <0,0> 
           LDW     .D1T1   *A7,A3            ; |195| (P) <0,1> 
           NOP             1

           SPMASK          L1
||         MV      .L1X    B4,A6
||         LDDW    .D2T2   *B6++,B5:B4       ; |195| (P) <0,3>  ^ 

           NOP             3
           ADD     .L1     A6,A3,A3          ; |195| <0,7> 

           SPKERNEL 0,0
||         ADD     .L1     8,A6,A6           ; |194| <0,8> 
||         STDW    .D1T2   B5:B4,*A3         ; |195| <0,8>  ^ 

;** --------------------------------------------------------------------------*
$C$L219:    ; PIPED LOOP EPILOG
           MV      .L1     A5,A10
           NOP             2
;** --------------------------------------------------------------------------*
$C$L220:    
;**	-----------------------g31:
;** 198	-----------------------    if ( len > 0 ) goto g33;
;** 201	-----------------------    res = 8000;
;**	-----------------------g33:
;** 206	-----------------------    LookAhead::LookAheadHandle(this);
;** 208	-----------------------    return res;

           CALLP   .S2     _ZN9LookAhead15LookAheadHandleEv,B3
||         MV      .L1     A10,A4            ; |206| 

$C$RL208:  ; CALL OCCURS {_ZN9LookAhead15LookAheadHandleEv} {0}  ; |206| 
;** --------------------------------------------------------------------------*
           CMPGT   .L2     B11,0,B0          ; |198| 
   [!B0]   MVK     .S1     0x1f40,A11        ; |201| 

           MV      .L1     A11,A4            ; |208| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |209| 

           LDDW    .D2T1   *++SP,A13:A12     ; |209| 
||         MV      .L2     B13,B3            ; |209| 

           LDDW    .D2T2   *++SP,B11:B10     ; |209| 
||         RET     .S2     B3                ; |209| 

           LDW     .D2T2   *++SP(8),B13      ; |209| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |209| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead13DistantCircleEPK8LineDataS2_

;******************************************************************************
;* FUNCTION NAME: LookAhead::DistantCircle(const LineData *, const LineData *)*
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
_ZN9LookAhead13DistantCircleEPK8LineDataS2_:
;** --------------------------------------------------------------------------*
;* 1057	-----------------------    C$2 = (const double * const)point2+3064;
;* 1057	-----------------------    R = ABS(*C$2);
;* 1058	-----------------------    angle = C$2[1];
;* 1063	-----------------------    if ( (*point2).interpolation_type == 24 ) goto g7;

           STW     .D2T1   A11,*SP--(8)      ; |1053| 
||         MVK     .S1     274,A4            ; |1063| 

           STW     .D2T1   A10,*SP--(8)      ; |1053| 
||         ADD     .L1     A4,A6,A7          ; |1063| 
||         MVK     .S1     3064,A3           ; |1057| 

           STDW    .D2T2   B13:B12,*SP--     ; |1053| 
||         ADD     .L1     A3,A6,A3          ; |1057| 

           STDW    .D2T2   B11:B10,*SP--     ; |1053| 
           STDW    .D2T1   A15:A14,*SP--     ; |1053| 
           STDW    .D2T1   A13:A12,*SP--     ; |1053| 
           STW     .D2T2   B3,*SP--(16)      ; |1053| 
           LDHU    .D1T1   *A7,A7            ; |1063| 
           LDDW    .D1T1   *A3,A5:A4         ; |1057| 
           MV      .L2X    A6,B5             ; |1053| 
           MVK     .S2     24,B6             ; |1063| 
           ZERO    .L1     A14               ; |1058| 

           CMPEQ   .L2X    A7,B6,B0          ; |1063| 
||         MVK     .S2     0x530,B6          ; |1067| 

   [ B0]   B       .S2     $C$L222           ; |1063| 
||         ABSDP   .S1     A5:A4,A11:A10     ; |1057| 
||         ZERO    .L1     A5:A4             ; |1065| 

           STW     .D2T1   A4,*+SP(4)        ; |1058| 

   [!B0]   LDBU    .D2T2   *+B6[B5],B1       ; |1067| 
|| [!B0]   MVK     .S2     1456,B6           ; |1068| 

           LDDW    .D1T1   *+A3(8),A13:A12   ; |1058| 
   [!B0]   ADD     .L1X    B6,A6,A3          ; |1068| 
   [!B0]   ADD     .L2     B6,B4,B6          ; |1068| 
           ; BRANCHCC OCCURS {$C$L222}       ; |1063| 
;** --------------------------------------------------------------------------*
;* 1067	-----------------------    K$16 = point2;
;* 1067	-----------------------    if ( C$1 = *((Q$1 = 1328)+(const unsigned char *)K$16) ) goto g4;
;* 1068	-----------------------    K = *((const double * const)point2+1456)-*((const double * const)point1+1456);
;* 1070	-----------------------    goto g5;
           NOP             1

   [!B1]   LDDW    .D1T1   *A3,A5:A4         ; |1068| 
|| [!B1]   LDDW    .D2T2   *B6,B7:B6         ; |1068| 
|| [ B1]   MVK     .S2     1448,B7           ; |1071| 
|| [ B1]   MVK     .S1     1440,A3           ; |1071| 
||         CMPEQ   .L2     B1,1,B0           ; |1071| 

   [!B1]   MVK     .S2     3008,B4           ; |1078| 
|| [ B1]   ADD     .L2     B7,B4,B31         ; |1071| 
|| [ B1]   ADD     .L1     A3,A6,A31         ; |1071| 

   [ B1]   ADD     .L2X    A3,B4,B6          ; |1071| 
   [ B1]   ADD     .L1X    B7,A6,A30         ; |1071| 
   [!B1]   ADD     .L2     B4,B5,B4          ; |1078| 
   [!B1]   SUBDP   .L1X    A5:A4,B7:B6,A5:A4 ; |1068| 
   [!B1]   LDHU    .D2T2   *B4,B4            ; |1078| 
   [!B1]   BNOP    .S1     $C$L221,3         ; |1070| 
   [!B1]   EXTU    .S2     B4,23,31,B0       ; |1078| 

   [!B1]   STW     .D2T1   A4,*+SP(4)        ; |1068| 
|| [!B1]   MV      .L1     A5,A14            ; |1068| 

           ; BRANCHCC OCCURS {$C$L221}       ; |1070| 
;** --------------------------------------------------------------------------*
;**	-----------------------g4:
;* 1071	-----------------------    (C$1 == 1) ? (K = *((const double * const)point2+1448)-*((const double * const)point1+1448)) : (K = *((const double * const)point2+1440)-*((const double * const)point1+1440));

   [ B0]   LDDW    .D1T1   *A30,A5:A4        ; |1071| 
|| [!B0]   LDDW    .D2T2   *B6,B7:B6         ; |1071| 

   [!B0]   LDDW    .D1T1   *A31,A5:A4        ; |1071| 
   [ B0]   LDDW    .D2T1   *B31,A9:A8        ; |1071| 
           MVK     .S2     3008,B4           ; |1078| 
           ADD     .L2     B4,B5,B4          ; |1078| 
           LDHU    .D2T2   *B4,B4            ; |1078| 
   [!B0]   SUBDP   .S1X    A5:A4,B7:B6,A5:A4 ; |1071| 
   [ B0]   SUBDP   .L1     A5:A4,A9:A8,A5:A4 ; |1071| 
           NOP             5

   [!B0]   MV      .S1     A5,A14            ; |1071| 
|| [!B0]   STW     .D2T1   A4,*+SP(4)        ; |1071| 

   [ B0]   MV      .L1     A5,A14            ; |1071| 
|| [ B0]   STW     .D2T1   A4,*+SP(4)        ; |1071| 
||         EXTU    .S2     B4,23,31,B0       ; |1078| 

;** --------------------------------------------------------------------------*
$C$L221:    
;**	-----------------------g5:
;* 1078	-----------------------    if ( !(*((const unsigned short *)K$16+3008)&0x100) ) goto g8;

           MVKL    .S1     0x3e45798e,A5
||         MVKL    .S2     0x54442d18,B4

           MVKL    .S1     0xe2308c3a,A4
|| [!B0]   B       .S2     $C$L223           ; |1078| 

           MVKH    .S1     0x3e45798e,A5
||         MVK     .S2     3080,B31          ; |1080| 

           MVKH    .S1     0xe2308c3a,A4
||         MVKL    .S2     0x401921fb,B5
||         ADD     .L2X    B31,A6,B6         ; |1080| 

           ABSDP   .S1     A11:A10,A9:A8     ; |1082| 
||         MVKH    .S2     0x54442d18,B4
||         MV      .L2X    A5,B12            ; |1082| 

           MV      .L2X    A4,B13            ; |1082| 
||         MVKH    .S2     0x401921fb,B5

           CMPLTDP .S1     A9:A8,A5:A4,A15   ; |1082| 
||         LDW     .D2T1   *+SP(4),A4        ; |1090| 

           ; BRANCHCC OCCURS {$C$L223}       ; |1078| 
;** --------------------------------------------------------------------------*
;* 1080	-----------------------    R2 = R+*((const double * const)point2+3080)*angle/6.283185307179586232;
;* 1082	-----------------------    ((ABS(R) < 1.00000000000000002092e-8)|(ABS(R2) < 1.00000000000000002092e-8)) ? (R = (R+R2)*0.5) : (R = 2.0/(1.0/R+1.0/R2));
           LDDW    .D2T2   *B6,B7:B6         ; |1080| 
           NOP             4
           MPYDP   .M1X    A13:A12,B7:B6,A5:A4 ; |1080| 
           NOP             3
           CALL    .S1     __c6xabi_divd     ; |1080| 
           ADDKPC  .S2     $C$RL209,B3,4     ; |1080| 
$C$RL209:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |1080| 
;** --------------------------------------------------------------------------*
           ADDDP   .L1     A5:A4,A11:A10,A5:A4 ; |1080| 
           MV      .L2X    A10,B4            ; |1082| 
           ZERO    .L1     A6                ; |1082| 
           ZERO    .L1     A7
           SET     .S1     A7,0x15,0x1d,A7
           MV      .L2X    A11,B5            ; |1082| 
           ZERO    .S1     A31

           ADDDP   .L1     A5:A4,A11:A10,A17:A16 ; |1082| 
||         ABSDP   .S1     A5:A4,A9:A8       ; |1082| 

           MV      .L2X    A5,B10            ; |1080| 
||         MV      .D1X    B12,A5

           MV      .L2X    A4,B11            ; |1080| 
||         MV      .L1X    B13,A4

           CMPLTDP .S1     A9:A8,A5:A4,A3    ; |1082| 
           ZERO    .L1     A4                ; |1082| 
           OR      .S1     A3,A15,A0         ; |1082| 
   [ A0]   B       .S1     $C$L222           ; |1082| 
   [ A0]   MPYDP   .M1     A7:A6,A17:A16,A11:A10 ; |1082| 
           SET     .S1     A31,0x14,0x1d,A5
           NOP             2
   [!A0]   CALL    .S1     __c6xabi_divd     ; |1082| 
           ; BRANCHCC OCCURS {$C$L222}       ; |1082| 
;** --------------------------------------------------------------------------*
;* 1083	-----------------------    goto g8;
;**	-----------------------g7:
;* 1065	-----------------------    K = 0.0;
           ADDKPC  .S2     $C$RL213,B3,4     ; |1082| 
$C$RL213:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |1082| 
;** --------------------------------------------------------------------------*

           MV      .L1     A5,A11            ; |1082| 
||         ZERO    .S1     A5

           CALLP   .S2     __c6xabi_divd,B3
||         SET     .S1     A5,0x14,0x1d,A5
||         MV      .L2     B11,B4            ; |1082| 
||         MV      .D2     B10,B5            ; |1082| 
||         MV      .L1     A4,A10            ; |1082| 
||         ZERO    .D1     A4                ; |1082| 

$C$RL212:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |1082| 
           ADDDP   .L1     A5:A4,A11:A10,A7:A6 ; |1082| 
           ZERO    .S1     A31
           ZERO    .L1     A4                ; |1082| 
           SET     .S1     A31,0x1e,0x1e,A5
           NOP             4
           MV      .L2X    A6,B4             ; |1082| 

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L2X    A7,B5             ; |1082| 

$C$RL214:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |1082| 
;** --------------------------------------------------------------------------*

           MV      .L1     A5,A11            ; |1082| 
||         MV      .S1     A4,A10            ; |1082| 

;** --------------------------------------------------------------------------*
$C$L222:    
           LDW     .D2T1   *+SP(4),A4        ; |1090| 
;** --------------------------------------------------------------------------*
$C$L223:    
;**	-----------------------g8:
;* 1090	-----------------------    (K == 0.0) ? (distant_long = R*angle) : (distant_long = sqrt(pow(R, 2.0)*pow(angle, 2.0)+pow(K, 2.0)));

           ZERO    .L2     B5
||         ZERO    .S2     B4                ; |1090| 

           MV      .L1     A14,A5            ; |1090| 
           ZERO    .L1     A7:A6             ; |1090| 
           SET     .S2     B5,0x1e,0x1e,B5

           CMPEQDP .S1     A5:A4,A7:A6,A0    ; |1090| 
||         MPYDP   .M1     A13:A12,A11:A10,A7:A6 ; |1090| 

           MV      .L1     A10,A4            ; |1090| 
||         MV      .D1     A11,A5            ; |1090| 

   [ A0]   LDW     .D2T2   *++SP(16),B3      ; |1098| 
|| [ A0]   B       .S1     $C$L224           ; |1090| 

   [ A0]   LDDW    .D2T1   *++SP,A13:A12     ; |1098| 

   [!A0]   CALL    .S1     pow               ; |1090| 
|| [ A0]   LDDW    .D2T1   *++SP,A15:A14     ; |1098| 

   [ A0]   LDDW    .D2T2   *++SP,B11:B10     ; |1098| 
   [ A0]   LDDW    .D2T2   *++SP,B13:B12     ; |1098| 

   [ A0]   RET     .S2     B3                ; |1098| 
|| [ A0]   LDW     .D2T1   *++SP(8),A10      ; |1098| 

           ; BRANCHCC OCCURS {$C$L224}       ; |1090| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     $C$RL217,B3,1     ; |1090| 
$C$RL217:  ; CALL OCCURS {pow} {0}           ; |1090| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B5

           SET     .S2     B5,0x1e,0x1e,B5
||         MV      .L1     A4,A10            ; |1090| 

           CALLP   .S2     pow,B3
||         ZERO    .L2     B4                ; |1090| 
||         MV      .L1     A5,A11            ; |1090| 
||         MV      .S1     A13,A5            ; |1090| 
||         MV      .D1     A12,A4            ; |1090| 

$C$RL216:  ; CALL OCCURS {pow} {0}           ; |1090| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         MV      .L1     A4,A12            ; |1090| 
||         LDW     .D2T1   *+SP(4),A4        ; |1090| 
||         MV      .S1     A5,A13            ; |1090| 
||         MV      .D1     A14,A5            ; |1090| 
||         ZERO    .L2     B4                ; |1090| 

$C$RL215:  ; CALL OCCURS {pow} {0}           ; |1090| 
           MPYDP   .M1     A13:A12,A11:A10,A7:A6 ; |1090| 
           NOP             9
           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |1090| 
           CALLP   .S2     sqrt,B3
$C$RL218:  ; CALL OCCURS {sqrt} {0}          ; |1090| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(16),B3      ; |1098| 
           LDDW    .D2T1   *++SP,A13:A12     ; |1098| 
           LDDW    .D2T1   *++SP,A15:A14     ; |1098| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1098| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1098| 

           RET     .S2     B3                ; |1098| 
||         LDW     .D2T1   *++SP(8),A10      ; |1098| 
||         MV      .L1     A4,A6             ; |1090| 
||         MV      .S1     A5,A7             ; |1090| 

;** --------------------------------------------------------------------------*
$C$L224:    
;* 1097	-----------------------    return distant_long;
           LDW     .D2T1   *++SP(8),A11      ; |1098| 
           NOP             2
           MV      .L1     A7,A5             ; |1097| 
           MV      .L1     A6,A4             ; |1097| 
           ; BRANCH OCCURS {B3}              ; |1098| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead7DistantEPK8LineDataS2_

;******************************************************************************
;* FUNCTION NAME: LookAhead::Distant(const LineData *, const LineData *)      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,  *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,DP,SP,A16,   *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 0 Args + 52 Auto + 32 Save = 84 byte                 *
;******************************************************************************
_ZN9LookAhead7DistantEPK8LineDataS2_:
;** --------------------------------------------------------------------------*
;* 1018	-----------------------    C$4 = (const double * const)point1+1440;
;* 1018	-----------------------    start_pos[0] = *C$4;
;* 1019	-----------------------    start_pos[1] = C$4[1];
;* 1020	-----------------------    start_pos[2] = C$2 = C$4[2];
;* 1022	-----------------------    C$3 = (const double * const)point2+1440;
;* 1022	-----------------------    end_pos[0] = *C$3;
;* 1023	-----------------------    end_pos[1] = C$3[1];
;* 1024	-----------------------    end_pos[2] = C$1 = C$3[2];
;* 1027	-----------------------    distant_type = (*point2).interpolation_type;
;* 1030	-----------------------    if ( !((distant_type == 0)|(distant_type == 10)) ) goto g3;

           STW     .D2T2   B13,*SP--(8)      ; |1013| 
||         MVK     .S2     1440,B5           ; |1018| 
||         MVK     .S1     274,A3            ; |1027| 
||         MV      .L1     A4,A7             ; |1013| 
||         MV      .L2     B3,B13            ; |1013| 

           STDW    .D2T2   B11:B10,*SP--     ; |1013| 
||         MVK     .S2     1440,B6           ; |1022| 
||         ADD     .L2     B5,B4,B5          ; |1018| 
||         ADD     .L1     A3,A6,A3          ; |1027| 

           STDW    .D2T1   A13:A12,*SP--     ; |1013| 
||         ADD     .L2X    B6,A6,B8          ; |1022| 

           STDW    .D2T1   A11:A10,*SP--     ; |1013| 

           LDDW    .D2T2   *B5,B17:B16       ; |1018| 
||         LDHU    .D1T1   *A3,A4            ; |1027| 
||         MVK     .S1     30,A3             ; |1446| 

           LDDW    .D2T2   *B8,B7:B6         ; |1022| 
||         ADDK    .S2     -56,SP            ; |1013| 

           LDDW    .D2T2   *+B5(8),B19:B18   ; |1019| 
           LDDW    .D2T2   *+B8(8),B21:B20   ; |1023| 
           LDDW    .D2T2   *+B8(16),B9:B8    ; |1024| 

           STDW    .D2T2   B17:B16,*+SP(8)   ; |1018| 
||         CMPEQ   .L1     A4,A3,A8          ; |1446| 

           STDW    .D2T2   B7:B6,*+SP(32)    ; |1022| 
           LDDW    .D2T2   *+SP(8),B7:B6     ; |1031| 
           LDDW    .D2T2   *+SP(32),B17:B16  ; |1031| 
           MV      .L1X    B4,A3             ; |1013| 
           CMPEQ   .L2X    A4,10,B4          ; |1030| 
           STDW    .D2T2   B9:B8,*+SP(48)    ; |1024| 
           STDW    .D2T2   B19:B18,*+SP(16)  ; |1019| 

           SUBDP   .L2     B17:B16,B7:B6,B17:B16 ; |1031| 
||         LDDW    .D2T2   *+B5(16),B7:B6    ; |1020| 
||         MVK     .S2     20,B5             ; |1446| 

           STDW    .D2T2   B21:B20,*+SP(40)  ; |1023| 

           CMPEQ   .L1X    A4,B5,A5          ; |1446| 
||         MVK     .S2     24,B5             ; |1446| 

           CMPEQ   .L2X    A4,B5,B5          ; |1446| 
||         CMPEQ   .L1     A4,0,A4           ; |1030| 
||         OR      .S1     A8,A5,A5          ; |1446| 

           OR      .L1X    B4,A4,A0          ; |1030| 
||         ZERO    .L2     B4                ; |1031| 

           SUBDP   .L2     B9:B8,B7:B6,B11:B10 ; |1031| 
|| [!A0]   B       .S1     $C$L225           ; |1030| 
||         STDW    .D2T2   B7:B6,*+SP(24)    ; |1020| 
||         OR      .S2X    B5,A5,B0          ; |1446| 

   [ A0]   CALL    .S1     pow               ; |1031| 
||         LDDW    .D2T2   *+SP(8),B7:B6     ; |1040| 
||         ZERO    .S2     B5

           LDDW    .D2T2   *+SP(32),B9:B8    ; |1040| 
           SET     .S2     B5,0x1e,0x1e,B5
           MV      .L1X    B17,A5            ; |1031| 
           MV      .L1X    B16,A4            ; |1031| 
           ; BRANCHCC OCCURS {$C$L225}       ; |1030| 
;** --------------------------------------------------------------------------*
;* 1031	-----------------------    distant_long = sqrt(pow(end_pos[0]-start_pos[0], 2.0)+pow(end_pos[1]-start_pos[1], 2.0)+pow(C$1-C$2, 2.0));
;* 1048	-----------------------    return distant_long;
           ADDKPC  .S2     $C$RL221,B3,0     ; |1031| 
$C$RL221:  ; CALL OCCURS {pow} {0}           ; |1031| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *+SP(16),B5:B4    ; |1031| 
           LDDW    .D2T2   *+SP(40),B7:B6    ; |1031| 
           MV      .L1     A4,A12            ; |1031| 
           MV      .L1     A5,A13            ; |1031| 
           NOP             2
           SUBDP   .L2     B7:B6,B5:B4,B7:B6 ; |1031| 
           ZERO    .S2     B5
           SET     .S2     B5,0x1e,0x1e,B5
           ZERO    .L2     B4                ; |1031| 
           NOP             4
           MV      .L1X    B6,A4             ; |1031| 

           MV      .L1X    B7,A5             ; |1031| 
||         CALLP   .S2     pow,B3

$C$RL220:  ; CALL OCCURS {pow} {0}           ; |1031| 
           ZERO    .L2     B5

           SET     .S2     B5,0x1e,0x1e,B5
||         MV      .L1     A4,A10            ; |1031| 
||         MV      .S1X    B10,A4            ; |1031| 

           CALLP   .S2     pow,B3
||         MV      .L1     A5,A11            ; |1031| 
||         MV      .S1X    B11,A5            ; |1031| 
||         ZERO    .L2     B4                ; |1031| 

$C$RL219:  ; CALL OCCURS {pow} {0}           ; |1031| 
           ADDDP   .L1     A11:A10,A13:A12,A7:A6 ; |1031| 
           NOP             6
           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |1031| 
           CALLP   .S2     sqrt,B3
$C$RL222:  ; CALL OCCURS {sqrt} {0}          ; |1031| 
;** --------------------------------------------------------------------------*
           ADDK    .S2     56,SP             ; |1049| 
           LDDW    .D2T1   *++SP,A11:A10     ; |1049| 

           LDDW    .D2T1   *++SP,A13:A12     ; |1049| 
||         MV      .L2     B13,B3            ; |1049| 

           LDDW    .D2T2   *++SP,B11:B10     ; |1049| 
||         RET     .S2     B3                ; |1049| 

           LDW     .D2T2   *++SP(8),B13      ; |1049| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1049| 
;** --------------------------------------------------------------------------*
$C$L225:    
;**	-----------------------g3:
;* 1446	-----------------------    if ( !((distant_type == 20)|(distant_type == 30)|(distant_type == 24)) ) goto g5;  // [74]
           MV      .L1     A7,A4             ; |1037| 
           SUBDP   .L2     B9:B8,B7:B6,B7:B6 ; |1040| 
           MV      .S2X    A3,B4             ; |1037| 
           NOP             1
   [!B0]   B       .S1     $C$L226           ; |1446| 
   [ B0]   CALL    .S1     _ZN9LookAhead13DistantCircleEPK8LineDataS2_ ; |1037| 
   [!B0]   CALL    .S1     pow               ; |1040| 
           NOP             2
           MV      .L1X    B7,A5             ; |1040| 
           ; BRANCHCC OCCURS {$C$L226}       ; |1446| 
;** --------------------------------------------------------------------------*
;* 1037	-----------------------    distant_long = LookAhead::DistantCircle(this, point1, point2);
;* 1048	-----------------------    return distant_long;
           ADDKPC  .S2     $C$RL223,B3,0     ; |1037| 
$C$RL223:  ; CALL OCCURS {_ZN9LookAhead13DistantCircleEPK8LineDataS2_} {0}  ; |1037| 
;** --------------------------------------------------------------------------*
           ADDK    .S2     56,SP             ; |1049| 
           LDDW    .D2T1   *++SP,A11:A10     ; |1049| 

           LDDW    .D2T1   *++SP,A13:A12     ; |1049| 
||         MV      .L2     B13,B3            ; |1049| 

           LDDW    .D2T2   *++SP,B11:B10     ; |1049| 
||         RET     .S2     B3                ; |1049| 

           LDW     .D2T2   *++SP(8),B13      ; |1049| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1049| 
;** --------------------------------------------------------------------------*
$C$L226:    
;**	-----------------------g5:
;* 1040	-----------------------    distant_long = sqrt(pow(end_pos[0]-start_pos[0], 2.0)+pow(end_pos[1]-start_pos[1], 2.0)+pow(end_pos[2]-start_pos[2], 2.0));
;* 1048	-----------------------    return distant_long;
           MV      .L1X    B6,A4             ; |1040| 

           ZERO    .L2     B4                ; |1040| 
||         ADDKPC  .S2     $C$RL226,B3,0     ; |1040| 

$C$RL226:  ; CALL OCCURS {pow} {0}           ; |1040| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *+SP(16),B7:B6    ; |1040| 
           LDDW    .D2T2   *+SP(40),B5:B4    ; |1040| 
           MV      .L1     A4,A12            ; |1040| 
           MV      .L1     A5,A13            ; |1040| 
           NOP             2
           SUBDP   .L2     B5:B4,B7:B6,B7:B6 ; |1040| 
           ZERO    .S2     B5
           SET     .S2     B5,0x1e,0x1e,B5
           ZERO    .L2     B4                ; |1040| 
           NOP             4
           MV      .L1X    B6,A4             ; |1040| 

           MV      .L1X    B7,A5             ; |1040| 
||         CALLP   .S2     pow,B3

$C$RL225:  ; CALL OCCURS {pow} {0}           ; |1040| 
           LDDW    .D2T2   *+SP(24),B7:B6    ; |1040| 
           LDDW    .D2T2   *+SP(48),B5:B4    ; |1040| 
           MV      .L1     A4,A10            ; |1040| 
           MV      .L1     A5,A11            ; |1040| 
           NOP             2
           SUBDP   .L2     B5:B4,B7:B6,B7:B6 ; |1040| 
           ZERO    .S2     B5
           SET     .S2     B5,0x1e,0x1e,B5
           ZERO    .L2     B4                ; |1040| 
           NOP             4
           MV      .L1X    B6,A4             ; |1040| 

           MV      .L1X    B7,A5             ; |1040| 
||         CALLP   .S2     pow,B3

$C$RL224:  ; CALL OCCURS {pow} {0}           ; |1040| 
           ADDDP   .L1     A11:A10,A13:A12,A7:A6 ; |1040| 
           NOP             6
           ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |1040| 
           CALLP   .S2     sqrt,B3
$C$RL227:  ; CALL OCCURS {sqrt} {0}          ; |1040| 
;** --------------------------------------------------------------------------*
           ADDK    .S2     56,SP             ; |1049| 
           LDDW    .D2T1   *++SP,A11:A10     ; |1049| 

           LDDW    .D2T1   *++SP,A13:A12     ; |1049| 
||         MV      .L2     B13,B3            ; |1049| 

           LDDW    .D2T2   *++SP,B11:B10     ; |1049| 
||         RET     .S2     B3                ; |1049| 

           LDW     .D2T2   *++SP(8),B13      ; |1049| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1049| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead7DistantEPK8LineData

;******************************************************************************
;* FUNCTION NAME: LookAhead::Distant(const LineData *)                        *
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
;*   Local Frame Size  : 0 Args + 3820 Auto + 24 Save = 3844 byte             *
;******************************************************************************
_ZN9LookAhead7DistantEPK8LineData:
;** --------------------------------------------------------------------------*
;**  	-----------------------    CoordInfo::CoordInfo((struct oordInfo *)&data+280);
;**  	-----------------------    AxisDataMode::AxisDataMode((struct xisDataMode *)&data+1344);
;**  	-----------------------    FeedInfo::FeedInfo((struct eedInfo *)&data+1352);
;**  	-----------------------    SpindleInfo::SpindleInfo((struct pindleInfo *)&data+1400);
;**  	-----------------------    K$14 = C$14 = (struct xisMovData *)&data+1432;
;**  	-----------------------    AxisMovData::AxisMovData((struct xisMovData *)(void *)C$14);
;**  	-----------------------    ExtraMovData::ExtraMovData((struct xtraMovData *)&data+3008);
;**  	-----------------------    MCommands::MCommands((struct Commands *)&data+3128);
;**  	-----------------------    ParaEntry::ParaEntry((struct araEntry *)&data+3144);
;** 660	-----------------------    if ( (*this).m_has_position ) goto g6;  // [71]
           STW     .D2T1   A11,*SP--(8)      ; |1005| 
           STDW    .D2T1   A13:A12,*SP--     ; |1005| 
           STW     .D2T1   A10,*SP--(8)      ; |1005| 

           MV      .L1X    B3,A13            ; |1005| 
||         ADDK    .S2     -3824,SP          ; |1005| 

           MV      .L1X    B4,A12            ; |1005| 

           CALLP   .S2     _ZN9CoordInfoC1Ev,B3
||         MV      .L1     A4,A10            ; |1005| 
||         ADDAW   .D1X    SP,72,A4

$C$RL228:  ; CALL OCCURS {_ZN9CoordInfoC1Ev} {0} 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZN12AxisDataModeC1Ev,B3
||         ADDAW   .D1X    SP,338,A4

$C$RL229:  ; CALL OCCURS {_ZN12AxisDataModeC1Ev} {0} 

           CALLP   .S2     _ZN8FeedInfoC1Ev,B3
||         ADDAW   .D1X    SP,340,A4

$C$RL230:  ; CALL OCCURS {_ZN8FeedInfoC1Ev} {0} 

           CALLP   .S2     _ZN11SpindleInfoC1Ev,B3
||         ADDAW   .D1X    SP,352,A4

$C$RL231:  ; CALL OCCURS {_ZN11SpindleInfoC1Ev} {0} 
           ADDAW   .D1X    SP,360,A11

           CALLP   .S2     _ZN11AxisMovDataC1Ev,B3
||         MV      .L1     A11,A4

$C$RL232:  ; CALL OCCURS {_ZN11AxisMovDataC1Ev} {0} 
           ADDAW   .D2     SP,754,B4
           NOP             1

           CALLP   .S2     _ZN12ExtraMovDataC1Ev,B3
||         MV      .L1X    B4,A4

$C$RL233:  ; CALL OCCURS {_ZN12ExtraMovDataC1Ev} {0} 

           CALLP   .S2     _ZN9MCommandsC1Ev,B3
||         ADDAW   .D1X    SP,784,A4

$C$RL234:  ; CALL OCCURS {_ZN9MCommandsC1Ev} {0} 
           ADDAW   .D2     SP,788,B4
           NOP             1

           CALLP   .S2     _ZN9ParaEntryC1Ev,B3
||         MV      .L1X    B4,A4

$C$RL235:  ; CALL OCCURS {_ZN9ParaEntryC1Ev} {0} 
;** --------------------------------------------------------------------------*
           MVK     .S1     48,A3             ; |660| 
           LDB     .D1T1   *+A10[A3],A0      ; |660| 
           ZERO    .L2     B4                ; |651| 
           NOP             3

   [ A0]   B       .S1     $C$L231           ; |660| 
||         MV      .L1     A0,A1             ; branch predicate copy
|| [!A0]   LDW     .D1T1   *+A10(12),A3      ; |652| 

   [ A1]   LDW     .D1T1   *+A10(12),A3      ; |661| 
           NOP             3
   [!A0]   LDBU    .D1T1   *+A3(2),A0        ; |652| 
           ; BRANCHCC OCCURS {$C$L231}       ; |660| 
;** --------------------------------------------------------------------------*
;** 651	-----------------------    data.interpolation_type = 0u;  // [70]
;** 652	-----------------------    if ( !(C$13 = (*(*this).m_channel_config).axis_number) ) goto g5;  // [70]
;**  	-----------------------    U$45 = (double * const)this+64;
;**  	-----------------------    L$1 = (int)C$13;
;**  	-----------------------    U$40 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ADDAD   .D1     A10,8,A7
           STH     .D2T2   B4,*+SP(282)      ; |651| 
           NOP             2

   [!A0]   BNOP    .S1     $C$L230,5         ; |652| 
|| [ A0]   SUB     .L1     A0,1,A4

           ; BRANCHCC OCCURS {$C$L230}       ; |652| 
;** --------------------------------------------------------------------------*
;**	-----------------------g4:
;** 653	-----------------------    *U$45++ = *((*this).m_realtime_state+U$40+512);  // [70]
;** 652	-----------------------    U$40 += 8;  // [70]
;** 652	-----------------------    if ( L$1 = L$1-1 ) goto g4;  // [70]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 652
;*      Loop opening brace source line   : 652
;*      Loop closing brace source line   : 654
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     3*       0     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             3*       0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     2        0     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Schedule found with 3 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L227:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;18               ; (P) 
||         MV      .L1     A10,A6
||         MVC     .S2X    A4,ILC

;** --------------------------------------------------------------------------*
$C$L228:    ; PIPED LOOP KERNEL
           LDW     .D1T1   *+A6(16),A3       ; |653| (P) <0,0> 
           NOP             4

           SPMASK          L1
||         MV      .L1X    B4,A8

           ADD     .L1     A8,A3,A3          ; |653| (P) <0,6> 
           ADDK    .S1     512,A3            ; |653| (P) <0,7> 
           LDDW    .D1T1   *A3,A5:A4         ; |653| (P) <0,8>  ^ 
           NOP             2
           ADD     .L1     8,A8,A8           ; |652| (P) <0,11> 
           NOP             1

           SPKERNEL 0,0
||         STDW    .D1T1   A5:A4,*A7++       ; |653| <0,13>  ^ 

;** --------------------------------------------------------------------------*
$C$L229:    ; PIPED LOOP EPILOG
           MV      .S1     A6,A10
           NOP             7
;** --------------------------------------------------------------------------*
$C$L230:    
;**	-----------------------g5:
;** 655	-----------------------    memcpy(K$14, (struct xisMovData *)this+56, 1569u);  // [70]
;** 656	-----------------------    goto g10;  // [70]
           ADDAD   .D1     A10,7,A3          ; |655| 
           MV      .L1     A11,A4            ; |655| 

           MVK     .S1     0x621,A6          ; |655| 
||         CALLP   .S2     memcpy,B3
||         MV      .L2X    A3,B4             ; |655| 

$C$RL236:  ; CALL OCCURS {memcpy} {0}        ; |655| 
;** --------------------------------------------------------------------------*
           B       .S1     $C$L236           ; |656| 
           CALL    .S1     _ZN9LookAhead7DistantEPK8LineDataS2_ ; |1009| 
           NOP             4
           ; BRANCH OCCURS {$C$L236}         ; |656| 
;** --------------------------------------------------------------------------*
$C$L231:    
;**	-----------------------g6:
;** 661	-----------------------    if ( !(C$12 = (*(*this).m_channel_config).axis_number) ) goto g9;  // [71]
           LDBU    .D1T1   *+A3(2),A0        ; |661| 
           MVK     .S1     512,A3
           ADDAD   .D1     A10,8,A4
           NOP             2

   [!A0]   BNOP    .S1     $C$L235,4         ; |661| 
|| [ A0]   LDW     .D1T2   *+A10(16),B6
|| [ A0]   SUB     .L1     A0,1,A31

   [ A0]   MVC     .S2X    A31,ILC
           ; BRANCHCC OCCURS {$C$L235}       ; |661| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$62 = (*this).m_realtime_state+512;
;**  	-----------------------    U$65 = (double * const)this+64;
;**  	-----------------------    L$2 = (int)C$12;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g8:
;** 663	-----------------------    *U$65++ = *U$62++;  // [71]
;** 661	-----------------------    if ( L$2 = L$2-1 ) goto g8;  // [71]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/look_ahead.cpp
;*      Loop source line                 : 661
;*      Loop opening brace source line   : 661
;*      Loop closing brace source line   : 664
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
$C$L232:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;12               ; (P) 
||         ADD     .L2X    A3,B6,B7

;** --------------------------------------------------------------------------*
$C$L233:    ; PIPED LOOP KERNEL
           LDDW    .D2T2   *B7++,B5:B4       ; |663| (P) <0,0>  ^ 
           NOP             3

           SPMASK          L2
||         MV      .L2X    A4,B6

           STDW    .D2T2   B5:B4,*B6++       ; |663| (P) <0,5>  ^ 
           SPKERNEL 0,1
;** --------------------------------------------------------------------------*
$C$L234:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L235:    
;**	-----------------------g9:
;** 665	-----------------------    data.interpolation_type = 0u;  // [71]
;** 666	-----------------------    memcpy(K$14, (struct xisMovData *)this+56, 1569u);  // [71]
           ADDAD   .D1     A10,7,A3          ; |666| 
           ZERO    .L2     B4                ; |665| 

           CALLP   .S2     memcpy,B3
||         STH     .D2T2   B4,*+SP(282)      ; |665| 
||         MV      .L2X    A3,B4             ; |666| 
||         MV      .L1     A11,A4            ; |666| 
||         MVK     .S1     0x621,A6          ; |666| 

$C$RL237:  ; CALL OCCURS {memcpy} {0}        ; |666| 
           CALL    .S1     _ZN9LookAhead7DistantEPK8LineDataS2_ ; |1009| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L236:    
;**	-----------------------g10:
;* 1009	-----------------------    return LookAhead::Distant(this, &data, point);

           MV      .L1     A12,A6            ; |1009| 
||         ADD     .L2     8,SP,B4           ; |1009| 
||         MV      .S1     A10,A4            ; |1009| 
||         ADDKPC  .S2     $C$RL238,B3,0     ; |1009| 

$C$RL238:  ; CALL OCCURS {_ZN9LookAhead7DistantEPK8LineDataS2_} {0}  ; |1009| 
;** --------------------------------------------------------------------------*
           ADDK    .S2     3824,SP           ; |1010| 

           LDW     .D2T1   *++SP(8),A10      ; |1010| 
||         MV      .L2X    A13,B3            ; |1010| 

           LDDW    .D2T1   *++SP,A13:A12     ; |1010| 
||         RET     .S2     B3                ; |1010| 

           LDW     .D2T1   *++SP(8),A11      ; |1010| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1010| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead21GetIJKAngleFromRadiusEPK8LineDataPS0_

;******************************************************************************
;* FUNCTION NAME: LookAhead::GetIJKAngleFromRadius(const LineData *, LineData *)*
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
;*   Local Frame Size  : 0 Args + 64 Auto + 56 Save = 120 byte                *
;******************************************************************************
_ZN9LookAhead21GetIJKAngleFromRadiusEPK8LineDataPS0_:
;** --------------------------------------------------------------------------*
;** 856	-----------------------    distant_type = (*point2).interpolation_type;
;** 865	-----------------------    r = *((double * const)point2+3064);
;** 698	-----------------------    U$11 = *((const double * const)point1+1440);  // [57]
;** 698	-----------------------    C$12 = (const double * const)point2+1440;  // [57]
;** 698	-----------------------    mid[0] = (U$11+*C$12)*0.5;  // [57]
;** 700	-----------------------    K$21 = (const double * const)point1+1448;  // [57]
;** 700	-----------------------    U$22 = *K$21;  // [57]
;** 700	-----------------------    mid[1] = C$11 = (U$22+C$12[1])*0.5;  // [57]
;** 702	-----------------------    U$32 = K$21[1];  // [57]
;** 702	-----------------------    mid[2] = C$10 = (K$21[1]+C$12[2])*0.5;  // [57]
;** 705	-----------------------    if ( !(U$44 = *((const unsigned char * const)point2+1328)) ) goto g5;  // [57]
;** 709	-----------------------    if ( U$44 == 1 ) goto g4;  // [57]
;** 714	-----------------------    mid[0] = U$11;  // [57]
;** 715	-----------------------    x = C$11-U$22;  // [57]
;** 716	-----------------------    y = C$10-K$21[1];  // [57]
;** 716	-----------------------    goto g6;  // [57]
;**	-----------------------g4:
;** 710	-----------------------    mid[1] = U$22;  // [57]
;** 711	-----------------------    x = mid[2]-U$32;  // [57]
;** 712	-----------------------    y = mid[0]-U$11;  // [57]
;** 713	-----------------------    goto g6;  // [57]
;**	-----------------------g5:
;** 706	-----------------------    mid[2] = U$32;  // [57]
;** 707	-----------------------    x = mid[0]-U$11;  // [57]
;** 708	-----------------------    y = mid[1]-U$22;  // [57]
;**	-----------------------g6:
;** 870	-----------------------    U$57 = y*y;
;** 870	-----------------------    U$56 = x*x;
;** 870	-----------------------    if ( ABS(U$56+U$57) >= 1.00000000000000002092e-8 ) goto g8;
;** 871	-----------------------    C$9 = (double * const)point2+3016;
;** 871	-----------------------    *C$9 = U$11;
;** 873	-----------------------    C$9[1] = *K$21;
;** 875	-----------------------    C$9[2] = K$21[1];
;** 877	-----------------------    C$9[7] = 0.0;
;** 878	-----------------------    return 0;

           STW     .D2T1   A11,*SP--(8)      ; |853| 
||         MVK     .S1     1440,A4           ; |698| 

           STW     .D2T1   A10,*SP--(8)      ; |853| 
||         MVK     .S1     1440,A3           ; |698| 
||         ADD     .L1X    A4,B4,A7          ; |698| 

           STDW    .D2T2   B13:B12,*SP--     ; |853| 
||         ADD     .L1     A3,A6,A3          ; |698| 

           STDW    .D2T2   B11:B10,*SP--     ; |853| 
           STDW    .D2T1   A15:A14,*SP--     ; |853| 
           STDW    .D2T1   A13:A12,*SP--     ; |853| 
           STW     .D2T2   B3,*SP--(72)      ; |853| 
           LDDW    .D1T1   *A7,A17:A16       ; |698| 
           LDDW    .D1T1   *A3,A5:A4         ; |698| 
           MVK     .S2     1448,B5           ; |700| 
           ADD     .L2     B5,B4,B20         ; |700| 
           LDDW    .D2T2   *B20,B9:B8        ; |700| 
           ZERO    .L2     B5

           ADDDP   .L1     A5:A4,A17:A16,A9:A8 ; |698| 
||         LDDW    .D1T1   *+A3(8),A5:A4     ; |700| 

           ZERO    .L2     B4                ; |698| 
           SET     .S2     B5,0x15,0x1d,B5
           MV      .L1     A6,A7             ; |708| 
           LDDW    .D2T2   *+B20(8),B19:B18  ; |702| 
           ADDDP   .L1X    A5:A4,B9:B8,A5:A4 ; |700| 
           STW     .D2T1   A6,*+SP(48)       ; |853| 
           MPYDP   .M1X    B5:B4,A9:A8,A9:A8 ; |698| 
           STW     .D2T2   B20,*+SP(44)      ; |700| 
           STW     .D2T1   A17,*+SP(40)      ; |698| 
           STW     .D2T1   A16,*+SP(36)      ; |698| 
           NOP             2

           MPYDP   .M2X    B5:B4,A5:A4,B17:B16 ; |700| 
||         LDDW    .D1T1   *+A3(16),A5:A4    ; |702| 
||         MVK     .S1     1328,A3           ; |705| 

           LDBU    .D1T1   *+A7[A3],A0       ; |705| 
           MVK     .S1     274,A3            ; |856| 
           MVK     .S1     3064,A7           ; |865| 
           STDW    .D2T1   A9:A8,*+SP(8)     ; |698| 

           ADDDP   .L1X    A5:A4,B19:B18,A5:A4 ; |702| 
||         LDDW    .D2T2   *+SP(8),B19:B18   ; |707| 

           ADD     .S1     A3,A6,A3          ; |856| 

           LDHU    .D1T1   *A3,A6            ; |856| 
||         ADD     .L1     A7,A6,A3          ; |865| 

           MV      .L2X    A0,B0             ; |715| 
   [ A0]   LDDW    .D2T2   *+SP(8),B7:B6     ; |712| 

           SUBDP   .L2X    B19:B18,A17:A16,B19:B18 ; |707| 
||         STDW    .D2T2   B17:B16,*+SP(16)  ; |700| 

           LDDW    .D2T1   *+SP(16),A9:A8    ; |708| 
           MPYDP   .M1X    B5:B4,A5:A4,A5:A4 ; |702| 
           STW     .D2T1   A0,*+SP(32)       ; |702| 
           STW     .D2T1   A6,*+SP(52)       ; |706| 
           MV      .S2     B20,B4            ; |709| 

           SUBDP   .L1X    A9:A8,B9:B8,A11:A10 ; |708| 
||         LDDW    .D2T2   *+B4(8),B5:B4     ; |702| 

   [ B0]   MV      .S1     A16,A8            ; |709| 
|| [ B0]   MV      .D1     A17,A9            ; |709| 

           MV      .L1X    B18,A12           ; |707| Define a twin register

           MV      .S1X    B19,A13           ; |707| Define a twin register
|| [ A0]   SUBDP   .L2     B17:B16,B9:B8,B19:B18 ; |715| 
||         CMPEQ   .L1     A0,1,A0           ; |709| 

   [!B0]   MVK     .L1     0x1,A0
|| [ B0]   SUBDP   .S1X    B7:B6,A9:A8,A11:A10 ; |712| 

   [!A0]   MV      .L2     B20,B16           ; |702| 
|| [!A0]   MV      .D1     A17,A7            ; |715| 

           STDW    .D2T1   A5:A4,*+SP(24)    ; |702| 
   [!A0]   LDDW    .D2T2   *+B16(8),B17:B16  ; |716| 
   [ B0]   LDDW    .D2T2   *+SP(24),B7:B6    ; |711| 
   [!A0]   MV      .L1     A16,A6            ; |715| 
   [!A0]   STDW    .D2T1   A7:A6,*+SP(8)     ; |714| 
   [!B0]   STDW    .D2T2   B5:B4,*+SP(24)    ; |706| 

   [!A0]   SUBDP   .L1X    A5:A4,B17:B16,A11:A10 ; |716| 
|| [!B0]   ZERO    .S1     A0

   [ A0]   SUBDP   .L2     B7:B6,B5:B4,B5:B4 ; |711| 
           LDDW    .D1T2   *A3,B11:B10       ; |865| 
   [ B0]   MV      .L1X    B19,A13           ; |715| Define a twin register
   [ B0]   MV      .L1X    B18,A12           ; |715| Define a twin register
           LDW     .D2T1   *+SP(48),A3       ; |873| 
   [ A0]   STDW    .D2T2   B9:B8,*+SP(16)    ; |710| 
           MPYDP   .M1     A11:A10,A11:A10,A7:A6 ; |870| 
           MVKL    .S2     0xe2308c3a,B6
   [ A0]   MV      .L1X    B5,A13            ; |711| Define a twin register

   [ A0]   MV      .L1X    B4,A12            ; |711| Define a twin register
||         MPYDP   .M2     B11:B10,B11:B10,B5:B4 ; |882| 

           MPYDP   .M1     A13:A12,A13:A12,A5:A4 ; |870| 
           MVKL    .S2     0x3e45798e,B7
           MVKH    .S2     0xe2308c3a,B6
           MVKH    .S2     0x3e45798e,B7
           NOP             6

           ADDDP   .L1     A7:A6,A5:A4,A9:A8 ; |870| 
||         SUBDP   .S1X    B5:B4,A5:A4,A5:A4 ; |882| 

           NOP             6

           ABSDP   .S1     A9:A8,A9:A8       ; |870| 
||         SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |882| 

           NOP             1
           MVK     .S1     3016,A6           ; |871| 
           CMPLTDP .S2X    A9:A8,B7:B6,B0    ; |870| 
           ADD     .L1     A6,A3,A3          ; |871| 

   [ B0]   MV      .L2     B20,B4            ; |870| 
|| [ B0]   MV      .S2     B20,B8            ; |871| 
|| [ B0]   MV      .S1     A16,A6            ; |871| 
|| [ B0]   MV      .D1     A17,A7            ; |871| 

   [ B0]   LDDW    .D2T2   *+B8(8),B9:B8     ; |875| 
|| [ B0]   STDW    .D1T1   A7:A6,*A3         ; |871| 

   [ B0]   LDDW    .D2T2   *B4,B5:B4         ; |873| 
||         ZERO    .L1     A7:A6             ; |877| 
|| [ B0]   B       .S1     $C$L244           ; |878| 

           STW     .D2T1   A5,*+SP(60)       ; |882| 

           STW     .D2T1   A4,*+SP(56)       ; |882| 
||         ABSDP   .S1     A5:A4,A5:A4       ; |884| 

   [ B0]   STDW    .D1T1   A7:A6,*+A3(56)    ; |877| 
   [ B0]   STDW    .D1T2   B9:B8,*+A3(16)    ; |875| 

   [ B0]   STDW    .D1T2   B5:B4,*+A3(8)     ; |873| 
||         CMPLTDP .S2X    A5:A4,B7:B6,B1    ; |884| 
||         ZERO    .L1     A3                ; |878| 

           ; BRANCHCC OCCURS {$C$L244}       ; |878| 
;** --------------------------------------------------------------------------*
;**	-----------------------g8:
;** 882	-----------------------    h = r*r-U$56-U$57;
;** 884	-----------------------    if ( ABS(h) >= 1.00000000000000002092e-8 ) goto g10;
;** 886	-----------------------    C$8 = (double * const)point2+3016;
;** 886	-----------------------    *C$8 = mid[0];
;** 887	-----------------------    C$8[1] = mid[1];
;** 888	-----------------------    C$8[2] = mid[2];
;** 889	-----------------------    C$8[7] = 3.141592653589793116;
;** 973	-----------------------    return 0;

           MVKL    .S1     0x54442d18,A4
||         LDDW    .D2T2   *+SP(24),B5:B4    ; |888| 

           MVKH    .S1     0x54442d18,A4
||         LDDW    .D2T2   *+SP(8),B7:B6     ; |886| 

           STW     .D2T1   A4,*+SP(64)       ; |889| 
||         MVK     .S1     3016,A6           ; |886| 

           LDW     .D2T1   *+SP(48),A4       ; |886| 
||         MVKL    .S1     0x400921fb,A3

           LDDW    .D2T2   *+SP(16),B9:B8    ; |887| 
           MVKH    .S1     0x400921fb,A3
           MV      .L1     A3,A5             ; |889| 
           ZERO    .L1     A3                ; |973| 

           ADD     .L1     A6,A4,A6          ; |886| 
|| [ B1]   LDW     .D2T1   *+SP(64),A4       ; |886| 

   [ B1]   STDW    .D1T2   B5:B4,*+A6(16)    ; |888| 
           ZERO    .L2     B5:B4             ; |890| 
   [ B1]   STDW    .D1T2   B7:B6,*A6         ; |886| 
   [ B1]   STDW    .D1T2   B9:B8,*+A6(8)     ; |887| 
   [ B1]   STDW    .D1T1   A5:A4,*+A6(56)    ; |889| 
           LDW     .D2T1   *+SP(56),A4       ; |887| 

   [ B1]   BNOP    .S1     $C$L244,4         ; |973| 
||         LDW     .D2T1   *+SP(60),A5       ; |887| 

           CMPLTDP .S2X    A5:A4,B5:B4,B0    ; |890| 
           ; BRANCHCC OCCURS {$C$L244}       ; |973| 
;** --------------------------------------------------------------------------*
;**	-----------------------g10:
;** 890	-----------------------    if ( h >= 0.0 ) goto g12;
;** 973	-----------------------    return 8000;
           ZERO    .L1     A5:A4             ; |904| 

   [ B0]   B       .S2     $C$L244           ; |973| 
||         CMPEQDP .S1     A13:A12,A5:A4,A14 ; |904| 
||         LDW     .D2T1   *+SP(60),A5       ; |904| 

   [!B0]   CALL    .S2     sqrt              ; |898| 
           LDW     .D2T1   *+SP(56),A4       ; |898| 
           MVK     .S1     0x1f40,A3         ; |973| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L244}       ; |973| 
;** --------------------------------------------------------------------------*
;**	-----------------------g12:
;** 898	-----------------------    h = sqrt(h);
;** 904	-----------------------    (x == 0.0) ? (angle = (y > 0.0) ? 1.570796326794896558 : -1.570796326794896558) : (angle = atan(y/x));
           ADDKPC  .S2     $C$RL241,B3,0     ; |898| 
$C$RL241:  ; CALL OCCURS {sqrt} {0}          ; |898| 
;** --------------------------------------------------------------------------*

           ZERO    .L2     B5:B4             ; |904| 
||         MV      .L1     A14,A0            ; |904| 
||         STW     .D2T1   A4,*+SP(56)       ; |898| 

           CMPGTDP .S2X    A11:A10,B5:B4,B0  ; |904| 
|| [ A0]   LDW     .D2T1   *+SP(64),A3       ; |904| 
|| [ A0]   MVKL    .S1     0x3ff921fb,A4

   [ A0]   MVKH    .S1     0x3ff921fb,A4
||         STW     .D2T1   A5,*+SP(60)       ; |898| 
||         MV      .L1     A11,A5            ; |904| 

   [!A0]   MVK     .L2     0x1,B0            ; |904| 
||         MV      .S2X    A13,B5            ; |904| 

   [!B0]   LDW     .D2T1   *+SP(64),A3       ; |904| 
|| [ A0]   B       .S2     $C$L237           ; |904| 
|| [!B0]   MVKL    .S1     0xbff921fb,A4
||         MV      .L2X    A12,B4            ; |904| 

   [!A0]   CALL    .S2     __c6xabi_divd     ; |904| 
|| [!B0]   MVKH    .S1     0xbff921fb,A4

   [ A0]   CALL    .S1     sin               ; |911| 
   [ A0]   MV      .L1     A4,A14            ; |904| 
           MV      .L1     A10,A4            ; |904| 
   [ A0]   MV      .L1     A3,A15            ; |904| 
           ; BRANCHCC OCCURS {$C$L237}       ; |904| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     $C$RL243,B3,0     ; |904| 
$C$RL243:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |904| 
;** --------------------------------------------------------------------------*
           CALLP   .S2     atan,B3
$C$RL244:  ; CALL OCCURS {atan} {0}          ; |904| 
;** --------------------------------------------------------------------------*
           CALL    .S1     sin               ; |911| 
           MV      .L1     A4,A15            ; |904| 
           MV      .L1     A5,A14            ; |904| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L237:    
;** 911	-----------------------    xoff = sin(angle)*h;
;** 911	-----------------------    yoff = -h*cos(angle);
;** 913	-----------------------    C$5 = y >= 0.0;
;** 913	-----------------------    C$6 = x > 0.0;
;** 913	-----------------------    if ( C$6&C$5 ) goto g15;
           MV      .L1     A14,A5            ; |911| 

           ADDKPC  .S2     $C$RL245,B3,0     ; |911| 
||         MV      .L1     A15,A4            ; |911| 

$C$RL245:  ; CALL OCCURS {sin} {0}           ; |911| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A4,B12            ; |911| 

           CALLP   .S2     cos,B3
||         MV      .L2X    A5,B13            ; |911| 
||         MV      .L1     A14,A5            ; |911| 
||         MV      .S1     A15,A4            ; |911| 

$C$RL246:  ; CALL OCCURS {cos} {0}           ; |911| 
;** --------------------------------------------------------------------------*

           ZERO    .L1     A7:A6             ; |913| 
||         ZERO    .L2     B5:B4             ; |913| 
||         LDW     .D2T1   *+SP(56),A8       ; |913| 

           CMPLTDP .S1     A11:A10,A7:A6,A3  ; |913| 
||         ZERO    .L2     B7:B6             ; |918| 
||         CMPGTDP .S2X    A13:A12,B5:B4,B4  ; |913| 
||         LDW     .D2T1   *+SP(60),A16      ; |911| 

           ZERO    .L1     A7:A6             ; |918| 

           XOR     .L1     1,A3,A3           ; |913| 
||         CMPLTDP .S2X    A13:A12,B7:B6,B5  ; |918| 
||         CMPGTDP .S1     A11:A10,A7:A6,A6  ; |918| 

           ZERO    .L1     A31               ; |911| 

           AND     .L2X    A3,B4,B0          ; |913| 
||         XOR     .L1     1,A6,A6           ; |918| 
||         SET     .S1     A31,31,31,A7      ; |911| 

   [ B0]   B       .S1     $C$L238           ; |913| 
||         AND     .L1X    A3,B5,A3          ; |918| 
||         MV      .L2     B0,B1             ; |913| branch predicate copy
||         XOR     .D1     A16,A7,A9         ; |911| 
||         MV      .S2X    A16,B7            ; |913| 

           CMPEQ   .L1     A3,0,A3           ; |918| 
|| [!B0]   AND     .L2X    A6,B4,B4          ; |918| 
||         AND     .S1X    A6,B5,A0          ; |918| 

           MV      .L2X    A8,B6             ; |913| 
||         MPYDP   .M1     A5:A4,A9:A8,A9:A8 ; |911| 

           OR      .S2X    A3,B4,B0          ; |918| 
|| [ B1]   ZERO    .L2     B5:B4             ; |914| 
||         MPYDP   .M2     B7:B6,B13:B12,B7:B6 ; |911| 

   [ A0]   ZERO    .L2     B0
|| [ B1]   CMPLTDP .S2     B11:B10,B5:B4,B0  ; |914| 

           NOP             1
           ; BRANCHCC OCCURS {$C$L238}       ; |913| 
;** --------------------------------------------------------------------------*
;** 918	-----------------------    C$7 = y <= 0.0;
;** 918	-----------------------    C$4 = x < 0.0;
;** 918	-----------------------    if ( ((C$4&C$7) == 0)&((C$6&C$7|((C$4&C$5) == 0)) != 0) ) goto g15;

   [ B0]   B       .S1     $C$L238           ; |918| 
|| [!B0]   ZERO    .L2     B5:B4             ; |919| 
||         MV      .S2     B0,B2             ; branch predicate copy
||         MV      .D2     B0,B1             ; guard predicate rewrite

           CMPGTDP .S2     B11:B10,B5:B4,B0  ; |919| 
   [ B2]   ZERO    .L2     B5:B4             ; |914| 
   [ B1]   ZERO    .L2     B0                ; |919| nullify predicate

   [ B0]   BNOP    .S1     $C$L239,1         ; |919| 
|| [ B2]   CMPLTDP .S2     B11:B10,B5:B4,B0  ; |914| 

           ; BRANCHCC OCCURS {$C$L238}       ; |918| 
;** --------------------------------------------------------------------------*
;** 919	-----------------------    if ( r > 0.0 ) goto g16;
           ZERO    .L1     A3                ; |915| 
           ZERO    .L2     B4                ; |915| 
           SET     .S1     A3,31,31,A3       ; |916| 
           SET     .S2     B4,31,31,B4       ; |915| 
           ; BRANCHCC OCCURS {$C$L239}       ; |919| 
;** --------------------------------------------------------------------------*
;** 919	-----------------------    goto g17;

           ZERO    .L1     A4                ; |944| 
||         LDW     .D2T1   *+SP(52),A3       ; |944| 
||         B       .S1     $C$L241           ; |919| 
||         MVK     .S2     20,B16            ; |1453| 
||         ZERO    .L2     B31               ; |944| 

           SET     .S1     A4,31,31,A31      ; |944| 
||         LDW     .D2T1   *+SP(32),A4       ; |943| 

           LDDW    .D2T2   *+SP(16),B9:B8    ; |949| 
||         MVK     .S1     3016,A30          ; |948| 

           LDW     .D2T1   *+SP(48),A5       ; |943| 
           LDDW    .D2T2   *+SP(8),B5:B4     ; |948| 

           CMPEQ   .L1X    A3,B16,A0         ; |1453| 
||         SET     .S2     B31,31,31,B16     ; |943| 

           ; BRANCH OCCURS {$C$L241}         ; |919| 
;** --------------------------------------------------------------------------*
$C$L238:    
;**	-----------------------g15:
;** 914	-----------------------    if ( r >= 0.0 ) goto g17;

   [!B0]   LDW     .D2T1   *+SP(52),A3       ; |944| 
|| [!B0]   B       .S1     $C$L240           ; |914| 
||         ZERO    .L1     A4                ; |944| 
|| [!B0]   MVK     .S2     20,B16            ; |1453| 
|| [ B0]   ZERO    .L2     B4                ; |915| 
|| [ B0]   ZERO    .D1     A3                ; |915| 

   [ B0]   SET     .S2     B4,31,31,B4       ; |915| 
||         SET     .S1     A4,31,31,A31      ; |944| 

           LDW     .D2T1   *+SP(32),A4       ; |943| 
   [!B0]   LDDW    .D2T2   *+SP(8),B5:B4     ; |948| 
   [ B0]   SET     .S1     A3,31,31,A3       ; |916| 
   [!B0]   CMPEQ   .L1X    A3,B16,A0         ; |1453| 
           ; BRANCHCC OCCURS {$C$L240}       ; |914| 
;** --------------------------------------------------------------------------*
           NOP             1
;** --------------------------------------------------------------------------*
$C$L239:    
;**	-----------------------g16:
;** 915	-----------------------    xoff = -xoff;
;** 916	-----------------------    yoff = -yoff;

           ZERO    .L1     A4                ; |944| 
||         XOR     .L2     B7,B4,B7          ; |915| 
||         XOR     .S1     A9,A3,A9          ; |916| 
||         LDW     .D2T1   *+SP(52),A3       ; |944| 

           MVK     .S2     20,B16            ; |1453| 
           SET     .S1     A4,31,31,A31      ; |944| 
           LDW     .D2T1   *+SP(32),A4       ; |943| 
           LDDW    .D2T2   *+SP(8),B5:B4     ; |948| 
           CMPEQ   .L1X    A3,B16,A0         ; |1453| 
;** --------------------------------------------------------------------------*
$C$L240:    
           LDW     .D2T1   *+SP(48),A5       ; |943| 

           LDDW    .D2T2   *+SP(16),B9:B8    ; |949| 
||         ZERO    .L2     B31               ; |944| 

           SET     .S2     B31,31,31,B16     ; |943| 
||         MVK     .S1     3016,A30          ; |948| 

;** --------------------------------------------------------------------------*
$C$L241:    
;**	-----------------------g17:
;* 1453	-----------------------    if ( distant_type == 20 ) goto g19;  // [75]
;** 943	-----------------------    xoff = -xoff;
;** 944	-----------------------    yoff = -yoff;
;**	-----------------------g19:
;** 947	-----------------------    if ( !U$44 ) goto g23;

           MV      .L2X    A4,B0             ; |949| 
|| [!A0]   XOR     .L1     A9,A31,A9         ; |944| 
|| [!A0]   XOR     .S2     B7,B16,B7         ; |943| 

   [!B0]   BNOP    .S1     $C$L242,1         ; |947| 

           ADDDP   .L2X    A9:A8,B9:B8,B5:B4 ; |949| 
||         ADDDP   .S2     B7:B6,B5:B4,B9:B8 ; |948| 
|| [!B0]   LDW     .D2T2   *+SP(44),B6

           CMPEQ   .L1     A4,1,A0           ; |952| 
           ADD     .L1     A30,A5,A3         ; |948| 
   [ B0]   LDDW    .D2T2   *+SP(16),B9:B8    ; |960| 
           ; BRANCHCC OCCURS {$C$L242}       ; |947| 
;** --------------------------------------------------------------------------*
;** 952	-----------------------    if ( U$44 == 1 ) goto g22;
;** 958	-----------------------    C$3 = (double * const)point2+3016;
;** 958	-----------------------    *C$3 = U$11;
;** 960	-----------------------    C$3[1] = mid[1]+xoff;
;** 961	-----------------------    C$3[2] = mid[2]+yoff;
;** 961	-----------------------    goto g24;
;**	-----------------------g22:
;** 953	-----------------------    C$2 = (double * const)point2+3016;
;** 953	-----------------------    *C$2 = mid[0]+yoff;
;** 954	-----------------------    C$2[1] = *K$21;
;** 956	-----------------------    C$2[2] = mid[2]+xoff;
;** 957	-----------------------    goto g24;

           LDDW    .D2T2   *+SP(24),B5:B4    ; |961| 
||         MVK     .S1     3016,A4           ; |958| 

           ADD     .L1     A4,A5,A16         ; |958| 
||         ADD     .S1     A4,A5,A3          ; |953| 

   [!A0]   LDW     .D2T1   *+SP(36),A4       ; |958| 
   [!A0]   LDW     .D2T1   *+SP(40),A5       ; |958| 

           ADDDP   .L2     B7:B6,B9:B8,B17:B16 ; |960| 
||         LDDW    .D2T2   *+SP(8),B9:B8     ; |953| 

           ADDDP   .L1X    A9:A8,B5:B4,A7:A6 ; |961| 
||         ADDDP   .S2     B7:B6,B5:B4,B7:B6 ; |956| 
|| [ A0]   LDW     .D2T2   *+SP(44),B4

           NOP             2
   [!A0]   STDW    .D1T1   A5:A4,*A16        ; |958| 
           ADDDP   .L1X    A9:A8,B9:B8,A5:A4 ; |953| 
   [ A0]   LDDW    .D2T2   *B4,B5:B4         ; |954| 

           BNOP    .S1     $C$L243,1         ; |957| 
|| [!A0]   STDW    .D1T2   B17:B16,*+A16(8)  ; |960| 

   [ A0]   STDW    .D1T2   B7:B6,*+A3(16)    ; |956| 
   [!A0]   STDW    .D1T1   A7:A6,*+A16(16)   ; |961| 
   [ A0]   STDW    .D1T2   B5:B4,*+A3(8)     ; |954| 
   [ A0]   STDW    .D1T1   A5:A4,*A3         ; |953| 
           ; BRANCH OCCURS {$C$L243}         ; |957| 
;** --------------------------------------------------------------------------*
$C$L242:    
;**	-----------------------g23:
;** 948	-----------------------    C$1 = (double * const)point2+3016;
;** 948	-----------------------    *C$1 = mid[0]+xoff;
;** 949	-----------------------    C$1[1] = mid[1]+yoff;
;** 950	-----------------------    C$1[2] = K$21[1];
           NOP             1
           LDDW    .D2T2   *+B6(8),B7:B6     ; |950| 
           NOP             2
           STDW    .D1T2   B5:B4,*+A3(8)     ; |949| 
           STDW    .D1T2   B9:B8,*A3         ; |948| 
           STDW    .D1T2   B7:B6,*+A3(16)    ; |950| 
;** --------------------------------------------------------------------------*
$C$L243:    
;**	-----------------------g24:
;** 965	-----------------------    angle = asin(sqrt(1.0-pow(h/r, 2.0)))*2.0;
;** 967	-----------------------    if ( r >= 0.0 ) goto g26;
;** 969	-----------------------    angle = 6.283185307179586232-angle;
;**	-----------------------g26:
;** 971	-----------------------    *((double * const)point2+3072) = angle;
;** 973	-----------------------    return 0;

           CALL    .S1     __c6xabi_divd     ; |965| 
||         LDW     .D2T1   *+SP(56),A4       ; |965| 

           LDW     .D2T1   *+SP(60),A5       ; |965| 
           ADDKPC  .S2     $C$RL248,B3,2     ; |965| 

           MV      .L2     B11,B5            ; |965| 
||         MV      .S2     B10,B4            ; |965| 

$C$RL248:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |965| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         ZERO    .L2     B4                ; |965| 

$C$RL249:  ; CALL OCCURS {pow} {0}           ; |965| 
           ZERO    .L1     A7

           SET     .S1     A7,0x14,0x1d,A7
||         ZERO    .L1     A6                ; |965| 

           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |965| 
           CALLP   .S2     sqrt,B3
$C$RL250:  ; CALL OCCURS {sqrt} {0}          ; |965| 
           CALLP   .S2     asin,B3
$C$RL251:  ; CALL OCCURS {asin} {0}          ; |965| 
;** --------------------------------------------------------------------------*
           ZERO    .L1     A7

           SET     .S1     A7,0x1e,0x1e,A7
||         ZERO    .L1     A6                ; |965| 

           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |965| 
           LDW     .D2T2   *+SP(64),B6       ; |969| 
           MVKL    .S2     0x401921fb,B7
           ZERO    .L2     B5:B4             ; |967| 
           MVKH    .S2     0x401921fb,B7
           CMPLTDP .S2     B11:B10,B5:B4,B0  ; |967| 
           LDW     .D2T1   *+SP(48),A3
           MVK     .S2     3072,B31          ; |971| 
           NOP             2
   [ B0]   SUBDP   .L1X    B7:B6,A5:A4,A5:A4 ; |969| 
           NOP             5
           ADD     .S1X    B31,A3,A3         ; |971| 

           STDW    .D1T1   A5:A4,*A3         ; |971| 
||         ZERO    .L1     A3                ; |973| 

;** --------------------------------------------------------------------------*
$C$L244:    
           LDW     .D2T2   *++SP(72),B3      ; |974| 
           LDDW    .D2T1   *++SP,A13:A12     ; |974| 
           LDDW    .D2T1   *++SP,A15:A14     ; |974| 
           LDDW    .D2T2   *++SP,B11:B10     ; |974| 
           LDDW    .D2T2   *++SP,B13:B12     ; |974| 

           LDW     .D2T1   *++SP(8),A10      ; |974| 
||         RET     .S2     B3                ; |974| 

           LDW     .D2T1   *++SP(8),A11      ; |974| 
           MV      .L1     A3,A4             ; |973| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |974| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead16GetRadiusFromIJKEPK8LineDataPS0_

;******************************************************************************
;* FUNCTION NAME: LookAhead::GetRadiusFromIJK(const LineData *, LineData *)   *
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
_ZN9LookAhead16GetRadiusFromIJKEPK8LineDataPS0_:
;** --------------------------------------------------------------------------*
;** 724	-----------------------    C$2 = (const double * const)point1+1440;
;** 724	-----------------------    C$1 = (double * const)point2+3016;
;** 724	-----------------------    i = *C$1-*C$2;
;** 726	-----------------------    j = C$1[1]-C$2[1];
;** 728	-----------------------    k = C$1[2]-C$2[2];
;** 731	-----------------------    if ( U$31 = *((unsigned char * const)point2+1328) ) goto g3;

           MVK     .S2     1440,B5           ; |724| 
||         MVK     .S1     3016,A3           ; |724| 
||         STW     .D2T1   A11,*SP--(8)      ; |721| 

           ADD     .L2     B5,B4,B4          ; |724| 
||         ADD     .L1     A3,A6,A3          ; |724| 
||         STW     .D2T1   A10,*+SP(4)       ; |721| 
||         MV      .S1     A6,A10            ; |721| 

           LDDW    .D2T2   *+B4(8),B7:B6     ; |726| 
||         LDDW    .D1T1   *+A3(8),A7:A6     ; |726| 

           LDDW    .D2T2   *B4,B9:B8         ; |724| 
||         LDDW    .D1T1   *A3,A5:A4         ; |724| 

           MVK     .S1     1328,A16          ; |731| 
           LDBU    .D1T1   *+A10[A16],A0     ; |731| 
           LDDW    .D2T2   *+B4(16),B5:B4    ; |728| 
           SUBDP   .L2X    A7:A6,B7:B6,B7:B6 ; |726| 
           SUBDP   .L1X    A5:A4,B9:B8,A9:A8 ; |724| 
           LDDW    .D1T1   *+A3(16),A7:A6    ; |728| 
           MV      .L1X    B3,A11            ; |721| 
           CMPEQ   .L1     A0,1,A1           ; |734| 
           NOP             2
           MPYDP   .M2     B7:B6,B7:B6,B9:B8 ; |732| 
           MPYDP   .M1     A9:A8,A9:A8,A5:A4 ; |732| 
           SUBDP   .L2X    A7:A6,B5:B4,B5:B4 ; |728| 
           NOP             3
   [ A0]   BNOP    .S1     $C$L245,4         ; |731| 

           ADDDP   .L1X    B9:B8,A5:A4,A5:A4 ; |732| 
|| [ A0]   MPYDP   .M1     A9:A8,A9:A8,A5:A4 ; |734| 
|| [ A0]   MPYDP   .M2     B5:B4,B5:B4,B9:B8 ; |734| 

           ; BRANCHCC OCCURS {$C$L245}       ; |731| 
;** --------------------------------------------------------------------------*
;** 732	-----------------------    r = sqrt(i*i+j*j);
;** 733	-----------------------    goto g4;
           CALL    .S1     sqrt              ; |732| 
           ADDKPC  .S2     $C$RL252,B3,4     ; |732| 
$C$RL252:  ; CALL OCCURS {sqrt} {0}          ; |732| 
;** --------------------------------------------------------------------------*

           B       .S2     $C$L247           ; |733| 
||         MVK     .S1     3064,A3           ; |739| 
||         MV      .L2X    A11,B3            ; |741| 

           ADD     .L1     A3,A10,A3         ; |739| 
           LDW     .D2T1   *+SP(4),A10       ; |741| 
           STDW    .D1T1   A5:A4,*A3         ; |739| 
           ZERO    .L1     A4                ; |740| 
           LDW     .D2T1   *++SP(8),A11      ; |741| 
           ; BRANCH OCCURS {$C$L247}         ; |733| 
;** --------------------------------------------------------------------------*
$C$L245:    
;**	-----------------------g3:
;** 734	-----------------------    (U$31 == 1) ? (r = sqrt(k*k+i*i)) : (r = sqrt(j*j+k*k));
           NOP             3
           MPYDP   .M2     B5:B4,B5:B4,B5:B4 ; |734| 
           NOP             3
           MPYDP   .M2     B7:B6,B7:B6,B7:B6 ; |734| 
           NOP             3
           ADDDP   .L1X    A5:A4,B9:B8,A5:A4 ; |734| 
   [!A1]   BNOP    .S1     $C$L246,4         ; |734| 
           ADDDP   .L2     B5:B4,B7:B6,B5:B4 ; |734| 
           ; BRANCHCC OCCURS {$C$L246}       ; |734| 
;** --------------------------------------------------------------------------*
           CALL    .S1     sqrt              ; |734| 
           ADDKPC  .S2     $C$RL253,B3,4     ; |734| 
$C$RL253:  ; CALL OCCURS {sqrt} {0}          ; |734| 
;** --------------------------------------------------------------------------*

           B       .S2     $C$L248           ; |734| 
||         MVK     .S1     3064,A3           ; |739| 
||         MV      .L2X    A11,B3            ; |741| 

           ADD     .L1     A3,A10,A3         ; |739| 
||         LDW     .D2T1   *+SP(4),A10       ; |741| 

           RET     .S2     B3                ; |741| 
||         STDW    .D1T1   A5:A4,*A3         ; |739| 

           LDW     .D2T1   *++SP(8),A11      ; |741| 
           ZERO    .L1     A4                ; |740| 
           NOP             1
           ; BRANCH OCCURS {$C$L248}         ; |734| 
;** --------------------------------------------------------------------------*
$C$L246:    
           NOP             3
           CALL    .S1     sqrt              ; |734| 
           ADDKPC  .S2     $C$RL254,B3,2     ; |734| 
           MV      .L1X    B4,A4             ; |734| 
           MV      .L1X    B5,A5             ; |734| 
$C$RL254:  ; CALL OCCURS {sqrt} {0}          ; |734| 

           MVK     .S1     3064,A3           ; |739| 
||         MV      .L2X    A11,B3            ; |741| 

           ADD     .L1     A3,A10,A3         ; |739| 
||         LDW     .D2T1   *+SP(4),A10       ; |741| 

           STDW    .D1T1   A5:A4,*A3         ; |739| 
||         ZERO    .L1     A4                ; |740| 

           LDW     .D2T1   *++SP(8),A11      ; |741| 
;** --------------------------------------------------------------------------*
$C$L247:    
           RETNOP  .S2     B3,3              ; |741| 
;** --------------------------------------------------------------------------*
$C$L248:    
;**	-----------------------g4:
;** 739	-----------------------    *((double * const)point2+3064) = r;
;** 740	-----------------------    return 0;
           NOP             2
           ; BRANCH OCCURS {B3}              ; |741| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead15LookAheadThreadEPv

;******************************************************************************
;* FUNCTION NAME: LookAhead::LookAheadThread(void *)                          *
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
_ZN9LookAhead15LookAheadThreadEPv:
;** --------------------------------------------------------------------------*
;** 214	-----------------------    LookAhead::LookAheadHandle((struct ookAhead *)args);
;**  	-----------------------    return;
           CALLRET .S1     _ZN9LookAhead15LookAheadHandleEv ; |214| 
           NOP             5
$C$RL255:  ; CALL-RETURN OCCURS {_ZN9LookAhead15LookAheadHandleEv} 0  ; |214| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead15GetAngleFromIJKEPK8LineDataPS0_

;******************************************************************************
;* FUNCTION NAME: LookAhead::GetAngleFromIJK(const LineData *, LineData *)    *
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
;*   Local Frame Size  : 0 Args + 92 Auto + 56 Save = 148 byte                *
;******************************************************************************
_ZN9LookAhead15GetAngleFromIJKEPK8LineDataPS0_:
;** --------------------------------------------------------------------------*
;** 747	-----------------------    distant_type = (*point2).interpolation_type;
;** 756	-----------------------    r = *((double * const)point2+3064);
;** 698	-----------------------    C$5 = (const double * const)point1+1440;  // [57]
;** 698	-----------------------    U$11 = *C$5;  // [57]
;** 698	-----------------------    C$4 = (const double * const)point2+1440;  // [57]
;** 698	-----------------------    mid[0] = (U$11+*C$4)*0.5;  // [57]
;** 700	-----------------------    U$22 = C$5[1];  // [57]
;** 700	-----------------------    mid[1] = C$3 = (U$22+C$4[1])*0.5;  // [57]
;** 702	-----------------------    U$32 = C$5[2];  // [57]
;** 702	-----------------------    mid[2] = C$2 = (U$32+C$4[2])*0.5;  // [57]
;** 705	-----------------------    if ( !(U$44 = *((const unsigned char * const)point2+1328)) ) goto g5;  // [57]
;** 709	-----------------------    if ( U$44 == 1 ) goto g4;  // [57]
;** 714	-----------------------    mid[0] = U$11;  // [57]
;** 715	-----------------------    x = C$3-U$22;  // [57]
;** 716	-----------------------    y = C$2-U$32;  // [57]
;** 716	-----------------------    goto g6;  // [57]
;**	-----------------------g4:
;** 710	-----------------------    mid[1] = U$22;  // [57]
;** 711	-----------------------    x = mid[2]-U$32;  // [57]
;** 712	-----------------------    y = mid[0]-U$11;  // [57]
;** 713	-----------------------    goto g6;  // [57]
;**	-----------------------g5:
;** 706	-----------------------    mid[2] = U$32;  // [57]
;** 707	-----------------------    x = mid[0]-U$11;  // [57]
;** 708	-----------------------    y = mid[1]-U$22;  // [57]
;**	-----------------------g6:
;** 762	-----------------------    if ( ABS(x*x+y*y) >= 1.00000000000000002092e-8 ) goto g8;
;** 763	-----------------------    *((double * const)point2+3072) = 6.283185307179586232;
;** 764	-----------------------    return 0;

           STW     .D2T1   A11,*SP--(8)      ; |744| 
||         MVK     .S1     1440,A3           ; |698| 

           STW     .D2T1   A10,*SP--(8)      ; |744| 

           STDW    .D2T2   B13:B12,*SP--     ; |744| 
||         ADD     .L2X    A3,B4,B4          ; |698| 
||         ADD     .L1     A3,A6,A3          ; |698| 

           STDW    .D2T2   B11:B10,*SP--     ; |744| 
           STDW    .D2T1   A15:A14,*SP--     ; |744| 
           STDW    .D2T1   A13:A12,*SP--     ; |744| 
           STW     .D2T2   B3,*SP--(104)     ; |744| 

           LDDW    .D2T2   *+B4(8),B9:B8     ; |700| 
||         LDDW    .D1T1   *A3,A17:A16       ; |698| 

           LDDW    .D1T1   *+A3(8),A5:A4     ; |700| 
||         LDDW    .D2T2   *B4,B7:B6         ; |698| 

           LDDW    .D2T2   *+B4(16),B21:B20  ; |702| 
           LDDW    .D1T1   *+A3(16),A9:A8    ; |702| 
           ZERO    .L2     B5
           SET     .S2     B5,0x15,0x1d,B5

           ADDDP   .L2X    A5:A4,B9:B8,B23:B22 ; |700| 
||         ADDDP   .L1X    A17:A16,B7:B6,A5:A4 ; |698| 

           ZERO    .S2     B4                ; |698| 
           MV      .L2X    A6,B10            ; |744| 
           ADDDP   .L1X    A9:A8,B21:B20,A9:A8 ; |702| 
           ZERO    .S1     A16               ; |698| 
           MV      .S1X    B5,A17            ; |700| 
           MVKL    .S2     0x401921fb,B30
           MVKL    .S2     0x54442d18,B31

           MPYDP   .M2X    B5:B4,A5:A4,B25:B24 ; |698| 
||         MPYDP   .M1X    A17:A16,B23:B22,A5:A4 ; |700| 

           MVKH    .S2     0x401921fb,B30
           MVKH    .S2     0x54442d18,B31
           MVK     .S2     1328,B22          ; |705| 

           MPYDP   .M2X    B5:B4,A9:A8,B5:B4 ; |702| 
||         LDBU    .D2T2   *+B10[B22],B22    ; |705| 

           MVKL    .S1     0xe2308c3a,A12
           MVKL    .S1     0x3e45798e,A13
           MVKH    .S1     0xe2308c3a,A12
           MVKH    .S1     0x3e45798e,A13

           STW     .D2T2   B22,*+SP(64)      ; |705| 
||         MV      .L1X    B22,A0            ; |708| 
||         CMPEQ   .L2     B22,1,B0          ; |709| 

           STDW    .D2T1   A5:A4,*+SP(16)    ; |700| 
|| [!A0]   MVK     .L2     0x1,B0

           LDDW    .D2T2   *+SP(16),B23:B22  ; |708| 
           STDW    .D2T2   B25:B24,*+SP(8)   ; |698| 
           LDDW    .D2T1   *+SP(8),A9:A8     ; |707| 
           STDW    .D2T2   B5:B4,*+SP(24)    ; |702| 
   [ A0]   LDDW    .D2T2   *+SP(24),B19:B18  ; |711| 

   [ A0]   LDDW    .D2T2   *+SP(8),B17:B16   ; |712| 
||         SUBDP   .L2     B23:B22,B9:B8,B13:B12 ; |708| 

   [!B0]   STDW    .D2T2   B7:B6,*+SP(8)     ; |714| 
|| [!A0]   MV      .S2X    A16,B0            ; |706| 

           SUBDP   .L1X    A9:A8,B7:B6,A11:A10 ; |707| 
   [ A0]   SUBDP   .S2     B5:B4,B21:B20,B13:B12 ; |716| 
   [ B0]   SUBDP   .L2     B19:B18,B21:B20,B5:B4 ; |711| 
   [ A0]   SUBDP   .L1X    A5:A4,B9:B8,A11:A10 ; |715| 
   [ B0]   SUBDP   .L2     B17:B16,B7:B6,B13:B12 ; |712| 
           MVK     .S1     3064,A3           ; |756| 
           ADD     .S1     A3,A6,A3          ; |756| 
           MV      .L1     A16,A14           ; |765| 
           STW     .D2T2   B30,*+SP(72)      ; |763| 
           STW     .D2T2   B31,*+SP(68)      ; |763| 
   [ B0]   MV      .L1X    B5,A11            ; |711| Define a twin register

   [ B0]   MV      .L1X    B4,A10            ; |711| Define a twin register
||         MPYDP   .M2     B13:B12,B13:B12,B5:B4 ; |762| 

           MPYDP   .M1     A11:A10,A11:A10,A5:A4 ; |762| 
           LDDW    .D1T2   *A3,B25:B24       ; |756| 
           MVK     .S1     274,A3            ; |747| 
           ADD     .L1     A3,A6,A3          ; |747| 
           LDHU    .D1T1   *A3,A15           ; |747| 
   [!A0]   STDW    .D2T2   B21:B20,*+SP(24)  ; |706| 
           LDW     .D2T1   *+SP(68),A3       ; |769| 
           STW     .D2T2   B25,*+SP(60)      ; |756| 
           STW     .D2T2   B24,*+SP(56)      ; |756| 
           MVK     .S2     3072,B6           ; |763| 
           ADDDP   .L1X    B5:B4,A5:A4,A5:A4 ; |762| 
   [ B0]   STDW    .D2T2   B9:B8,*+SP(16)    ; |710| 
           MV      .L2     B24,B4            ; |763| 
           MV      .L2     B25,B5            ; |763| 
           ABSDP   .S2     B5:B4,B5:B4       ; |765| 
           ADD     .L2     B6,B10,B6         ; |763| 
           CMPLTDP .S2X    B5:B4,A13:A12,B0  ; |765| 
           ABSDP   .S1     A5:A4,A5:A4       ; |762| 
           NOP             1
           CMPLTDP .S1     A5:A4,A13:A12,A0  ; |762| 
           NOP             1

   [ A0]   LDW     .D2T2   *+SP(68),B8       ; |763| 
|| [ A0]   ZERO    .L2     B0                ; |769| nullify predicate
|| [!A0]   MVKL    .S1     0x400921fb,A31
|| [!A0]   MVK     .S2     3072,B4           ; |769| 

   [ A0]   B       .S2     $C$L253           ; |764| 
|| [ A0]   LDW     .D2T2   *+SP(72),B9       ; |763| 
|| [!A0]   MVKH    .S1     0x400921fb,A31
|| [!A0]   ADD     .L2     B4,B10,B4         ; |769| 
|| [ B0]   MV      .L1     A3,A4             ; |773| 

   [!A0]   ZERO    .L2     B5
   [ B0]   MV      .L1     A31,A5            ; |773| 
   [ B0]   BNOP    .S1     $C$L253,1         ; |770| 
   [ A0]   STDW    .D2T2   B9:B8,*B6         ; |763| 
           ; BRANCHCC OCCURS {$C$L253}       ; |764| 
;** --------------------------------------------------------------------------*
;**	-----------------------g8:
;** 765	-----------------------    if ( ABS(r) >= 1.00000000000000002092e-8 ) goto g10;
;** 769	-----------------------    *((double * const)point2+3072) = 3.141592653589793116;
;** 770	-----------------------    return 0;

   [ B0]   STDW    .D2T1   A5:A4,*B4         ; |769| 
||         MV      .L1     A11,A5            ; |773| 
||         MV      .D1     A10,A4            ; |773| 
||         MV      .L2X    A16,B4            ; |769| 
||         SET     .S2     B5,0x1e,0x1e,B5
|| [!B0]   CALL    .S1     pow               ; |773| 

           STW     .D2T1   A31,*+SP(80)      ; |769| 
           STW     .D2T1   A3,*+SP(76)
           ; BRANCHCC OCCURS {$C$L253}       ; |770| 
;** --------------------------------------------------------------------------*
;**	-----------------------g10:
;** 773	-----------------------    h = pow(r, 2.0)-pow(x, 2.0)-pow(y, 2.0);
;** 775	-----------------------    if ( ABS(h) >= 1.00000000000000002092e-8 ) goto g12;
;** 777	-----------------------    *((double * const)point2+3072) = 3.141592653589793116;
;** 848	-----------------------    return 0;
           ADDKPC  .S2     $C$RL258,B3,2     ; |773| 
$C$RL258:  ; CALL OCCURS {pow} {0}           ; |773| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*+SP(88)       ; |773| 

           STW     .D2T1   A5,*+SP(92)       ; |773| 
||         ZERO    .L2     B5

           LDW     .D2T1   *+SP(56),A4       ; |773| 
||         SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         LDW     .D2T1   *+SP(60),A5       ; |773| 
||         MV      .L2X    A14,B4            ; |773| 

$C$RL257:  ; CALL OCCURS {pow} {0}           ; |773| 
           ZERO    .L2     B5

           SET     .S2     B5,0x1e,0x1e,B5
||         MV      .L2X    A4,B11            ; |773| 
||         MV      .L1X    B12,A4            ; |773| 

           CALLP   .S2     pow,B3
||         STW     .D2T1   A5,*+SP(84)       ; |773| 
||         MV      .L1X    B13,A5            ; |773| 
||         MV      .L2X    A14,B4            ; |773| 

$C$RL259:  ; CALL OCCURS {pow} {0}           ; |773| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(84),A7       ; |773| 
           LDW     .D2T1   *+SP(88),A8       ; |773| 
           LDW     .D2T1   *+SP(92),A9       ; |773| 
           MV      .L1X    B11,A6            ; |773| 
           MVK     .S1     3072,A31          ; |777| 
           ZERO    .L2     B5:B4             ; |778| 
           LDW     .D2T1   *+SP(76),A2       ; |777| 
           SUBDP   .L1     A7:A6,A9:A8,A7:A6 ; |773| 
           LDW     .D2T1   *+SP(80),A3       ; |775| 
           ADD     .L2X    A31,B10,B6        ; |777| 
           NOP             4
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |773| 
           NOP             6
           ABSDP   .S1     A5:A4,A7:A6       ; |775| 
           CMPLTDP .S2X    A5:A4,B5:B4,B0    ; |778| 
           CMPLTDP .S1     A7:A6,A13:A12,A0  ; |775| 
           NOP             1

   [ A0]   ZERO    .L2     B0                ; |788| nullify predicate
|| [ A0]   B       .S1     $C$L253           ; |848| 
|| [!A0]   ZERO    .L1     A7:A6             ; |795| 
|| [!A0]   MVK     .S2     3016,B4           ; |788| 
|| [ A0]   STDW    .D2T1   A3:A2,*B6         ; |777| 

   [ B0]   BNOP    .S1     $C$L253,1         ; |848| 
   [!A0]   CMPEQDP .S1     A11:A10,A7:A6,A12 ; |795| 
   [!A0]   ADD     .L2     B4,B10,B11        ; |788| 
   [!A0]   MVK     .S1     0x1f40,A14        ; |848| 
           ; BRANCHCC OCCURS {$C$L253}       ; |848| 
;** --------------------------------------------------------------------------*
;**	-----------------------g12:
;** 778	-----------------------    if ( h >= 0.0 ) goto g14;
;** 848	-----------------------    return 8000;
   [!B0]   CALL    .S1     sqrt              ; |784| 
           ; BRANCHCC OCCURS {$C$L253}       ; |848| 
;** --------------------------------------------------------------------------*
;**	-----------------------g14:
;** 784	-----------------------    h = sqrt(h);
;** 788	-----------------------    C$1 = (double * const)point2+3016;
;** 788	-----------------------    center[0] = *C$1;
;** 789	-----------------------    center[1] = C$1[1];
;** 790	-----------------------    center[2] = C$1[2];
;** 795	-----------------------    if ( x == 0.0 ) goto g22;
           ADDKPC  .S2     $C$RL260,B3,4     ; |784| 
$C$RL260:  ; CALL OCCURS {sqrt} {0}          ; |784| 
;** --------------------------------------------------------------------------*

           MV      .S1     A12,A0            ; |788| 
||         LDDW    .D2T2   *B11,B5:B4        ; |788| 
||         ZERO    .L2     B7:B6             ; |813| 
||         ZERO    .L1     A7:A6             ; |813| 

           LDDW    .D2T2   *+B11(16),B9:B8   ; |790| 
||         CMPLTDP .S2     B13:B12,B7:B6,B18 ; |813| 

           LDDW    .D2T2   *+B11(8),B17:B16  ; |789| 
||         ZERO    .L2     B7:B6             ; |798| 
|| [ A0]   B       .S1     $C$L249           ; |795| 

           CMPGTDP .S1     A11:A10,A7:A6,A3  ; |813| 
||         CMPGTDP .S2     B13:B12,B7:B6,B6  ; |798| 

   [!A0]   ZERO    .L1     A7:A6             ; |818| 

           STDW    .D2T2   B5:B4,*+SP(32)    ; |788| 
|| [!A0]   ZERO    .L2     B5:B4             ; |818| 
||         XOR     .L1     1,A3,A3           ; |813| 
||         XOR     .S2     1,B6,B11          ; |798| 
|| [!A0]   CMPGTDP .S1     A11:A10,A7:A6,A8  ; |818| 

   [!A0]   CMPGTDP .S2     B13:B12,B5:B4,B8  ; |818| 
||         OR      .L1X    B18,A3,A3         ; |813| 
||         STDW    .D2T2   B9:B8,*+SP(48)    ; |790| 

           STDW    .D2T2   B17:B16,*+SP(40)  ; |789| 
           ; BRANCHCC OCCURS {$C$L249}       ; |795| 
;** --------------------------------------------------------------------------*
;** 813	-----------------------    U$102 = (x <= 0.0)|(y < 0.0);
;** 813	-----------------------    if ( !(((x >= 0.0)|(y > 0.0))&U$102) ) goto g17;
;** 818	-----------------------    bigArc = ~((x > 0.0)&(y <= 0.0))&(x < 0.0)&(y >= 0.0);
;**	-----------------------g17:
;** 816	-----------------------    bigArc |= (x < 0.0)&(y <= 0.0)&U$102;
;** 813	-----------------------    if ( !((x > 0.0)&(y >= 0.0)) ) goto g19;
;** 814	-----------------------    bigArc = 0;
;**	-----------------------g19:
;** 823	-----------------------    if ( U$44 ) goto g21;
;** 825	-----------------------    bigArc ^= center[1] > mid[1];
;** 825	-----------------------    goto g25;

           ZERO    .L2     B5:B4             ; |816| 
||         ZERO    .L1     A7:A6             ; |818| 
||         LDDW    .D2T2   *+SP(16),B7:B6    ; |825| 
||         XOR     .S2     1,B8,B16          ; |818| 

           CMPGTDP .S2     B13:B12,B5:B4,B17 ; |816| 
||         CMPLTDP .S1     A11:A10,A7:A6,A9  ; |818| 
||         LDDW    .D2T2   *+SP(40),B5:B4    ; |825| 
||         ZERO    .L2     B9:B8             ; |818| 

           ZERO    .L1     A7:A6             ; |816| 
||         AND     .D1X    B16,A8,A31        ; |818| 

           XOR     .L2     1,B17,B18         ; |816| 
||         CMPLTDP .S1     A11:A10,A7:A6,A6  ; |816| 
||         CMPLTDP .S2     B13:B12,B9:B8,B31 ; |818| 
||         ANDN    .L1     A9,A31,A8         ; |818| 

           ZERO    .L2     B9:B8             ; |813| 

           AND     .L1X    B18,A6,A6         ; |816| 
||         CMPLTDP .S2     B13:B12,B9:B8,B8  ; |813| 
||         XOR     .L2     1,B31,B30         ; |818| 

           AND     .S1     A3,A6,A3          ; |816| 
||         ZERO    .L1     A7:A6             ; |813| 
||         AND     .L2X    B30,A8,B9         ; |818| 

           CMPGTDP .S1     A11:A10,A7:A6,A6  ; |813| 
||         CMPGTDP .S2     B5:B4,B7:B6,B4    ; |825| 
||         XOR     .L2     1,B8,B8           ; |813| 

           OR      .L2X    A3,B9,B5          ; |816| 

           AND     .L1X    B8,A6,A0          ; |813| 
||         EXT     .S2     B5,24,24,B11      ; |818| 

   [ A0]   ZERO    .L2     B11               ; |814| 
||         LDW     .D2T1   *+SP(64),A0       ; |825| 

           LDDW    .D2T2   *+SP(8),B7:B6     ; |828| 
           LDDW    .D2T1   *+SP(48),A7:A6    ; |828| 
           LDDW    .D2T2   *+SP(32),B9:B8    ; |828| 
           XOR     .L2     B4,B11,B4         ; |825| 

   [!A0]   BNOP    .S1     $C$L250,4         ; |825| 
|| [!A0]   EXT     .S2     B4,24,24,B11      ; |825| 
||         LDDW    .D2T2   *+SP(24),B5:B4    ; |828| 
||         CMPEQ   .L2X    A0,1,B0           ; |828| 

           CMPGTDP .S2X    A7:A6,B5:B4,B5    ; |828| 
           ; BRANCHCC OCCURS {$C$L250}       ; |825| 
;** --------------------------------------------------------------------------*
;**	-----------------------g21:
;** 828	-----------------------    (U$44 == 1) ? (bigArc = (center[0] > mid[0])^bigArc) : (bigArc = (center[2] > mid[2])^bigArc);
;** 828	-----------------------    goto g25;
           B       .S1     $C$L251           ; |828| 
           CMPGTDP .S2     B9:B8,B7:B6,B4    ; |828| 
           NOP             1

           XOR     .L2     B4,B11,B5         ; |828| 
||         XOR     .S2     B5,B11,B4         ; |828| 

   [ B0]   MV      .L2     B5,B4             ; |828| 
||         LDW     .D2T2   *+SP(60),B5       ; |841| 

           EXT     .S2     B4,24,24,B11      ; |828| 
           ; BRANCH OCCURS {$C$L251}         ; |828| 
;** --------------------------------------------------------------------------*
$C$L249:    
;**	-----------------------g22:
;** 798	-----------------------    bigArc = y <= 0.0;
;** 802	-----------------------    if ( U$44 ) goto g24;
;** 804	-----------------------    bigArc ^= center[0] < mid[0];
;** 804	-----------------------    goto g25;
           LDW     .D2T1   *+SP(64),A0       ; |804| 
           LDDW    .D2T2   *+SP(8),B7:B6     ; |804| 
           LDDW    .D2T2   *+SP(32),B5:B4    ; |804| 
           NOP             2

   [!A0]   B       .S1     $C$L252           ; |804| 
|| [ A0]   LDDW    .D2T1   *+SP(40),A7:A6    ; |807| 
||         CMPEQ   .L2X    A0,1,B0           ; |807| 

   [ A0]   LDDW    .D2T2   *+SP(48),B9:B8    ; |807| 
           CMPLTDP .S2     B5:B4,B7:B6,B4    ; |804| 
   [ A0]   LDDW    .D2T2   *+SP(24),B7:B6    ; |807| 

           XOR     .L2     B4,B11,B5         ; |804| 
|| [ A0]   LDDW    .D2T2   *+SP(16),B5:B4    ; |807| 

   [!A0]   CALL    .S1     __c6xabi_divd     ; |841| 
|| [!A0]   EXT     .S2     B5,24,24,B11      ; |804| 
|| [!A0]   LDW     .D2T2   *+SP(60),B5       ; |841| 

           ; BRANCHCC OCCURS {$C$L252}       ; |804| 
;** --------------------------------------------------------------------------*
;**	-----------------------g24:
;** 807	-----------------------    (U$44 == 1) ? (bigArc = (center[2] < mid[2])^bigArc) : (bigArc = (center[1] < mid[1])^bigArc);
           NOP             3
           CMPLTDP .S2X    A7:A6,B5:B4,B5    ; |807| 
           NOP             1
           CMPLTDP .S2     B9:B8,B7:B6,B4    ; |807| 
           NOP             1

           XOR     .L2     B4,B11,B5         ; |807| 
||         XOR     .S2     B5,B11,B4         ; |807| 

   [ B0]   MV      .L2     B5,B4             ; |807| 
           EXT     .S2     B4,24,24,B11      ; |807| 
;** --------------------------------------------------------------------------*
$C$L250:    
           LDW     .D2T2   *+SP(60),B5       ; |841| 
;** --------------------------------------------------------------------------*
$C$L251:    
           CALL    .S1     __c6xabi_divd     ; |841| 
;** --------------------------------------------------------------------------*
$C$L252:    
;**	-----------------------g25:
;** 837	-----------------------    bigArc ^= distant_type != 20;
;** 841	-----------------------    angle = asin(sqrt(1.0-pow(h/r, 2.0)))*2.0;
;** 842	-----------------------    if ( bigArc != 1 ) goto g27;
;** 844	-----------------------    angle = 6.283185307179586232-angle;
;**	-----------------------g27:
;** 846	-----------------------    *((double * const)point2+3072) = angle;
;** 848	-----------------------    return 0;
           LDW     .D2T2   *+SP(56),B4       ; |841| 
           ADDKPC  .S2     $C$RL262,B3,3     ; |841| 
$C$RL262:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |841| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5

           CALLP   .S2     pow,B3
||         ZERO    .L2     B4                ; |841| 

$C$RL263:  ; CALL OCCURS {pow} {0}           ; |841| 
           ZERO    .L1     A7

           SET     .S1     A7,0x14,0x1d,A7
||         ZERO    .L1     A6                ; |841| 

           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |841| 
           CALLP   .S2     sqrt,B3
$C$RL264:  ; CALL OCCURS {sqrt} {0}          ; |841| 
           CALLP   .S2     asin,B3
$C$RL265:  ; CALL OCCURS {asin} {0}          ; |841| 
;** --------------------------------------------------------------------------*
           ZERO    .L1     A7

           SET     .S1     A7,0x1e,0x1e,A7
||         ZERO    .L1     A6                ; |841| 

           MPYDP   .M1     A7:A6,A5:A4,A5:A4 ; |841| 
           LDW     .D2T1   *+SP(72),A7       ; |837| 
           LDW     .D2T1   *+SP(68),A6       ; |841| 
           MVK     .S2     20,B4             ; |837| 
           CMPEQ   .L2X    A15,B4,B4         ; |837| 
           XOR     .L2     1,B4,B4           ; |837| 
           XOR     .L2     B4,B11,B4         ; |837| 
           EXT     .S2     B4,24,24,B0       ; |837| 
           MVK     .S2     3072,B31          ; |846| 
           ADD     .L2     B31,B10,B4        ; |846| 
   [ B0]   SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |844| 
           ZERO    .S1     A14               ; |848| 
           NOP             5
           STDW    .D2T1   A5:A4,*B4         ; |846| 
;** --------------------------------------------------------------------------*
$C$L253:    
           LDW     .D2T2   *++SP(104),B3     ; |849| 
           LDDW    .D2T1   *++SP,A13:A12     ; |849| 

           MV      .L1     A14,A4            ; |848| 
||         LDDW    .D2T1   *++SP,A15:A14     ; |849| 

           LDDW    .D2T2   *++SP,B11:B10     ; |849| 
           LDDW    .D2T2   *++SP,B13:B12     ; |849| 

           LDW     .D2T1   *++SP(8),A10      ; |849| 
||         RET     .S2     B3                ; |849| 

           LDW     .D2T1   *++SP(8),A11      ; |849| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |849| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead14FillCircleDataEPK8LineDataPS0_

;******************************************************************************
;* FUNCTION NAME: LookAhead::FillCircleData(const LineData *, LineData *)     *
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
_ZN9LookAhead14FillCircleDataEPK8LineDataPS0_:
;** --------------------------------------------------------------------------*
;* 1446	-----------------------    C$1 = (*point2).interpolation_type;  // [74]
;* 1446	-----------------------    if ( !((C$1 != 20)&(C$1 != 30)&(C$1 != 24)) ) goto g3;  // [74]
;** 984	-----------------------    return 0;

           STW     .D2T1   A11,*SP--(8)      ; |977| 
||         MVK     .S1     274,A3            ; |1446| 
||         MVK     .S2     24,B6             ; |1446| 
||         MV      .L1X    B4,A11            ; |977| 

           MV      .L1     A4,A12            ; |977| 
||         STDW    .D2T1   A13:A12,*SP--     ; |977| 
||         ADD     .S1     A3,A6,A3          ; |1446| 

           STW     .D2T1   A10,*SP--(8)      ; |977| 
           LDHU    .D1T1   *A3,A3            ; |1446| 
           MVK     .S2     30,B5             ; |1446| 
           MVK     .S1     20,A5             ; |1446| 
           MV      .L1X    B3,A13            ; |977| 
           MV      .L1     A6,A10            ; |977| 

           CMPEQ   .L1     A3,A5,A5          ; |1446| 
||         CMPEQ   .L2X    A3,B5,B5          ; |1446| 

           CMPEQ   .L1X    A3,B6,A3          ; |1446| 

           OR      .L2X    A5,B5,B5
||         MVK     .S1     3008,A5           ; |986| 

           OR      .L2X    B5,A3,B0
||         ADD     .L1     A5,A6,A4          ; |986| 
||         ZERO    .S1     A3                ; |984| 

   [!B0]   BNOP    .S1     $C$L255,4         ; |984| 
|| [ B0]   LDHU    .D1T1   *A4,A3            ; |986| 

           AND     .L1     6,A3,A5           ; |986| 
||         AND     .S1     1,A3,A4           ; |986| 

           ; BRANCHCC OCCURS {$C$L255}       ; |984| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 986	-----------------------    U$21 = *((unsigned short *)point2+3008);
;** 986	-----------------------    if ( !(U$21&1|U$21&6) ) goto g5;

           EXTU    .S1     A3,25,31,A0       ; |992| 
||         OR      .L1     A5,A4,A1          ; |986| 

   [ A1]   MVK     .L1     0x1,A0            ; |1001| nullify predicate
|| [!A1]   B       .S1     $C$L254           ; |986| 

   [!A0]   B       .S1     $C$L256           ; |992| 
   [ A1]   CALL    .S1     _ZN9LookAhead16GetRadiusFromIJKEPK8LineDataPS0_ ; |990| 
           MV      .L1     A12,A4            ; |990| 
   [!A1]   MVK     .S1     0x1f40,A3         ; |1001| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L254}       ; |986| 
;** --------------------------------------------------------------------------*
;** 990	-----------------------    LookAhead::GetRadiusFromIJK(this, point1, point2);
;** 991	-----------------------    return LookAhead::GetAngleFromIJK(this, point1, point2);
           ADDKPC  .S2     $C$RL266,B3,1     ; |990| 
$C$RL266:  ; CALL OCCURS {_ZN9LookAhead16GetRadiusFromIJKEPK8LineDataPS0_} {0}  ; |990| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZN9LookAhead15GetAngleFromIJKEPK8LineDataPS0_,B3
||         MV      .L2X    A11,B4            ; |991| 
||         MV      .L1     A10,A6            ; |991| 
||         MV      .S1     A12,A4            ; |991| 

$C$RL267:  ; CALL OCCURS {_ZN9LookAhead15GetAngleFromIJKEPK8LineDataPS0_} {0}  ; |991| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *++SP(8),A10      ; |1002| 
||         MV      .L2X    A13,B3            ; |1002| 

           LDDW    .D2T1   *++SP,A13:A12     ; |1002| 
||         RET     .S2     B3                ; |1002| 

           LDW     .D2T1   *++SP(8),A11      ; |1002| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1002| 
;** --------------------------------------------------------------------------*
$C$L254:    
;**	-----------------------g5:
;** 992	-----------------------    if ( !(U$21&0x40) ) goto g7;

   [ A0]   CALL    .S1     _ZN9LookAhead21GetIJKAngleFromRadiusEPK8LineDataPS0_ ; |994| 
|| [!A0]   LDW     .D2T1   *++SP(8),A10      ; |1002| 
|| [!A0]   MV      .L2X    A13,B3            ; |1002| 

           ; BRANCHCC OCCURS {$C$L256}       ; |992| 
;** --------------------------------------------------------------------------*
;** 994	-----------------------    return LookAhead::GetIJKAngleFromRadius(this, point1, point2);
;**	-----------------------g7:
;* 1001	-----------------------    return 8000;
           ADDKPC  .S2     $C$RL268,B3,4     ; |994| 
$C$RL268:  ; CALL OCCURS {_ZN9LookAhead21GetIJKAngleFromRadiusEPK8LineDataPS0_} {0}  ; |994| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A3             ; |994| 
;** --------------------------------------------------------------------------*
$C$L255:    

           MV      .L2X    A13,B3            ; |1002| 
||         LDW     .D2T1   *++SP(8),A10      ; |1002| 

;** --------------------------------------------------------------------------*
$C$L256:    

           LDDW    .D2T1   *++SP,A13:A12     ; |1002| 
||         RET     .S2     B3                ; |1002| 

           LDW     .D2T1   *++SP(8),A11      ; |1002| 
           MV      .L1     A3,A4             ; |1001| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |1002| 
	.sect	".text"
	.clink
	.global	_ZN9LookAhead13TransDataUnitEP8LineData

;******************************************************************************
;* FUNCTION NAME: LookAhead::TransDataUnit(LineData *)                        *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : B3                                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN9LookAhead13TransDataUnitEP8LineData:
;** --------------------------------------------------------------------------*
;       ----------------------- /* EMPTY LOOP DELETED */ 
;**  	-----------------------    return;
           RETNOP  .S2     B3,5              ; |693| 
           ; BRANCH OCCURS {B3}              ; |693| 
	.sect	".text:_ZN8LineDataC2Ev"
	.clink
	.global	_ZN8LineDataC2Ev

;******************************************************************************
;* FUNCTION NAME: LineData::LineData() [subobject]                            *
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
_ZN8LineDataC2Ev:
;** --------------------------------------------------------------------------*
;**  	-----------------------    CoordInfo::CoordInfo((struct oordInfo *)this+280);
;**  	-----------------------    AxisDataMode::AxisDataMode((struct xisDataMode *)this+1344);
;**  	-----------------------    FeedInfo::FeedInfo((struct eedInfo *)this+1352);
;**  	-----------------------    SpindleInfo::SpindleInfo((struct pindleInfo *)this+1400);
;**  	-----------------------    AxisMovData::AxisMovData((struct xisMovData *)this+1432);
;**  	-----------------------    ExtraMovData::ExtraMovData((struct xtraMovData *)this+3008);
;**  	-----------------------    MCommands::MCommands((struct Commands *)this+3128);
;**  	-----------------------    ParaEntry::ParaEntry((struct araEntry *)this+3144);
;**  	-----------------------    return this;
           MVK     .S2     280,B4

           STW     .D2T1   A11,*SP--(8)
||         MV      .L1X    B3,A11

           CALLP   .S2     _ZN9CoordInfoC1Ev,B3
||         STW     .D2T1   A10,*+SP(4)
||         MV      .L1     A4,A10
||         ADD     .S1X    B4,A4,A4

$C$RL269:  ; CALL OCCURS {_ZN9CoordInfoC1Ev} {0} 
;** --------------------------------------------------------------------------*
           MVK     .S1     1344,A3

           CALLP   .S2     _ZN12AxisDataModeC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL270:  ; CALL OCCURS {_ZN12AxisDataModeC1Ev} {0} 
           MVK     .S2     1352,B4
           NOP             1

           CALLP   .S2     _ZN8FeedInfoC1Ev,B3
||         ADD     .L1X    B4,A10,A4

$C$RL271:  ; CALL OCCURS {_ZN8FeedInfoC1Ev} {0} 
           MVK     .S1     1400,A3

           CALLP   .S2     _ZN11SpindleInfoC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL272:  ; CALL OCCURS {_ZN11SpindleInfoC1Ev} {0} 
           MVK     .S2     1432,B4
           NOP             1

           CALLP   .S2     _ZN11AxisMovDataC1Ev,B3
||         ADD     .L1X    B4,A10,A4

$C$RL273:  ; CALL OCCURS {_ZN11AxisMovDataC1Ev} {0} 
           MVK     .S1     3008,A3

           CALLP   .S2     _ZN12ExtraMovDataC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL274:  ; CALL OCCURS {_ZN12ExtraMovDataC1Ev} {0} 
           MVK     .S2     3128,B4
           NOP             1

           CALLP   .S2     _ZN9MCommandsC1Ev,B3
||         ADD     .L1X    B4,A10,A4

$C$RL275:  ; CALL OCCURS {_ZN9MCommandsC1Ev} {0} 
           MVK     .S1     3144,A3

           CALLP   .S2     _ZN9ParaEntryC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL276:  ; CALL OCCURS {_ZN9ParaEntryC1Ev} {0} 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3

           RET     .S2     B3
||         MV      .L1     A10,A4
||         LDW     .D2T1   *+SP(4),A10

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
	.sect	".text:_ZN14CircularBufferI8LineDataED2Ev"
	.clink
	.global	_ZN14CircularBufferI8LineDataED2Ev

;******************************************************************************
;* FUNCTION NAME: CircularBuffer<LineData>::~CircularBuffer() [subobject]     *
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
_ZN14CircularBufferI8LineDataED2Ev:
;** --------------------------------------------------------------------------*
;** 76	-----------------------    C$11 = (*this).m_buffer;  // [85]
;** 76	-----------------------    if ( C$11 == NULL ) goto g3;  // [85]
           STW     .D2T1   A11,*SP--(8)

           STW     .D2T1   A10,*+SP(4)
||         MV      .L1     A4,A10

           LDW     .D1T1   *A10,A0           ; |76| 
           MVK     .S2     0xee8,B4          ; |77| 
           ZERO    .L2     B6                ; |77| 
           ZERO    .L1     A6                ; |77| 
           MV      .L1X    B3,A11
   [!A0]   B       .S1     $C$L257           ; |76| 
   [ A0]   CALL    .S1     __cxa_vec_delete  ; |77| 
   [!A0]   CALL    .S1     ti_sysbios_gates_GateHwi_Object__delete__S ; |441| 
           MV      .L1     A0,A4             ; |77| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L257}       ; |76| 
;** --------------------------------------------------------------------------*
;** 77	-----------------------    __cxa_vec_delete(C$11, 3816u, 0u, NULL);  // [85]
           ADDKPC  .S2     $C$RL277,B3,0     ; |77| 
$C$RL277:  ; CALL OCCURS {__cxa_vec_delete} {0}  ; |77| 
           CALL    .S1     ti_sysbios_gates_GateHwi_Object__delete__S ; |441| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L257:    
;**	-----------------------g3:
;** 441	-----------------------    ti_sysbios_gates_GateHwi_Object__delete__S(this+20);  // [22]
;** 82	-----------------------    return (void * const)this;  // [85]
           ADD     .D1     A10,20,A4         ; |441| 
           ADDKPC  .S2     $C$RL278,B3,0     ; |441| 
$C$RL278:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_Object__delete__S} {0}  ; |441| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3

           RET     .S2     B3
||         MV      .L1     A10,A4            ; |82| 
||         LDW     .D2T1   *+SP(4),A10

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
	.sect	".text:_ZN14CircularBufferI8LineDataEC2Ei"
	.clink
	.global	_ZN14CircularBufferI8LineDataEC2Ei

;******************************************************************************
;* FUNCTION NAME: CircularBuffer<LineData>::CircularBuffer(int) [subobject]   *
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
_ZN14CircularBufferI8LineDataEC2Ei:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return CircularBuffer<LineData>::CircularBuffer(this, $P$T5);
           CALLRET .S1     _ZN14CircularBufferI8LineDataEC1Ei
           NOP             5
$C$RL279:  ; CALL-RETURN OCCURS {_ZN14CircularBufferI8LineDataEC1Ei} 0 
;; Inlined function references:
;; [ 20] ti_sysbios_gates_GateHwi_Params_init(ti_sysbios_gates_GateHwi_Params *)
;; [ 21] ti_sysbios_gates_GateHwi_create(const ti_sysbios_gates_GateHwi_Params *, xdc_runtime_Error_Block *)
;; [ 22] ti_sysbios_gates_GateHwi_delete(ti_sysbios_gates_GateHwi_Object **)
;; [ 42] LookAhead::Init()
;; [ 47] LookAhead::InsertDataToInterpolation(LineData *)
;; [ 51] LookAhead::EndProcess(short)
;; [ 53] LookAhead::NormalProcess()
;; [ 57] LookAhead::GetMidXY(const LineData *, const LineData *, double *, double *, double *)
;; [ 65] LookAhead::VectorNormal(double *)
;; [ 67] LookAhead::GetArcHeight(const LineData *, const LineData *)
;; [ 70] LookAhead::FillLineDataByCurPos(LineData *)
;; [ 71] LookAhead::FillLineDataByLastPos(LineData *)
;; [ 73] LookAhead::SetEndSpeed(LineData *, double)
;; [ 74] LookAhead::DataIsArc(unsigned short)
;; [ 75] LookAhead::DataIsClockWise(unsigned short)
;; [ 80] LookAhead::SetLookaheadNum(unsigned short)
;; [ 81] LookAhead::SetChannelIndex(int, NCCCTChannelConfig *)
;; [ 85] CircularBuffer<LineData>::~CircularBuffer()
;; [ 88] CircularBuffer<LineData>::BufLen()
;; [ 89] CircularBuffer<LineData>::ClearBuf()
;; [ 90] CircularBuffer<LineData>::ReadDataPtr(short)
;; [ 91] CircularBuffer<LineData>::Next()
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_Znwj
	.global	_ZdlPv
	.global	_Znaj
	.global	_ZdaPv
	.global	sqrt
	.global	pow
	.global	sin
	.global	cos
	.global	asin
	.global	acos
	.global	atan
	.global	memset
	.global	ti_sysbios_gates_GateHwi_Object__create__S
	.global	ti_sysbios_gates_GateHwi_Object__delete__S
	.global	ti_sysbios_gates_GateHwi_Params__init__S
	.global	ti_sysbios_gates_GateHwi_enter__E
	.global	ti_sysbios_gates_GateHwi_leave__E
	.global	__cxa_vec_new
	.global	__cxa_vec_delete
	.global	_ZN9CoordInfoC1Ev
	.global	_ZN12AxisDataModeC1Ev
	.global	_ZN8FeedInfoC1Ev
	.global	_ZN11SpindleInfoC1Ev
	.global	_ZN11AxisMovDataC1Ev
	.global	_ZN11AxisMovData9CheckMaskEh
	.global	_ZN12ExtraMovDataC1Ev
	.global	_ZN9MCommandsC1Ev
	.global	_ZN9MCommands6HasCmdEj
	.global	_ZN9ParaEntryC1Ev
	.global	_ZN8LineData10NeedToStopEv
	.global	_ZN13Interpolation23InsertInterpolationDataEP8LineData
	.global	__c6xabi_divd
	.global	memcpy
;*****************************************************************************
;* SECTION GROUPS                                                            *
;*****************************************************************************
	.group    "_ZN14CircularBufferI8LineDataE11ReadDataPtrEs", 1
	.gmember  ".text:_ZN14CircularBufferI8LineDataE11ReadDataPtrEs"
	.endgroup
	.group    "_ZN14CircularBufferI8LineDataE9WriteDataEPKS0_i", 1
	.gmember  ".text:_ZN14CircularBufferI8LineDataE9WriteDataEPKS0_i"
	.endgroup
	.group    "_ZN14CircularBufferI8LineDataEC1Ei", 1
	.gmember  ".text:_ZN14CircularBufferI8LineDataEC1Ei"
	.endgroup
	.group    "_ZN14CircularBufferI8LineDataEC2Ei", 1
	.gmember  ".text:_ZN14CircularBufferI8LineDataEC2Ei"
	.endgroup
	.group    "_ZN14CircularBufferI8LineDataED2Ev", 1
	.gmember  ".text:_ZN14CircularBufferI8LineDataED2Ev"
	.endgroup
	.group    "_ZN8LineDataC1Ev", 1
	.gmember  ".text:_ZN8LineDataC1Ev"
	.endgroup
	.group    "_ZN8LineDataC2Ev", 1
	.gmember  ".text:_ZN8LineDataC2Ev"
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
