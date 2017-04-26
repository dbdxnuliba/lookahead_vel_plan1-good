;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.3.4 *
;* Date/Time created: Sat Apr 22 16:21:50 2017                                *
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
	.symalias _ZN11ALGLogTraceC2EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS2_E, _ZN11ALGLogTraceC1EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS2_E
	.symalias _ZN11ALGLogTraceD2Ev, _ZN11ALGLogTraceD1Ev
;	/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/opt6x --call_assumptions=0 --gen_opt_info=2 /tmp/05630OoJ1Nm /tmp/05630Ifwq5L --opt_info_filename=src/log_trace.nfo 
	.sect	".text"
	.clink
	.global	_ZN11ALGLogTraceD1Ev

;******************************************************************************
;* FUNCTION NAME: ALGLogTrace::~ALGLogTrace()                                 *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : B3                                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN11ALGLogTraceD1Ev:
;** --------------------------------------------------------------------------*
;** 17	-----------------------    return this;
           RETNOP  .S2     B3,5              ; |17| 
           ; BRANCH OCCURS {B3}              ; |17| 
	.sect	".text:_ZN11ALGLogTraceD2Ev"
	.clink
	.global	_ZN11ALGLogTraceD2Ev

;******************************************************************************
;* FUNCTION NAME: ALGLogTrace::~ALGLogTrace() [subobject]                     *
;*                                                                            *
;*   Regs Modified     : A0,A4,B3,B30,B31                                     *
;*   Regs Used         : A0,A4,B3,SP,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN11ALGLogTraceD2Ev:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return ALGLogTrace::~ALGLogTrace(this);

           MV      .L1X    B3,A0
||         CALLP   .S2     _ZN11ALGLogTraceD1Ev,B3

$C$RL0:    ; CALL OCCURS {_ZN11ALGLogTraceD1Ev} {0} 
;** --------------------------------------------------------------------------*
           RETNOP  .S2X    A0,5
           ; BRANCH OCCURS {A0}  
	.sect	".text"
	.clink
	.global	_ZN11ALGLogTraceC1EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS2_E

;******************************************************************************
;* FUNCTION NAME: ALGLogTrace::ALGLogTrace(void (*)(TraceLevel, TraceModule, char *), void (*)(LogLevel, char *))*
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : A4,A6,B3,B4                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN11ALGLogTraceC1EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS2_E:
;** --------------------------------------------------------------------------*
;** 24	-----------------------    (*this).pPrintTrace = AlgPrintTrace;
;** 25	-----------------------    (*this).pPrintLog = AlgPrintLog;
;** 26	-----------------------    return this;
           RETNOP  .S2     B3,3              ; |26| 
           STW     .D1T2   B4,*+A4(4)        ; |24| 
           STW     .D1T1   A6,*A4            ; |25| 
           ; BRANCH OCCURS {B3}              ; |26| 
	.sect	".text:_ZN11ALGLogTraceC2EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS2_E"
	.clink
	.global	_ZN11ALGLogTraceC2EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS2_E

;******************************************************************************
;* FUNCTION NAME: ALGLogTrace::ALGLogTrace(void (*)(TraceLevel, TraceModule, char *), void (*)(LogLevel, char *)) [subobject]*
;*                                                                            *
;*   Regs Modified     : A0,A4,B3,B30,B31                                     *
;*   Regs Used         : A0,A4,A6,B3,B4,SP,B30,B31                            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN11ALGLogTraceC2EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS2_E:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return ALGLogTrace::ALGLogTrace(this, $P$T0, $P$T1);

           MV      .L1X    B3,A0
||         CALLP   .S2     _ZN11ALGLogTraceC1EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS2_E,B3

$C$RL1:    ; CALL OCCURS {_ZN11ALGLogTraceC1EPFv10TraceLevel11TraceModulePcEPFv8LogLevelS2_E} {0} 
;** --------------------------------------------------------------------------*
           RETNOP  .S2X    A0,5
           ; BRANCH OCCURS {A0}  
	.sect	".text"
	.clink
	.global	_ZN11ALGLogTrace8PrintLogE8LogLevelPcz

;******************************************************************************
;* FUNCTION NAME: ALGLogTrace::PrintLog(LogLevel, char *, ...)                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,SP,FP,A16,A17,A18,A19,A20,A21,*
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,DP,SP,FP,A16,A17,A18,A19,A20, *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 260 Auto + 16 Save = 276 byte               *
;******************************************************************************
_ZN11ALGLogTrace8PrintLogE8LogLevelPcz:
;** --------------------------------------------------------------------------*
;** 33	-----------------------    memset(&buf, 0, 256u);
;** 36	-----------------------    vsprintf(&buf, log_message, &log_message+4);
;** 38	-----------------------    buf[37] = 0;
;** 39	-----------------------    (*(*this).pPrintLog)(log_level, &buf);
;**  	-----------------------    return;

           MV      .L1X    SP,FP             ; |30| 
||         STW     .D2T1   FP,*SP--(8)       ; |30| 

           ADDK    .S2     -272,SP

           STW     .D2T2   B13,*+SP(268)
||         STDW    .D1T1   A11:A10,*-FP(8)
||         MV      .L1X    B4,A10            ; |30| 

           MV      .L2     B3,B13
||         CALLP   .S2     memset,B3
||         MV      .L1     A4,A11            ; |30| 
||         ADD     .D1X    8,SP,A4           ; |33| 
||         ZERO    .D2     B4                ; |33| 
||         MVK     .S1     0x100,A6          ; |33| 

$C$RL2:    ; CALL OCCURS {memset} {0}        ; |33| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     vsprintf,B3
||         LDW     .D1T2   *+FP(4),B4        ; |36| 
||         ADD     .L1X    8,SP,A4           ; |36| 
||         ADD     .S1     8,FP,A6           ; |36| 

$C$RL3:    ; CALL OCCURS {vsprintf} {0}      ; |36| 
           MV      .L1     A11,A3            ; |30| 
           LDW     .D1T1   *A3,A3            ; |39| 
           ZERO    .L2     B4                ; |38| 
           STB     .D2T2   B4,*+SP(45)       ; |38| 
           ADD     .L2     8,SP,B4           ; |39| 
           MV      .L1     A10,A4            ; |30| 
           CALL    .S2X    A3                ; |39| 
           ADDKPC  .S2     $C$RL4,B3,4       ; |39| 
$C$RL4:    ; CALL OCCURS {A3} {0}            ; |39| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |40| 

           RET     .S2     B3                ; |40| 
||         LDDW    .D1T1   *-FP(8),A11:A10   ; |40| 

           LDW     .D2T2   *+SP(268),B13     ; |40| 
||         MV      .L2X    FP,SP             ; |40| 
||         LDW     .D1T1   *FP,FP            ; |40| 

           NOP             4
           ; BRANCH OCCURS {B3}              ; |40| 
	.sect	".text"
	.clink
	.global	_ZN11ALGLogTrace10PrintTraceE10TraceLevel11TraceModulePcz

;******************************************************************************
;* FUNCTION NAME: ALGLogTrace::PrintTrace(TraceLevel, TraceModule, char *, ...)*
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,SP,FP,A16,A17,A18,A19,   *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,DP,SP,FP,A16,A17,A18,A19,*
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 260 Auto + 20 Save = 280 byte               *
;******************************************************************************
_ZN11ALGLogTrace10PrintTraceE10TraceLevel11TraceModulePcz:
;** --------------------------------------------------------------------------*
;** 48	-----------------------    memset(&buf, 0, 256u);
;** 51	-----------------------    vsprintf(&buf, trace_message, &trace_message+4);
;** 53	-----------------------    buf[37] = 0;
;** 54	-----------------------    (*(*this).pPrintTrace)(trace_level, module_id, &buf);
;**  	-----------------------    return;

           MV      .L1X    SP,FP             ; |44| 
||         STW     .D2T1   FP,*SP--(8)       ; |44| 

           ADDK    .S2     -272,SP

           STDW    .D1T1   A13:A12,*-FP(8)
||         MV      .L1X    B3,A13

           STDW    .D1T1   A11:A10,*-FP(16)
||         MV      .L1     A6,A12            ; |44| 
||         MV      .S1X    B4,A11            ; |44| 

           CALLP   .S2     memset,B3
||         MV      .L1     A4,A10            ; |44| 
||         ADD     .D1X    8,SP,A4           ; |48| 
||         MVK     .S1     0x100,A6          ; |48| 
||         ZERO    .L2     B4                ; |48| 

$C$RL5:    ; CALL OCCURS {memset} {0}        ; |48| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     vsprintf,B3
||         LDW     .D1T2   *+FP(4),B4        ; |51| 
||         ADD     .L1X    8,SP,A4           ; |51| 
||         ADD     .S1     8,FP,A6           ; |51| 

$C$RL6:    ; CALL OCCURS {vsprintf} {0}      ; |51| 
           LDW     .D1T1   *+A10(4),A3       ; |54| 
           ZERO    .L2     B5                ; |53| 
           STB     .D2T2   B5,*+SP(45)       ; |53| 
           MV      .L1     A11,A4            ; |44| 
           MV      .L2X    A12,B4            ; |44| 
           CALL    .S2X    A3                ; |54| 
           ADD     .L1X    8,SP,A6           ; |54| 
           ADDKPC  .S2     $C$RL7,B3,3       ; |54| 
$C$RL7:    ; CALL OCCURS {A3} {0}            ; |54| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A13,B3            ; |55| 
||         LDDW    .D1T1   *-FP(16),A11:A10  ; |55| 

           RET     .S2     B3                ; |55| 
||         LDDW    .D1T1   *-FP(8),A13:A12   ; |55| 

           MV      .L2X    FP,SP             ; |55| 
||         LDW     .D1T1   *FP,FP            ; |55| 

           NOP             4
           ; BRANCH OCCURS {B3}              ; |55| 
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	vsprintf
	.global	memset

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
