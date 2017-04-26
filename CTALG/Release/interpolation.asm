;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.3.4 *
;* Date/Time created: Sat Apr 22 16:22:01 2017                                *
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
	.symalias _ZN13InterpolationC2EtP18NCCCTChannelConfigP17NCCCTChannelStateP20ChannelRealtimeStatePFiP8LineDataPvEPFvhdS8_ES8_, _ZN13InterpolationC1EtP18NCCCTChannelConfigP17NCCCTChannelStateP20ChannelRealtimeStatePFiP8LineDataPvEPFvhdS8_ES8_
	.symalias _ZN13InterpolationD2Ev, _ZN13InterpolationD1Ev
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
	.elfsym	MAX_POSITIVE_POS,SYM_SIZE(8)
MAX_POSITIVE_POS:
	.word	000000000h,040590000h		; MAX_POSITIVE_POS @ 0

	.sect	".rodata"
	.align	8
	.elfsym	MAX_NEGATIVE_POS,SYM_SIZE(8)
MAX_NEGATIVE_POS:
	.word	000000000h,0c0590000h		; MAX_NEGATIVE_POS @ 0

	.sect	".rodata"
	.align	4
	.elfsym	IO_NUM,SYM_SIZE(4)
IO_NUM:
	.field	64,32			; IO_NUM @ 0

	.sect	".rodata"
	.align	8
	.elfsym	ROTARY_AXIS_DIS_PER_R,SYM_SIZE(8)
ROTARY_AXIS_DIS_PER_R:
	.word	070a3d70ah,03fd70a3dh		; ROTARY_AXIS_DIS_PER_R @ 0

	.global	acc
	.sect	".fardata:acc", RW
	.clink
	.align	8
	.elfsym	acc,SYM_SIZE(512)
acc:
	.word	000000000h,000000000h		; acc[0] @ 0
	.word	000000000h,000000000h		; acc[1] @ 64
	.word	000000000h,000000000h		; acc[2] @ 128
	.word	000000000h,000000000h		; acc[3] @ 192
	.word	000000000h,000000000h		; acc[4] @ 256
	.space	472

	.global	spd
	.sect	".fardata:spd", RW
	.clink
	.align	8
	.elfsym	spd,SYM_SIZE(512)
spd:
	.word	000000000h,000000000h		; spd[0] @ 0
	.word	000000000h,000000000h		; spd[1] @ 64
	.word	000000000h,000000000h		; spd[2] @ 128
	.word	000000000h,000000000h		; spd[3] @ 192
	.word	000000000h,000000000h		; spd[4] @ 256
	.space	472

	.global	pos
	.sect	".fardata:pos", RW
	.clink
	.align	8
	.elfsym	pos,SYM_SIZE(512)
pos:
	.word	000000000h,000000000h		; pos[0] @ 0
	.word	000000000h,000000000h		; pos[1] @ 64
	.word	000000000h,000000000h		; pos[2] @ 128
	.word	000000000h,000000000h		; pos[3] @ 192
	.word	000000000h,000000000h		; pos[4] @ 256
	.space	472

	.global	last_cycle_time
	.sect	".neardata", RW
	.align	8
	.elfsym	last_cycle_time,SYM_SIZE(8)
last_cycle_time:
	.word	000000000h,000000000h		; last_cycle_time @ 0

	.global	cur_cycle_time
	.sect	".neardata", RW
	.align	8
	.elfsym	cur_cycle_time,SYM_SIZE(8)
cur_cycle_time:
	.word	000000000h,000000000h		; cur_cycle_time @ 0

	.global	g_count
	.sect	".neardata", RW
	.align	8
	.elfsym	g_count,SYM_SIZE(8)
g_count:
	.word	000000000h,000000000h		; g_count @ 0

	.global	_ZN13Interpolation7kMaxPosE
	.sect	".rodata"
	.align	8
	.elfsym	_ZN13Interpolation7kMaxPosE,SYM_SIZE(8)
_ZN13Interpolation7kMaxPosE:
	.word	000000000h,0408f4000h		; _ZN13Interpolation7kMaxPosE @ 0

	.global	_ZN13Interpolation7m_countE
	.sect	".neardata", RW
	.align	4
	.elfsym	_ZN13Interpolation7m_countE,SYM_SIZE(4)
_ZN13Interpolation7m_countE:
	.field	0,32			; _ZN13Interpolation7m_countE @ 0

;	/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/opt6x --call_assumptions=0 --gen_opt_info=2 /tmp/05664RoAitt /tmp/05664dN6h55 --opt_info_filename=src/interpolation/interpolation.nfo 
	.sect	".text"
	.clink
	.global	_ZNK13Interpolation14GetCurLineDataEP8LineData

;******************************************************************************
;* FUNCTION NAME: Interpolation::GetCurLineData(LineData *) const             *
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
_ZNK13Interpolation14GetCurLineDataEP8LineData:
;** --------------------------------------------------------------------------*
;** 310	-----------------------    *data = *(*(*this).m_geometry).end_data;
;** 313	-----------------------    return 0;
           STW     .D2T2   B3,*SP--(8)       ; |307| 
           LDW     .D1T1   *+A4(92),A3       ; |310| 
           MVK     .S1     128,A4            ; |310| 
           MVK     .S1     0xee8,A6          ; |310| 
           NOP             2
           LDW     .D1T1   *+A3[A4],A3       ; |310| 
           MV      .L1X    B4,A4             ; |307| 
           NOP             3

           MV      .L2X    A3,B4             ; |310| 
||         CALLP   .S2     memcpy,B3

$C$RL0:    ; CALL OCCURS {memcpy} {0}        ; |310| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(8),B3       ; |314| 
           ZERO    .L1     A4                ; |313| 
           NOP             3
           RETNOP  .S2     B3,5              ; |314| 
           ; BRANCH OCCURS {B3}              ; |314| 
	.sect	".text"
	.clink
	.global	_ZNK13Interpolation12IsBufferFullEh

;******************************************************************************
;* FUNCTION NAME: Interpolation::IsBufferFull(unsigned char) const            *
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
_ZNK13Interpolation12IsBufferFullEh:
;** --------------------------------------------------------------------------*
;** 242	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);
;** 248	-----------------------    this = (*this).m_auto_buffer;
;** 390	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [97]
;** 392	-----------------------    empty_buf_len = (*this).m_buffer_total_length-(*this).m_buffer_cur_length;  // [97]
;** 394	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [97]
;** 248	-----------------------    is_buffer_full = empty_buf_len < 108;
;** 250	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;** 255	-----------------------    return is_buffer_full;
           STW     .D2T2   B13,*SP--(8)      ; |237| 
           STDW    .D2T1   A13:A12,*SP--     ; |237| 

           STDW    .D2T1   A11:A10,*SP--     ; |237| 
||         MV      .L1     A4,A12            ; |237| 

           MV      .L2     B3,B13            ; |237| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A12(28),A4      ; |242| 

$C$RL1:    ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |242| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A12(52),A10     ; |248| 
           MV      .L1     A4,A13            ; |242| 
           NOP             3

           LDW     .D1T1   *+A10(20),A4      ; |390| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3

$C$RL2:    ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |390| 
           LDW     .D1T1   *+A10(20),A3      ; |394| 
           LDW     .D1T1   *+A10(4),A11      ; |392| 
           LDW     .D1T1   *+A10(8),A10      ; |392| 
           MV      .L2X    A4,B4             ; |394| 
           NOP             1

           MV      .L1     A3,A4             ; |394| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3

$C$RL3:    ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |394| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D1T1   *+A12(28),A4      ; |250| 
||         MV      .L2X    A13,B4            ; |250| 

$C$RL4:    ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |250| 
;** --------------------------------------------------------------------------*

           SUB     .L1     A11,A10,A3        ; |392| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |256| 
||         MV      .L2     B13,B3            ; |256| 

           LDDW    .D2T1   *++SP,A13:A12     ; |256| 
||         RET     .S2     B3                ; |256| 

           LDW     .D2T2   *++SP(8),B13      ; |256| 
           MVK     .S1     108,A4            ; |248| 
           CMPLT   .L1     A3,A4,A4          ; |248| 
           NOP             2
           ; BRANCH OCCURS {B3}              ; |256| 
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

$C$RL5:    ; CALL OCCURS {_ZN9CoordInfoC1Ev} {0} 
;** --------------------------------------------------------------------------*
           MVK     .S1     1344,A3

           CALLP   .S2     _ZN12AxisDataModeC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL6:    ; CALL OCCURS {_ZN12AxisDataModeC1Ev} {0} 
           MVK     .S2     1352,B4
           NOP             1

           CALLP   .S2     _ZN8FeedInfoC1Ev,B3
||         ADD     .L1X    B4,A10,A4

$C$RL7:    ; CALL OCCURS {_ZN8FeedInfoC1Ev} {0} 
           MVK     .S1     1400,A3

           CALLP   .S2     _ZN11SpindleInfoC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL8:    ; CALL OCCURS {_ZN11SpindleInfoC1Ev} {0} 
           MVK     .S2     1432,B4
           NOP             1

           CALLP   .S2     _ZN11AxisMovDataC1Ev,B3
||         ADD     .L1X    B4,A10,A4

$C$RL9:    ; CALL OCCURS {_ZN11AxisMovDataC1Ev} {0} 
           MVK     .S1     3008,A3

           CALLP   .S2     _ZN12ExtraMovDataC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL10:   ; CALL OCCURS {_ZN12ExtraMovDataC1Ev} {0} 
           MVK     .S2     3128,B4
           NOP             1

           CALLP   .S2     _ZN9MCommandsC1Ev,B3
||         ADD     .L1X    B4,A10,A4

$C$RL11:   ; CALL OCCURS {_ZN9MCommandsC1Ev} {0} 
           MVK     .S1     3144,A3

           CALLP   .S2     _ZN9ParaEntryC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL12:   ; CALL OCCURS {_ZN9ParaEntryC1Ev} {0} 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3

           RET     .S2     B3
||         MV      .L1     A10,A4
||         LDW     .D2T1   *+SP(4),A10

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
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

$C$RL13:   ; CALL OCCURS {_ZN9CoordInfoC1Ev} {0} 
;** --------------------------------------------------------------------------*
           MVK     .S1     1344,A3

           CALLP   .S2     _ZN12AxisDataModeC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL14:   ; CALL OCCURS {_ZN12AxisDataModeC1Ev} {0} 
           MVK     .S2     1352,B4
           NOP             1

           CALLP   .S2     _ZN8FeedInfoC1Ev,B3
||         ADD     .L1X    B4,A10,A4

$C$RL15:   ; CALL OCCURS {_ZN8FeedInfoC1Ev} {0} 
           MVK     .S1     1400,A3

           CALLP   .S2     _ZN11SpindleInfoC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL16:   ; CALL OCCURS {_ZN11SpindleInfoC1Ev} {0} 
           MVK     .S2     1432,B4
           NOP             1

           CALLP   .S2     _ZN11AxisMovDataC1Ev,B3
||         ADD     .L1X    B4,A10,A4

$C$RL17:   ; CALL OCCURS {_ZN11AxisMovDataC1Ev} {0} 
           MVK     .S1     3008,A3

           CALLP   .S2     _ZN12ExtraMovDataC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL18:   ; CALL OCCURS {_ZN12ExtraMovDataC1Ev} {0} 
           MVK     .S2     3128,B4
           NOP             1

           CALLP   .S2     _ZN9MCommandsC1Ev,B3
||         ADD     .L1X    B4,A10,A4

$C$RL19:   ; CALL OCCURS {_ZN9MCommandsC1Ev} {0} 
           MVK     .S1     3144,A3

           CALLP   .S2     _ZN9ParaEntryC1Ev,B3
||         ADD     .L1     A3,A10,A4

$C$RL20:   ; CALL OCCURS {_ZN9ParaEntryC1Ev} {0} 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3

           RET     .S2     B3
||         MV      .L1     A10,A4
||         LDW     .D2T1   *+SP(4),A10

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
	.sect	".text:_ZN6NCCCmdC2Ev"
	.clink
	.global	_ZN6NCCCmdC2Ev

;******************************************************************************
;* FUNCTION NAME: NCCCmd::NCCCmd() [subobject]                                *
;*                                                                            *
;*   Regs Modified     : A3                                                   *
;*   Regs Used         : A3,A4,B3                                             *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN6NCCCmdC2Ev:
;** --------------------------------------------------------------------------*
;* 1394	-----------------------    (*this).channel_number = C$2 = 0u;  // [37]
;* 1395	-----------------------    (*this).cmd = C$2;  // [37]
;* 1396	-----------------------    (*this).cmd_extension = C$2;  // [37]
;* 1397	-----------------------    (*this).data_length = C$2;  // [37]
;**  	-----------------------    return this;
           RET     .S2     B3
           ZERO    .L1     A3                ; |1394| 
           STH     .D1T1   A3,*A4            ; |1394| 
           STH     .D1T1   A3,*+A4(2)        ; |1395| 
           STH     .D1T1   A3,*+A4(4)        ; |1396| 
           STH     .D1T1   A3,*+A4(6)        ; |1397| 
           ; BRANCH OCCURS {B3}  
	.sect	".text:_ZN22QuickMoveInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState"
	.clink
	.global	_ZN22QuickMoveInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState

;******************************************************************************
;* FUNCTION NAME: QuickMoveInterpolation::QuickMoveInterpolation(Geometry *, DynamicInfo **, int, NCCCTChannelConfig *, ChannelRealtimeState *) [subobject]*
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
_ZN22QuickMoveInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState:
;** --------------------------------------------------------------------------*
;** 30	-----------------------    InterpolationAlgorithm::InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)this, $P$T0, $P$T1, $P$T2, $P$T3, $P$T4);  // [82]
;** 30	-----------------------    (*this).__b_22InterpolationAlgorithm.__vptr = &Virtual function table for QuickMoveInterpolation[2];  // [82]
;** 31	-----------------------    QuickMoveInterpolation::SetChannelIndex(this, $P$T2, $P$T3);  // [82]
;**  	-----------------------    return this;
           STW     .D2T1   A11,*SP--(8)

           STDW    .D2T1   A13:A12,*SP--
||         MV      .L1X    B6,A11

           MV      .L1X    B3,A13
||         CALLP   .S2     _ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState,B3
||         STW     .D2T1   A10,*SP--(8)
||         MV      .S1     A4,A10
||         MV      .D1     A8,A12

$C$RL21:   ; CALL OCCURS {_ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState} {0}  ; |30| 
;** --------------------------------------------------------------------------*
           MVKL    .S1     _ZTV22QuickMoveInterpolation+8,A3

           MVKH    .S1     _ZTV22QuickMoveInterpolation+8,A3
||         MV      .L1     A10,A4

           CALLP   .S2     _ZN22QuickMoveInterpolation15SetChannelIndexEiP18NCCCTChannelConfig,B3
||         STW     .D1T1   A3,*A4            ; |30| 
||         MV      .L2X    A11,B4            ; |31| 
||         MV      .L1     A12,A6            ; |31| 

$C$RL22:   ; CALL OCCURS {_ZN22QuickMoveInterpolation15SetChannelIndexEiP18NCCCTChannelConfig} {0}  ; |31| 
;** --------------------------------------------------------------------------*

           MV      .L1     A10,A4
||         LDW     .D2T1   *++SP(8),A10
||         MV      .L2X    A13,B3

           LDDW    .D2T1   *++SP,A13:A12
||         RET     .S2     B3

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
	.sect	".text:_ZN19CircleInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState"
	.clink
	.global	_ZN19CircleInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState

;******************************************************************************
;* FUNCTION NAME: CircleInterpolation::CircleInterpolation(Geometry *, DynamicInfo **, int, NCCCTChannelConfig *, ChannelRealtimeState *) [subobject]*
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
_ZN19CircleInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState:
;** --------------------------------------------------------------------------*
;** 28	-----------------------    InterpolationAlgorithm::InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)this, $P$T10, $P$T11, $P$T12, $P$T13, $P$T14);  // [88]
;** 28	-----------------------    (*this).__b_22InterpolationAlgorithm.__vptr = &Virtual function table for CircleInterpolation[2];  // [88]
;** 28	-----------------------    (*this).kMaxIterarionCount = 30;  // [88]
;** 29	-----------------------    CircleInterpolation::SetChannelIndex(this, $P$T12, $P$T13);  // [88]
;**  	-----------------------    return this;
           STW     .D2T1   A11,*SP--(8)

           STDW    .D2T1   A13:A12,*SP--
||         MV      .L1X    B6,A11

           MV      .L1X    B3,A13
||         CALLP   .S2     _ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState,B3
||         STW     .D2T1   A10,*SP--(8)
||         MV      .S1     A4,A10
||         MV      .D1     A8,A12

$C$RL23:   ; CALL OCCURS {_ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState} {0}  ; |28| 
;** --------------------------------------------------------------------------*

           MVKL    .S2     _ZTV19CircleInterpolation+8,B4
||         MV      .L1     A10,A4
||         MVK     .S1     30,A3             ; |28| 

           MVKH    .S2     _ZTV19CircleInterpolation+8,B4
||         STW     .D1T1   A3,*+A4(48)       ; |28| 

           CALLP   .S2     _ZN19CircleInterpolation15SetChannelIndexEiP18NCCCTChannelConfig,B3
||         STW     .D1T2   B4,*A4            ; |28| 
||         MV      .L2X    A11,B4            ; |29| 
||         MV      .L1     A12,A6            ; |29| 

$C$RL24:   ; CALL OCCURS {_ZN19CircleInterpolation15SetChannelIndexEiP18NCCCTChannelConfig} {0}  ; |29| 
;** --------------------------------------------------------------------------*

           MV      .L1     A10,A4
||         LDW     .D2T1   *++SP(8),A10
||         MV      .L2X    A13,B3

           LDDW    .D2T1   *++SP,A13:A12
||         RET     .S2     B3

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
	.sect	".text:_ZN17LineInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState"
	.clink
	.global	_ZN17LineInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState

;******************************************************************************
;* FUNCTION NAME: LineInterpolation::LineInterpolation(Geometry *, DynamicInfo **, int, NCCCTChannelConfig *, ChannelRealtimeState *) [subobject]*
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
_ZN17LineInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState:
;** --------------------------------------------------------------------------*
;** 27	-----------------------    InterpolationAlgorithm::InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)this, $P$T5, $P$T6, $P$T7, $P$T8, $P$T9);  // [85]
;** 27	-----------------------    (*this).__b_22InterpolationAlgorithm.__vptr = &Virtual function table for LineInterpolation[2];  // [85]
;** 28	-----------------------    LineInterpolation::SetChannelIndex(this, $P$T7, $P$T8);  // [85]
;**  	-----------------------    return this;
           STW     .D2T1   A11,*SP--(8)

           STDW    .D2T1   A13:A12,*SP--
||         MV      .L1X    B6,A11

           MV      .L1X    B3,A13
||         CALLP   .S2     _ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState,B3
||         STW     .D2T1   A10,*SP--(8)
||         MV      .S1     A4,A10
||         MV      .D1     A8,A12

$C$RL25:   ; CALL OCCURS {_ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState} {0}  ; |27| 
;** --------------------------------------------------------------------------*
           MVKL    .S1     _ZTV17LineInterpolation+8,A3

           MVKH    .S1     _ZTV17LineInterpolation+8,A3
||         MV      .L1     A10,A4

           CALLP   .S2     _ZN17LineInterpolation15SetChannelIndexEiP18NCCCTChannelConfig,B3
||         STW     .D1T1   A3,*A4            ; |27| 
||         MV      .L2X    A11,B4            ; |28| 
||         MV      .L1     A12,A6            ; |28| 

$C$RL26:   ; CALL OCCURS {_ZN17LineInterpolation15SetChannelIndexEiP18NCCCTChannelConfig} {0}  ; |28| 
;** --------------------------------------------------------------------------*

           MV      .L1     A10,A4
||         LDW     .D2T1   *++SP(8),A10
||         MV      .L2X    A13,B3

           LDDW    .D2T1   *++SP,A13:A12
||         RET     .S2     B3

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
;** 76	-----------------------    C$11 = (*this).m_buffer;  // [93]
;** 76	-----------------------    if ( C$11 == NULL ) goto g3;  // [93]
           STW     .D2T1   A11,*SP--(8)

           STW     .D2T1   A10,*+SP(4)
||         MV      .L1     A4,A10

           LDW     .D1T1   *A10,A0           ; |76| 
           MVK     .S2     0xee8,B4          ; |77| 
           ZERO    .L2     B6                ; |77| 
           ZERO    .L1     A6                ; |77| 
           MV      .L1X    B3,A11
   [!A0]   B       .S1     $C$L1             ; |76| 
   [ A0]   CALL    .S1     __cxa_vec_delete  ; |77| 
   [!A0]   CALL    .S1     ti_sysbios_gates_GateHwi_Object__delete__S ; |441| 
           MV      .L1     A0,A4             ; |77| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L1}         ; |76| 
;** --------------------------------------------------------------------------*
;** 77	-----------------------    __cxa_vec_delete(C$11, 3816u, 0u, NULL);  // [93]
           ADDKPC  .S2     $C$RL27,B3,0      ; |77| 
$C$RL27:   ; CALL OCCURS {__cxa_vec_delete} {0}  ; |77| 
           CALL    .S1     ti_sysbios_gates_GateHwi_Object__delete__S ; |441| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L1:    
;**	-----------------------g3:
;** 441	-----------------------    ti_sysbios_gates_GateHwi_Object__delete__S(this+20);  // [15]
;** 82	-----------------------    return (void * const)this;  // [93]
           ADD     .D1     A10,20,A4         ; |441| 
           ADDKPC  .S2     $C$RL28,B3,0      ; |441| 
$C$RL28:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_Object__delete__S} {0}  ; |441| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3

           RET     .S2     B3
||         MV      .L1     A10,A4            ; |82| 
||         LDW     .D2T1   *+SP(4),A10

           LDW     .D2T1   *++SP(8),A11
           NOP             4
           ; BRANCH OCCURS {B3}  
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
;** 377	-----------------------    ti_sysbios_gates_GateHwi_Params__init__S(&prms, NULL, 24u, 8u);  // [13]
;** 429	-----------------------    R$1 = (struct i_sysbios_gates_GateHwi_Object *)ti_sysbios_gates_GateHwi_Object__create__S(NULL, 0u, NULL, &prms, 24u, NULL);  // [14]
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

$C$RL29:   ; CALL OCCURS {__cxa_vec_new} {0}  ; |50| 
;** --------------------------------------------------------------------------*
           MVK     .S2     3816,B4           ; |54| 
           MPY32   .M2     B4,B10,B5         ; |54| 
           ZERO    .L2     B4                ; |54| 
           STW     .D1T1   A4,*A10           ; |50| 
           NOP             2

           CALLP   .S2     memset,B3
||         MV      .L1X    B5,A6             ; |54| 

$C$RL30:   ; CALL OCCURS {memset} {0}        ; |54| 
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

$C$RL31:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_Params__init__S} {0}  ; |377| 
           ZERO    .L2     B4                ; |429| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_Object__create__S,B3
||         MVK     .S1     0x18,A8           ; |429| 
||         ZERO    .L2     B8                ; |429| 
||         ZERO    .L1     A4                ; |429| 
||         ZERO    .D1     A6                ; |429| 
||         ADD     .D2     4,SP,B6           ; |429| 

$C$RL32:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_Object__create__S} {0}  ; |429| 
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
;**  	-----------------------    return CircularBuffer<LineData>::CircularBuffer(this, $P$T29);
           CALLRET .S1     _ZN14CircularBufferI8LineDataEC1Ei
           NOP             5
$C$RL33:   ; CALL-RETURN OCCURS {_ZN14CircularBufferI8LineDataEC1Ei} 0 
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

$C$RL34:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |95| 
;** --------------------------------------------------------------------------*

           MV      .L1     A10,A0            ; |91| 
||         MV      .S1     A4,A12            ; |95| 
||         MV      .L2X    A13,B4            ; |91| 
||         ZERO    .D1     A10               ; |98| 

   [!A0]   BNOP    .S1     $C$L6,4           ; |101| 
|| [ A0]   LDW     .D1T1   *A11,A1           ; |101| 
|| [!A0]   MVK     .L1     0x1,A1            ; |101| nullify predicate

   [!A1]   B       .S1     $C$L6             ; |101| 
           ; BRANCHCC OCCURS {$C$L6}         ; |101| 
;** --------------------------------------------------------------------------*
;** 101	-----------------------    v$4 = (*this).m_buffer;
;** 101	-----------------------    if ( v$4 == NULL ) goto g12;
   [ A1]   LDW     .D1T1   *+A11(12),A4      ; |114| 
   [ A1]   LDW     .D1T1   *+A11(16),A8      ; |114| 
   [ A1]   LDW     .D1T1   *+A11(4),A3       ; |104| 
   [ A1]   LDW     .D1T1   *+A11(8),A5       ; |104| 
   [ A1]   MVKL    .S1     0x89645c5,A6
           ; BRANCHCC OCCURS {$C$L6}         ; |101| 
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
|| [ A1]   B       .S2     $C$L3             ; |114| 
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

           ; BRANCHCC OCCURS {$C$L3}         ; |114| 
;** --------------------------------------------------------------------------*
;** 120	-----------------------    C$14 = v$1-v$4;
;** 120	-----------------------    C$13 = C$14>>31;
;** 120	-----------------------    C$12 = (int)_hill((long long)C$14*144065989LL)>>7;
;** 120	-----------------------    if ( C$12-C$13+write_length <= v$3 ) goto g6;

           ADD     .L1     A5,A3,A3          ; |128| 
||         MPYLI   .M2X    B5,A10,B7:B6      ; |132| 
||         MV      .S1X    B5,A31            ; |130| 
||         MV      .L2     B5,B8             ; |129| 

   [!A0]   B       .S1     $C$L2             ; |120| 
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

           ; BRANCHCC OCCURS {$C$L2}         ; |120| 
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
           ADDKPC  .S2     $C$RL35,B3,0      ; |129| 
$C$RL35:   ; CALL OCCURS {memcpy} {0}        ; |129| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     memcpy,B3
||         LDW     .D1T1   *A11,A4           ; |130| 
||         MV      .L2     B13,B4            ; |130| 
||         MV      .L1     A14,A6            ; |130| 

$C$RL36:   ; CALL OCCURS {memcpy} {0}        ; |130| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *A11,B4           ; |132| 
           LDW     .D1T1   *+A11(4),A5       ; |134| 
           LDW     .D1T1   *+A11(8),A6       ; |137| 
           BNOP    .S1     $C$L4,1           ; |132| 
           ADD     .L2X    B4,A13,B5         ; |132| 
           SUB     .L2     B5,B12,B5         ; |132| 
           NOP             1

           MV      .L1X    B5,A3             ; |132| Define a twin register
||         MVK     .S2     3816,B5           ; |134| 

           ; BRANCH OCCURS {$C$L4}           ; |132| 
;** --------------------------------------------------------------------------*
$C$L2:    
;**	-----------------------g6:
;** 122	-----------------------    memcpy(v$1, (const void * const)data, write_length*3816u);
;** 123	-----------------------    v$1 = write_length*3816+(*this).m_write_pointer;
;** 123	-----------------------    v$5 = v$1;
;** 124	-----------------------    v$4 = (*this).m_buffer;
;** 124	-----------------------    goto g8;
           ADDKPC  .S2     $C$RL37,B3,0      ; |122| 
           MV      .L1     A3,A6             ; |122| 
$C$RL37:   ; CALL OCCURS {memcpy} {0}        ; |122| 
;** --------------------------------------------------------------------------*

           LDW     .D1T1   *+A11(4),A5       ; |134| 
||         MVK     .S2     3816,B5           ; |134| 

           B       .S1     $C$L5             ; |124| 
||         LDW     .D1T1   *+A11(12),A3      ; |123| 

           LDW     .D1T2   *A11,B4           ; |124| 
           LDW     .D1T1   *+A11(8),A6       ; |137| 
           MV      .L1X    B5,A4             ; |134| 

           MPYLI   .M2X    B5,A5,B7:B6       ; |134| 
||         MPYLI   .M1     A4,A5,A5:A4       ; |135| 

           ADD     .L1X    A3,B10,A3         ; |123| 
           ; BRANCH OCCURS {$C$L5}           ; |124| 
;** --------------------------------------------------------------------------*
$C$L3:    
;**	-----------------------g7:
;** 115	-----------------------    memcpy(v$1, (const void * const)data, write_length*3816u);
;** 116	-----------------------    v$1 = write_length*3816+(*this).m_write_pointer;
;** 116	-----------------------    v$5 = v$1;
;** 117	-----------------------    v$4 = (*this).m_buffer;
           ADDKPC  .S2     $C$RL38,B3,1      ; |115| 
$C$RL38:   ; CALL OCCURS {memcpy} {0}        ; |115| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A11(12),A3      ; |116| 
           LDW     .D1T1   *+A11(4),A5       ; |134| 
           LDW     .D1T2   *A11,B4           ; |117| 
           LDW     .D1T1   *+A11(8),A6       ; |137| 
           MVK     .S2     3816,B5           ; |134| 
           ADD     .L1X    A3,B10,A3         ; |116| 
;** --------------------------------------------------------------------------*
$C$L4:    
           MPYLI   .M2X    B5,A5,B7:B6       ; |134| 
           MV      .L1X    B5,A4             ; |134| 
           MPYLI   .M1     A4,A5,A5:A4       ; |135| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L5:    
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
$C$L6:    
;**	-----------------------g12:
;** 141	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);
;** 143	-----------------------    return res;

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D1T1   *+A11(20),A4      ; |141| 
||         MV      .L2X    A12,B4            ; |141| 

$C$RL39:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |141| 
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
	.sect	".text:_ZN14CircularBufferI8LineDataE4NextEv"
	.clink
	.global	_ZN14CircularBufferI8LineDataE4NextEv

;******************************************************************************
;* FUNCTION NAME: CircularBuffer<LineData>::Next()                            *
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
_ZN14CircularBufferI8LineDataE4NextEv:
;** --------------------------------------------------------------------------*
;** 365	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);
;** 367	-----------------------    if ( (v$3 = (*this).m_buffer_cur_length) <= 0 ) goto g6;
           STW     .D2T1   A11,*SP--(8)      ; |361| 

           STW     .D2T1   A10,*+SP(4)       ; |361| 
||         MV      .L1     A4,A10            ; |361| 

           MV      .L1X    B3,A11            ; |361| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(20),A4      ; |365| 

$C$RL40:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |365| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(8),A3       ; |367| 
           MVK     .S2     3816,B5           ; |368| 
           MV      .L2X    A4,B4             ; |365| 
           MV      .L1X    B5,A5             ; |367| 
           NOP             1
           CMPGT   .L1     A3,0,A0           ; |367| 

   [!A0]   BNOP    .S1     $C$L7,1           ; |367| 
|| [ A0]   LDW     .D1T1   *+A10(4),A4       ; |369| 

   [ A0]   LDW     .D1T1   *+A10(16),A9      ; |368| 
   [ A0]   LDW     .D1T1   *A10,A8           ; |369| 
           NOP             1
           MPYLI   .M1     A5,A4,A7:A6       ; |369| 
           ; BRANCHCC OCCURS {$C$L7}         ; |367| 
;** --------------------------------------------------------------------------*
;** 368	-----------------------    v$1 = (*this).m_read_pointer+3816;
;** 369	-----------------------    v$2 = (*this).m_buffer_total_length;
;** 369	-----------------------    if ( v$1 >= v$2*3816+(*this).m_buffer ) goto g4;
;**  	-----------------------    (*this).m_read_pointer = v$1;
;**  	-----------------------    goto g5;
;**	-----------------------g4:
;** 370	-----------------------    v$1 -= v$2*3816;
;** 370	-----------------------    (*this).m_read_pointer = v$1;
;**	-----------------------g5:
;** 372	-----------------------    (*this).m_buffer_cur_length = --v$3;

           MPYLI   .M1     A5,A4,A5:A4       ; |370| 
||         SUB     .L1     A3,1,A31          ; |372| 

           STW     .D1T1   A31,*+A10(8)      ; |372| 
           ADD     .L1X    B5,A9,A30         ; |368| 
           ADD     .L1     A8,A6,A6          ; |369| 

           SUB     .S1     A30,A4,A4         ; |370| 
||         CMPLTU  .L1     A30,A6,A0         ; |369| 

   [ A0]   STW     .D1T1   A30,*+A10(16)
   [!A0]   STW     .D1T1   A4,*+A10(16)      ; |370| 
;** --------------------------------------------------------------------------*
$C$L7:    
;**	-----------------------g6:
;** 375	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);
;**  	-----------------------    return;

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D1T1   *+A10(20),A4      ; |375| 

$C$RL41:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |375| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3            ; |377| 

           RET     .S2     B3                ; |377| 
||         LDW     .D2T1   *+SP(4),A10       ; |377| 

           LDW     .D2T1   *++SP(8),A11      ; |377| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |377| 
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

$C$RL42:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*

           CMPLT   .L2     B10,0,B0          ; |343| 
||         MV      .S2X    A4,B4             ; |339| 

           MV      .L2     B0,B1             ; |343| branch predicate copy
|| [!B0]   LDW     .D1T1   *+A10(8),A3       ; |343| 
|| [ B0]   B       .S1     $C$L8             ; |343| 

   [ B1]   CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |350| 
   [ B1]   LDW     .D1T1   *+A10(20),A4      ; |350| 
           ZERO    .L1     A11               ; |341| 
           NOP             1
           CMPLT   .L2X    B10,A3,B0         ; |343| 
           ; BRANCHCC OCCURS {$C$L8}         ; |343| 
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
$C$L8:    
;**	-----------------------g5:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);
;** 352	-----------------------    return pointer;
           ADDKPC  .S2     $C$RL43,B3,0      ; |350| 
$C$RL43:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *++SP(8),A10      ; |353| 
||         MV      .L2     B11,B3            ; |353| 

           LDDW    .D2T2   *++SP,B11:B10     ; |353| 
||         RET     .S2     B3                ; |353| 

           MV      .L1     A11,A4            ; |352| 
||         LDW     .D2T1   *++SP(8),A11      ; |353| 

           NOP             4
           ; BRANCH OCCURS {B3}              ; |353| 
	.sect	".text:_ZN14CircularBufferI8LineDataE10InsertDataEPKS0_i"
	.clink
	.global	_ZN14CircularBufferI8LineDataE10InsertDataEPKS0_i

;******************************************************************************
;* FUNCTION NAME: CircularBuffer<LineData>::InsertData(const LineData *, int) *
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
_ZN14CircularBufferI8LineDataE10InsertDataEPKS0_i:
;** --------------------------------------------------------------------------*
;** 157	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);
;** 160	-----------------------    res = 0;
;** 163	-----------------------    if ( !data_length ) goto g11;
           STW     .D2T2   B13,*SP--(8)      ; |153| 
           STDW    .D2T2   B11:B10,*SP--     ; |153| 
           STDW    .D2T1   A13:A12,*SP--     ; |153| 

           STDW    .D2T1   A11:A10,*SP--     ; |153| 
||         MV      .L1     A4,A11            ; |153| 

           MV      .L2     B3,B13            ; |153| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A11(20),A4      ; |157| 
||         MV      .L1     A6,A10            ; |153| 
||         MV      .S1X    B4,A13            ; |153| 

$C$RL44:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |157| 
;** --------------------------------------------------------------------------*

           MV      .L1     A10,A0            ; |153| 
||         MV      .S1     A4,A12            ; |157| 
||         MV      .L2X    A13,B4            ; |153| 
||         ZERO    .D1     A10               ; |160| 

   [!A0]   BNOP    .S1     $C$L12,4          ; |163| 
|| [ A0]   LDW     .D1T1   *A11,A1           ; |163| 
|| [!A0]   MVK     .L1     0x1,A1            ; |163| nullify predicate

   [!A1]   B       .S1     $C$L12            ; |163| 
           ; BRANCHCC OCCURS {$C$L12}        ; |163| 
;** --------------------------------------------------------------------------*
;** 163	-----------------------    v$1 = (*this).m_buffer;
;** 163	-----------------------    if ( v$1 == NULL ) goto g11;
   [ A1]   LDW     .D1T1   *+A11(16),A8      ; |176| 
   [ A1]   LDW     .D1T1   *+A11(8),A3       ; |166| 
   [ A1]   LDW     .D1T1   *+A11(4),A7       ; |166| 
   [ A1]   LDW     .D1T2   *+A11(12),B8      ; |176| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L12}        ; |163| 
;** --------------------------------------------------------------------------*
;** 166	-----------------------    v$4 = (*this).m_buffer_total_length;
;** 166	-----------------------    C$16 = v$4-(*this).m_buffer_cur_length;
;** 167	-----------------------    (data_length < C$16) ? (write_length = data_length) : (write_length = C$16);
;** 176	-----------------------    v$2 = (*this).m_read_pointer;
;** 176	-----------------------    if ( (*this).m_write_pointer < v$2 ) goto g7;

           MVKL    .S2     0x89645c5,B5
||         SUB     .L1     A8,A1,A6          ; |182| 
||         MV      .D1     A0,A10            ; |167| 
||         MVK     .S1     3816,A4           ; |177| 

           MVKH    .S2     0x89645c5,B5
||         MVK     .S1     3816,A31          ; |178| 

           SUB     .L1     A7,A3,A3          ; |166| 
||         MPY32US .M2X    B5,A6,B7:B6       ; |182| 

           CMPLT   .L1     A0,A3,A0          ; |167| 

   [!A0]   MV      .D1     A3,A10            ; |167| 
||         CMPLTU  .L1X    B8,A8,A2          ; |176| 
||         SHR     .S1     A6,31,A3          ; |182| 

           MPYLI   .M1     A4,A10,A5:A4      ; |177| 
|| [ A2]   B       .S1     $C$L10            ; |176| 

   [ A2]   CALL    .S1     memcpy            ; |178| 
||         MPY32   .M1     A31,A10,A6        ; |178| 

           SHR     .S2     B7,7,B5           ; |182| 
   [!A2]   SUB     .L2X    A10,B5,B6         ; |189| 

           SUB     .L1X    B5,A3,A5          ; |182| 
||         SUB     .S1     A8,A4,A4          ; |177| 

           CMPLT   .L1     A5,A10,A0         ; |182| 
|| [!A2]   ADD     .S1X    A3,B6,A6          ; |189| 
|| [!A2]   MVK     .S2     3816,B6           ; |190| 

           ; BRANCHCC OCCURS {$C$L10}        ; |176| 
;** --------------------------------------------------------------------------*
;** 182	-----------------------    C$15 = v$2-v$1;
;** 182	-----------------------    C$14 = C$15>>31;
;** 182	-----------------------    C$13 = (int)_hill((long long)C$15*144065989LL)>>7;
;** 182	-----------------------    if ( C$13-C$14 >= write_length ) goto g6;

           SUB     .L1X    A10,B5,A31        ; |190| 
||         MV      .L2     B6,B31            ; |190| 
||         MPYLI   .M2X    B6,A7,B9:B8       ; |190| 
||         MVK     .S1     3816,A30          ; |184| 

           MV      .L1X    B6,A4             ; |190| 
||         ADD     .S1     A3,A31,A3         ; |190| 
||         MPY32   .M2X    B31,A6,B5         ; |191| 

           MPY32   .M1     A4,A10,A9         ; |192| 
||         MV      .L1X    B6,A7             ; |190| 

           MV      .L1X    B6,A5             ; |190| 
||         MPYLI   .M2X    B31,A6,B7:B6      ; |192| 
||         MPYLI   .M1     A7,A3,A7:A6       ; |190| 
|| [!A0]   B       .S1     $C$L9             ; |182| 

           MPYLI   .M1     A5,A10,A5:A4      ; |183| 
           ADD     .L1X    A1,B8,A3          ; |190| 
   [ A0]   CALL    .S1     memcpy            ; |191| 

           SUB     .L2X    A9,B5,B10         ; |192| 
||         ADD     .S2     B4,B6,B11         ; |192| 
|| [!A0]   CALL    .S1     memcpy            ; |184| 

           SUB     .L1     A8,A4,A5          ; |183| 
||         SUB     .S1     A3,A6,A4          ; |190| 
||         MV      .D1X    B5,A6             ; |191| 
||         MPY32   .M1     A30,A10,A3        ; |184| 

           ; BRANCHCC OCCURS {$C$L9}         ; |182| 
;** --------------------------------------------------------------------------*
;** 189	-----------------------    split_length = write_length-C$13+C$14;
;** 190	-----------------------    v$2 = &v$1[v$4-write_length-C$13+C$14];
;** 190	-----------------------    (*this).m_read_pointer = v$2;
;** 191	-----------------------    C$12 = split_length*3816u;
;** 191	-----------------------    memcpy(v$2, (const void * const)data, C$12);
;** 192	-----------------------    memcpy((*this).m_buffer, split_length*3816+data, write_length*3816u-C$12);
;** 192	-----------------------    goto g8;
           ADDKPC  .S2     $C$RL45,B3,1      ; |191| 
           STW     .D1T1   A4,*+A11(16)      ; |190| 
$C$RL45:   ; CALL OCCURS {memcpy} {0}        ; |191| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     memcpy,B3
||         LDW     .D1T1   *A11,A4           ; |192| 
||         MV      .L2     B11,B4            ; |192| 
||         MV      .L1X    B10,A6            ; |192| 

$C$RL46:   ; CALL OCCURS {memcpy} {0}        ; |192| 
;** --------------------------------------------------------------------------*

           BNOP    .S2     $C$L11,1          ; |192| 
||         LDW     .D1T1   *+A11(4),A4       ; |195| 
||         MVK     .S1     3816,A3           ; |195| 

           LDW     .D1T1   *A11,A6           ; |195| 
           LDW     .D1T1   *+A11(8),A7       ; |198| 
           LDW     .D1T1   *+A11(12),A31     ; |195| 
           MPYLI   .M1     A3,A4,A5:A4       ; |195| 
           ; BRANCH OCCURS {$C$L11}          ; |192| 
;** --------------------------------------------------------------------------*
$C$L9:    
;**	-----------------------g6:
;** 183	-----------------------    v$2 -= write_length*3816;
;** 183	-----------------------    (*this).m_read_pointer = v$2;
;** 184	-----------------------    memcpy(v$2, (const void * const)data, write_length*3816u);
;** 185	-----------------------    goto g8;
           ADDKPC  .S2     $C$RL47,B3,2      ; |184| 

           MV      .L1     A5,A4             ; |184| 
||         STW     .D1T1   A5,*+A11(16)      ; |183| 
||         MV      .S1     A3,A6             ; |184| 

$C$RL47:   ; CALL OCCURS {memcpy} {0}        ; |184| 
;** --------------------------------------------------------------------------*

           BNOP    .S2     $C$L11,1          ; |185| 
||         LDW     .D1T1   *+A11(4),A4       ; |195| 
||         MVK     .S1     3816,A3           ; |195| 

           LDW     .D1T1   *A11,A6           ; |195| 
           LDW     .D1T1   *+A11(8),A7       ; |198| 
           LDW     .D1T1   *+A11(12),A31     ; |195| 
           MPYLI   .M1     A3,A4,A5:A4       ; |195| 
           ; BRANCH OCCURS {$C$L11}          ; |185| 
;** --------------------------------------------------------------------------*
$C$L10:    
;**	-----------------------g7:
;** 177	-----------------------    v$2 -= write_length*3816;
;** 177	-----------------------    (*this).m_read_pointer = v$2;
;** 178	-----------------------    memcpy(v$2, (const void * const)data, write_length*3816u);

           STW     .D1T1   A4,*+A11(16)      ; |177| 
||         ADDKPC  .S2     $C$RL48,B3,0      ; |178| 

$C$RL48:   ; CALL OCCURS {memcpy} {0}        ; |178| 
           LDW     .D1T1   *+A11(4),A4       ; |195| 
           MVK     .S1     3816,A3           ; |195| 
           LDW     .D1T1   *+A11(8),A7       ; |198| 
           LDW     .D1T1   *+A11(12),A31     ; |195| 
           LDW     .D1T1   *A11,A6           ; |195| 
           MPYLI   .M1     A3,A4,A5:A4       ; |195| 
;** --------------------------------------------------------------------------*
$C$L11:    
;**	-----------------------g8:
;** 195	-----------------------    C$11 = _mpyli(3816, (*this).m_buffer_total_length);
;** 195	-----------------------    C$10 = (*this).m_write_pointer;
;** 195	-----------------------    if ( C$10 < _lo(C$11)+(*this).m_buffer ) goto g10;
;** 196	-----------------------    (*this).m_write_pointer = C$10-(int)_lo(C$11);
;**	-----------------------g10:
;** 198	-----------------------    (*this).m_buffer_cur_length = (*this).m_buffer_cur_length+write_length;
;** 199	-----------------------    res = write_length;
           NOP             2
           ADD     .L1     A10,A7,A30        ; |198| 

           ADD     .L1     A6,A4,A5          ; |195| 
||         SUB     .S1     A31,A4,A3         ; |196| 
||         STW     .D1T1   A30,*+A11(8)      ; |198| 

           CMPLTU  .L1     A31,A5,A0         ; |195| 
   [!A0]   STW     .D1T1   A3,*+A11(12)      ; |196| 
;** --------------------------------------------------------------------------*
$C$L12:    
;**	-----------------------g11:
;** 202	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);
;** 204	-----------------------    return res;

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D1T1   *+A11(20),A4      ; |202| 
||         MV      .L2X    A12,B4            ; |202| 

$C$RL49:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |202| 
;** --------------------------------------------------------------------------*

           MV      .L1     A10,A4            ; |204| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |205| 

           LDDW    .D2T1   *++SP,A13:A12     ; |205| 
||         MV      .L2     B13,B3            ; |205| 

           LDDW    .D2T2   *++SP,B11:B10     ; |205| 
||         RET     .S2     B3                ; |205| 

           LDW     .D2T2   *++SP(8),B13      ; |205| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |205| 
	.sect	".text"
	.clink
	.global	_ZN13InterpolationD1Ev

;******************************************************************************
;* FUNCTION NAME: Interpolation::~Interpolation()                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,   *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B13,DP,SP,A16,A17,A18,A19,*
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************
_ZN13InterpolationD1Ev:
;** --------------------------------------------------------------------------*
;** 43	-----------------------    C$24 = (*this).m_auto_buffer;
;** 43	-----------------------    if ( C$24 == NULL ) goto g5;
           STW     .D2T2   B13,*SP--(8)      ; |38| 
           STDW    .D2T2   B11:B10,*SP--     ; |38| 

           STDW    .D2T1   A11:A10,*SP--     ; |38| 
||         MV      .L1     A4,A10            ; |38| 

           LDW     .D1T1   *+A10(52),A0      ; |43| 
           MV      .L2     B3,B13            ; |38| 
           NOP             3

           MV      .L1     A0,A11            ; |44| 
|| [!A0]   B       .S1     $C$L14            ; |43| 
||         MV      .D1     A0,A1             ; branch predicate copy

   [ A0]   LDW     .D1T1   *A11,A0           ; |76| 
   [!A1]   LDW     .D1T1   *+A10(56),A0      ; |47| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L14}        ; |43| 
;** --------------------------------------------------------------------------*
;** 44	-----------------------    this = C$24;
;** 76	-----------------------    C$23 = (*this).m_buffer;  // [93]
;** 76	-----------------------    if ( C$23 == NULL ) goto g4;  // [93]

           MV      .L1     A0,A4             ; |77| 
|| [!A0]   B       .S1     $C$L13            ; |76| 

   [ A0]   CALL    .S1     __cxa_vec_delete  ; |77| 
   [!A0]   CALL    .S1     ti_sysbios_gates_GateHwi_Object__delete__S ; |441| 
           MVK     .S2     0xee8,B4          ; |77| 
           ZERO    .L2     B6                ; |77| 
           ZERO    .L1     A6                ; |77| 
           ; BRANCHCC OCCURS {$C$L13}        ; |76| 
;** --------------------------------------------------------------------------*
;** 77	-----------------------    __cxa_vec_delete(C$23, 3816u, 0u, NULL);  // [93]
           ADDKPC  .S2     $C$RL50,B3,0      ; |77| 
$C$RL50:   ; CALL OCCURS {__cxa_vec_delete} {0}  ; |77| 
           CALL    .S1     ti_sysbios_gates_GateHwi_Object__delete__S ; |441| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L13:    
;**	-----------------------g4:
;** 441	-----------------------    ti_sysbios_gates_GateHwi_Object__delete__S(this+20);  // [15]
;** 44	-----------------------    operator delete ((void *)this);
;** 45	-----------------------    (*this).m_auto_buffer = NULL;
           ADD     .D1     A11,20,A4         ; |441| 
           ADDKPC  .S2     $C$RL51,B3,0      ; |441| 
$C$RL51:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_Object__delete__S} {0}  ; |441| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZdlPv,B3
||         MV      .L1     A11,A4            ; |44| 

$C$RL52:   ; CALL OCCURS {_ZdlPv} {0}        ; |44| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(56),A0      ; |47| 
           ZERO    .L1     A3                ; |45| 
           STW     .D1T1   A3,*+A10(52)      ; |45| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L14:    
;**	-----------------------g5:
;** 47	-----------------------    C$22 = (*this).m_non_auto_buffer;
;** 47	-----------------------    if ( C$22 == NULL ) goto g9;
           NOP             1

   [!A0]   B       .S1     $C$L16            ; |47| 
||         MV      .L1     A0,A11            ; |48| 
||         MV      .D1     A0,A1             ; branch predicate copy

   [ A0]   LDW     .D1T1   *A11,A0           ; |76| 
   [!A1]   LDW     .D1T1   *+A10(88),A0      ; |53| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L16}        ; |47| 
;** --------------------------------------------------------------------------*
;** 48	-----------------------    this = C$22;
;** 76	-----------------------    C$21 = (*this).m_buffer;  // [93]
;** 76	-----------------------    if ( C$21 == NULL ) goto g8;  // [93]

           MV      .L1     A0,A4             ; |77| 
|| [!A0]   B       .S1     $C$L15            ; |76| 

   [ A0]   CALL    .S1     __cxa_vec_delete  ; |77| 
   [!A0]   CALL    .S1     ti_sysbios_gates_GateHwi_Object__delete__S ; |441| 
           MVK     .S2     0xee8,B4          ; |77| 
           ZERO    .L2     B6                ; |77| 
           ZERO    .L1     A6                ; |77| 
           ; BRANCHCC OCCURS {$C$L15}        ; |76| 
;** --------------------------------------------------------------------------*
;** 77	-----------------------    __cxa_vec_delete(C$21, 3816u, 0u, NULL);  // [93]
           ADDKPC  .S2     $C$RL53,B3,0      ; |77| 
$C$RL53:   ; CALL OCCURS {__cxa_vec_delete} {0}  ; |77| 
           CALL    .S1     ti_sysbios_gates_GateHwi_Object__delete__S ; |441| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L15:    
;**	-----------------------g8:
;** 441	-----------------------    ti_sysbios_gates_GateHwi_Object__delete__S(this+20);  // [15]
;** 48	-----------------------    operator delete ((void *)this);
;** 49	-----------------------    (*this).m_non_auto_buffer = NULL;
           ADD     .D1     A11,20,A4         ; |441| 
           ADDKPC  .S2     $C$RL54,B3,0      ; |441| 
$C$RL54:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_Object__delete__S} {0}  ; |441| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZdlPv,B3
||         MV      .L1     A11,A4            ; |48| 

$C$RL55:   ; CALL OCCURS {_ZdlPv} {0}        ; |48| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(88),A0      ; |53| 
           ZERO    .L1     A3                ; |49| 
           STW     .D1T1   A3,*+A10(56)      ; |49| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L16:    
;**	-----------------------g9:
;** 51	-----------------------    (*this).m_data_buffer = C$19 = NULL;
;** 53	-----------------------    C$20 = (*this).m_data;
;** 53	-----------------------    if ( C$20 == NULL ) goto g11;
           ZERO    .L1     A11               ; |51| 

   [!A0]   B       .S1     $C$L17            ; |53| 
||         MV      .L1     A0,A4             ; |54| 

   [ A0]   CALL    .S1     _ZdlPv            ; |54| 
|| [!A0]   LDW     .D1T1   *+A10(92),A0      ; |57| 

           STW     .D1T1   A11,*+A10(44)     ; |51| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L17}        ; |53| 
;** --------------------------------------------------------------------------*
;** 54	-----------------------    operator delete (C$20);
;** 55	-----------------------    (*this).m_data = (struct ineData *)C$19;
           ADDKPC  .S2     $C$RL56,B3,0      ; |54| 
$C$RL56:   ; CALL OCCURS {_ZdlPv} {0}        ; |54| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(92),A0      ; |57| 
           STW     .D1T1   A11,*+A10(88)     ; |55| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L17:    
;**	-----------------------g11:
;** 57	-----------------------    C$18 = (*this).m_geometry;
;** 57	-----------------------    if ( C$18 == NULL ) goto g13;

   [!A0]   B       .S1     $C$L18            ; |57| 
||         MV      .L1     A0,A4             ; |58| 

   [ A0]   CALL    .S1     _ZdlPv            ; |58| 
|| [!A0]   LDW     .D1T1   *+A10(96),A0      ; |61| 

           MV      .L2X    A11,B10           ; |57| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L18}        ; |57| 
;** --------------------------------------------------------------------------*
;** 58	-----------------------    operator delete (C$18);
;** 59	-----------------------    (*this).m_geometry = NULL;
           ADDKPC  .S2     $C$RL57,B3,0      ; |58| 
$C$RL57:   ; CALL OCCURS {_ZdlPv} {0}        ; |58| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(96),A0      ; |61| 
           STW     .D1T2   B10,*+A10(92)     ; |59| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L18:    
;**	-----------------------g13:
;** 61	-----------------------    if ( (*this).m_dynamic_info == NULL ) goto g18;

   [!A0]   BNOP    .S1     $C$L21,4          ; |61| 
|| [ A0]   LDW     .D1T1   *+A10(96),A3      ; |63| 

           ADD     .L2X    B10,A3,B4         ; |63| 
           ; BRANCHCC OCCURS {$C$L21}        ; |61| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$36 = 0;
;** 62	-----------------------    i = 0u;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L19:    
;**	-----------------------g15:
;** 63	-----------------------    C$17 = *((*this).m_dynamic_info+U$36);
;** 63	-----------------------    if ( C$17 == NULL ) goto g17;
           LDW     .D2T2   *B4,B0            ; |63| 
           NOP             4
   [!B0]   B       .S1     $C$L20            ; |63| 
   [ B0]   CALL    .S1     _ZdlPv            ; |64| 
           NOP             4
           ; BRANCHCC OCCURS {$C$L20}        ; |63| 
;** --------------------------------------------------------------------------*
;** 64	-----------------------    operator delete (C$17);
;** 65	-----------------------    *((*this).m_dynamic_info+U$36) = NULL;

           MV      .L1X    B0,A4             ; |64| 
||         ADDKPC  .S2     $C$RL58,B3,0      ; |64| 

$C$RL58:   ; CALL OCCURS {_ZdlPv} {0}        ; |64| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(96),A3      ; |65| 
           ZERO    .L2     B5                ; |65| 
           NOP             3
           ADD     .L2X    B10,A3,B4         ; |65| 
           STW     .D2T2   B5,*B4            ; |65| 
;** --------------------------------------------------------------------------*
$C$L20:    
;**	-----------------------g17:
;** 62	-----------------------    U$36 += 4;
;** 62	-----------------------    if ( (unsigned)(*(*this).m_channel_config).axis_number >= (++i) ) goto g15;
           LDW     .D1T1   *+A10(16),A3      ; |62| 
           ADD     .L2     4,B10,B10         ; |62| 
           ADD     .L1     1,A11,A11         ; |62| 
           NOP             2
           LDBU    .D1T1   *+A3(2),A3        ; |62| 
           NOP             4
           CMPLTU  .L1     A3,A11,A0         ; |62| 

   [!A0]   BNOP    .S1     $C$L19,4          ; |62| 
|| [!A0]   LDW     .D1T1   *+A10(96),A3      ; |63| 

           ADD     .L2X    B10,A3,B4         ; |63| 
           ; BRANCHCC OCCURS {$C$L19}        ; |62| 
;** --------------------------------------------------------------------------*
$C$L21:    
;**	-----------------------g18:
;** 69	-----------------------    C$16 = (*this).m_axis_manual_move_mod;
;** 69	-----------------------    if ( C$16 == NULL ) goto g20;
           MVK     .S1     17052,A3          ; |69| 
           ADD     .L1     A3,A10,A3         ; |69| 
           LDW     .D1T1   *A3,A0            ; |69| 
           NOP             4

   [!A0]   B       .S1     $C$L22            ; |69| 
||         MV      .L1     A0,A4             ; |70| 

   [ A0]   CALL    .S1     _ZdaPv            ; |70| 
|| [!A0]   LDW     .D1T1   *+A10(104),A0     ; |72| 

           NOP             4
           ; BRANCHCC OCCURS {$C$L22}        ; |69| 
;** --------------------------------------------------------------------------*
;** 70	-----------------------    operator delete[] (C$16);
           ADDKPC  .S2     $C$RL59,B3,0      ; |70| 
$C$RL59:   ; CALL OCCURS {_ZdaPv} {0}        ; |70| 
           LDW     .D1T1   *+A10(104),A0     ; |72| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L22:    
;**	-----------------------g20:
;** 72	-----------------------    C$15 = (*this).m_quick_move_interpolation;
;** 72	-----------------------    if ( C$15 == NULL ) goto g22;

   [!A0]   BNOP    .S1     $C$L23,4          ; |72| 
|| [ A0]   LDW     .D1T1   *A0,A3            ; |73| 
||         ZERO    .L2     B10               ; |74| 
||         MV      .L1     A0,A4             ; |73| 

   [ A0]   LDW     .D1T1   *+A3(4),A3        ; |73| 
           ; BRANCHCC OCCURS {$C$L23}        ; |72| 
;** --------------------------------------------------------------------------*
;** 73	-----------------------    (*(void (*)())*((*C$15).__b_22InterpolationAlgorithm.__vptr+4))(C$15);
;** 74	-----------------------    (*this).m_quick_move_interpolation = NULL;
           NOP             4
           CALL    .S2X    A3                ; |73| 
           ADDKPC  .S2     $C$RL60,B3,4      ; |73| 
$C$RL60:   ; CALL OCCURS {A3} {0}            ; |73| 
;** --------------------------------------------------------------------------*
           STW     .D1T2   B10,*+A10(104)    ; |74| 
;** --------------------------------------------------------------------------*
$C$L23:    
;**	-----------------------g22:
;** 76	-----------------------    C$14 = (*this).m_line_interpolation;
;** 76	-----------------------    if ( C$14 == NULL ) goto g24;
           LDW     .D1T1   *+A10(108),A0     ; |76| 
           NOP             4

   [!A0]   BNOP    .S1     $C$L24,4          ; |76| 
|| [ A0]   LDW     .D1T1   *A0,A3            ; |77| 
||         MV      .L1     A0,A4             ; |77| 

   [ A0]   LDW     .D1T1   *+A3(4),A3        ; |77| 
           ; BRANCHCC OCCURS {$C$L24}        ; |76| 
;** --------------------------------------------------------------------------*
;** 77	-----------------------    (*(void (*)())*((*C$14).__b_22InterpolationAlgorithm.__vptr+4))(C$14);
;** 78	-----------------------    (*this).m_line_interpolation = NULL;
           NOP             4
           CALL    .S2X    A3                ; |77| 
           ADDKPC  .S2     $C$RL61,B3,4      ; |77| 
$C$RL61:   ; CALL OCCURS {A3} {0}            ; |77| 
;** --------------------------------------------------------------------------*
           STW     .D1T2   B10,*+A10(108)    ; |78| 
;** --------------------------------------------------------------------------*
$C$L24:    
;**	-----------------------g24:
;** 80	-----------------------    C$13 = (*this).m_circle_interpolation;
;** 80	-----------------------    if ( C$13 == NULL ) goto g26;
           LDW     .D1T1   *+A10(112),A0     ; |80| 
           NOP             4

   [!A0]   BNOP    .S1     $C$L25,4          ; |80| 
|| [ A0]   LDW     .D1T1   *A0,A3            ; |81| 
||         MV      .L1     A0,A4             ; |81| 

   [ A0]   LDW     .D1T1   *+A3(4),A3        ; |81| 
           ; BRANCHCC OCCURS {$C$L25}        ; |80| 
;** --------------------------------------------------------------------------*
;** 81	-----------------------    (*(void (*)())*((*C$13).__b_22InterpolationAlgorithm.__vptr+4))(C$13);
;** 82	-----------------------    (*this).m_circle_interpolation = NULL;
           NOP             4
           CALL    .S2X    A3                ; |81| 
           ADDKPC  .S2     $C$RL62,B3,4      ; |81| 
$C$RL62:   ; CALL OCCURS {A3} {0}            ; |81| 
;** --------------------------------------------------------------------------*
           STW     .D1T2   B10,*+A10(112)    ; |82| 
;** --------------------------------------------------------------------------*
$C$L25:    
;**	-----------------------g26:
;** 84	-----------------------    C$12 = (*this).m_last_step_mode;
;** 84	-----------------------    if ( C$12 == NULL ) goto g28;
           MVK     .S1     17056,A3          ; |84| 
           ADD     .L1     A3,A10,A3         ; |84| 
           LDW     .D1T1   *A3,A0            ; |84| 
           ZERO    .L2     B11               ; |86| 
           MVK     .S2     17056,B4          ; |86| 
           ADD     .L2X    B4,A10,B10        ; |86| 
           NOP             1
   [!A0]   B       .S1     $C$L26            ; |84| 
   [ A0]   CALL    .S1     _ZdaPv            ; |85| 
   [!A0]   CALL    .S1     ti_sysbios_gates_GateHwi_Object__delete__S ; |441| 
           MV      .L1     A0,A4             ; |85| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L26}        ; |84| 
;** --------------------------------------------------------------------------*
;** 85	-----------------------    operator delete[] (C$12);
;** 86	-----------------------    (*this).m_last_step_mode = NULL;
           ADDKPC  .S2     $C$RL63,B3,0      ; |85| 
$C$RL63:   ; CALL OCCURS {_ZdaPv} {0}        ; |85| 
;** --------------------------------------------------------------------------*
           CALL    .S1     ti_sysbios_gates_GateHwi_Object__delete__S ; |441| 
           STW     .D2T2   B11,*B10          ; |86| 
           NOP             2
;** --------------------------------------------------------------------------*
$C$L26:    
;**	-----------------------g28:
;** 441	-----------------------    ti_sysbios_gates_GateHwi_Object__delete__S((struct i_sysbios_gates_GateHwi_Object ** const)this+28);  // [15]
;** 93	-----------------------    return this;
           ADD     .D1     A10,28,A4         ; |441| 
           ADDKPC  .S2     $C$RL64,B3,0      ; |441| 
$C$RL64:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_Object__delete__S} {0}  ; |441| 
;** --------------------------------------------------------------------------*

           MV      .L1     A10,A4            ; |93| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |93| 
||         MV      .L2     B13,B3            ; |93| 

           LDDW    .D2T2   *++SP,B11:B10     ; |93| 
||         RET     .S2     B3                ; |93| 

           LDW     .D2T2   *++SP(8),B13      ; |93| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |93| 
	.sect	".text:_ZN13InterpolationD2Ev"
	.clink
	.global	_ZN13InterpolationD2Ev

;******************************************************************************
;* FUNCTION NAME: Interpolation::~Interpolation() [subobject]                 *
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
_ZN13InterpolationD2Ev:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return Interpolation::~Interpolation(this);
           CALLRET .S1     _ZN13InterpolationD1Ev
           NOP             5
$C$RL65:   ; CALL-RETURN OCCURS {_ZN13InterpolationD1Ev} 0 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation15SetChannelIndexEiP18NCCCTChannelConfig

;******************************************************************************
;* FUNCTION NAME: Interpolation::SetChannelIndex(int, NCCCTChannelConfig *)   *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : A4,A6,B3,B4                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN13Interpolation15SetChannelIndexEiP18NCCCTChannelConfig:
;** --------------------------------------------------------------------------*
;* 1546	-----------------------    (*this).m_channel_index = channel_index;
;* 1547	-----------------------    (*this).m_channel_config = channel_config;
;**  	-----------------------    return;
           RETNOP  .S2     B3,3              ; |1548| 
           STB     .D1T2   B4,*+A4(12)       ; |1546| 
           STW     .D1T1   A6,*+A4(16)       ; |1547| 
           ; BRANCH OCCURS {B3}              ; |1548| 
	.sect	".text"
	.clink
	.global	_ZN13InterpolationC1EtP18NCCCTChannelConfigP17NCCCTChannelStateP20ChannelRealtimeStatePFiP8LineDataPvEPFvhdS8_ES8_

;******************************************************************************
;* FUNCTION NAME: Interpolation::Interpolation(unsigned short, NCCCTChannelConfig *, NCCCTChannelState *, ChannelRealtimeState *, int (*)(LineData *, void *), void (*)(unsigned char, double, void *), void *)*
;*                                                                            *
;*   Regs Modified     : B4,B5                                                *
;*   Regs Used         : A4,A6,A8,A10,B3,B4,B5,B6,B8,B10                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN13InterpolationC1EtP18NCCCTChannelConfigP17NCCCTChannelStateP20ChannelRealtimeStatePFiP8LineDataPvEPFvhdS8_ES8_:
;** --------------------------------------------------------------------------*
;* 1394	-----------------------    C$1 = (unsigned short * const)this+664;  // [37]
;* 1394	-----------------------    *C$1 = C$2 = 0u;  // [37]
;* 1395	-----------------------    C$1[1] = C$2;  // [37]
;* 1396	-----------------------    C$1[2] = C$2;  // [37]
;* 1397	-----------------------    C$1[3] = C$2;  // [37]
;** 29	-----------------------    (*this).OutputData = output_data;
;** 30	-----------------------    (*this).SetPosInMachining = set_pos;
;** 31	-----------------------    (*this).m_owner_ptr = arg1;
;* 1546	-----------------------    (*this).m_channel_index = channel_index;  // [77]
;* 1547	-----------------------    (*this).m_channel_config = channel_config;  // [77]
;** 33	-----------------------    (*this).m_channel_state = channel_state;
;** 34	-----------------------    (*this).m_realtime_state = realtime_state;
;** 36	-----------------------    return this;
           STB     .D1T2   B4,*+A4(12)       ; |1546| 

           STW     .D1T2   B10,*+A4(8)       ; |31| 
||         MVK     .S2     664,B4            ; |1394| 

           RET     .S2     B3                ; |36| 
||         STW     .D1T2   B8,*A4            ; |29| 

           STW     .D1T2   B6,*+A4(20)       ; |33| 
||         ADD     .L2X    B4,A4,B4          ; |1394| 
||         ZERO    .S2     B5                ; |1394| 

           STH     .D2T2   B5,*B4            ; |1394| 

           STH     .D2T2   B5,*+B4(2)        ; |1395| 
||         STW     .D1T1   A10,*+A4(4)       ; |30| 

           STH     .D2T2   B5,*+B4(4)        ; |1396| 
||         STW     .D1T1   A6,*+A4(16)       ; |1547| 

           STH     .D2T2   B5,*+B4(6)        ; |1397| 
||         STW     .D1T1   A8,*+A4(24)       ; |34| 

           ; BRANCH OCCURS {B3}              ; |36| 
	.sect	".text:_ZN13InterpolationC2EtP18NCCCTChannelConfigP17NCCCTChannelStateP20ChannelRealtimeStatePFiP8LineDataPvEPFvhdS8_ES8_"
	.clink
	.global	_ZN13InterpolationC2EtP18NCCCTChannelConfigP17NCCCTChannelStateP20ChannelRealtimeStatePFiP8LineDataPvEPFvhdS8_ES8_

;******************************************************************************
;* FUNCTION NAME: Interpolation::Interpolation(unsigned short, NCCCTChannelConfig *, NCCCTChannelState *, ChannelRealtimeState *, int (*)(LineData *, void *), void (*)(unsigned char, double, void *), void *) [subobject]*
;*                                                                            *
;*   Regs Modified     : A0,A4,B3,B4,B5,B30,B31                               *
;*   Regs Used         : A0,A4,A6,A8,A10,B3,B4,B5,B6,B8,B10,SP,B30,B31        *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN13InterpolationC2EtP18NCCCTChannelConfigP17NCCCTChannelStateP20ChannelRealtimeStatePFiP8LineDataPvEPFvhdS8_ES8_:
;** --------------------------------------------------------------------------*
;**  	-----------------------    return Interpolation::Interpolation(this, $P$T15, $P$T16, $P$T17, $P$T18, $P$T19, $P$T20, $P$T21);

           MV      .L1X    B3,A0
||         CALLP   .S2     _ZN13InterpolationC1EtP18NCCCTChannelConfigP17NCCCTChannelStateP20ChannelRealtimeStatePFiP8LineDataPvEPFvhdS8_ES8_,B3

$C$RL66:   ; CALL OCCURS {_ZN13InterpolationC1EtP18NCCCTChannelConfigP17NCCCTChannelStateP20ChannelRealtimeStatePFiP8LineDataPvEPFvhdS8_ES8_} {0} 
;** --------------------------------------------------------------------------*
           RETNOP  .S2X    A0,5
           ; BRANCH OCCURS {A0}  
	.sect	".text"
	.clink
	.global	_ZN13Interpolation9SetCurPosEtd

;******************************************************************************
;* FUNCTION NAME: Interpolation::SetCurPos(unsigned short, double)            *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,A8,B6,B7                              *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,B3,B4,B6,B7                        *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN13Interpolation9SetCurPosEtd:
;** --------------------------------------------------------------------------*
;** 318	-----------------------    *(((int)axis_index<<3)+(*this).m_data+1440) = cur_pos;
;** 319	-----------------------    *(((int)axis_index<<3)+(*this).m_geometry) = cur_pos;
;** 320	-----------------------    (**((*this).m_trajectory_index*4+(*this).m_dynamic_info)).current_l = 0.0;
;** 321	-----------------------    *(((int)axis_index<<3)+&pos) = cur_pos;
;**  	-----------------------    return;
           LDW     .D1T1   *+A4(88),A8       ; |318| 
           MV      .L2X    A7,B7             ; |317| 
           LDW     .D1T1   *+A4(92),A7       ; |319| 

           MVK     .S1     17072,A3          ; |320| 
||         MV      .L2X    A6,B6             ; |317| 
||         LDW     .D1T1   *+A4(96),A6       ; |320| 

           LDBU    .D1T1   *+A4[A3],A3       ; |320| 
||         MV      .L1X    B4,A5             ; |317| 

           ADDAD   .D1     A8,A5,A4          ; |318| 
           ADDK    .S1     1440,A4           ; |318| 
           STDW    .D1T2   B7:B6,*A4         ; |318| 
           STDW    .D1T2   B7:B6,*+A7[A5]    ; |319| 
           LDW     .D1T1   *+A6[A3],A3       ; |320| 
           RETNOP  .S2     B3,1              ; |322| 
           MVKL    .S1     pos,A4
           MVKH    .S1     pos,A4

           ADDK    .S1     328,A3            ; |320| 
||         STDW    .D1T2   B7:B6,*+A4[A5]    ; |321| 
||         ZERO    .L1     A5:A4             ; |320| 

           STDW    .D1T1   A5:A4,*A3         ; |320| 
           ; BRANCH OCCURS {B3}              ; |322| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation9IsStoppedEv

;******************************************************************************
;* FUNCTION NAME: Interpolation::IsStopped()                                  *
;*                                                                            *
;*   Regs Modified     : A3,A4                                                *
;*   Regs Used         : A3,A4,B3                                             *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN13Interpolation9IsStoppedEv:
;** --------------------------------------------------------------------------*
;* 1499	-----------------------    return (*this).m_run_state == 2;

           RETNOP  .S2     B3,4              ; |1503| 
||         LDW     .D1T1   *+A4(116),A3      ; |1499| 

           CMPEQ   .L1     A3,2,A4           ; |1499| 
           ; BRANCH OCCURS {B3}              ; |1503| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation9GetBufLenEv

;******************************************************************************
;* FUNCTION NAME: Interpolation::GetBufLen()                                  *
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
_ZN13Interpolation9GetBufLenEv:
;** --------------------------------------------------------------------------*
;* 1541	-----------------------    this = (*this).m_auto_buffer;
;** 409	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [98]
;** 411	-----------------------    buf_len = (*this).m_buffer_cur_length;  // [98]
;** 413	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [98]
;* 1541	-----------------------    return (unsigned short)buf_len;
           STW     .D2T1   A11,*SP--(8)      ; |1540| 
           STW     .D2T1   A10,*+SP(4)       ; |1540| 
           LDW     .D1T1   *+A4(52),A10      ; |1541| 
           MV      .L1X    B3,A11            ; |1540| 
           NOP             3

           CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(20),A4      ; |409| 

$C$RL67:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |409| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(20),A3      ; |413| 
           LDW     .D1T1   *+A10(8),A10      ; |411| 
           MV      .L2X    A4,B4             ; |413| 
           NOP             2

           MV      .L1     A3,A4             ; |413| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3

$C$RL68:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |413| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3            ; |1542| 

           RET     .S2     B3                ; |1542| 
||         EXTU    .S1     A10,16,16,A4      ; |1541| 
||         LDW     .D2T1   *+SP(4),A10       ; |1542| 

           LDW     .D2T1   *++SP(8),A11      ; |1542| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1542| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation8IsPausedEi

;******************************************************************************
;* FUNCTION NAME: Interpolation::IsPaused(int)                                *
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
_ZN13Interpolation8IsPausedEi:
;** --------------------------------------------------------------------------*
;* 1517	-----------------------    U$3 = (*this).m_interpolation_algorithm;
;* 1518	-----------------------    if ( ((U$3 != (struct nterpolationAlgorithm *)(*this).m_quick_move_interpolation) ? (*(double (*)())*((*U$3).__vptr+12))(U$3) : (**(axis_index*4+(*this).m_dynamic_info)).current_f) > 1.00000000000000002092e-8 ) goto g4;
           STW     .D2T2   B10,*SP--(8)      ; |1516| 

           STDW    .D2T1   A11:A10,*SP--     ; |1516| 
||         MV      .L1     A4,A10            ; |1516| 

           LDW     .D1T1   *+A10(104),A3     ; |1518| 
           LDW     .D1T1   *+A10(100),A4     ; |1517| 
           MV      .L2     B4,B10            ; |1516| 
           MV      .L1X    B3,A11            ; |1516| 
           NOP             2
           CMPEQ   .L1     A4,A3,A0          ; |1518| 

   [!A0]   LDW     .D1T1   *A4,A3            ; |1518| 
|| [ A0]   B       .S1     $C$L27            ; |1518| 

   [ A0]   LDW     .D1T2   *+A10(96),B4      ; |1518| 
           NOP             3
   [!A0]   LDW     .D1T1   *+A3(12),A3       ; |1518| 
           ; BRANCHCC OCCURS {$C$L27}        ; |1518| 
;** --------------------------------------------------------------------------*
           NOP             4
           CALL    .S2X    A3                ; |1518| 
           ADDKPC  .S2     $C$RL69,B3,4      ; |1518| 
$C$RL69:   ; CALL OCCURS {A3} {0}            ; |1518| 
;** --------------------------------------------------------------------------*

           B       .S2     $C$L28            ; |1518| 
||         MVKL    .S1     0x3e45798e,A7

           MVKL    .S1     0xe2308c3a,A6
||         MVK     .S2     340,B7            ; |1528| 

           MVK     .S2     17072,B6          ; |1528| 
||         MVKH    .S1     0x3e45798e,A7

           MVKH    .S1     0xe2308c3a,A6
           CMPGTDP .S1     A5:A4,A7:A6,A0    ; |1518| 
           ADD     .L2     -4,B7,B8
           ; BRANCH OCCURS {$C$L28}          ; |1518| 
;** --------------------------------------------------------------------------*
$C$L27:    
           LDW     .D2T2   *+B4[B10],B4      ; |1518| 
           MVK     .S2     340,B7            ; |1528| 
           MVKL    .S1     0x3e45798e,A7
           MVKL    .S1     0xe2308c3a,A6
           MVK     .S2     17072,B6          ; |1528| 
           ADDK    .S2     320,B4            ; |1518| 
           LDDW    .D2T1   *B4,A5:A4         ; |1518| 
           MVKH    .S1     0x3e45798e,A7
           MVKH    .S1     0xe2308c3a,A6
           ADD     .L2     -4,B7,B8
           NOP             1
           CMPGTDP .S1     A5:A4,A7:A6,A0    ; |1518| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L28:    

           MV      .L2X    A10,B5
|| [ A0]   B       .S1     $C$L29            ; |1518| 
|| [!A0]   LDW     .D1T2   *+A10(96),B4      ; |1528| 

   [!A0]   LDBU    .D2T2   *+B5[B6],B5       ; |1528| 
           NOP             4
           ; BRANCHCC OCCURS {$C$L29}        ; |1518| 
;** --------------------------------------------------------------------------*
;* 1528	-----------------------    C$2 = (*this).m_dynamic_info;
;* 1528	-----------------------    C$3 = C$2[(*this).m_trajectory_index];
;* 1528	-----------------------    if ( (*C$3).current_step < (*C$3).step_number ) goto g4;
;* 1532	-----------------------    C$1 = C$2[axis_index];
;* 1532	-----------------------    if ( (*C$1).current_step >= (*C$1).step_number ) goto g5;
           LDW     .D2T2   *+B4[B5],B5       ; |1528| 
           MV      .L1X    B7,A3             ; |1532| 
           MV      .L2X    A11,B3            ; |1537| 
           MVK     .L1     0x1,A4            ; |1536| 
           NOP             1

           ADD     .L2     B8,B5,B6          ; |1528| 
||         ADD     .S2     B7,B5,B5          ; |1528| 

           LDW     .D2T2   *B6,B6            ; |1528| 
           LDW     .D2T2   *B5,B5            ; |1528| 
           NOP             4
           CMPLTU  .L2     B5,B6,B0          ; |1528| 
   [!B0]   LDW     .D2T2   *+B4[B10],B5      ; |1532| 
   [ B0]   MV      .L1     A4,A0             ; |1532| 
           NOP             3

   [!B0]   ADD     .L2     B8,B5,B4          ; |1532| 
|| [!B0]   ADD     .L1X    A3,B5,A3          ; |1532| 

   [!B0]   LDW     .D2T2   *B4,B4            ; |1532| 
|| [!B0]   LDW     .D1T1   *A3,A3            ; |1532| 

           NOP             4
   [!B0]   CMPLTU  .L1X    A3,B4,A0          ; |1532| 

   [!A0]   B       .S1     $C$L30            ; |1532| 
|| [!A0]   LDDW    .D2T1   *++SP,A11:A10     ; |1537| 

   [!A0]   RETNOP  .S2     B3,4              ; |1537| 
|| [!A0]   LDW     .D2T2   *++SP(8),B10      ; |1537| 

           ; BRANCHCC OCCURS {$C$L30}        ; |1532| 
;** --------------------------------------------------------------------------*
$C$L29:    
;**	-----------------------g4:
;* 1534	-----------------------    return 0;
;**	-----------------------g5:
;* 1536	-----------------------    return 1;
           MV      .L2X    A11,B3            ; |1537| 

           RET     .S2     B3                ; |1537| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |1537| 

           LDW     .D2T2   *++SP(8),B10      ; |1537| 
           ZERO    .L1     A4                ; |1534| 
           NOP             2
;** --------------------------------------------------------------------------*
$C$L30:    
           NOP             1
           ; BRANCH OCCURS {B3}              ; |1537| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation8ContinueEv

;******************************************************************************
;* FUNCTION NAME: Interpolation::Continue()                                   *
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
_ZN13Interpolation8ContinueEv:
;** --------------------------------------------------------------------------*
;** 365	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);
;** 367	-----------------------    (*this).m_machining_state = 1u;
;** 368	-----------------------    (*this).m_is_machining = 1;
;** 370	-----------------------    C$2 = (*this).m_run_state;
;** 370	-----------------------    if ( !(((*this).m_cur_channel_mode == 4)&((C$2 == 2)|(C$2 == 1))) ) goto g3;
;** 372	-----------------------    (*this).m_run_state = C$1 = 0;
;** 373	-----------------------    (*this).m_process_state = C$1;
;**	-----------------------g3:
;** 379	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;**  	-----------------------    return;
           STW     .D2T1   A11,*SP--(8)      ; |360| 

           STW     .D2T1   A10,*+SP(4)       ; |360| 
||         MV      .L1     A4,A10            ; |360| 

           MV      .L1X    B3,A11            ; |360| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(28),A4      ; |365| 

$C$RL70:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |365| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(116),A3     ; |370| 
           LDW     .D1T1   *+A10(32),A5      ; |370| 
           MVK     .S1     140,A6            ; |367| 
           MVK     .L2     1,B5              ; |367| 
           MVK     .S1     17048,A8          ; |368| 
           CMPEQ   .L2X    A3,1,B4           ; |370| 
           CMPEQ   .L1     A3,2,A7           ; |370| 

           STB     .D1T2   B5,*+A10[A6]      ; |367| 
||         OR      .S1X    B4,A7,A6          ; |370| 
||         MV      .L2     B5,B4             ; |370| 
||         CMPEQ   .L1     A5,4,A5           ; |370| 

           STB     .D1T2   B4,*+A10[A8]      ; |368| 
||         AND     .L1     A6,A5,A0          ; |370| 
||         ZERO    .S1     A5                ; |372| 

   [ A0]   STW     .D1T1   A5,*+A10(120)     ; |373| 
   [ A0]   STW     .D1T1   A5,*+A10(116)     ; |372| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         MV      .L2X    A4,B4             ; |379| 
||         LDW     .D1T1   *+A10(28),A4      ; |379| 

$C$RL71:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |379| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A11,B3            ; |384| 

           RET     .S2     B3                ; |384| 
||         LDW     .D2T1   *+SP(4),A10       ; |384| 

           LDW     .D2T1   *++SP(8),A11      ; |384| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |384| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation13CreateStopCmdEv

;******************************************************************************
;* FUNCTION NAME: Interpolation::CreateStopCmd()                              *
;*                                                                            *
;*   Regs Modified     : A3,A5,B4                                             *
;*   Regs Used         : A3,A4,A5,B3,B4                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN13Interpolation13CreateStopCmdEv:
;** --------------------------------------------------------------------------*
;* 1424	-----------------------    (*this).m_run_state = 1;
;* 1425	-----------------------    (*this).m_process_state = 0;
;* 1428	-----------------------    (*this).m_machining_state = 2u;
;**  	-----------------------    return;
           RETNOP  .S2     B3,1              ; |1429| 
           ZERO    .L2     B4                ; |1425| 

           STW     .D1T2   B4,*+A4(120)      ; |1425| 
||         MVK     .S1     140,A5            ; |1428| 
||         MVK     .L1     2,A3              ; |1428| 

           MVK     .L2     1,B4              ; |1424| 
||         STB     .D1T1   A3,*+A4[A5]       ; |1428| 

           STW     .D1T2   B4,*+A4(116)      ; |1424| 
           ; BRANCH OCCURS {B3}              ; |1429| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation7SetModeE11ChannelMode

;******************************************************************************
;* FUNCTION NAME: Interpolation::SetMode(ChannelMode)                         *
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
_ZN13Interpolation7SetModeE11ChannelMode:
;** --------------------------------------------------------------------------*
;** 500	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);
;** 502	-----------------------    if ( (*this).m_cur_channel_mode == channel_mode ) goto g5;
           STW     .D2T2   B13,*SP--(8)      ; |495| 

           STDW    .D2T1   A11:A10,*SP--     ; |495| 
||         MV      .L1     A4,A11            ; |495| 

           MV      .L2     B3,B13            ; |495| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A11(28),A4      ; |500| 
||         MV      .L1X    B4,A10            ; |495| 

$C$RL72:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |500| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A11(32),A3      ; |502| 
           MV      .L2X    A10,B4            ; |495| 
           NOP             3
           CMPEQ   .L1     A3,A10,A0         ; |502| 

   [ A0]   B       .S2     $C$L31            ; |502| 
||         MV      .L1     A0,A2             ; |502| branch predicate copy
||         MV      .S1     A0,A1             ; guard predicate rewrite
|| [!A0]   LDW     .D1T1   *+A11(116),A0     ; |503| 

   [!A1]   MVK     .L1     2,A30             ; |1428| 
|| [!A1]   ZERO    .L2     B5                ; |1425| 
|| [!A1]   MVK     .S1     40,A5             ; |507| 

   [ A2]   CMPEQ   .L2     B4,4,B0           ; |509| 
   [!A1]   MVK     .L1     1,A3              ; |507| 
   [!A1]   MVK     .S1     140,A31           ; |1428| 
   [!A1]   MV      .L2X    A3,B31            ; |1425| 
           ; BRANCHCC OCCURS {$C$L31}        ; |502| 
;** --------------------------------------------------------------------------*
;** 503	-----------------------    if ( (*this).m_run_state ) goto g4;
;* 1424	-----------------------    (*this).m_run_state = 1;  // [72]
;* 1425	-----------------------    (*this).m_process_state = 0;  // [72]
;* 1428	-----------------------    (*this).m_machining_state = 2u;  // [72]
;**	-----------------------g4:
;** 506	-----------------------    (*this).m_next_channel_mode = channel_mode;
;** 507	-----------------------    (*this).m_is_channel_mode_changing = 1;

           CMPEQ   .L2     B4,4,B0           ; |509| 
|| [!A0]   STB     .D1T1   A30,*+A11[A31]    ; |1428| 

   [!A0]   STW     .D1T2   B31,*+A11(116)    ; |1424| 
   [!A0]   STW     .D1T2   B5,*+A11(120)     ; |1425| 
           STB     .D1T1   A3,*+A11[A5]      ; |507| 
           STW     .D1T2   B4,*+A11(36)      ; |506| 
;** --------------------------------------------------------------------------*
$C$L31:    
;**	-----------------------g5:
;** 509	-----------------------    if ( channel_mode == 4 ) goto g7;
;** 512	-----------------------    (*this).m_next_data_buffer = (*this).m_non_auto_buffer;
;** 512	-----------------------    goto g8;
;**	-----------------------g7:
;** 510	-----------------------    (*this).m_next_data_buffer = (*this).m_auto_buffer;
;**	-----------------------g8:
;** 515	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;**  	-----------------------    return;
   [!B0]   LDW     .D1T1   *+A11(56),A5      ; |512| 

           CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |515| 
|| [ B0]   LDW     .D1T1   *+A11(52),A5      ; |510| 

           MV      .L2X    A4,B4             ; |515| 
||         LDW     .D1T1   *+A11(28),A4      ; |515| 

           ADDKPC  .S2     $C$RL73,B3,1      ; |515| 
   [!B0]   STW     .D1T1   A5,*+A11(48)      ; |512| 
   [ B0]   STW     .D1T1   A5,*+A11(48)      ; |510| 
$C$RL73:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |515| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |520| 

           RET     .S2     B3                ; |520| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |520| 

           LDW     .D2T2   *++SP(8),B13      ; |520| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |520| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation20UpdateStartConditionEv

;******************************************************************************
;* FUNCTION NAME: Interpolation::UpdateStartCondition()                       *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,B4,B5,B6,B7,A31                 *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,B3,B4,B5,B6,B7,A31              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN13Interpolation20UpdateStartConditionEv:
;** --------------------------------------------------------------------------*
;* 1416	-----------------------    H$3 = (*this).m_dynamic_info;
;* 1416	-----------------------    if ( !(C$2 = (*(*this).m_channel_config).axis_number) ) goto g4;
           MV      .L1     A4,A7             ; |1415| 
           LDW     .D1T1   *+A7(16),A3       ; |1416| 
           LDW     .D1T1   *+A7(96),A8       ; |1416| 
           MVK     .S1     1440,A4
           NOP             2
           LDBU    .D1T1   *+A3(2),A0        ; |1416| 
           MV      .L1     A8,A3
           NOP             3

   [!A0]   BNOP    .S1     $C$L35,4          ; |1416| 
|| [ A0]   LDW     .D1T2   *+A7(88),B6
|| [ A0]   SUB     .L1     A0,1,A31

   [ A0]   MVC     .S2X    A31,ILC
           ; BRANCHCC OCCURS {$C$L35}        ; |1416| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$21 = (*this).m_data+1440;
;**  	-----------------------    U$23 = (*this).m_geometry;
;**  	-----------------------    U$28 = H$3;
;**  	-----------------------    L$1 = (unsigned)C$2;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g3:
;* 1417	-----------------------    *U$23++ = *U$21++;
;* 1418	-----------------------    (**U$28++).current_l = 0.0;
;* 1416	-----------------------    if ( L$1 = L$1-1 ) goto g3;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 1416
;*      Loop opening brace source line   : 1416
;*      Loop closing brace source line   : 1419
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 13
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     1        0     
;*      .D units                     2*       2*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             2*       2*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 13 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L32:    ; PIPED LOOP PROLOG

           SPLOOPD 13      ;26               ; (P) 
||         LDW     .D1T2   *+A7(92),B7
||         ADD     .L2X    A4,B6,B6

;** --------------------------------------------------------------------------*
$C$L33:    ; PIPED LOOP KERNEL
           LDDW    .D2T2   *B6++,B5:B4       ; |1417| (P) <0,0>  ^ 
           NOP             4
           STDW    .D2T2   B5:B4,*B7++       ; |1417| (P) <0,5>  ^ 
           LDW     .D1T1   *A3++,A6          ; |1418| (P) <0,6>  ^ 
           NOP             4

           ZERO    .L1     A5:A4             ; |1418| (P) <0,11> 
||         ADDK    .S1     328,A6            ; |1418| (P) <0,11>  ^ 

           STDW    .D1T1   A5:A4,*A6         ; |1418| (P) <0,12>  ^ 
           SPKERNEL 0,1
;** --------------------------------------------------------------------------*
$C$L34:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L35:    
;**	-----------------------g4:
;* 1420	-----------------------    (*H$3[(*this).m_trajectory_index]).current_l = 0.0;
;**  	-----------------------    return;
           MVK     .S1     17072,A3          ; |1420| 
           LDBU    .D1T1   *+A7[A3],A3       ; |1420| 
           ZERO    .L1     A5:A4             ; |1420| 
           NOP             3
           LDW     .D1T1   *+A8[A3],A3       ; |1420| 
           RETNOP  .S2     B3,3              ; |1421| 
           ADDK    .S1     328,A3            ; |1420| 
           STDW    .D1T1   A5:A4,*A3         ; |1420| 
           ; BRANCH OCCURS {B3}              ; |1421| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation5ResetEv

;******************************************************************************
;* FUNCTION NAME: Interpolation::Reset()                                      *
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
_ZN13Interpolation5ResetEv:
;** --------------------------------------------------------------------------*
;** 391	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);
;** 822	-----------------------    this = (*this).m_auto_buffer;  // [64]
;** 428	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [99]
;** 430	-----------------------    (*this).m_buffer_cur_length = C$8 = 0;  // [99]
;** 431	-----------------------    (*this).m_write_pointer = (*this).m_buffer;  // [99]
;** 432	-----------------------    (*this).m_read_pointer = (*this).m_buffer;  // [99]
;** 434	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [99]
;** 823	-----------------------    this = (*this).m_non_auto_buffer;  // [64]
;** 428	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [99]
;** 430	-----------------------    (*this).m_buffer_cur_length = C$8;  // [99]
;** 431	-----------------------    (*this).m_write_pointer = (*this).m_buffer;  // [99]
;** 432	-----------------------    (*this).m_read_pointer = (*this).m_buffer;  // [99]
;** 434	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [99]
;** 824	-----------------------    (*this).m_is_channel_mode_changing = C$7 = 0;  // [64]
;** 825	-----------------------    (*this).m_run_state = C$9 = 2;  // [64]
;** 826	-----------------------    (*this).m_process_state = C$9;  // [64]
;** 827	-----------------------    (*this).m_need_get_new_data = 1;  // [64]
;** 828	-----------------------    (*this).m_get_data_result = C$8;  // [64]
;** 829	-----------------------    (*this).m_machining_state = 0u;  // [64]
;** 830	-----------------------    (*this).m_is_reach_end = C$7;  // [64]
;** 831	-----------------------    (*this).m_is_machining = C$7;  // [64]
;** 832	-----------------------    (*this).m_is_tapping_mode = C$7;  // [64]
;**  	-----------------------    U$44 = (*this).m_dynamic_info;
;**  	-----------------------    L$1 = (unsigned)(*(*this).m_channel_config).axis_number+1u;
;**  	-----------------------    #pragma MUST_ITERATE(1, 256, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g2:
;** 835	-----------------------    (**U$44).step_number = C$5 = 0u;  // [64]
;** 836	-----------------------    (**U$44).current_step = C$5;  // [64]
;** 837	-----------------------    (**U$44).current_f = C$6 = 0.0;  // [64]
;** 838	-----------------------    (**U$44).left_time = C$6;  // [64]
;** 839	-----------------------    (**U$44).left_dist = C$6;  // [64]
;** 840	-----------------------    (**U$44).le = C$6;  // [64]
;** 841	-----------------------    (**U$44).ls = C$6;  // [64]
;** 842	-----------------------    (**U$44).step_number = C$5;  // [64]
;** 843	-----------------------    (**U$44).current_step = C$5;  // [64]
;** 844	-----------------------    (**U$44).is_enabled = C$5;  // [64]
;** 845	-----------------------    (**U$44++).run_state = 2;  // [64]
;** 834	-----------------------    if ( L$1 = L$1-1 ) goto g2;  // [64]
;** 395	-----------------------    if ( !(C$4 = (*this).m_trajectory_index) ) goto g6;
           STW     .D2T2   B13,*SP--(8)      ; |386| 
           STDW    .D2T1   A13:A12,*SP--     ; |386| 

           STDW    .D2T1   A11:A10,*SP--     ; |386| 
||         MV      .L1     A4,A10            ; |386| 

           MV      .L2     B3,B13            ; |386| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(28),A4      ; |391| 

$C$RL74:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |391| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(52),A11     ; |822| 
           MV      .L1     A4,A12            ; |391| 
           NOP             3

           LDW     .D1T1   *+A11(20),A4      ; |428| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3

$C$RL75:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |428| 
           LDW     .D1T1   *A11,A5           ; |432| 
           LDW     .D1T1   *A11,A6           ; |431| 
           ZERO    .L1     A13               ; |430| 
           STW     .D1T1   A13,*+A11(8)      ; |430| 

           MV      .L2X    A4,B4             ; |434| 
||         LDW     .D1T1   *+A11(20),A4      ; |434| 

           STW     .D1T1   A5,*+A11(16)      ; |432| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         STW     .D1T1   A6,*+A11(12)      ; |431| 

$C$RL76:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |434| 
           LDW     .D1T1   *+A10(56),A11     ; |823| 
           NOP             4

           CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A11(20),A4      ; |428| 

$C$RL77:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |428| 
           LDW     .D1T1   *A11,A5           ; |432| 
           LDW     .D1T1   *A11,A6           ; |431| 
           STW     .D1T1   A13,*+A11(8)      ; |430| 
           MV      .L2X    A4,B4             ; |434| 
           LDW     .D1T1   *+A11(20),A4      ; |434| 
           STW     .D1T1   A5,*+A11(16)      ; |432| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         STW     .D1T1   A6,*+A11(12)      ; |431| 

$C$RL78:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |434| 
;** --------------------------------------------------------------------------*

           LDW     .D1T2   *+A10(16),B6
||         MV      .L2X    A13,B4
||         MVK     .S1     40,A3             ; |824| 

           MVK     .S1     124,A3            ; |827| 
||         STB     .D1T2   B4,*+A10[A3]      ; |824| 
||         MVK     .L2     1,B5              ; |827| 

           MV      .L2     B4,B5             ; |827| 
||         MVK     .S1     140,A3            ; |829| 
||         STB     .D1T2   B5,*+A10[A3]      ; |827| 

           MVK     .S1     134,A3            ; |830| 
||         STB     .D1T2   B5,*+A10[A3]      ; |829| 

           MVK     .S1     17048,A3          ; |831| 
||         STB     .D1T2   B4,*+A10[A3]      ; |830| 

           ADD     .L1     1,A3,A3
||         STB     .D1T2   B4,*+A10[A3]      ; |831| 

           STB     .D1T2   B4,*+A10[A3]      ; |832| 
           LDBU    .D2T2   *+B6(2),B4

           LDW     .D1T2   *+A10(96),B9
||         MVK     .L1     0x2,A4            ; |825| 

           STW     .D1T1   A4,*+A10(116)     ; |825| 
           STW     .D1T1   A4,*+A10(120)     ; |826| 

           ADDAD   .D1     A10,16,A3         ; |828| 
||         MVK     .S2     368,B7            ; |844| 

           MVK     .L2     2,B6              ; |845| 
||         MV      .L1X    B4,A0
||         STW     .D1T1   A13,*A3           ; |828| 
||         MV      .D2X    A13,B8
||         DINT                              ; interrupts off

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 834
;*      Loop opening brace source line   : 834
;*      Loop closing brace source line   : 846
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 256                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 74
;*      Unpartitioned Resource Bound     : 11
;*      Partitioned Resource Bound(*)    : 22
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     1        8     
;*      .D units                     0       22*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0       22*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        5     
;*      Bound(.L .S .D .LS .LSD)     1       11     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 74 Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L36:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L37:    ; PIPED LOOP KERNEL
           LDW     .D2T2   *B9,B4            ; |835| <0,0>  ^ 
           NOP             4
           ADDK    .S2     336,B4            ; |835| <0,5>  ^ 
           STW     .D2T2   B8,*B4            ; |835| <0,6>  ^ 
           LDW     .D2T2   *B9,B4            ; |836| <0,7>  ^ 
           NOP             4
           ADDK    .S2     340,B4            ; |836| <0,12>  ^ 
           STW     .D2T2   B8,*B4            ; |836| <0,13>  ^ 
           LDW     .D2T2   *B9,B16           ; |837| <0,14>  ^ 
           NOP             4

           ZERO    .L2     B5:B4             ; |837| <0,19> 
||         ADDK    .S2     320,B16           ; |837| <0,19>  ^ 

           STDW    .D2T2   B5:B4,*B16        ; |837| <0,20>  ^ 
           LDW     .D2T2   *B9,B16           ; |838| <0,21>  ^ 
           NOP             4
           ADDK    .S2     344,B16           ; |838| <0,26>  ^ 
           STDW    .D2T2   B5:B4,*B16        ; |838| <0,27>  ^ 
           LDW     .D2T2   *B9,B16           ; |839| <0,28>  ^ 
           NOP             4
           ADDK    .S2     352,B16           ; |839| <0,33>  ^ 
           STDW    .D2T2   B5:B4,*B16        ; |839| <0,34>  ^ 
           LDW     .D2T2   *B9,B16           ; |840| <0,35>  ^ 
           NOP             4
           STDW    .D2T2   B5:B4,*+B16(32)   ; |840| <0,40>  ^ 
           LDW     .D2T2   *B9,B16           ; |841| <0,41>  ^ 
           NOP             4
           STDW    .D2T2   B5:B4,*+B16(24)   ; |841| <0,46>  ^ 
           LDW     .D2T2   *B9,B4            ; |842| <0,47>  ^ 
           NOP             4
           ADDK    .S2     336,B4            ; |842| <0,52>  ^ 
           STW     .D2T2   B8,*B4            ; |842| <0,53>  ^ 
           LDW     .D2T2   *B9,B4            ; |843| <0,54>  ^ 
           NOP             4
           ADDK    .S2     340,B4            ; |843| <0,59>  ^ 
           STW     .D2T2   B8,*B4            ; |843| <0,60>  ^ 
           LDW     .D2T2   *B9,B4            ; |844| <0,61>  ^ 
           NOP             4
           STB     .D2T2   B8,*+B4[B7]       ; |844| <0,66>  ^ 
           LDW     .D2T2   *B9++,B4          ; |845| <0,67>  ^ 
   [ A0]   BDEC    .S1     $C$L37,A0         ; |834| <0,68> 
           NOP             3
           ADDK    .S2     372,B4            ; |845| <0,72>  ^ 
           STW     .D2T2   B6,*B4            ; |845| <0,73>  ^ 
;** --------------------------------------------------------------------------*
$C$L38:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;**  	-----------------------    K$69 = 0.0;
;**  	-----------------------    L$2 = (int)C$4;
;**  	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           MVK     .S1     17072,A3          ; |395| 
           LDBU    .D1T1   *+A10[A3],A0      ; |395| 
           ZERO    .L2     B6
           ZERO    .L2     B5:B4
           RINT                              ; interrupts on
           NOP             1

   [!A0]   BNOP    .S1     $C$L42,5          ; |395| 
|| [ A0]   MVC     .S2X    A0,ILC

           ; BRANCHCC OCCURS {$C$L42}        ; |395| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 396	-----------------------    *((i<<3)+(*this).m_data+2488) = K$69;
;** 395	-----------------------    ++i;
;** 395	-----------------------    if ( L$2 = L$2-1 ) goto g5;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 395
;*      Loop opening brace source line   : 395
;*      Loop closing brace source line   : 397
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        1     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1     
;*      Bound(.L .S .D .LS .LSD)     1        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 5 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L39:    ; PIPED LOOP PROLOG

           SPLOOP  2       ;10               ; (P) 
||         MV      .L1     A10,A6

;** --------------------------------------------------------------------------*
$C$L40:    ; PIPED LOOP KERNEL
           LDW     .D1T1   *+A6(88),A4       ; |396| (P) <0,0> 
           NOP             3

           SPMASK          L1
||         MV      .L1X    B6,A5

           ADDAD   .D1     A4,A5,A3          ; |396| (P) <0,5> 
           ADD     .L1     1,A5,A5           ; |395| (P) <0,6> 
           MV      .L2X    A3,B6             ; |396| (P) <0,7>  ^ Define a twin register
           ADDK    .S2     2488,B6           ; |396| <0,8>  ^ Define a twin register

           SPKERNEL 0,0
||         STDW    .D2T2   B5:B4,*B6         ; |396| <0,9> 

;** --------------------------------------------------------------------------*
$C$L41:    ; PIPED LOOP EPILOG
           MV      .S1     A6,A10
           NOP             7
;** --------------------------------------------------------------------------*
$C$L42:    
;**	-----------------------g6:
;** 398	-----------------------    U$70 = (*this).m_data;
;** 398	-----------------------    (*(*this).m_geometry).end_data = U$70;
;* 1416	-----------------------    if ( !(C$3 = (*(*this).m_channel_config).axis_number) ) goto g9;  // [71]
;**  	-----------------------    L$3 = (unsigned)C$3;
;* 1416	-----------------------    i = 0u;  // [71]
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D1T1   *+A10(92),A3      ; |398| 
           LDW     .D1T1   *+A10(88),A5      ; |398| 
           ZERO    .L2     B4                ; |1416| 
           NOP             2
           ADDK    .S1     512,A3            ; |398| 
           STW     .D1T1   A5,*A3            ; |398| 
           LDW     .D1T1   *+A10(16),A3      ; |1416| 
           NOP             4
           LDBU    .D1T1   *+A3(2),A0        ; |1416| 
           NOP             4

   [!A0]   BNOP    .S1     $C$L46,5          ; |1416| 
|| [ A0]   MV      .L2X    A10,B6
|| [ A0]   SUB     .L1     A0,1,A3

           ; BRANCHCC OCCURS {$C$L46}        ; |1416| 
;** --------------------------------------------------------------------------*
;**	-----------------------g8:
;* 1417	-----------------------    *((i<<3)+(*this).m_geometry) = *((i<<3)+(double *)U$70+1440);  // [71]
;* 1418	-----------------------    (**(i*4+(*this).m_dynamic_info)).current_l = 0.0;  // [71]
;* 1416	-----------------------    ++i;  // [71]
;**  	-----------------------    U$70 = (*this).m_data;
;* 1416	-----------------------    if ( L$3 = L$3-1 ) goto g8;  // [71]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 1416
;*      Loop opening brace source line   : 1416
;*      Loop closing brace source line   : 1419
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 5
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     0        2     
;*      .D units                     3        5*    
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2        5*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        2     
;*      Bound(.L .S .D .LS .LSD)     2        4     
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
$C$L43:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;18               ; (P) 
||         MV      .L1     A10,A3
||         MVC     .S2X    A3,ILC

;** --------------------------------------------------------------------------*
$C$L44:    ; PIPED LOOP KERNEL

           SPMASK          S2
||         MV      .S2X    A5,B16
||         ZERO    .L2     B9:B8             ; |1418| (P) <0,0> 
||         LDW     .D2T2   *+B6(96),B17      ; |1418| (P) <0,0> 
||         LDW     .D1T1   *+A3(88),A5       ; (P) <0,0> 

           MVD     .M2     B8,B7             ; |1418| (P) <0,1> Split a long life
||         ADD     .L2     1,B4,B8           ; |1416| (P) <0,1> 
||         LDW     .D1T1   *+A3(92),A6       ; |1417| (P) <0,1> 
||         ADDAD   .D2     B16,B4,B16        ; |1417| (P) <0,1> 

           ADDK    .S2     1440,B16          ; |1417| (P) <0,2> 
           LDDW    .D2T2   *B16,B23:B22      ; |1417| (P) <0,3>  ^ 
           MVD     .M2     B9,B5             ; |1418| (P) <0,4> Split a long life

           SPMASK          L1,S2
||         MV      .S2     B4,B20
||         MV      .L1X    B4,A4
||         ROTL    .M2     B8,0,B4           ; |1416| (P) <0,5> Split a long life
||         MV      .L2X    A5,B16            ; (P) <0,5> Define a twin register

           NOP             2

           MVD     .M2     B5,B19            ; |1418| (P) <0,8> Split a long life
||         ADD     .L1     1,A4,A4           ; |1416| (P) <0,8> Define a twin register
||         STDW    .D1T2   B23:B22,*+A6[A4]  ; |1417| (P) <0,8>  ^ 

           MVD     .M2     B7,B18            ; |1418| (P) <0,9> Split a long life

           MV      .L2     B4,B20            ; |1416| (P) <0,10> Inserted to break DPG cycle
||         LDW     .D2T2   *+B17[B20],B5     ; |1418| (P) <0,10> 

           NOP             4
           ADDK    .S2     328,B5            ; |1418| <0,15> 
           NOP             1

           SPKERNEL 0,0
||         STDW    .D2T2   B19:B18,*B5       ; |1418| <0,17> 

;** --------------------------------------------------------------------------*
$C$L45:    ; PIPED LOOP EPILOG
           MV      .L1     A3,A10
           NOP             9
           NOP             2
;** --------------------------------------------------------------------------*
$C$L46:    
;**	-----------------------g9:
;* 1420	-----------------------    (**((*this).m_trajectory_index*4+(*this).m_dynamic_info)).current_l = 0.0;  // [71]
;** 401	-----------------------    memset(U$70, 0, 3816u);
;** 404	-----------------------    memcpy((*this).m_data+816, (*this).m_realtime_state+2960, 512u);
;** 406	-----------------------    (*this).m_heartbeat_err = 0;
;** 409	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_quick_move_interpolation, (int)(*(*this).m_channel_config).speed_profile_type);
;** 411	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_line_interpolation, (int)(*(*this).m_channel_config).speed_profile_type);
;** 413	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_circle_interpolation, (int)(*(*this).m_channel_config).speed_profile_type);
;** 417	-----------------------    if ( (*this).m_cur_channel_mode == 4 ) goto g11;
;** 420	-----------------------    (*this).m_data_buffer = (*this).m_non_auto_buffer;
;** 420	-----------------------    goto g12;
;**	-----------------------g11:
;** 418	-----------------------    (*this).m_data_buffer = (*this).m_auto_buffer;
;**	-----------------------g12:
;** 423	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;**  	-----------------------    return;

           MVK     .S1     17072,A3          ; |1420| 
||         LDW     .D1T1   *+A10(96),A4      ; |1420| 

           LDBU    .D1T1   *+A10[A3],A3      ; |1420| 
           ZERO    .L1     A7:A6             ; |1420| 
           ZERO    .L2     B4                ; |401| 
           NOP             2
           LDW     .D1T1   *+A4[A3],A3       ; |1420| 
           MV      .L1     A5,A4             ; |401| 
           NOP             3
           ADDK    .S1     328,A3            ; |1420| 

           CALLP   .S2     memset,B3
||         STDW    .D1T1   A7:A6,*A3         ; |1420| 
||         MVK     .S1     0xee8,A6          ; |401| 

$C$RL79:   ; CALL OCCURS {memset} {0}        ; |401| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(24),A3      ; |404| 
           LDW     .D1T1   *+A10(88),A4      ; |404| 
           MVK     .S2     816,B5            ; |404| 
           MVK     .S2     2960,B4           ; |404| 
           MVK     .S1     0x200,A6          ; |404| 
           ADD     .L2X    B4,A3,B4          ; |404| 

           CALLP   .S2     memcpy,B3
||         ADD     .L1X    B5,A4,A4          ; |404| 

$C$RL80:   ; CALL OCCURS {memcpy} {0}        ; |404| 
           LDW     .D1T2   *+A10(16),B4      ; |409| 
           ZERO    .L2     B5                ; |406| 
           MVK     .S1     141,A3            ; |406| 
           STB     .D1T2   B5,*+A10[A3]      ; |406| 
           MVK     .S2     96,B5             ; |409| 

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDBU    .D2T2   *+B4[B5],B4       ; |409| 
||         LDW     .D1T1   *+A10(104),A4     ; |409| 

$C$RL81:   ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |409| 
           LDW     .D1T1   *+A10(16),A5      ; |411| 
           MVK     .S1     96,A3             ; |411| 
           LDW     .D1T1   *+A10(108),A4     ; |411| 
           NOP             2

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDBU    .D1T2   *+A5[A3],B4       ; |411| 

$C$RL82:   ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |411| 
           LDW     .D1T1   *+A10(16),A3      ; |413| 
           MVK     .S1     96,A5             ; |413| 
           LDW     .D1T1   *+A10(112),A4     ; |413| 
           NOP             2

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDBU    .D1T2   *+A3[A5],B4       ; |413| 

$C$RL83:   ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |413| 
           LDW     .D1T1   *+A10(32),A3      ; |417| 
           LDW     .D1T1   *+A10(28),A4      ; |423| 
           MV      .L2X    A12,B4            ; |423| 
           NOP             2
           CMPEQ   .L1     A3,4,A0           ; |417| 
   [!A0]   LDW     .D1T1   *+A10(56),A3      ; |420| 
   [ A0]   LDW     .D1T1   *+A10(52),A3      ; |418| 
           NOP             3
   [!A0]   STW     .D1T1   A3,*+A10(44)      ; |420| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
|| [ A0]   STW     .D1T1   A3,*+A10(44)      ; |418| 

$C$RL84:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |423| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *++SP,A11:A10     ; |428| 
||         MV      .L2     B13,B3            ; |428| 

           LDDW    .D2T1   *++SP,A13:A12     ; |428| 
||         RET     .S2     B3                ; |428| 

           LDW     .D2T2   *++SP(8),B13      ; |428| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |428| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation12SetStopStateEv

;******************************************************************************
;* FUNCTION NAME: Interpolation::SetStopState()                               *
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
;*   Local Frame Size  : 0 Args + 516 Auto + 16 Save = 532 byte               *
;******************************************************************************
_ZN13Interpolation12SetStopStateEv:
;** --------------------------------------------------------------------------*
;* 1337	-----------------------    (*this).m_run_state = C$6 = 2;
;* 1338	-----------------------    (*this).m_process_state = C$6;
;* 1339	-----------------------    dest_data = (*this).m_data;
;* 1339	-----------------------    src_data = (*(*this).m_geometry).end_data;
;** 361	-----------------------    if ( !(C$5 = (*(*this).m_channel_config).axis_number) ) goto g4;  // [75]
;**  	-----------------------    U$23 = (double *)dest_data+1440;
;** 362	-----------------------    L$1 = (int)C$5;  // [75]
;**  	-----------------------    U$27 = &dest_pos[0];
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           STW     .D2T2   B10,*SP--(8)      ; |1336| 
||         MV      .L2X    A4,B10            ; |1336| 
||         MVK     .S1     1440,A3

           STDW    .D2T1   A11:A10,*SP--     ; |1336| 

           LDW     .D2T2   *+B10(16),B5      ; |361| 
||         ADDK    .S2     -520,SP           ; |1336| 

           LDW     .D2T2   *+B10(92),B4      ; |1339| 
           LDW     .D2T1   *+B10(88),A10     ; |1339| 
           MV      .L1X    B3,A11            ; |1336| 
           ADD     .L1X    8,SP,A4

           LDBU    .D2T2   *+B5(2),B0        ; |361| 
||         MVK     .L2     0x2,B5            ; |1337| 

           STW     .D2T2   B5,*+B10(116)     ; |1337| 
||         ADDK    .S2     512,B4            ; |1339| 

           ADD     .L1     A3,A10,A3
           STW     .D2T2   B5,*+B10(120)     ; |1338| 
           LDW     .D2T2   *B4,B7            ; |1339| 

   [!B0]   BNOP    .S1     $C$L50,5          ; |361| 
|| [ B0]   MVC     .S2     B0,ILC

           ; BRANCHCC OCCURS {$C$L50}        ; |361| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 362	-----------------------    *U$27++ = *U$23++;  // [75]
;** 361	-----------------------    if ( L$1 = L$1-1 ) goto g3;  // [75]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop inlined from                : /root/git/ALG_LIB/CTALG/inc/interpolation/interpolation.h
;*      Loop source line                 : 361
;*      Loop opening brace source line   : 361
;*      Loop closing brace source line   : 363
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               2*       0     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     1        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L47:    ; PIPED LOOP PROLOG
           SPLOOP  2       ;8                ; (P) 
;** --------------------------------------------------------------------------*
$C$L48:    ; PIPED LOOP KERNEL

           SPMASK          L2
||         MV      .L2X    A4,B6
||         LDDW    .D1T1   *A3++,A5:A4       ; |362| (P) <0,0> 

           NOP             4
           MV      .L2X    A5,B5             ; |362| (P) <0,5> Define a twin register
           MV      .L2X    A4,B4             ; |362| <0,6> Define a twin register

           SPKERNEL 3,0
||         STDW    .D2T2   B5:B4,*B6++       ; |362| <0,7> 

;** --------------------------------------------------------------------------*
$C$L49:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L50:    
;**	-----------------------g4:
;** 365	-----------------------    *(struct ineData *)(void *)dest_data = *src_data;  // [75]
;** 367	-----------------------    if ( !(*(*this).m_channel_config).axis_number ) goto g7;  // [75]

           CALLP   .S2     memcpy,B3
||         MV      .L2     B7,B4             ; |365| 
||         MV      .L1     A10,A4            ; |365| 
||         MVK     .S1     0xee8,A6          ; |365| 

$C$RL85:   ; CALL OCCURS {memcpy} {0}        ; |365| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$20 = (double *)dest_data+1440;
;**  	-----------------------    U$40 = &dest_pos[0];
;** 367	-----------------------    i = 0u;  // [75]
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D2T2   *+B10(16),B4      ; |367| 
           ADD     .L2     8,SP,B9
           ZERO    .L1     A4                ; |367| 
           MVK     .S1     1440,A3
           ADD     .L1     A3,A10,A3
           LDBU    .D2T2   *+B4(2),B0        ; |367| 
           NOP             4

   [!B0]   BNOP    .S1     $C$L54,5          ; |367| 
|| [ B0]   MVK     .L1     0x1,A1

           ; BRANCHCC OCCURS {$C$L54}        ; |367| 
;** --------------------------------------------------------------------------*
;**	-----------------------g6:
;** 368	-----------------------    *(((int)i<<3)+U$20) = *U$40++;  // [75]
;** 367	-----------------------    if ( (*(*this).m_channel_config).axis_number > (++i) ) goto g6;  // [75]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop inlined from                : /root/git/ALG_LIB/CTALG/inc/interpolation/interpolation.h
;*      Loop source line                 : 367
;*      Loop opening brace source line   : 367
;*      Loop closing brace source line   : 369
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 7
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     0        1     
;*      .D units                     2        2     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2        2     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          3        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1     
;*      Bound(.L .S .D .LS .LSD)     2        3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 7  Schedule found with 3 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 2
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh112
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L51:    ; PIPED LOOP PROLOG
   [ A1]   SPLOOPW 7       ;21               ; (P) 
;** --------------------------------------------------------------------------*
$C$L52:    ; PIPED LOOP KERNEL
           NOP             4

           SPMASK          L1
||         MV      .L1X    B10,A5

           SPMASK          L2
||         MV      .L2X    A3,B7
||         LDW     .D1T1   *+A5(16),A3       ; |367| (P) <0,5> 

           NOP             1

           SPMASK          L2
||         MV      .L2X    A4,B8

           ADD     .S2     1,B8,B17          ; |367| (P) <0,8> 
           NOP             1

           SPMASK          L2
||         MV      .L2X    A4,B6
|| [ A1]   LDBU    .D1T1   *+A3(2),A4        ; |367| (P) <0,10>  ^ 

           NOP             2

           SPMASK          L1
||         MV      .L1     A1,A0

           EXTU    .S2     B17,16,16,B8      ; |367| <0,14> 

   [ A1]   LDDW    .D2T2   *B9++,B5:B4       ; |368| <0,15> 
||         CMPGTU  .L2X    A4,B8,B0          ; |367| <0,15>  ^ 

   [!B0]   ZERO    .L1     A1                ; |367| <0,16>  ^ 
           NOP             1
           MV      .L2     B8,B16            ; |367| <0,18> Split a long life(pre-sched)
           MV      .L1     A1,A3             ; |367| <0,19> Split a long life(pre-sched)

           SPKERNEL 0,0
||         MV      .L2     B16,B6            ; |367| <0,20> Split a long life(pre-sched)
|| [ A0]   STDW    .D2T2   B5:B4,*+B7[B6]    ; |368| <0,20> 
||         MV      .L1     A3,A0             ; |367| <0,20> Split a long life(pre-sched)

;** --------------------------------------------------------------------------*
$C$L53:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MV      .L2X    A5,B10
;** --------------------------------------------------------------------------*
$C$L54:    
;**	-----------------------g7:
;** 370	-----------------------    *((double *)dest_data+2480) = C$4 = 0.0;  // [75]
;* 1341	-----------------------    if ( (*(*this).m_channel_state).machining_state ) goto g9;
;* 1342	-----------------------    *((*this).m_data+1360) = C$4;
;**	-----------------------g9:
;* 1344	-----------------------    C$3 = (*this).m_data;
;* 1344	-----------------------    (*C$3).interpolation_stop_flag = 1;
;* 1345	-----------------------    (*C$3).has_special_cmd = C$2 = (unsigned char)0;
;* 1346	-----------------------    *((unsigned long long *)C$3+3672) = 0uLL;
;* 1348	-----------------------    (*(*this).OutputData)((*this).m_data, (*this).m_owner_ptr);
;* 1349	-----------------------    (*(*this).m_data).interpolation_stop_flag = C$2;
;**  	-----------------------    return;
           LDW     .D2T1   *+B10(20),A3      ; |1341| 
           LDW     .D2T2   *+B10(88),B17     ; |1344| 
           MVK     .S2     3672,B5           ; |1346| 
           ZERO    .L1     A5:A4             ; |370| 
           LDW     .D2T2   *+B10(8),B4       ; |1348| 
           LDBU    .D1T2   *+A3(1),B0        ; |1341| 
           ADD     .L2     B5,B17,B16        ; |1346| 
           LDW     .D2T2   *B10,B5           ; |1348| 
           MVK     .S1     2480,A3           ; |370| 
           ADD     .L1     A3,A10,A3         ; |370| 
   [!B0]   LDW     .D2T2   *+B10(88),B9      ; |1342| 
           STDW    .D1T1   A5:A4,*A3         ; |370| 
           ZERO    .L2     B6                ; |1346| 
           ZERO    .L2     B7                ; |1346| 
           MVK     .L1     1,A3              ; |1344| 
   [!B0]   ADDK    .S2     1360,B9           ; |1342| 

           CALL    .S2     B5                ; |1348| 
|| [!B0]   STDW    .D2T1   A5:A4,*B9         ; |1342| 

           LDW     .D2T1   *+B10(88),A4      ; |1348| 
           STDW    .D2T2   B7:B6,*B16        ; |1346| 
           MVK     .S2     271,B6            ; |1344| 

           STB     .D2T1   A3,*+B17[B6]      ; |1344| 
||         MVK     .S2     3680,B6           ; |1345| 
||         ZERO    .L1     A10               ; |1345| 

           ADDKPC  .S2     $C$RL86,B3,0      ; |1348| 
||         STB     .D2T1   A10,*+B17[B6]     ; |1345| 

$C$RL86:   ; CALL OCCURS {B5} {0}            ; |1348| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+B10(88),B4      ; |1349| 
           MVK     .S2     271,B5            ; |1349| 
           ADDK    .S2     520,SP            ; |1350| 
           MV      .L2X    A11,B3            ; |1350| 
           NOP             1
           STB     .D2T1   A10,*+B4[B5]      ; |1349| 

           LDDW    .D2T1   *++SP,A11:A10     ; |1350| 
||         RET     .S2     B3                ; |1350| 

           LDW     .D2T2   *++SP(8),B10      ; |1350| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1350| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation5PauseEb

;******************************************************************************
;* FUNCTION NAME: Interpolation::Pause(bool)                                  *
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
_ZN13Interpolation5PauseEb:
;** --------------------------------------------------------------------------*
;** 329	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);
;** 331	-----------------------    if ( is_emergency_stop == 1 ) goto g4;
           STW     .D2T1   A11,*SP--(8)      ; |324| 
           STDW    .D2T2   B11:B10,*SP--     ; |324| 

           STW     .D2T1   A10,*SP--(8)      ; |324| 
||         MV      .L1     A4,A10            ; |324| 

           MV      .L2     B3,B11            ; |324| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(28),A4      ; |329| 
||         MV      .D2     B4,B10            ; |324| 

$C$RL87:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |329| 
;** --------------------------------------------------------------------------*

           CMPEQ   .L2     B10,1,B0          ; |331| 
||         MV      .L1     A4,A11            ; |329| 
||         MV      .S1     A10,A4            ; |332| 

   [ B0]   B       .S1     $C$L55            ; |331| 
|| [!B0]   LDW     .D1T1   *+A10(32),A3      ; |336| 

   [ B0]   CALL    .S1     _ZN13Interpolation12SetStopStateEv ; |332| 
   [!B0]   LDW     .D1T1   *+A10(116),A4     ; |336| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L55}        ; |331| 
;** --------------------------------------------------------------------------*
;** 336	-----------------------    if ( !(((*this).m_cur_channel_mode == 4)&((*this).m_run_state == 0)) ) goto g8;
;* 1424	-----------------------    (*this).m_run_state = 1;  // [72]
;* 1425	-----------------------    (*this).m_process_state = 0;  // [72]
;* 1428	-----------------------    (*this).m_machining_state = 2u;  // [72]
;* 1429	-----------------------    goto g8;  // [72]

           CMPEQ   .L1     A3,4,A3           ; |336| 
||         MVK     .L2     1,B31             ; |1424| 
||         MVK     .S1     140,A31           ; |1428| 
||         MVK     .D1     2,A30             ; |1428| 
||         ZERO    .S2     B4                ; |1425| 

           CMPEQ   .L1     A4,0,A4           ; |336| 
||         B       .S1     $C$L60            ; |1429| 

           LDW     .D1T1   *+A10(100),A3     ; |341| 
||         AND     .L1     A4,A3,A0          ; |336| 

           LDW     .D1T1   *+A10(104),A4     ; |341| 
   [ A0]   STW     .D1T2   B31,*+A10(116)    ; |1424| 
   [ A0]   STB     .D1T1   A30,*+A10[A31]    ; |1428| 
   [ A0]   STW     .D1T2   B4,*+A10(120)     ; |1425| 
           ; BRANCH OCCURS {$C$L60}          ; |1429| 
;** --------------------------------------------------------------------------*
$C$L55:    
;**	-----------------------g4:
;** 332	-----------------------    Interpolation::SetStopState(this);
;* 1416	-----------------------    if ( !(C$3 = (*(*this).m_channel_config).axis_number) ) goto g7;  // [71]
           ADDKPC  .S2     $C$RL88,B3,0      ; |332| 
$C$RL88:   ; CALL OCCURS {_ZN13Interpolation12SetStopStateEv} {0}  ; |332| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(16),A3      ; |1416| 
           ZERO    .L2     B4                ; |1416| 
           NOP             3
           LDBU    .D1T1   *+A3(2),A0        ; |1416| 
           MVK     .S1     1440,A3
           NOP             3

   [!A0]   BNOP    .S1     $C$L59,4          ; |1416| 
|| [ A0]   LDW     .D1T2   *+A10(88),B6
|| [ A0]   SUB     .L1     A0,1,A31

   [ A0]   MVC     .S2X    A31,ILC
           ; BRANCHCC OCCURS {$C$L59}        ; |1416| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$36 = (*this).m_data+1440;
;**  	-----------------------    U$38 = (*this).m_geometry;
;**  	-----------------------    L$1 = (unsigned)C$3;
;* 1416	-----------------------    i = 0u;  // [71]
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g6:
;* 1417	-----------------------    *U$38++ = *U$36++;  // [71]
;* 1418	-----------------------    (**(i*4+(*this).m_dynamic_info)).current_l = 0.0;  // [71]
;* 1416	-----------------------    ++i;  // [71]
;* 1416	-----------------------    if ( L$1 = L$1-1 ) goto g6;  // [71]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 1416
;*      Loop opening brace source line   : 1416
;*      Loop closing brace source line   : 1419
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     1        0     
;*      .D units                     3*       2     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             3*       2     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     2        1     
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
;*      For further improvement on this loop, try option -mh16
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L56:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;18               ; (P) 
||         LDW     .D1T2   *+A10(92),B6
||         ADD     .L2X    A3,B6,B7

;** --------------------------------------------------------------------------*
$C$L57:    ; PIPED LOOP KERNEL

           SPMASK          L1,S1
||         MV      .L1     A10,A7
||         MV      .S1X    B4,A6
||         LDDW    .D2T2   *B7++,B5:B4       ; |1417| (P) <0,0>  ^ 

           LDW     .D1T1   *+A7(96),A4       ; |1418| (P) <0,1> 
           NOP             3
           STDW    .D2T2   B5:B4,*B6++       ; |1417| (P) <0,5>  ^ 
           LDW     .D1T1   *+A4[A6],A3       ; |1418| (P) <0,6> 
           NOP             4
           ADD     .L1     1,A6,A6           ; |1416| (P) <0,11> 
           NOP             3

           ZERO    .L1     A5:A4             ; |1418| <0,15> 
||         ADDK    .S1     328,A3            ; |1418| <0,15> 

           SPKERNEL 0,0
||         STDW    .D1T1   A5:A4,*A3         ; |1418| <0,16> 

;** --------------------------------------------------------------------------*
$C$L58:    ; PIPED LOOP EPILOG
           MV      .L1     A7,A10
           NOP             9
           NOP             1
;** --------------------------------------------------------------------------*
$C$L59:    
;**	-----------------------g7:
;* 1420	-----------------------    (**((*this).m_trajectory_index*4+(*this).m_dynamic_info)).current_l = 0.0;  // [71]

           MVK     .S1     17072,A3          ; |1420| 
||         LDW     .D1T1   *+A10(96),A4      ; |1420| 

           LDBU    .D1T1   *+A10[A3],A3      ; |1420| 
           NOP             4
           LDW     .D1T1   *+A4[A3],A3       ; |1420| 
           ZERO    .L1     A5:A4             ; |1420| 
           NOP             3
           ADDK    .S1     328,A3            ; |1420| 
           STDW    .D1T1   A5:A4,*A3         ; |1420| 
           LDW     .D1T1   *+A10(104),A4     ; |341| 
           LDW     .D1T1   *+A10(100),A3     ; |341| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L60:    
;**	-----------------------g8:
;** 341	-----------------------    if ( (*this).m_interpolation_algorithm != (struct nterpolationAlgorithm *)(*this).m_quick_move_interpolation ) goto g15;
           NOP             1
           CMPEQ   .L1     A3,A4,A0          ; |341| 

   [!A0]   BNOP    .S1     $C$L62,4          ; |341| 
|| [ A0]   LDW     .D1T1   *+A10(16),A3      ; |343| 

   [ A0]   LDBU    .D1T1   *+A3(2),A0        ; |343| 
           ; BRANCHCC OCCURS {$C$L62}        ; |341| 
;** --------------------------------------------------------------------------*
;** 343	-----------------------    if ( !(C$2 = (*(*this).m_channel_config).axis_number) ) goto g15;
           NOP             4

   [!A0]   B       .S2     $C$L62            ; |343| 
|| [ A0]   LDW     .D1T1   *+A10(96),A4
|| [ A0]   MVKL    .S1     0xe2308c3a,A6
|| [ A0]   MVK     .L2     1,B5              ; |345| 
|| [ A0]   MVK     .L1     2,A5              ; |348| 
||         MV      .D2X    A0,B0

   [ A0]   MVK     .S2     372,B6            ; |348| 
   [ A0]   MVKL    .S1     0x3e45798e,A7
   [ A0]   MVKH    .S1     0xe2308c3a,A6
   [ A0]   MVKH    .S1     0x3e45798e,A7
   [ A0]   MVK     .S1     320,A16           ; |344| 
           ; BRANCHCC OCCURS {$C$L62}        ; |343| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$65 = (*this).m_dynamic_info;
;**  	-----------------------    L$2 = (int)C$2;
;**  	-----------------------    #pragma MUST_ITERATE(1, 255, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 343
;*      Loop opening brace source line   : 343
;*      Loop closing brace source line   : 350
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 255                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 14
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2*       1     
;*      .D units                     2*       2*    
;*      .M units                     0        0     
;*      .X cross paths               1        2*    
;*      .T address paths             2*       2*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Did not find schedule
;*      Disqualified loop: Did not find schedule
;*----------------------------------------------------------------------------*
$C$L61:    
;**	-----------------------g11:
;** 344	-----------------------    U$66 = *U$65++;
;** 344	-----------------------    if ( (*U$66).current_f > 1.00000000000000002092e-8 ) goto g13;
;** 348	-----------------------    (*U$66).run_state = 2;
;** 348	-----------------------    goto g14;
;**	-----------------------g13:
;** 345	-----------------------    (*U$66).run_state = 1;
;**	-----------------------g14:
;** 343	-----------------------    if ( L$2 = L$2-1 ) goto g11;
           LDW     .D1T1   *A4++,A3          ; |344| 
           NOP             4
;** --------------------------------------------------------------------------*

           ADD     .L2X    B6,A3,B4          ; |345| 
||         ADD     .L1     A16,A3,A8         ; |344| 

           LDDW    .D1T1   *A8,A9:A8         ; |344| 
           SUB     .L2     B0,1,B0           ; |343| 
   [ B0]   BNOP    .S1     $C$L61,2          ; |343| 
           CMPGTDP .S1     A9:A8,A7:A6,A0    ; |344| 
           ADD     .L1X    B6,A3,A3          ; |348| 

   [ A0]   STW     .D2T2   B5,*B4            ; |345| 
|| [!A0]   STW     .D1T1   A5,*A3            ; |348| 

           ; BRANCHCC OCCURS {$C$L61}        ; |343| 
;** --------------------------------------------------------------------------*
$C$L62:    
;**	-----------------------g15:
;** 352	-----------------------    (*this).m_machining_state = 2u;
;** 354	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;**  	-----------------------    return;

           LDW     .D1T1   *+A10(28),A4      ; |354| 
||         MVK     .S1     140,A5            ; |352| 
||         MVK     .L1     2,A3              ; |352| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         STB     .D1T1   A3,*+A10[A5]      ; |352| 
||         MV      .L2X    A11,B4            ; |354| 

$C$RL89:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |354| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *++SP(8),A10      ; |358| 
||         MV      .L2     B11,B3            ; |358| 

           LDDW    .D2T2   *++SP,B11:B10     ; |358| 
||         RET     .S2     B3                ; |358| 

           LDW     .D2T1   *++SP(8),A11      ; |358| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |358| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation4InitEv

;******************************************************************************
;* FUNCTION NAME: Interpolation::Init()                                       *
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
_ZN13Interpolation4InitEv:
;** --------------------------------------------------------------------------*
;** 377	-----------------------    ti_sysbios_gates_GateHwi_Params__init__S(&gate_params, NULL, 24u, 8u);  // [13]
;** 429	-----------------------    R$9 = (struct i_sysbios_gates_GateHwi_Object *)ti_sysbios_gates_GateHwi_Object__create__S(NULL, 0u, NULL, &gate_params, 24u, NULL);  // [14]
;** 103	-----------------------    (*this).m_gate_hwi = R$9;
;** 104	-----------------------    if ( R$9 == NULL ) goto g37;
           STW     .D2T1   A11,*SP--(8)      ; |95| 
           STW     .D2T1   A10,*SP--(8)      ; |95| 
           STDW    .D2T2   B13:B12,*SP--     ; |95| 
           STDW    .D2T2   B11:B10,*SP--     ; |95| 
           STDW    .D2T1   A15:A14,*SP--     ; |95| 
           STDW    .D2T1   A13:A12,*SP--     ; |95| 
           STW     .D2T2   B3,*SP--(40)      ; |95| 
           MV      .L1     A4,A10            ; |95| 

           ADD     .L1X    4,SP,A4           ; |377| 
||         ZERO    .L2     B4                ; |377| 
||         MVK     .S1     0x18,A6           ; |377| 
||         MVK     .D2     0x8,B6            ; |377| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_Params__init__S,B3

$C$RL90:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_Params__init__S} {0}  ; |377| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B4                ; |429| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_Object__create__S,B3
||         ZERO    .L1     A4                ; |429| 
||         ZERO    .D1     A6                ; |429| 
||         ADD     .L2     4,SP,B6           ; |429| 
||         MVK     .S1     0x18,A8           ; |429| 
||         ZERO    .D2     B8                ; |429| 

$C$RL91:   ; CALL OCCURS {ti_sysbios_gates_GateHwi_Object__create__S} {0}  ; |429| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |429| 
   [!A0]   B       .S1     $C$L76            ; |104| 
   [ A0]   CALL    .S1     _Znwj             ; |111| 
           MVK     .S1     0x18,A4           ; |111| 
           STW     .D1T1   A0,*+A10(28)      ; |103| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L76}        ; |104| 
;** --------------------------------------------------------------------------*
;** 111	-----------------------    $P$T22 = (struct Z14CircularBufferI8LineDataE *)operator new (24u);
;** 111	-----------------------    ($P$T22 != NULL) ? (S$8 = CircularBuffer<LineData>::CircularBuffer($P$T22, 200)) : (S$8 = NULL);
           ADDKPC  .S2     $C$RL92,B3,0      ; |111| 
$C$RL92:   ; CALL OCCURS {_Znwj} {0}         ; |111| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A4,B0             ; |111| 
||         ZERO    .L1     A0                ; |111| 
||         MVK     .S2     0xc8,B4           ; |111| 

   [!B0]   B       .S2     $C$L63            ; |111| 
|| [ B0]   MVK     .L1     0x1,A0            ; |111| nullify predicate
|| [!B0]   MVK     .S1     0x18,A4           ; |117| 
|| [!B0]   STW     .D1T1   A0,*+A10(52)      ; |111| 

   [ B0]   CALL    .S1     _ZN14CircularBufferI8LineDataEC1Ei ; |111| 
   [!A0]   BNOP    .S1     $C$L76,3          ; |112| 
           ; BRANCHCC OCCURS {$C$L63}        ; |111| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     $C$RL93,B3,0      ; |111| 
$C$RL93:   ; CALL OCCURS {_ZN14CircularBufferI8LineDataEC1Ei} {0}  ; |111| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |111| 
   [!A0]   BNOP    .S1     $C$L76,2          ; |112| 

           STW     .D1T1   A0,*+A10(52)      ; |111| 
||         MVK     .S1     0x18,A4           ; |117| 

;** --------------------------------------------------------------------------*
$C$L63:    
;** 111	-----------------------    (*this).m_auto_buffer = S$8;
;** 112	-----------------------    if ( S$8 == NULL ) goto g37;
   [ A0]   CALL    .S1     _Znwj             ; |117| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L76}        ; |112| 
;** --------------------------------------------------------------------------*
;** 117	-----------------------    $P$T22 = (struct Z14CircularBufferI8LineDataE *)operator new (24u);
;** 117	-----------------------    ($P$T22 != NULL) ? (S$7 = CircularBuffer<LineData>::CircularBuffer($P$T22, 50)) : (S$7 = NULL);
           ADDKPC  .S2     $C$RL94,B3,3      ; |117| 
$C$RL94:   ; CALL OCCURS {_Znwj} {0}         ; |117| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A4,B0             ; |117| 
||         ZERO    .L1     A0                ; |117| 
||         MVK     .S2     0x32,B4           ; |117| 

   [!B0]   B       .S2     $C$L64            ; |117| 
|| [ B0]   MVK     .L1     0x1,A0            ; |125| nullify predicate
|| [!B0]   MVK     .S1     0xee8,A11         ; |125| 
|| [!B0]   STW     .D1T1   A0,*+A10(56)      ; |117| 

   [ B0]   CALL    .S1     _ZN14CircularBufferI8LineDataEC1Ei ; |117| 
|| [!B0]   MV      .L1     A11,A4            ; |125| 

   [!A0]   BNOP    .S1     $C$L76,3          ; |118| 
           ; BRANCHCC OCCURS {$C$L64}        ; |117| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     $C$RL95,B3,0      ; |117| 
$C$RL95:   ; CALL OCCURS {_ZN14CircularBufferI8LineDataEC1Ei} {0}  ; |117| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |117| 
   [!A0]   BNOP    .S1     $C$L76,1          ; |118| 
           MVK     .S1     0xee8,A11         ; |125| 

           MV      .L1     A11,A4            ; |125| 
||         STW     .D1T1   A0,*+A10(56)      ; |117| 

;** --------------------------------------------------------------------------*
$C$L64:    
;** 117	-----------------------    (*this).m_non_auto_buffer = S$7;
;** 118	-----------------------    if ( S$7 == NULL ) goto g37;
   [ A0]   CALL    .S1     _Znwj             ; |125| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L76}        ; |118| 
;** --------------------------------------------------------------------------*
;** 125	-----------------------    $P$T23 = (struct ineData *)operator new (K$26 = 3816u);
;** 125	-----------------------    if ( $P$T23 ) goto g6;
;** 125	-----------------------    S$6 = NULL;
;** 125	-----------------------    goto g7;
           ADDKPC  .S2     $C$RL96,B3,3      ; |125| 
$C$RL96:   ; CALL OCCURS {_Znwj} {0}         ; |125| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |125| 
||         MVK     .S1     1344,A14
||         MVK     .S2     1352,B12
||         ZERO    .D1     A3                ; |125| 
||         ZERO    .L2     B4                ; |125| 

           STW     .D2T1   A0,*+SP(28)       ; |125| 
|| [!A0]   B       .S2     $C$L65            ; |125| 
|| [!A0]   MVK     .S1     0x208,A11         ; |127| 
||         MV      .L1     A11,A6            ; |125| 

   [ A0]   CALL    .S1     memset            ; |125| 
||         MVK     .S2     1432,B11

   [!A0]   CALL    .S1     _Znwj             ; |127| 
||         MVK     .S2     280,B13

           MVK     .S1     3144,A12
||         MVK     .S2     3128,B10

           MVK     .S1     3008,A13
           MVK     .S1     1400,A15
           ; BRANCHCC OCCURS {$C$L65}        ; |125| 
;** --------------------------------------------------------------------------*
;**	-----------------------g6:
;** 125	-----------------------    memset((void *)$P$T23, 0, K$26);
;**  	-----------------------    CoordInfo::CoordInfo((struct oordInfo *)$P$T23+280);
;**  	-----------------------    AxisDataMode::AxisDataMode((struct xisDataMode *)$P$T23+1344);
;**  	-----------------------    FeedInfo::FeedInfo((struct eedInfo *)$P$T23+1352);
;**  	-----------------------    SpindleInfo::SpindleInfo((struct pindleInfo *)$P$T23+1400);
;**  	-----------------------    AxisMovData::AxisMovData((struct xisMovData *)$P$T23+1432);
;**  	-----------------------    ExtraMovData::ExtraMovData((struct xtraMovData *)$P$T23+3008);
;**  	-----------------------    MCommands::MCommands((struct Commands *)$P$T23+3128);
;**  	-----------------------    ParaEntry::ParaEntry((struct araEntry *)$P$T23+3144);
;** 125	-----------------------    S$6 = $P$T23;
           ADDKPC  .S2     $C$RL97,B3,0      ; |125| 
$C$RL97:   ; CALL OCCURS {memset} {0}        ; |125| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(28),A11      ; |125| 
           NOP             4

           CALLP   .S2     _ZN9CoordInfoC1Ev,B3
||         ADD     .L1X    B13,A11,A4

$C$RL98:   ; CALL OCCURS {_ZN9CoordInfoC1Ev} {0} 

           CALLP   .S2     _ZN12AxisDataModeC1Ev,B3
||         ADD     .L1     A14,A11,A4

$C$RL99:   ; CALL OCCURS {_ZN12AxisDataModeC1Ev} {0} 

           CALLP   .S2     _ZN8FeedInfoC1Ev,B3
||         ADD     .L1X    B12,A11,A4

$C$RL100:  ; CALL OCCURS {_ZN8FeedInfoC1Ev} {0} 

           CALLP   .S2     _ZN11SpindleInfoC1Ev,B3
||         ADD     .L1     A15,A11,A4

$C$RL101:  ; CALL OCCURS {_ZN11SpindleInfoC1Ev} {0} 

           CALLP   .S2     _ZN11AxisMovDataC1Ev,B3
||         ADD     .L1X    B11,A11,A4

$C$RL102:  ; CALL OCCURS {_ZN11AxisMovDataC1Ev} {0} 

           CALLP   .S2     _ZN12ExtraMovDataC1Ev,B3
||         ADD     .L1     A13,A11,A4

$C$RL103:  ; CALL OCCURS {_ZN12ExtraMovDataC1Ev} {0} 

           CALLP   .S2     _ZN9MCommandsC1Ev,B3
||         ADD     .L1X    B10,A11,A4

$C$RL104:  ; CALL OCCURS {_ZN9MCommandsC1Ev} {0} 

           CALLP   .S2     _ZN9ParaEntryC1Ev,B3
||         ADD     .L1     A12,A11,A4

$C$RL105:  ; CALL OCCURS {_ZN9ParaEntryC1Ev} {0} 
;** --------------------------------------------------------------------------*
           CALL    .S1     _Znwj             ; |127| 
           MV      .L1     A11,A3            ; |125| 
           MVK     .S1     0x208,A11         ; |127| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L65:    
;**	-----------------------g7:
;** 125	-----------------------    (*this).m_data = S$6;
;** 127	-----------------------    $P$T24 = (struct eometry *)operator new (K$49 = 520u);
;** 127	-----------------------    if ( $P$T24 ) goto g9;
;** 127	-----------------------    S$5 = NULL;
;** 127	-----------------------    goto g10;
           MV      .L1     A11,A4            ; |127| 

           STW     .D1T1   A3,*+A10(88)      ; |125| 
||         ADDKPC  .S2     $C$RL106,B3,0     ; |127| 

$C$RL106:  ; CALL OCCURS {_Znwj} {0}         ; |127| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A4,B0             ; |127| 
||         ZERO    .L1     A0                ; |127| 
||         MV      .S1     A11,A6            ; |127| 
||         ZERO    .S2     B4                ; |127| 
||         MV      .D1     A4,A12            ; |127| 

   [!B0]   B       .S2     $C$L66            ; |127| 
|| [ B0]   MVK     .L1     0x1,A0            ; |127| nullify predicate
|| [!B0]   MVK     .S1     512,A3            ; |133| 
|| [!B0]   STW     .D1T1   A0,*+A10(92)      ; |127| 

   [ B0]   CALL    .S1     memset            ; |127| 
|| [!B0]   ADD     .L1     A3,A0,A3          ; |133| 

   [!A0]   BNOP    .S1     $C$L76,3          ; |128| 
           ; BRANCHCC OCCURS {$C$L66}        ; |127| 
;** --------------------------------------------------------------------------*
;**	-----------------------g9:
;** 127	-----------------------    memset((void *)$P$T24, 0, K$49);
;** 127	-----------------------    S$5 = $P$T24;
           ADDKPC  .S2     $C$RL107,B3,0     ; |127| 
$C$RL107:  ; CALL OCCURS {memset} {0}        ; |127| 
;** --------------------------------------------------------------------------*
           MV      .L1     A12,A0            ; |127| 
   [!A0]   BNOP    .S1     $C$L76,1          ; |128| 
           MVK     .S1     512,A3            ; |133| 

           STW     .D1T1   A0,*+A10(92)      ; |127| 
||         ADD     .L1     A3,A0,A3          ; |133| 

;** --------------------------------------------------------------------------*
$C$L66:    
;**	-----------------------g10:
;** 127	-----------------------    (*this).m_geometry = S$5;
;** 128	-----------------------    if ( S$5 == NULL ) goto g37;
   [ A0]   LDW     .D1T1   *+A10(88),A4      ; |133| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L76}        ; |128| 
;** --------------------------------------------------------------------------*
;** 133	-----------------------    (*S$5).end_data = (*this).m_data;
;** 135	-----------------------    if ( !(C$58 = (*(*this).m_channel_config).axis_number) ) goto g14;
;**  	-----------------------    L$1 = (unsigned)C$58;
;** 135	-----------------------    i = 0u;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           ZERO    .L2     B7                ; |135| 
           NOP             2
           STW     .D1T1   A4,*A3            ; |133| 
           LDW     .D1T1   *+A10(16),A3      ; |135| 
           NOP             4
           LDBU    .D1T1   *+A3(2),A0        ; |135| 
           NOP             4

   [!A0]   BNOP    .S1     $C$L70,4          ; |135| 
|| [!A0]   LDW     .D1T1   *+A10(16),A3      ; |141| 
|| [ A0]   SUB     .L1     A0,1,A3

   [!A0]   LDBU    .D1T1   *+A3(2),A3        ; |141| 
           ; BRANCHCC OCCURS {$C$L70}        ; |135| 
;** --------------------------------------------------------------------------*
;**	-----------------------g13:
;** 136	-----------------------    C$57 = i<<3;
;** 136	-----------------------    *((i<<3)+(*this).m_geometry) = *((*this).m_realtime_state+C$57+512);
;** 137	-----------------------    *((*this).m_data+C$57+1440) = *((*this).m_realtime_state+C$57+512);
;** 135	-----------------------    ++i;
;** 135	-----------------------    if ( L$1 = L$1-1 ) goto g13;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 135
;*      Loop opening brace source line   : 135
;*      Loop closing brace source line   : 138
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 12
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        3     
;*      .D units                     4*       4*    
;*      .M units                     0        0     
;*      .X cross paths               1        1     
;*      .T address paths             4*       4*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        2     
;*      Bound(.L .S .D .LS .LSD)     2        4*    
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
$C$L67:    ; PIPED LOOP PROLOG

           SPLOOPD 12      ;24               ; (P) 
||         MV      .L1     A10,A3
||         MVC     .S2X    A3,ILC

;** --------------------------------------------------------------------------*
$C$L68:    ; PIPED LOOP KERNEL
           LDW     .D1T2   *+A3(88),B9       ; |137| (P) <0,0> 
           LDW     .D1T2   *+A3(24),B8       ; |137| (P) <0,1> 
           LDW     .D1T1   *+A3(24),A4       ; |136| (P) <0,2> 
           NOP             3
           SHL     .S2     B7,3,B4           ; |136| (P) <0,6> 

           SPMASK          D2
||         MV      .D2X    A10,B6
||         ADD     .L2     B4,B9,B17         ; |137| (P) <0,7> 
||         ADD     .S2     B4,B8,B16         ; |137| (P) <0,7> 

           LDW     .D2T1   *+B6(92),A4       ; |136| (P) <0,8> 
||         ADDK    .S2     512,B16           ; |137| (P) <0,8> 
||         ADD     .L1X    B4,A4,A4          ; |136| (P) <0,8> 

           ADDK    .S2     1440,B17          ; |137| (P) <0,9> 
||         ADDK    .S1     512,A4            ; |136| (P) <0,9> 

           MVD     .M2     B17,B5            ; |137| (P) <0,10> Split a long life
||         LDDW    .D1T1   *A4,A5:A4         ; |136| (P) <0,10>  ^ 

           NOP             2
           MV      .L2X    A4,B4             ; |136| <0,13> Define a twin register
           NOP             1
           STDW    .D2T1   A5:A4,*+B4[B7]    ; |136| <0,15>  ^ 
           LDDW    .D2T2   *B16,B9:B8        ; |137| <0,16>  ^ 
           ADD     .L2     1,B7,B7           ; |135| <0,17> Define a twin register
           NOP             2
           NOP             1

           SPKERNEL 0,0
||         STDW    .D2T2   B9:B8,*B5         ; |137| <0,21>  ^ 

;** --------------------------------------------------------------------------*
$C$L69:    ; PIPED LOOP EPILOG
           MV      .L1     A3,A10
           NOP             9
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(16),A3      ; |141| 
           NOP             4
           LDBU    .D1T1   *+A3(2),A3        ; |141| 
;** --------------------------------------------------------------------------*
$C$L70:    
;**	-----------------------g14:
;** 141	-----------------------    (*this).m_dynamic_info = operator new[] (((unsigned)(*(*this).m_channel_config).axis_number+1u)*4u);
;**  	-----------------------    K$93 = 376u;
;**  	-----------------------    U$98 = 0;
;** 143	-----------------------    i = 0u;
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
           CALL    .S1     _Znaj             ; |141| 
           ADDKPC  .S2     $C$RL108,B3,2     ; |141| 
           ADD     .L1     1,A3,A3           ; |141| 
           SHL     .S1     A3,2,A4           ; |141| 
$C$RL108:  ; CALL OCCURS {_Znaj} {0}         ; |141| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _Znwj             ; |144| 
           MVK     .S1     0x178,A14
           STW     .D1T1   A4,*+A10(96)      ; |141| 
           MV      .L1     A14,A4            ; |144| 

           ZERO    .L1     A12               ; |143| 
||         ZERO    .S1     A13               ; |143| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L71:    
;**	-----------------------g15:
;** 144	-----------------------    $P$T28 = (struct ynamicInfo *)operator new (K$93);
;** 144	-----------------------    if ( $P$T28 ) goto g17;
;** 144	-----------------------    S$4 = NULL;
;** 144	-----------------------    goto g18;
           ADDKPC  .S2     $C$RL109,B3,0     ; |144| 
$C$RL109:  ; CALL OCCURS {_Znwj} {0}         ; |144| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |144| 

   [!A0]   LDW     .D1T2   *+A10(96),B4      ; |144| 
|| [!A0]   B       .S1     $C$L72            ; |144| 

   [ A0]   CALL    .S1     memset            ; |144| 
|| [!A0]   LDW     .D1T1   *+A10(96),A3      ; |145| 

   [!A0]   ZERO    .L2     B10               ; |144| 
           NOP             2
   [!A0]   ADD     .L2X    A13,B4,B4         ; |144| 
           ; BRANCHCC OCCURS {$C$L72}        ; |144| 
;** --------------------------------------------------------------------------*
;**	-----------------------g17:
;** 144	-----------------------    memset((void *)$P$T28, 0, K$93);
;** 144	-----------------------    S$4 = $P$T28;

           MV      .L1     A14,A6            ; |144| 
||         ZERO    .L2     B4                ; |144| 
||         MV      .S1     A4,A11            ; |144| 
||         ADDKPC  .S2     $C$RL110,B3,0     ; |144| 

$C$RL110:  ; CALL OCCURS {memset} {0}        ; |144| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A10(96),B4      ; |144| 
           LDW     .D1T1   *+A10(96),A3      ; |145| 
           MV      .L2X    A11,B10           ; |144| 
           NOP             2
           ADD     .L2X    A13,B4,B4         ; |144| 
;** --------------------------------------------------------------------------*
$C$L72:    
;**	-----------------------g18:
;** 144	-----------------------    *((*this).m_dynamic_info+U$98) = S$4;
;** 145	-----------------------    if ( *((*this).m_dynamic_info+U$98) == NULL ) goto g37;

           STW     .D2T2   B10,*B4           ; |144| 
||         ADD     .L1     A13,A3,A3         ; |145| 

           LDW     .D1T1   *A3,A0            ; |145| 
           NOP             4

   [!A0]   BNOP    .S2     $C$L76,4          ; |145| 
|| [ A0]   LDW     .D1T1   *+A10(16),A3      ; |143| 
|| [ A0]   ADD     .L1     4,A13,A13         ; |143| 
|| [ A0]   ADD     .S1     1,A12,A12         ; |143| 

   [ A0]   LDBU    .D1T1   *+A3(2),A4        ; |143| 
           ; BRANCHCC OCCURS {$C$L76}        ; |145| 
;** --------------------------------------------------------------------------*
;** 143	-----------------------    U$98 += 4;
;** 143	-----------------------    U$61 = (*(*this).m_channel_config).axis_number;
;** 143	-----------------------    if ( (unsigned)U$61 >= (++i) ) goto g15;
;** 153	-----------------------    (*this).m_axis_manual_move_mod = operator new[] ((unsigned)U$61);
           NOP             4
           CMPLTU  .L1     A4,A12,A0         ; |143| 
   [!A0]   B       .S1     $C$L71            ; |143| 
   [!A0]   CALL    .S1     _Znwj             ; |144| 
   [ A0]   CALL    .S1     _Znaj             ; |153| 
   [!A0]   MV      .L1     A14,A4            ; |144| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L71}        ; |143| 
;** --------------------------------------------------------------------------*
;** 155	-----------------------    if ( (*this).m_axis_manual_move_mod == NULL ) goto g37;
           ADDKPC  .S2     $C$RL111,B3,1     ; |153| 
$C$RL111:  ; CALL OCCURS {_Znaj} {0}         ; |153| 
;** --------------------------------------------------------------------------*

           MVK     .S1     17052,A3          ; |153| 
||         MVK     .S2     17052,B4          ; |155| 

           ADD     .L1     A3,A10,A3         ; |153| 
||         ADD     .L2X    B4,A10,B4         ; |155| 

           STW     .D1T1   A4,*A3            ; |153| 
           LDW     .D2T2   *B4,B0            ; |155| 
           MVK     .S1     0x40,A13          ; |160| 
           MV      .L1     A13,A4            ; |160| 
           NOP             2
   [!B0]   B       .S1     $C$L76            ; |155| 
   [ B0]   CALL    .S1     _Znwj             ; |160| 
           NOP             4
           ; BRANCHCC OCCURS {$C$L76}        ; |155| 
;** --------------------------------------------------------------------------*
;** 160	-----------------------    $P$T25 = (struct uickMoveInterpolation *)operator new (K$109 = 64u);
;** 160	-----------------------    if ( $P$T25 ) goto g23;
;** 160	-----------------------    S$3 = NULL;
;** 160	-----------------------    goto g24;
           ADDKPC  .S2     $C$RL112,B3,0     ; |160| 
$C$RL112:  ; CALL OCCURS {_Znwj} {0}         ; |160| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A4,B0             ; |30| 
||         MVKL    .S1     _ZTV22QuickMoveInterpolation+8,A14
||         MV      .L1     A4,A11            ; |160| 
||         ZERO    .D1     A0                ; |160| 

   [!B0]   B       .S2     $C$L73            ; |160| 
|| [ B0]   LDBU    .D1T1   *+A10(12),A15     ; |160| 
||         MVKH    .S1     _ZTV22QuickMoveInterpolation+8,A14
|| [ B0]   MVK     .L1     0x1,A0            ; |168| nullify predicate

   [ B0]   LDW     .D1T1   *+A10(16),A12     ; |160| 
|| [!B0]   MVK     .S2     96,B5             ; |168| 
|| [!B0]   MV      .L1     A0,A4             ; |168| 

   [ B0]   LDW     .D1T2   *+A10(24),B8      ; |30| 

   [ B0]   CALL    .S1     _ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState ; |30| 
|| [ B0]   LDW     .D1T1   *+A10(96),A6      ; |30| 

   [ B0]   LDW     .D1T2   *+A10(92),B4      ; |30| 
|| [!A0]   B       .S1     $C$L76            ; |163| 

   [!B0]   STW     .D1T1   A0,*+A10(104)     ; |160| 
           ; BRANCHCC OCCURS {$C$L73}        ; |160| 
;** --------------------------------------------------------------------------*
;**	-----------------------g23:
;** 160	-----------------------    channel_index = (*this).m_channel_index;
;** 160	-----------------------    channel_config = (*this).m_channel_config;
;** 30	-----------------------    InterpolationAlgorithm::InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)$P$T25, (*this).m_geometry, (*this).m_dynamic_info, (int)channel_index, channel_config, (*this).m_realtime_state);  // [82]
;** 30	-----------------------    (*$P$T25).__b_22InterpolationAlgorithm.__vptr = &Virtual function table for QuickMoveInterpolation[2];  // [82]
;** 31	-----------------------    QuickMoveInterpolation::SetChannelIndex($P$T25, (int)channel_index, channel_config);  // [82]
;** 32	-----------------------    S$3 = $P$T25;  // [82]
           MV      .L2X    A15,B6            ; |30| 
           ADDKPC  .S2     $C$RL113,B3,0     ; |30| 
           MV      .L1     A12,A8            ; |30| 
$C$RL113:  ; CALL OCCURS {_ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState} {0}  ; |30| 
;** --------------------------------------------------------------------------*
           MV      .L1     A11,A0            ; |31| 

           CALLP   .S2     _ZN22QuickMoveInterpolation15SetChannelIndexEiP18NCCCTChannelConfig,B3
||         STW     .D1T1   A14,*A0           ; |30| 
||         MV      .L1     A11,A4            ; |31| 
||         MV      .L2X    A15,B4            ; |31| 
||         MV      .S1     A12,A6            ; |31| 

$C$RL114:  ; CALL OCCURS {_ZN22QuickMoveInterpolation15SetChannelIndexEiP18NCCCTChannelConfig} {0}  ; |31| 
;** --------------------------------------------------------------------------*
           MV      .L1     A11,A0            ; |31| 
   [!A0]   B       .S1     $C$L76            ; |163| 

           STW     .D1T1   A0,*+A10(104)     ; |160| 
||         MV      .L1     A0,A4             ; |168| 
||         MVK     .S2     96,B5             ; |168| 

;** --------------------------------------------------------------------------*
$C$L73:    
;**	-----------------------g24:
;** 160	-----------------------    (*this).m_quick_move_interpolation = S$3;
;** 163	-----------------------    if ( S$3 == NULL ) goto g37;
   [ A0]   LDW     .D1T1   *A0,A3            ; |168| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L76}        ; |163| 
;** --------------------------------------------------------------------------*
;** 168	-----------------------    if ( !(result = (*(int (*)())*((*S$3).__b_22InterpolationAlgorithm.__vptr+8))(S$3, (int)(*(*this).m_channel_config).speed_profile_type)) ) goto g27;
;** 173	-----------------------    return result;
           LDW     .D1T2   *+A10(16),B4      ; |168| 
           LDW     .D1T1   *+A3(8),A3        ; |168| 
           NOP             4
           CALL    .S2X    A3                ; |168| 
           LDBU    .D2T2   *+B4[B5],B4       ; |168| 
           ADDKPC  .S2     $C$RL115,B3,3     ; |168| 
$C$RL115:  ; CALL OCCURS {A3} {0}            ; |168| 
;** --------------------------------------------------------------------------*
           EXT     .S1     A4,16,16,A0       ; |168| 
   [ A0]   B       .S1     $C$L85            ; |173| 
   [!A0]   CALL    .S1     _Znwj             ; |176| 
           MV      .L1     A13,A4            ; |176| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L85}        ; |173| 
;** --------------------------------------------------------------------------*
;**	-----------------------g27:
;** 176	-----------------------    $P$T26 = (struct ineInterpolation *)operator new (K$109);
;** 176	-----------------------    if ( $P$T26 ) goto g29;
;** 176	-----------------------    S$2 = NULL;
;** 176	-----------------------    goto g30;
           ADDKPC  .S2     $C$RL116,B3,0     ; |176| 
$C$RL116:  ; CALL OCCURS {_Znwj} {0}         ; |176| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |176| 
||         MVKL    .S1     _ZTV17LineInterpolation+8,A13
||         ZERO    .D1     A3                ; |176| 

   [!A0]   B       .S2     $C$L74            ; |176| 
|| [ A0]   LDW     .D1T1   *+A10(16),A12     ; |176| 
||         MVKH    .S1     _ZTV17LineInterpolation+8,A13
||         MV      .L1     A4,A11            ; |176| 

   [ A0]   LDBU    .D1T1   *+A10(12),A14     ; |176| 
   [ A0]   LDW     .D1T2   *+A10(92),B4      ; |27| 

   [ A0]   CALL    .S1     _ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState ; |27| 
|| [ A0]   LDW     .D1T1   *+A10(96),A6      ; |27| 

   [ A0]   LDW     .D1T2   *+A10(24),B8      ; |27| 
   [!A0]   LDW     .D1T1   *+A10(104),A0     ; |179| 
           ; BRANCHCC OCCURS {$C$L74}        ; |176| 
;** --------------------------------------------------------------------------*
;**	-----------------------g29:
;** 176	-----------------------    channel_index = (*this).m_channel_index;
;** 176	-----------------------    channel_config = (*this).m_channel_config;
;** 27	-----------------------    InterpolationAlgorithm::InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)$P$T26, (*this).m_geometry, (*this).m_dynamic_info, (int)channel_index, channel_config, (*this).m_realtime_state);  // [85]
;** 27	-----------------------    (*$P$T26).__b_22InterpolationAlgorithm.__vptr = &Virtual function table for LineInterpolation[2];  // [85]
;** 28	-----------------------    LineInterpolation::SetChannelIndex($P$T26, (int)channel_index, channel_config);  // [85]
;** 29	-----------------------    S$2 = $P$T26;  // [85]
           MV      .L1     A12,A8            ; |27| 
           ADDKPC  .S2     $C$RL117,B3,0     ; |27| 
           MV      .L2X    A14,B6            ; |27| 
$C$RL117:  ; CALL OCCURS {_ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState} {0}  ; |27| 
;** --------------------------------------------------------------------------*
           MV      .L1     A11,A3            ; |28| 

           CALLP   .S2     _ZN17LineInterpolation15SetChannelIndexEiP18NCCCTChannelConfig,B3
||         STW     .D1T1   A13,*A3           ; |27| 
||         MV      .L1     A11,A4            ; |28| 
||         MV      .L2X    A14,B4            ; |28| 
||         MV      .S1     A12,A6            ; |28| 

$C$RL118:  ; CALL OCCURS {_ZN17LineInterpolation15SetChannelIndexEiP18NCCCTChannelConfig} {0}  ; |28| 
;** --------------------------------------------------------------------------*

           LDW     .D1T1   *+A10(104),A0     ; |179| 
||         MV      .L1     A11,A3            ; |29| 

;** --------------------------------------------------------------------------*
$C$L74:    
;**	-----------------------g30:
;** 176	-----------------------    (*this).m_line_interpolation = S$2;
;** 179	-----------------------    if ( (*this).m_quick_move_interpolation == NULL ) goto g37;
           MVK     .S2     96,B5             ; |184| 
           MV      .L1     A3,A4             ; |184| 
           STW     .D1T1   A3,*+A10(108)     ; |176| 
           NOP             1

   [!A0]   BNOP    .S1     $C$L76,3          ; |179| 
|| [ A0]   LDW     .D1T1   *A3,A3            ; |184| 

   [ A0]   LDW     .D1T2   *+A10(16),B4      ; |184| 
   [ A0]   LDW     .D1T1   *+A3(8),A3        ; |184| 
           ; BRANCHCC OCCURS {$C$L76}        ; |179| 
;** --------------------------------------------------------------------------*
;** 184	-----------------------    if ( !(result = (*(int (*)())*((*S$2).__b_22InterpolationAlgorithm.__vptr+8))(S$2, (int)(*(*this).m_channel_config).speed_profile_type)) ) goto g33;
;** 189	-----------------------    return result;
           NOP             4
           CALL    .S2X    A3                ; |184| 
           LDBU    .D2T2   *+B4[B5],B4       ; |184| 
           ADDKPC  .S2     $C$RL119,B3,3     ; |184| 
$C$RL119:  ; CALL OCCURS {A3} {0}            ; |184| 
;** --------------------------------------------------------------------------*
           EXT     .S1     A4,16,16,A0       ; |184| 
   [ A0]   B       .S1     $C$L85            ; |189| 
   [!A0]   CALL    .S1     _Znwj             ; |192| 
           MVK     .S1     0xc8,A4           ; |192| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L85}        ; |189| 
;** --------------------------------------------------------------------------*
;**	-----------------------g33:
;** 192	-----------------------    $P$T27 = (struct ircleInterpolation *)operator new (200u);
;** 192	-----------------------    if ( $P$T27 ) goto g35;
;** 192	-----------------------    S$1 = NULL;
;** 192	-----------------------    goto g36;
           ADDKPC  .S2     $C$RL120,B3,0     ; |192| 
$C$RL120:  ; CALL OCCURS {_Znwj} {0}         ; |192| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A4,B0             ; |28| 
||         MVKL    .S2     _ZTV19CircleInterpolation+8,B10
||         MVK     .S1     30,A14            ; |28| 
||         MV      .L1     A4,A11            ; |192| 
||         ZERO    .D1     A0                ; |192| 

   [!B0]   B       .S1     $C$L75            ; |192| 
|| [ B0]   LDBU    .D1T1   *+A10(12),A13     ; |192| 
||         MVKH    .S2     _ZTV19CircleInterpolation+8,B10
|| [ B0]   ZERO    .L1     A0                ; |200| nullify predicate

   [ B0]   LDW     .D1T1   *+A10(16),A12     ; |192| 
|| [!B0]   MVK     .S2     96,B5             ; |200| 
|| [!B0]   MV      .L1     A0,A4             ; |200| 

   [ B0]   LDW     .D1T2   *+A10(24),B8      ; |28| 

   [ B0]   CALL    .S1     _ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState ; |28| 
|| [ B0]   LDW     .D1T1   *+A10(96),A6      ; |28| 

   [ B0]   LDW     .D1T2   *+A10(92),B4      ; |28| 
|| [ A0]   B       .S1     $C$L77            ; |195| 

   [!B0]   STW     .D1T1   A0,*+A10(112)     ; |192| 
           ; BRANCHCC OCCURS {$C$L75}        ; |192| 
;** --------------------------------------------------------------------------*
;**	-----------------------g35:
;** 192	-----------------------    channel_index = (*this).m_channel_index;
;** 192	-----------------------    channel_config = (*this).m_channel_config;
;** 28	-----------------------    InterpolationAlgorithm::InterpolationAlgorithm [subobject]((struct nterpolationAlgorithm *)$P$T27, (*this).m_geometry, (*this).m_dynamic_info, (int)channel_index, channel_config, (*this).m_realtime_state);  // [88]
;** 28	-----------------------    (*$P$T27).__b_22InterpolationAlgorithm.__vptr = &Virtual function table for CircleInterpolation[2];  // [88]
;** 28	-----------------------    (*$P$T27).kMaxIterarionCount = 30;  // [88]
;** 29	-----------------------    CircleInterpolation::SetChannelIndex($P$T27, (int)channel_index, channel_config);  // [88]
;** 30	-----------------------    S$1 = $P$T27;  // [88]
           MV      .L2X    A13,B6            ; |28| 
           ADDKPC  .S2     $C$RL121,B3,0     ; |28| 
           MV      .L1     A12,A8            ; |28| 
$C$RL121:  ; CALL OCCURS {_ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState} {0}  ; |28| 
;** --------------------------------------------------------------------------*

           MV      .L1     A11,A3            ; |29| 
||         STW     .D1T2   B10,*A11          ; |28| 

           CALLP   .S2     _ZN19CircleInterpolation15SetChannelIndexEiP18NCCCTChannelConfig,B3
||         STW     .D1T1   A14,*+A3(48)      ; |28| 
||         MV      .L1     A11,A4            ; |29| 
||         MV      .L2X    A13,B4            ; |29| 
||         MV      .S1     A12,A6            ; |29| 

$C$RL122:  ; CALL OCCURS {_ZN19CircleInterpolation15SetChannelIndexEiP18NCCCTChannelConfig} {0}  ; |29| 
;** --------------------------------------------------------------------------*
           MV      .L1     A11,A0            ; |29| 
   [ A0]   B       .S1     $C$L77            ; |195| 

           STW     .D1T1   A0,*+A10(112)     ; |192| 
||         MV      .L1     A0,A4             ; |200| 
||         MVK     .S2     96,B5             ; |200| 

;** --------------------------------------------------------------------------*
$C$L75:    
;**	-----------------------g36:
;** 192	-----------------------    (*this).m_circle_interpolation = S$1;
;** 195	-----------------------    if ( S$1 ) goto g38;
   [ A0]   LDW     .D1T1   *A0,A3            ; |200| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L77}        ; |195| 
;** --------------------------------------------------------------------------*
$C$L76:    
;**	-----------------------g37:
;** 198	-----------------------    return 2700;
           LDW     .D2T2   *++SP(40),B3      ; |234| 
           LDDW    .D2T1   *++SP,A13:A12     ; |234| 
           LDDW    .D2T1   *++SP,A15:A14     ; |234| 
           LDDW    .D2T2   *++SP,B11:B10     ; |234| 
           LDDW    .D2T2   *++SP,B13:B12     ; |234| 

           LDW     .D2T1   *++SP(8),A10      ; |234| 
||         RET     .S2     B3                ; |234| 

           LDW     .D2T1   *++SP(8),A11      ; |234| 
           MVK     .S1     0xa8c,A0          ; |198| 
           MV      .L1     A0,A4             ; |233| 
           NOP             2
           ; BRANCH OCCURS {B3}              ; |234| 
;** --------------------------------------------------------------------------*
$C$L77:    
;**	-----------------------g38:
;** 200	-----------------------    if ( result = (*(int (*)())*((*S$1).__b_22InterpolationAlgorithm.__vptr+8))(S$1, (int)(*(*this).m_channel_config).speed_profile_type) ) goto g44;
           LDW     .D1T2   *+A10(16),B4      ; |200| 
           LDW     .D1T1   *+A3(8),A3        ; |200| 
           NOP             4
           CALL    .S2X    A3                ; |200| 
           LDBU    .D2T2   *+B4[B5],B4       ; |200| 
           ADDKPC  .S2     $C$RL123,B3,3     ; |200| 
$C$RL123:  ; CALL OCCURS {A3} {0}            ; |200| 
;** --------------------------------------------------------------------------*

           EXT     .S1     A4,16,16,A0       ; |200| 
||         ZERO    .L2     B10               ; |824| 
||         ZERO    .D2     B12               ; |824| 
||         MVK     .S2     140,B13           ; |829| 
||         MVK     .L1     0x2,A14           ; |825| 
||         ADDAD   .D1     A10,16,A12        ; |828| 

   [ A0]   B       .S1     $C$L84            ; |200| 
||         STW     .D2T1   A0,*+SP(28)       ; |430| 

   [!A0]   LDW     .D1T1   *+A10(104),A3     ; |207| 
   [!A0]   LDW     .D1T1   *+A10(52),A11     ; |822| 
           MVK     .S1     17049,A15         ; |832| 
           ZERO    .L1     A13               ; |824| 
           ADD     .L2X    -1,A15,B11
           ; BRANCHCC OCCURS {$C$L84}        ; |200| 
;** --------------------------------------------------------------------------*
;** 207	-----------------------    (*this).m_interpolation_algorithm = (struct nterpolationAlgorithm *)(*this).m_quick_move_interpolation;
;** 822	-----------------------    this = (*this).m_auto_buffer;  // [64]
;** 428	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [99]
;** 430	-----------------------    (*this).m_buffer_cur_length = C$55 = 0;  // [99]
;** 431	-----------------------    (*this).m_write_pointer = (*this).m_buffer;  // [99]
;** 432	-----------------------    (*this).m_read_pointer = (*this).m_buffer;  // [99]
;** 434	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [99]
;** 823	-----------------------    this = (*this).m_non_auto_buffer;  // [64]
;** 428	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [99]
;** 430	-----------------------    (*this).m_buffer_cur_length = C$55;  // [99]
;** 431	-----------------------    (*this).m_write_pointer = (*this).m_buffer;  // [99]
;** 432	-----------------------    (*this).m_read_pointer = (*this).m_buffer;  // [99]
;** 434	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [99]
;** 824	-----------------------    (*this).m_is_channel_mode_changing = C$54 = 0;  // [64]
;** 825	-----------------------    (*this).m_run_state = C$56 = 2;  // [64]
;** 826	-----------------------    (*this).m_process_state = C$56;  // [64]
;** 827	-----------------------    (*this).m_need_get_new_data = 1;  // [64]
;** 828	-----------------------    (*this).m_get_data_result = C$55;  // [64]
;** 829	-----------------------    (*this).m_machining_state = 0u;  // [64]
;** 830	-----------------------    (*this).m_is_reach_end = C$54;  // [64]
;** 831	-----------------------    (*this).m_is_machining = C$54;  // [64]
;** 832	-----------------------    (*this).m_is_tapping_mode = C$54;  // [64]
;**  	-----------------------    U$59 = (*this).m_channel_config;
;**  	-----------------------    U$61 = (*U$59).axis_number;
;**  	-----------------------    U$219 = (*this).m_dynamic_info;
;**  	-----------------------    L$2 = (unsigned)U$61+1u;
;**  	-----------------------    #pragma MUST_ITERATE(1, 256, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g40:
;** 835	-----------------------    (**U$219).step_number = C$52 = 0u;  // [64]
;** 836	-----------------------    (**U$219).current_step = C$52;  // [64]
;** 837	-----------------------    (**U$219).current_f = C$53 = 0.0;  // [64]
;** 838	-----------------------    (**U$219).left_time = C$53;  // [64]
;** 839	-----------------------    (**U$219).left_dist = C$53;  // [64]
;** 840	-----------------------    (**U$219).le = C$53;  // [64]
;** 841	-----------------------    (**U$219).ls = C$53;  // [64]
;** 842	-----------------------    (**U$219).step_number = C$52;  // [64]
;** 843	-----------------------    (**U$219).current_step = C$52;  // [64]
;** 844	-----------------------    (**U$219).is_enabled = C$52;  // [64]
;** 845	-----------------------    (**U$219++).run_state = 2;  // [64]
;** 834	-----------------------    if ( L$2 = L$2-1 ) goto g40;  // [64]
;** 210	-----------------------    (*this).m_trajectory_index = U$61;

           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |428| 
||         STW     .D1T1   A3,*+A10(100)     ; |207| 

           LDW     .D1T1   *+A11(20),A4      ; |428| 
           ADDKPC  .S2     $C$RL124,B3,3     ; |428| 
$C$RL124:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |428| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *A11,A5           ; |432| 
           LDW     .D1T1   *A11,A6           ; |431| 
           LDW     .D1T1   *+A11(20),A3      ; |434| 
           STW     .D1T1   A13,*+A11(8)      ; |430| 
           MV      .L2X    A4,B4             ; |434| 
           STW     .D1T1   A5,*+A11(16)      ; |432| 
           STW     .D1T1   A6,*+A11(12)      ; |431| 

           MV      .L1     A3,A4             ; |434| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3

$C$RL125:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |434| 
           LDW     .D1T1   *+A10(56),A11     ; |823| 
           NOP             4

           CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A11(20),A4      ; |428| 

$C$RL126:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |428| 
           LDW     .D1T1   *A11,A3           ; |431| 
           LDW     .D1T1   *A11,A5           ; |432| 
           STW     .D1T1   A13,*+A11(8)      ; |430| 
           MV      .L2X    A4,B4             ; |434| 
           LDW     .D1T1   *+A11(20),A4      ; |434| 
           STW     .D1T1   A3,*+A11(12)      ; |431| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         STW     .D1T1   A5,*+A11(16)      ; |432| 

$C$RL127:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |434| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A10,B5
||         STB     .D1T2   B10,*+A10[A15]    ; |832| 

           LDW     .D1T1   *+A10(16),A3
||         MVK     .S1     134,A31           ; |830| 
||         STB     .D2T2   B10,*+B5[B11]     ; |831| 

           STB     .D1T2   B10,*+A10[A31]    ; |830| 

           MVK     .S2     40,B31            ; |824| 
||         STB     .D2T2   B12,*+B5[B13]     ; |829| 

           MVK     .L2     1,B4              ; |827| 
||         MVK     .S1     124,A4            ; |827| 
||         STB     .D2T2   B10,*+B5[B31]     ; |824| 

           STB     .D1T2   B4,*+A10[A4]      ; |827| 
           LDBU    .D1T1   *+A3(2),A11
           LDW     .D1T2   *+A10(96),B9
           STW     .D1T1   A13,*A12          ; |828| 
           STW     .D2T1   A14,*+B5(116)     ; |825| 

           MVK     .S2     368,B7            ; |844| 
||         MVK     .L2     2,B6              ; |845| 

           MV      .L1     A11,A0
||         STW     .D2T1   A14,*+B5(120)     ; |826| 
||         DINT                              ; interrupts off
||         MV      .L2     B12,B8            ; |825| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 834
;*      Loop opening brace source line   : 834
;*      Loop closing brace source line   : 846
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 256                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 74
;*      Unpartitioned Resource Bound     : 11
;*      Partitioned Resource Bound(*)    : 22
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     1        8     
;*      .D units                     0       22*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0       22*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        5     
;*      Bound(.L .S .D .LS .LSD)     1       11     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 74 Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L78:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L79:    ; PIPED LOOP KERNEL
           LDW     .D2T2   *B9,B4            ; |835| <0,0>  ^ 
           NOP             4
           ADDK    .S2     336,B4            ; |835| <0,5>  ^ 
           STW     .D2T2   B8,*B4            ; |835| <0,6>  ^ 
           LDW     .D2T2   *B9,B4            ; |836| <0,7>  ^ 
           NOP             4
           ADDK    .S2     340,B4            ; |836| <0,12>  ^ 
           STW     .D2T2   B8,*B4            ; |836| <0,13>  ^ 
           LDW     .D2T2   *B9,B16           ; |837| <0,14>  ^ 
           NOP             4

           ZERO    .L2     B5:B4             ; |837| <0,19> 
||         ADDK    .S2     320,B16           ; |837| <0,19>  ^ 

           STDW    .D2T2   B5:B4,*B16        ; |837| <0,20>  ^ 
           LDW     .D2T2   *B9,B16           ; |838| <0,21>  ^ 
           NOP             4
           ADDK    .S2     344,B16           ; |838| <0,26>  ^ 
           STDW    .D2T2   B5:B4,*B16        ; |838| <0,27>  ^ 
           LDW     .D2T2   *B9,B16           ; |839| <0,28>  ^ 
           NOP             4
           ADDK    .S2     352,B16           ; |839| <0,33>  ^ 
           STDW    .D2T2   B5:B4,*B16        ; |839| <0,34>  ^ 
           LDW     .D2T2   *B9,B16           ; |840| <0,35>  ^ 
           NOP             4
           STDW    .D2T2   B5:B4,*+B16(32)   ; |840| <0,40>  ^ 
           LDW     .D2T2   *B9,B16           ; |841| <0,41>  ^ 
           NOP             4
           STDW    .D2T2   B5:B4,*+B16(24)   ; |841| <0,46>  ^ 
           LDW     .D2T2   *B9,B4            ; |842| <0,47>  ^ 
           NOP             4
           ADDK    .S2     336,B4            ; |842| <0,52>  ^ 
           STW     .D2T2   B8,*B4            ; |842| <0,53>  ^ 
           LDW     .D2T2   *B9,B4            ; |843| <0,54>  ^ 
           NOP             4
           ADDK    .S2     340,B4            ; |843| <0,59>  ^ 
           STW     .D2T2   B8,*B4            ; |843| <0,60>  ^ 
           LDW     .D2T2   *B9,B4            ; |844| <0,61>  ^ 
           NOP             4
           STB     .D2T2   B8,*+B4[B7]       ; |844| <0,66>  ^ 
           LDW     .D2T2   *B9++,B4          ; |845| <0,67>  ^ 
   [ A0]   BDEC    .S1     $C$L79,A0         ; |834| <0,68> 
           NOP             3
           ADDK    .S2     372,B4            ; |845| <0,72>  ^ 
           STW     .D2T2   B6,*B4            ; |845| <0,73>  ^ 
;** --------------------------------------------------------------------------*
$C$L80:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;** 211	-----------------------    (*this).m_cur_channel_mode = C$51 = 4;
;** 212	-----------------------    (*this).m_next_channel_mode = C$51;
;** 213	-----------------------    (*this).m_data_buffer = (*this).m_auto_buffer;
;** 214	-----------------------    (*this).m_heartbeat_err = C$48 = 0;
;** 215	-----------------------    (*this).m_system_ready = C$48;
;** 218	-----------------------    (*this).m_heartbeat = 1u;
;** 219	-----------------------    C$50 = (*U$59).interpolation_cycle;
;** 219	-----------------------    (*this).m_heartbeat_period = 500000/C$50;
;** 220	-----------------------    (*this).m_machining_state = 0u;
;** 222	-----------------------    (*this).m_intp_cycle_set_warning = C$48;
;** 223	-----------------------    (*this).m_intp_busy_count = C$47 = 0u;
;** 224	-----------------------    C$49 = (double)C$50;
;** 224	-----------------------    (*this).m_intp_busy_analyse_period = (unsigned)(1.0e6/C$49);
;** 225	-----------------------    (*this).m_interpolation_cycle_time = C$49/1.0e6;
;** 226	-----------------------    (*this).m_is_optional_stop = C$48;
;** 227	-----------------------    (*this).m_is_single_line_mode = C$48;
;** 228	-----------------------    (*this).m_last_step_mode = operator new[] ((unsigned)U$61);
;** 229	-----------------------    if ( !(*(*this).m_channel_config).axis_number ) goto g44;
           ADDAW   .D1     A3,17,A3          ; |219| 

           LDW     .D1T1   *+A10(52),A4      ; |213| 
||         MVK     .L2     0x4,B5            ; |211| 

           STW     .D1T2   B5,*+A10(32)      ; |211| 
           STW     .D1T2   B5,*+A10(36)      ; |212| 

           LDHU    .D1T1   *A3,A3            ; |219| 
||         MVK     .S1     17072,A5          ; |210| 

           MVK     .S1     141,A31           ; |214| 
||         ZERO    .L2     B10               ; |214| 
||         STB     .D1T1   A11,*+A10[A5]     ; |210| 

           MVK     .S1     142,A30           ; |215| 
||         STB     .D1T2   B10,*+A10[A31]    ; |214| 

           MVK     .S1     135,A29           ; |218| 
||         STB     .D1T2   B10,*+A10[A30]    ; |215| 

           STW     .D1T1   A4,*+A10(44)      ; |213| 
||         MVKL    .S1     0x7a120,A4
||         MVK     .L2     1,B5              ; |218| 
||         RINT                              ; interrupts on

           CALLP   .S2     __c6xabi_divi,B3
||         MV      .L2X    A3,B4             ; |219| 
||         MVKH    .S1     0x7a120,A4
||         STB     .D1T2   B5,*+A10[A29]     ; |218| 

$C$RL128:  ; CALL OCCURS {__c6xabi_divi} {0}  ; |219| 
           MVK     .S1     140,A7            ; |220| 
           MVKL    .S1     0x412e8480,A5
           MVKH    .S1     0x412e8480,A5
;** --------------------------------------------------------------------------*
           INTDPU  .L1     A3,A13:A12        ; |224| 
           ADDAD   .D1     A10,17,A28        ; |219| 
           MV      .L2     B10,B4            ; |219| 
           ADDAD   .D1     A10,18,A6         ; |223| 
           STB     .D1T2   B4,*+A10[A7]      ; |220| 

           MVK     .S1     143,A3            ; |222| 
||         STW     .D1T1   A4,*A28           ; |219| 

           MV      .L2X    A13,B5            ; |224| 
||         STB     .D1T2   B10,*+A10[A3]     ; |222| 

           CALLP   .S2     __c6xabi_divd,B3
||         STW     .D1T2   B4,*A6            ; |223| 
||         MV      .L2X    A12,B4            ; |224| 
||         MV      .L1X    B10,A4            ; |224| 

$C$RL129:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |224| 
           CALLP   .S2     __c6xabi_fixdu,B3
$C$RL130:  ; CALL OCCURS {__c6xabi_fixdu} {0}  ; |224| 
           MVK     .S2     148,B4            ; |224| 
           MVKL    .S2     0x412e8480,B5

           ADD     .L1X    B4,A10,A3         ; |224| 
||         MVKH    .S2     0x412e8480,B5

           CALLP   .S2     __c6xabi_divd,B3
||         STW     .D1T1   A4,*A3            ; |224| 
||         MV      .L1     A12,A4            ; |225| 
||         MV      .L2     B10,B4            ; |225| 
||         MV      .S1     A13,A5            ; |225| 

$C$RL131:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |225| 

           MVK     .S2     17064,B4          ; |225| 
||         MVK     .S1     133,A3            ; |226| 

           STB     .D1T2   B10,*+A10[A3]     ; |226| 
||         MVK     .S1     132,A31           ; |227| 

           ADD     .L1X    B4,A10,A3         ; |225| 
||         STB     .D1T2   B10,*+A10[A31]    ; |227| 

           CALLP   .S2     _Znaj,B3
||         STDW    .D1T1   A5:A4,*A3         ; |225| 
||         MV      .L1     A11,A4            ; |228| 

$C$RL132:  ; CALL OCCURS {_Znaj} {0}         ; |228| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(16),A3      ; |229| 
           MV      .L2X    A4,B5             ; |228| 
           MVK     .S2     17056,B4          ; |228| 
           MVK     .S2     17056,B6          ; |230| 
           ADD     .L2X    B4,A10,B4         ; |228| 
           LDBU    .D1T1   *+A3(2),A0        ; |229| 
           STW     .D2T2   B5,*B4            ; |228| 
           MV      .L2     B10,B4            ; |228| 
           ADD     .L2X    B6,A10,B7         ; |230| 
           MV      .L2     B10,B5            ; |228| 

   [!A0]   BNOP    .S1     $C$L84,4          ; |229| 
|| [ A0]   LDW     .D2T2   *B7,B7            ; |230| (P) <0,1>  ^ 
|| [ A0]   MV      .L1     A10,A4

   [ A0]   STB     .D2T2   B5,*+B7[B4]       ; |230| (P) <0,6>  ^ 
           ; BRANCHCC OCCURS {$C$L84}        ; |229| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    K$259 = C$47;
;** 229	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g43:
;** 230	-----------------------    *((*this).m_last_step_mode+i) = K$259;
;** 229	-----------------------    if ( (*(*this).m_channel_config).axis_number > (++i) ) goto g43;
           LDW     .D1T1   *+A4(16),A5       ; |229| (P) <0,7>  ^ 
           MV      .L1X    B4,A3
           DINT                              ; interrupts off
           NOP             2
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 229
;*      Loop opening brace source line   : 229
;*      Loop closing brace source line   : 231
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
;*      .X cross paths               0        1     
;*      .T address paths             2*       2*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        2     (.L or .S or .D unit)
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
$C$L81:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L82:    ; PIPED LOOP KERNEL

           LDBU    .D1T1   *+A5(2),A5        ; |229| <0,12>  ^ 
||         ADD     .L2X    B6,A4,B7          ; |230| <1,0> 

           LDW     .D2T2   *B7,B7            ; |230| <1,1>  ^ 
           NOP             2
           ADD     .L1     1,A3,A3           ; |229| <0,16> 

           ADD     .L2     1,B4,B4           ; |229| <0,17> Define a twin register
||         CMPGT   .L1     A5,A3,A0          ; |229| <0,17> 

   [ A0]   B       .S2     $C$L82            ; |229| <0,18> 
|| [ A0]   STB     .D2T2   B5,*+B7[B4]       ; |230| <1,6>  ^ 

           LDW     .D1T1   *+A4(16),A5       ; |229| <1,7>  ^ 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L83:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           RINT                              ; interrupts on
;** --------------------------------------------------------------------------*
$C$L84:    
;**	-----------------------g44:
;** 233	-----------------------    return result;
           LDW     .D2T1   *+SP(28),A0
;** --------------------------------------------------------------------------*
$C$L85:    
           LDW     .D2T2   *++SP(40),B3      ; |234| 
           LDDW    .D2T1   *++SP,A13:A12     ; |234| 
           LDDW    .D2T1   *++SP,A15:A14     ; |234| 
           LDDW    .D2T2   *++SP,B11:B10     ; |234| 
           LDDW    .D2T2   *++SP,B13:B12     ; |234| 

           LDW     .D2T1   *++SP(8),A10      ; |234| 
||         RET     .S2     B3                ; |234| 

           LDW     .D2T1   *++SP(8),A11      ; |234| 
           MV      .L1     A0,A4             ; |233| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |234| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation23InsertInterpolationDataEP8LineData

;******************************************************************************
;* FUNCTION NAME: Interpolation::InsertInterpolationData(LineData *)          *
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
_ZN13Interpolation23InsertInterpolationDataEP8LineData:
;** --------------------------------------------------------------------------*
;** 265	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);
;** 268	-----------------------    if ( (*data).interpolation_type ) goto g6;
           STW     .D2T1   A11,*SP--(8)      ; |259| 
           STDW    .D2T2   B11:B10,*SP--     ; |259| 

           STW     .D2T1   A10,*SP--(8)      ; |259| 
||         MV      .L1     A4,A10            ; |259| 

           MV      .L2     B3,B11            ; |259| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(28),A4      ; |265| 
||         MV      .D2     B4,B10            ; |259| 

$C$RL133:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |265| 
;** --------------------------------------------------------------------------*
           MVK     .S2     274,B4            ; |268| 
           ADD     .L2     B4,B10,B4         ; |268| 
           LDHU    .D2T2   *B4,B0            ; |268| 
           MV      .L1     A4,A11            ; |265| 
           NOP             3

   [ B0]   BNOP    .S1     $C$L90,4          ; |268| 
|| [!B0]   LDW     .D1T1   *+A10(16),A3      ; |269| 

   [!B0]   LDBU    .D1T1   *+A3(2),A0        ; |269| 
           ; BRANCHCC OCCURS {$C$L90}        ; |268| 
;** --------------------------------------------------------------------------*
;** 269	-----------------------    C$4 = (*this).m_channel_config;
;** 269	-----------------------    if ( !(C$3 = (*C$4).axis_number) ) goto g5;
;**  	-----------------------    V$0 = C$4;
;**  	-----------------------    U$24 = (double * const)data+2488;
;**  	-----------------------    L$1 = (int)C$3;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           MVK     .S2     2488,B4
           ADD     .L2     B4,B10,B6
           NOP             2

   [!A0]   BNOP    .S1     $C$L89,5          ; |269| 
|| [ A0]   MVC     .S2X    A0,ILC

           ; BRANCHCC OCCURS {$C$L89}        ; |269| 
;** --------------------------------------------------------------------------*
;**	-----------------------g4:
;** 270	-----------------------    *U$24++ = (*V$0).g00_speed;
;** 269	-----------------------    if ( L$1 = L$1-1 ) goto g4;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 269
;*      Loop opening brace source line   : 269
;*      Loop closing brace source line   : 271
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               2*       0     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     1        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L86:    ; PIPED LOOP PROLOG
           SPLOOP  2       ;8                ; (P) 
;** --------------------------------------------------------------------------*
$C$L87:    ; PIPED LOOP KERNEL
           LDDW    .D1T1   *+A3(120),A5:A4   ; |270| (P) <0,0> 
           NOP             4
           MV      .L2X    A5,B5             ; |270| (P) <0,5> Define a twin register
           MV      .L2X    A4,B4             ; |270| <0,6> Define a twin register

           SPKERNEL 3,0
||         STDW    .D2T2   B5:B4,*B6++       ; |270| <0,7> 

;** --------------------------------------------------------------------------*
$C$L88:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L89:    
;**	-----------------------g5:
;** 272	-----------------------    C$2 = (double * const)data+1368;
;** 272	-----------------------    *C$2 = (*(*this).m_channel_config).g00_speed;
;** 273	-----------------------    C$2[-1] = (*(*this).m_channel_config).g00_speed;
;** 274	-----------------------    C$2[1] = 0.0;
           LDW     .D1T2   *+A10(16),B4      ; |272| 
           LDW     .D1T1   *+A10(16),A3      ; |273| 
           MVK     .S2     1368,B6           ; |272| 
           ADD     .L2     B6,B10,B6         ; |272| 
           NOP             1
           LDDW    .D2T2   *+B4(120),B5:B4   ; |272| 
           NOP             4
           STDW    .D2T2   B5:B4,*B6         ; |272| 
           LDDW    .D1T1   *+A3(120),A5:A4   ; |273| 
           ZERO    .L2     B5:B4             ; |274| 
           STDW    .D2T2   B5:B4,*+B6(8)     ; |274| 
           NOP             2
           STDW    .D2T1   A5:A4,*-B6(8)     ; |273| 
;** --------------------------------------------------------------------------*
$C$L90:    
;**	-----------------------g6:
;** 279	-----------------------    CircularBuffer<LineData>::WriteData((*this).m_auto_buffer, data, 1);
;** 281	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;** 285	-----------------------    return 0;

           CALLP   .S2     _ZN14CircularBufferI8LineDataE9WriteDataEPKS0_i,B3
||         LDW     .D1T1   *+A10(52),A4      ; |279| 
||         MV      .L2     B10,B4            ; |279| 
||         MVK     .L1     0x1,A6            ; |279| 

$C$RL134:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE9WriteDataEPKS0_i} {0}  ; |279| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D1T1   *+A10(28),A4      ; |281| 
||         MV      .L2X    A11,B4            ; |281| 

$C$RL135:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |281| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *++SP(8),A10      ; |286| 
||         MV      .L2     B11,B3            ; |286| 

           LDDW    .D2T2   *++SP,B11:B10     ; |286| 
||         RET     .S2     B3                ; |286| 

           LDW     .D2T1   *++SP(8),A11      ; |286| 
           ZERO    .L1     A4                ; |285| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |286| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation19SetOptionalStopModeEb

;******************************************************************************
;* FUNCTION NAME: Interpolation::SetOptionalStopMode(bool)                    *
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
_ZN13Interpolation19SetOptionalStopModeEb:
;** --------------------------------------------------------------------------*
;** 554	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);
;** 556	-----------------------    if ( (*this).m_is_optional_stop == is_optional_stop ) goto g5;
           STW     .D2T1   A11,*SP--(8)      ; |549| 
           STDW    .D2T1   A13:A12,*SP--     ; |549| 

           STW     .D2T1   A10,*SP--(8)      ; |549| 
||         MV      .L1     A4,A10            ; |549| 
||         MV      .S1X    B4,A11            ; |549| 

           MV      .L1X    B3,A13            ; |549| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(28),A4      ; |554| 

$C$RL136:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |554| 
;** --------------------------------------------------------------------------*
           MVK     .S1     133,A3            ; |556| 
           LDB     .D1T1   *+A10[A3],A3      ; |556| 
           MV      .L1     A4,A12            ; |554| 
           MV      .L2X    A11,B4            ; |549| 
           MVK     .S2     133,B6            ; |557| 
           NOP             1
           CMPEQ   .L1     A3,A11,A0         ; |556| 

   [ A0]   B       .S1     $C$L91            ; |556| 
|| [!A0]   LDW     .D1T1   *+A10(32),A3      ; |559| 

   [!A0]   LDW     .D1T1   *+A10(116),A4     ; |559| 
           NOP             3
           CMPEQ   .L1     A3,4,A3           ; |559| 
           ; BRANCHCC OCCURS {$C$L91}        ; |556| 
;** --------------------------------------------------------------------------*
;** 557	-----------------------    (*this).m_is_optional_stop = is_optional_stop;
;** 559	-----------------------    if ( !(((*this).m_cur_channel_mode == 4)&((*this).m_run_state == 0)&is_optional_stop) ) goto g5;

           CMPEQ   .L1     A4,0,A4           ; |559| 
||         MV      .L2X    A10,B5

           AND     .L1     A4,A3,A3          ; |559| 
           MVK     .S1     3128,A4           ; |561| 
           AND     .L2X    B4,A3,B0          ; |559| 
   [!B0]   B       .S1     $C$L92            ; |559| 

   [ B0]   CALL    .S1     _ZN9MCommands6HasCmdEj ; |561| 
|| [ B0]   LDW     .D1T1   *+A10(88),A3      ; |561| 

   [!B0]   CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |567| 
   [!B0]   LDW     .D1T1   *+A10(28),A4      ; |567| 
           STB     .D2T2   B4,*+B5[B6]       ; |557| 
           MVK     .L2     0x1,B4            ; |561| 
           ; BRANCHCC OCCURS {$C$L92}        ; |559| 
;** --------------------------------------------------------------------------*
;** 561	-----------------------    if ( !MCommands::HasCmd((struct Commands *)(*this).m_data+3128, 1u) ) goto g5;
;* 1424	-----------------------    (*this).m_run_state = 1;  // [72]
;* 1425	-----------------------    (*this).m_process_state = 0;  // [72]
;* 1428	-----------------------    (*this).m_machining_state = 2u;  // [72]

           ADD     .L1     A4,A3,A4          ; |561| 
||         ADDKPC  .S2     $C$RL137,B3,0     ; |561| 

$C$RL137:  ; CALL OCCURS {_ZN9MCommands6HasCmdEj} {0}  ; |561| 
;** --------------------------------------------------------------------------*

           MVK     .L2     1,B31             ; |1424| 
||         MV      .L1     A4,A0             ; |561| 

   [ A0]   STW     .D1T2   B31,*+A10(116)    ; |1424| 
||         ZERO    .L2     B4                ; |1425| 

   [ A0]   STW     .D1T2   B4,*+A10(120)     ; |1425| 
||         MVK     .S1     140,A4            ; |1428| 
||         MVK     .L1     2,A3              ; |1428| 

   [ A0]   STB     .D1T1   A3,*+A10[A4]      ; |1428| 
;** --------------------------------------------------------------------------*
$C$L91:    
           CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |567| 
           LDW     .D1T1   *+A10(28),A4      ; |567| 
           NOP             2
;** --------------------------------------------------------------------------*
$C$L92:    
;**	-----------------------g5:
;** 567	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;**  	-----------------------    return;
           ADDKPC  .S2     $C$RL138,B3,0     ; |567| 
           MV      .L2X    A12,B4            ; |567| 
$C$RL138:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |567| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *++SP(8),A10      ; |571| 
||         MV      .L2X    A13,B3            ; |571| 

           LDDW    .D2T1   *++SP,A13:A12     ; |571| 
||         RET     .S2     B3                ; |571| 

           LDW     .D2T1   *++SP(8),A11      ; |571| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |571| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation19ProcessNearbyLocateEP8LineData

;******************************************************************************
;* FUNCTION NAME: Interpolation::ProcessNearbyLocate(LineData *)              *
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
;*   Local Frame Size  : 0 Args + 516 Auto + 32 Save = 548 byte               *
;******************************************************************************
_ZN13Interpolation19ProcessNearbyLocateEP8LineData:
;** --------------------------------------------------------------------------*
;* 1462	-----------------------    if ( !(*data).interpolation_flag ) goto g20;

           STW     .D2T2   B13,*SP--(8)      ; |1459| 
||         MVK     .S1     270,A3            ; |1462| 

           STDW    .D2T1   A13:A12,*SP--     ; |1459| 
           STDW    .D2T1   A11:A10,*SP--     ; |1459| 

           STW     .D2T1   A14,*SP--(8)      ; |1459| 
||         MV      .L1X    B4,A14            ; |1459| 

           LDBU    .D1T1   *+A14[A3],A0      ; |1462| 
           MV      .L2     B3,B13            ; |1459| 
           MV      .L1     A4,A11            ; |1459| 
           ADDK    .S2     -520,SP           ; |1459| 
           NOP             1

   [!A0]   BNOP    .S1     $C$L100,4         ; |1462| 
|| [ A0]   LDW     .D1T1   *+A11(32),A3      ; |1462| 

           CMPEQ   .L1     A3,6,A0           ; |1462| 
           ; BRANCHCC OCCURS {$C$L100}       ; |1462| 
;** --------------------------------------------------------------------------*
;* 1462	-----------------------    if ( (*this).m_cur_channel_mode == 6 ) goto g20;

   [ A0]   BNOP    .S1     $C$L100,4         ; |1462| 
|| [!A0]   LDW     .D1T1   *+A11(16),A3      ; |1468| 

   [!A0]   LDBU    .D1T1   *+A3(2),A0        ; |1468| 
           ; BRANCHCC OCCURS {$C$L100}       ; |1462| 
;** --------------------------------------------------------------------------*
;* 1468	-----------------------    if ( !(C$3 = (*(*this).m_channel_config).axis_number) ) goto g6;
           ADD     .L2     8,SP,B6
           NOP             3

   [!A0]   BNOP    .S1     $C$L96,5          ; |1468| 
|| [ A0]   LDW     .D1T2   *+A11(92),B7
|| [ A0]   SUB     .L1     A0,1,A3

           ; BRANCHCC OCCURS {$C$L96}        ; |1468| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$23 = (*this).m_geometry;
;**  	-----------------------    L$1 = (int)C$3;
;**  	-----------------------    U$27 = &start_pos;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g5:
;* 1469	-----------------------    *U$27++ = *U$23++;
;* 1468	-----------------------    if ( L$1 = L$1-1 ) goto g5;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 1468
;*      Loop opening brace source line   : 1468
;*      Loop closing brace source line   : 1470
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
$C$L93:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;12               ; (P) 
||         MVC     .S2X    A3,ILC

;** --------------------------------------------------------------------------*
$C$L94:    ; PIPED LOOP KERNEL
           LDDW    .D2T2   *B7++,B5:B4       ; |1469| (P) <0,0>  ^ 
           NOP             4
           STDW    .D2T2   B5:B4,*B6++       ; |1469| (P) <0,5>  ^ 
           SPKERNEL 0,1
;** --------------------------------------------------------------------------*
$C$L95:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L96:    
;**	-----------------------g6:
;* 1472	-----------------------    U$12 = (*this).m_channel_config;
;* 1472	-----------------------    if ( !(U$14 = (*U$12).axis_number) ) goto g20;
;* 1472	-----------------------    index = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           LDW     .D1T1   *+A11(16),A4      ; |1472| 
           ZERO    .L1     A10               ; |1472| 
           NOP             3
           LDBU    .D1T1   *+A4(2),A1        ; |1472| 
           NOP             4
   [!A1]   BNOP    .S1     $C$L100,5         ; |1472| 
           ; BRANCHCC OCCURS {$C$L100}       ; |1472| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L97:    
;**	-----------------------g8:
;* 1473	-----------------------    U$43 = *(index*4+(struct CCCTAxisConfig **)U$12+7896);
;* 1473	-----------------------    if ( (C$2 = (*U$43).axis_type) == 1 ) goto g10;
;* 1473	-----------------------    if ( C$2 != 3 ) goto g19;
           ADDAW   .D1     A4,A10,A3         ; |1473| 
           ADDK    .S1     7896,A3           ; |1473| 
           LDW     .D1T1   *A3,A5            ; |1473| 
           NOP             4
           LDBU    .D1T1   *A5,A3            ; |1473| 
           NOP             4
           CMPEQ   .L2X    A3,1,B0           ; |1473| 

   [!B0]   CMPEQ   .L1     A3,3,A0           ; |1473| 
|| [ B0]   MVK     .S1     0x1,A0            ; |1473| 

           MV      .L1     A0,A2             ; guard predicate rewrite

           MV      .L2X    A0,B0             ; |1473| branch predicate copy
|| [!A0]   B       .S1     $C$L99            ; |1473| 
|| [ A0]   LDBU    .D1T1   *+A5(2),A0        ; |1473| 
|| [!A2]   MVK     .L1     0x1,A0            ; |1473| nullify predicate

   [!B0]   ADD     .L1     1,A10,A10         ; |1472| 
           NOP             3

   [!A0]   B       .S1     $C$L98            ; |1473| 
||         CMPGT   .L1     A1,A10,A0         ; |1472| 

           ; BRANCHCC OCCURS {$C$L99}        ; |1473| 
;** --------------------------------------------------------------------------*
;**	-----------------------g10:
;* 1473	-----------------------    if ( !(*U$43).nearby_locate ) goto g19;
           NOP             5
           ; BRANCHCC OCCURS {$C$L98}        ; |1473| 
;** --------------------------------------------------------------------------*
;* 1473	-----------------------    if ( (*this).m_cur_channel_mode != 2 ) goto g13;
;* 1473	-----------------------    if ( !*((*this).m_axis_manual_move_mod+index) ) goto g19;
           LDW     .D1T1   *+A11(32),A3      ; |1473| 
           MVK     .S1     17052,A5          ; |1473| 
           NOP             3

           CMPEQ   .L1     A3,2,A0           ; |1473| 
||         ADD     .S1     A5,A11,A3         ; |1473| 

   [ A0]   LDW     .D1T1   *A3,A3            ; |1473| 
   [!A0]   MVK     .L1     0x1,A2            ; |1473| 
           NOP             3
   [ A0]   LDB     .D1T1   *+A3[A10],A2      ; |1473| 
           MVK     .S1     274,A3            ; |1478| 
           ADD     .L1     A3,A14,A3         ; |1478| 
           NOP             2

   [!A2]   BNOP    .S2     $C$L99,4          ; |1473| 
|| [ A2]   LDHU    .D1T1   *A3,A0            ; |1478| 
|| [!A2]   ZERO    .L1     A0                ; |1478| nullify predicate
|| [!A2]   ADD     .S1     1,A10,A10         ; |1472| 

   [ A0]   B       .S1     $C$L98            ; |1478| 
||         CMPGT   .L1     A1,A10,A0         ; |1472| 

           ; BRANCHCC OCCURS {$C$L99}        ; |1473| 
;** --------------------------------------------------------------------------*
;**	-----------------------g13:
;* 1478	-----------------------    if ( (*data).interpolation_type ) goto g19;
           MV      .L2X    A10,B4
           ADDAD   .D1     A14,A10,A3        ; |1480| 
           ADDAD   .D2     SP,B4,B4          ; |1480| 
           ADDK    .S1     1440,A3           ; |1480| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L98}        ; |1478| 
;** --------------------------------------------------------------------------*
;* 1480	-----------------------    U$70 = *((index<<3)+(double * const)data+1440);
;* 1480	-----------------------    dist = fmod(U$70-*((index<<3)+&start_pos), 0.359999999999999986677);
;* 1483	-----------------------    if ( dist > 0.179999999999999993339 ) goto g17;
;* 1485	-----------------------    if ( dist >= -0.179999999999999993339 ) goto g18;
;* 1486	-----------------------    dist += 0.359999999999999986677;
;* 1486	-----------------------    goto g18;
;**	-----------------------g17:
;* 1484	-----------------------    dist -= 0.359999999999999986677;
;**	-----------------------g18:
;* 1489	-----------------------    (*(*this).SetPosInMachining)((unsigned char)index, U$70-dist, (*this).m_owner_ptr);
;**  	-----------------------    U$12 = (*this).m_channel_config;
;**  	-----------------------    U$14 = (*U$12).axis_number;

           LDDW    .D2T2   *+B4(8),B5:B4     ; |1480| 
||         LDDW    .D1T1   *A3,A13:A12       ; |1480| 

           NOP             4
           SUBDP   .L1X    A13:A12,B5:B4,A5:A4 ; |1480| 
           CALL    .S1     fmod              ; |1480| 
           MVKL    .S2     0x3fd70a3d,B5
           MVKL    .S2     0x70a3d70a,B4
           MVKH    .S2     0x3fd70a3d,B5
           MVKH    .S2     0x70a3d70a,B4
           ADDKPC  .S2     $C$RL139,B3,0     ; |1480| 
$C$RL139:  ; CALL OCCURS {fmod} {0}          ; |1480| 
;** --------------------------------------------------------------------------*
           MVKL    .S2     0x70a3d70a,B4
           MVKL    .S2     0x3fc70a3d,B5
           MVKH    .S2     0x70a3d70a,B4
           MVKH    .S2     0x3fc70a3d,B5

           CMPGTDP .S2X    A5:A4,B5:B4,B0    ; |1483| 
||         MVKL    .S1     0x3fd70a3d,A7

           MVKH    .S1     0x3fd70a3d,A7
           MV      .L1X    B4,A6             ; |1483| 
   [ B0]   SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |1484| 
   [!B0]   MVKL    .S1     0xbfc70a3d,A7
   [!B0]   MVKH    .S1     0xbfc70a3d,A7
           MVKL    .S2     0x3fd70a3d,B5
   [!B0]   CMPLTDP .S1     A5:A4,A7:A6,A0    ; |1485| 
           MVKH    .S2     0x3fd70a3d,B5
   [ B0]   ZERO    .D1     A0                ; |1485| 
   [ A0]   ADDDP   .L1X    B5:B4,A5:A4,A5:A4 ; |1486| 
           LDW     .D1T1   *+A11(4),A3       ; |1489| 
           LDW     .D1T1   *+A11(8),A6       ; |1489| 
           NOP             4
           SUBDP   .L1     A13:A12,A5:A4,A9:A8 ; |1489| 
           EXTU    .S1     A10,24,24,A4      ; |1489| 
           NOP             2
           CALL    .S2X    A3                ; |1489| 
           ADDKPC  .S2     $C$RL140,B3,2     ; |1489| 
           MV      .L2X    A9,B5             ; |1489| 
           MV      .L2X    A8,B4             ; |1489| 
$C$RL140:  ; CALL OCCURS {A3} {0}            ; |1489| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A11(16),A4
           NOP             4
           LDBU    .D1T1   *+A4(2),A1
           NOP             3
;** --------------------------------------------------------------------------*
$C$L98:    
           ADD     .L1     1,A10,A10         ; |1472| 
           CMPGT   .L1     A1,A10,A0         ; |1472| 
;** --------------------------------------------------------------------------*
$C$L99:    
;**	-----------------------g19:
;* 1472	-----------------------    if ( U$14 > (++index) ) goto g8;
;**	-----------------------g20:
;**  	-----------------------    return;
   [ A0]   BNOP    .S1     $C$L97,5          ; |1472| 
           ; BRANCHCC OCCURS {$C$L97}        ; |1472| 
;** --------------------------------------------------------------------------*
$C$L100:    
           ADDK    .S2     520,SP            ; |1495| 
           LDW     .D2T1   *++SP(8),A14      ; |1495| 

           LDDW    .D2T1   *++SP,A11:A10     ; |1495| 
||         MV      .L2     B13,B3            ; |1495| 

           LDDW    .D2T1   *++SP,A13:A12     ; |1495| 
||         RET     .S2     B3                ; |1495| 

           LDW     .D2T2   *++SP(8),B13      ; |1495| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1495| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation18ConfigFeedRateTypeE5GCode

;******************************************************************************
;* FUNCTION NAME: Interpolation::ConfigFeedRateType(GCode)                    *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A5,B0,B1                                    *
;*   Regs Used         : A0,A1,A3,A4,A5,B0,B1,B3,B4                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN13Interpolation18ConfigFeedRateTypeE5GCode:
;** --------------------------------------------------------------------------*
;* 1281	-----------------------    switch ( (*this).m_cur_channel_mode ) {case 2: goto g6;, case 4: goto g2;, case 6: goto g5;, DEFAULT goto g7};
           LDW     .D1T1   *+A4(32),A3       ; |1281| 
           MV      .L1X    B4,A0             ; |1280| 
           ADDAD   .D1     A4,10,A5          ; |1291| 
           NOP             2

           CMPEQ   .L2X    A3,2,B0           ; |1281| 
||         CMPEQ   .L1     A3,4,A1           ; |1281| 

           MV      .S2     B0,B1             ; guard predicate rewrite
|| [ B0]   B       .S1     $C$L101           ; |1281| 
||         CMPEQ   .L2X    A3,6,B0           ; |1281| 
|| [!A1]   ADDAD   .D1     A4,10,A3          ; |1295| 

   [ A1]   ZERO    .L2     B0                ; |1295| 
|| [ B1]   MVK     .L1     0x1,A1            ; |1295| nullify predicate

   [!A1]   BNOP    .S1     $C$L102,3         ; |1281| 
           ; BRANCHCC OCCURS {$C$L101}       ; |1281| 
;** --------------------------------------------------------------------------*

   [ B0]   STW     .D1T1   A3,*+A4(60)       ; |1295| 
|| [ A1]   RET     .S2     B3                ; |1301| 

   [ A1]   ADDAD   .D1     A4,8,A3           ; |1286| 
|| [!A1]   RET     .S2     B3                ; |1301| 

           ; BRANCHCC OCCURS {$C$L102}       ; |1281| 
;** --------------------------------------------------------------------------*
;**	-----------------------g2:
;* 1283	-----------------------    if ( interpolation_type ) goto g4;
;* 1284	-----------------------    (*this).m_feed_rate = (double * const)this+72;
;* 1285	-----------------------    goto g7;
;**	-----------------------g4:
;* 1286	-----------------------    (*this).m_feed_rate = (double * const)this+64;
;* 1286	-----------------------    goto g7;
;**	-----------------------g5:
;* 1295	-----------------------    (*this).m_feed_rate = (double * const)this+80;
;* 1297	-----------------------    goto g7;
           ADDAD   .D1     A4,9,A5           ; |1284| 
   [!A0]   STW     .D1T1   A5,*+A4(60)       ; |1284| 
   [ A0]   STW     .D1T1   A3,*+A4(60)       ; |1286| 
           NOP             1
           ; BRANCH OCCURS {B3}              ; |1301| 
;** --------------------------------------------------------------------------*
$C$L101:    
;**	-----------------------g6:
;* 1291	-----------------------    (*this).m_feed_rate = (double * const)this+80;
;**	-----------------------g7:
;**  	-----------------------    return;

           RET     .S2     B3                ; |1301| 
||         STW     .D1T1   A5,*+A4(60)       ; |1291| 

;** --------------------------------------------------------------------------*
$C$L102:    
           NOP             5
           ; BRANCH OCCURS {B3}              ; |1301| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation18TransferToLineDataEP8Geometry

;******************************************************************************
;* FUNCTION NAME: Interpolation::TransferToLineData(Geometry *)               *
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
_ZN13Interpolation18TransferToLineDataEP8Geometry:
;** --------------------------------------------------------------------------*
;* 1433	-----------------------    *((*geometry).end_data+2480) = 0.0;
;* 1439	-----------------------    H$1 = (*geometry).end_data;
;* 1439	-----------------------    H$2 = (*this).m_channel_config;
;* 1436	-----------------------    max_axis_distance = 0.0;
;* 1439	-----------------------    if ( (unsigned)(*H$2).axis_number == 1u ) goto g7;

           STW     .D2T1   A11,*SP--(8)      ; |1431| 
||         MVK     .S1     1432,A5
||         ZERO    .L2     B7:B6             ; |1433| 

           STW     .D2T1   A10,*SP--(8)      ; |1431| 
           STDW    .D2T2   B13:B12,*SP--     ; |1431| 

           STDW    .D2T2   B11:B10,*SP--     ; |1431| 
||         MV      .L2     B4,B11            ; |1431| 
||         MVK     .S2     512,B4            ; |1433| 

           STDW    .D2T1   A15:A14,*SP--     ; |1431| 
||         ADD     .L2     B4,B11,B4         ; |1433| 
||         ZERO    .L1     A14               ; |1439| 

           STDW    .D2T1   A13:A12,*SP--     ; |1431| 
           STW     .D2T2   B3,*SP--(8)       ; |1431| 
           LDW     .D1T1   *+A4(16),A3       ; |1439| 
           LDW     .D2T2   *B4,B5            ; |1433| 
           MVK     .S1     512,A4            ; |1439| 
           ADD     .L1X    A4,B11,A4         ; |1439| 
           LDW     .D1T1   *A4,A15           ; |1439| 

           MV      .L2X    A3,B10            ; |1439| 
||         LDBU    .D1T1   *+A3(2),A3        ; |1439| 

           ZERO    .L1     A13:A12           ; |1436| 
           ADDK    .S2     2480,B5           ; |1433| 
           STDW    .D2T2   B7:B6,*B5         ; |1433| 
           MV      .L2X    A15,B13

           CMPEQ   .L1     A3,1,A0           ; |1439| 
||         ADD     .S1     A5,A15,A3

   [ A0]   BNOP    .S1     $C$L105,4         ; |1439| 
           MV      .L2X    A3,B12            ; |1433| 
           ; BRANCHCC OCCURS {$C$L105}       ; |1439| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    K$55 = 0xffffffffu;
;**  	-----------------------    U$25 = H$1;
;**  	-----------------------    U$28 = (struct xisMovData *)U$25+1432;
;* 1439	-----------------------    i = 0u;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     __c6xabi_llshl    ; |1440| 
           ZERO    .L1     A5                ; |1440| 
           MV      .L2X    A14,B4            ; |1440| 
           MVK     .L1     0x1,A4            ; |1440| 
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L103:    
;**	-----------------------g3:
;* 1440	-----------------------    if ( ((*U$28).mask&1uLL<<i) == 0uLL ) goto g6;
           ADDKPC  .S2     $C$RL141,B3,0     ; |1440| 
$C$RL141:  ; CALL OCCURS {__c6xabi_llshl} {0}  ; |1440| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B12,A3            ; |1440| 
           LDDW    .D1T1   *A3,A7:A6         ; |1440| 
           ZERO    .L2     B4                ; |1440| 
           NOP             3

           AND     .L1     A5,A7,A3          ; |1440| 
||         AND     .S1     A4,A6,A31         ; |1440| 
||         ADDAD   .D1     A15,A14,A6        ; |1441| 

           ADDK    .S1     1440,A6           ; |1441| 
           CMPEQ   .L2X    A3,B4,B0          ; |1440| 
   [ B0]   CMPEQ   .L2X    A31,B4,B0         ; |1440| 

   [ B0]   B       .S1     $C$L104           ; |1440| 
|| [!B0]   MV      .L1X    B11,A3            ; |1441| 
|| [!B0]   LDDW    .D1T1   *A6,A7:A6         ; |1441| 

   [!B0]   LDDW    .D1T1   *+A3[A14],A5:A4   ; |1441| 
||         MV      .L1X    B10,A3

   [ B0]   LDBU    .D1T1   *+A3(2),A4        ; |1439| 
   [ B0]   MVK     .L1     0xffffffff,A31
           NOP             2
           ; BRANCHCC OCCURS {$C$L104}       ; |1440| 
;** --------------------------------------------------------------------------*
;* 1441	-----------------------    axis_distance = ABS(*((i<<3)+(double *)H$1+1440)-*((i<<3)+(double * const)geometry));
;* 1444	-----------------------    C$2 = (double *)U$25+2480;
;* 1444	-----------------------    *C$2 = *C$2+pow(axis_distance, 2.0);
;* 1445	-----------------------    if ( axis_distance <= max_axis_distance ) goto g6;
;* 1446	-----------------------    max_axis_distance = axis_distance;
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |1441| 
           ZERO    .L2     B5
           SET     .S2     B5,0x1e,0x1e,B5
           NOP             1
           CALL    .S1     pow               ; |1444| 
           ADDKPC  .S2     $C$RL142,B3,1     ; |1444| 
           ABSDP   .S1     A5:A4,A11:A10     ; |1441| 
           NOP             1

           MV      .L1     A11,A5            ; |1444| 
||         MV      .S1     A10,A4            ; |1444| 

$C$RL142:  ; CALL OCCURS {pow} {0}           ; |1444| 
;** --------------------------------------------------------------------------*
           MVK     .S1     2480,A3           ; |1444| 
           CMPGTDP .S1     A11:A10,A13:A12,A0 ; |1445| 
           ADD     .L2X    A3,B13,B4         ; |1444| 
           LDDW    .D2T2   *B4,B7:B6         ; |1444| 
           MV      .L1X    B10,A3
   [ A0]   MV      .L1     A10,A12           ; |1446| 
   [ A0]   MV      .L1     A11,A13           ; |1446| 
           MVK     .L1     0xffffffff,A31
           ADDDP   .L2X    A5:A4,B7:B6,B7:B6 ; |1444| 
           NOP             6
           STDW    .D2T2   B7:B6,*B4         ; |1444| 
           LDBU    .D1T1   *+A3(2),A4        ; |1439| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L104:    
;**	-----------------------g6:
;* 1439	-----------------------    if ( (unsigned)(*H$2).axis_number+K$55 > (++i) ) goto g3;
           ADD     .L1     1,A14,A14         ; |1439| 
           ADD     .L1     A31,A4,A3         ; |1439| 
           CMPGTU  .L1     A3,A14,A0         ; |1439| 
   [ A0]   B       .S1     $C$L103           ; |1439| 
   [ A0]   CALL    .S1     __c6xabi_llshl    ; |1440| 
   [ A0]   ZERO    .L1     A5                ; |1440| 
   [ A0]   MV      .L2X    A14,B4            ; |1440| 
   [ A0]   MVK     .L1     0x1,A4            ; |1440| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L103}       ; |1439| 
;** --------------------------------------------------------------------------*
$C$L105:    
;**	-----------------------g7:
;* 1450	-----------------------    U$25 = H$1;
;* 1450	-----------------------    *((double *)U$25+2480) = sqrt(*((double *)H$1+2480));
;* 1452	-----------------------    if ( max_axis_distance <= 1.00000000000000002092e-8 ) goto g9;
           MVK     .S1     2480,A3           ; |1450| 
           ADD     .L1     A3,A15,A3         ; |1450| 

           CALLP   .S2     sqrt,B3
||         LDDW    .D1T1   *A3,A5:A4         ; |1450| 

$C$RL143:  ; CALL OCCURS {sqrt} {0}          ; |1450| 
;** --------------------------------------------------------------------------*

           MVKL    .S1     0x3e45798e,A7
||         MVK     .S2     2480,B4           ; |1450| 

           MVKL    .S1     0xe2308c3a,A6
||         ADD     .L2X    B4,A15,B6         ; |1453| 
||         MVK     .S2     1368,B5           ; |1453| 

           MVKH    .S1     0x3e45798e,A7
||         ADD     .L1X    B4,A15,A3         ; |1450| 
||         MVK     .S2     1368,B31          ; |1455| 
||         MV      .L2X    A12,B4            ; |1453| 

           MVKH    .S1     0xe2308c3a,A6
||         STDW    .D1T1   A5:A4,*A3         ; |1450| 
||         ADD     .L2X    B5,A15,B12        ; |1453| 

           CMPGTDP .S1     A13:A12,A7:A6,A0  ; |1452| 
||         MV      .L2X    A13,B5            ; |1453| 

           ADD     .L2X    B31,A15,B11       ; |1455| 

   [!A0]   B       .S1     $C$L106           ; |1452| 
|| [ A0]   LDDW    .D2T2   *B6,B7:B6         ; |1453| 

   [!A0]   LDW     .D2T2   *++SP(8),B3       ; |1457| 

   [ A0]   CALL    .S1     __c6xabi_divd     ; |1453| 
|| [!A0]   LDDW    .D2T1   *++SP,A13:A12     ; |1457| 

   [!A0]   LDDW    .D2T1   *++SP,A15:A14     ; |1457| 
   [!A0]   LDDW    .D2T2   *++SP,B11:B10     ; |1457| 
   [!A0]   LDDW    .D2T2   *++SP,B13:B12     ; |1457| 
           ; BRANCHCC OCCURS {$C$L106}       ; |1452| 
;** --------------------------------------------------------------------------*
;* 1453	-----------------------    *((double *)U$25+1368) = (*H$2).g00_speed*(*((double *)U$25+2480)/max_axis_distance);
;* 1455	-----------------------    C$1 = (double *)U$25+1368;
;* 1455	-----------------------    C$1[-1] = *C$1;
;**	-----------------------g9:
;**  	-----------------------    return;
           MV      .L1X    B6,A4             ; |1453| 

           MV      .L1X    B7,A5             ; |1453| 
||         ADDKPC  .S2     $C$RL144,B3,0     ; |1453| 

$C$RL144:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |1453| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B10,A3            ; |1453| 
           LDDW    .D1T1   *+A3(120),A7:A6   ; |1453| 
           NOP             4
           MPYDP   .M1     A5:A4,A7:A6,A5:A4 ; |1453| 
           NOP             9
           STDW    .D2T1   A5:A4,*B12        ; |1453| 
           LDDW    .D2T2   *B11,B5:B4        ; |1455| 
           NOP             4
           STDW    .D2T2   B5:B4,*-B11(8)    ; |1455| 
           LDW     .D2T2   *++SP(8),B3       ; |1457| 
           LDDW    .D2T1   *++SP,A13:A12     ; |1457| 
           LDDW    .D2T1   *++SP,A15:A14     ; |1457| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1457| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1457| 
;** --------------------------------------------------------------------------*
$C$L106:    

           RET     .S2     B3                ; |1457| 
||         LDW     .D2T1   *++SP(8),A10      ; |1457| 

           LDW     .D2T1   *++SP(8),A11      ; |1457| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1457| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation16GetMachiningDataEv

;******************************************************************************
;* FUNCTION NAME: Interpolation::GetMachiningData()                           *
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
;*   Local Frame Size  : 0 Args + 536 Auto + 56 Save = 592 byte               *
;******************************************************************************
_ZN13Interpolation16GetMachiningDataEv:
;** --------------------------------------------------------------------------*
;* 1110	-----------------------    get_data_result = 0;
;* 1111	-----------------------    get_data_time = 1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 10, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
           STW     .D2T1   A11,*SP--(8)      ; |1108| 
           STW     .D2T1   A10,*SP--(8)      ; |1108| 
           STDW    .D2T2   B13:B12,*SP--     ; |1108| 
           STDW    .D2T2   B11:B10,*SP--     ; |1108| 
           STDW    .D2T1   A15:A14,*SP--     ; |1108| 
           STDW    .D2T1   A13:A12,*SP--     ; |1108| 
           STW     .D2T2   B3,*SP--(8)       ; |1108| 

           ADDK    .S2     -536,SP           ; |1108| 
||         ZERO    .L1     A4                ; |1110| 
||         MV      .S1     A4,A14            ; |1108| 
||         MVK     .L2     0x1,B13           ; |1111| 

;** --------------------------------------------------------------------------*

           LDW     .D1T1   *+A14(96),A5      ; |1112| 
||         MVKL    .S2     0x3e45798e,B11
||         MVK     .S1     17072,A3          ; |1112| 

           LDBU    .D1T1   *+A14[A3],A3      ; |1112| 
||         MVKL    .S2     0xe2308c3a,B10

           MVKH    .S2     0x3e45798e,B11

           MVKH    .S2     0xe2308c3a,B10
||         CMPLT   .L2     B13,2,B31         ; |1112| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L107
;** --------------------------------------------------------------------------*
$C$L107:    
;**	-----------------------g2:
;* 1112	-----------------------    if ( !(((**((*this).m_trajectory_index*4+(*this).m_dynamic_info)).current_f >= 1.00000000000000002092e-8)|(get_data_time < 2)) ) goto g108;
           NOP             2
           LDW     .D1T1   *+A5[A3],A3       ; |1112| 
           NOP             4
           ADDK    .S1     320,A3            ; |1112| 
           LDDW    .D1T1   *A3,A7:A6         ; |1112| 
           NOP             4
           CMPLTDP .S2X    A7:A6,B11:B10,B4  ; |1112| 
           NOP             1
           XOR     .L2     1,B4,B5           ; |1112| 
           OR      .L2     B31,B5,B0         ; |1112| 

   [!B0]   BNOP    .S1     $C$L177,3         ; |1112| 
|| [ B0]   LDW     .D1T1   *+A14(44),A12     ; |1115| 

   [ B0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |409| 
   [ B0]   LDW     .D1T1   *+A12(20),A4      ; |409| 
           ; BRANCHCC OCCURS {$C$L177}       ; |1112| 
;** --------------------------------------------------------------------------*
;* 1115	-----------------------    this = (*this).m_data_buffer;
;** 409	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [98]
;** 411	-----------------------    buf_len = (*this).m_buffer_cur_length;  // [98]
;** 413	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [98]
;* 1115	-----------------------    if ( buf_len <= 0 ) goto g105;
           ADDKPC  .S2     $C$RL145,B3,3     ; |409| 
$C$RL145:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |409| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A4,B4             ; |409| 
||         LDW     .D1T1   *+A12(20),A4      ; |413| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D1T1   *+A12(8),A12      ; |411| 

$C$RL146:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |413| 
;** --------------------------------------------------------------------------*
           CMPGT   .L1     A12,0,A0          ; |1115| 

   [!A0]   B       .S2     $C$L174           ; |1115| 
|| [ A0]   LDW     .D1T2   *+A14(92),B4      ; |1117| 
|| [ A0]   MVK     .S1     17072,A4          ; |1119| 

   [ A0]   LDBU    .D1T1   *+A14[A4],A4      ; |1119| 
   [ A0]   LDW     .D1T1   *+A14(96),A3      ; |1119| 
   [!A0]   ZERO    .L1     A4                ; |1275| 
           NOP             1
           ADDK    .S2     512,B4            ; |1117| 
           ; BRANCHCC OCCURS {$C$L174}       ; |1115| 
;** --------------------------------------------------------------------------*
;* 1117	-----------------------    last_fe = *((*(*this).m_geometry).end_data+1376);
;* 1119	-----------------------    min_step_time = (*this).m_interpolation_cycle_time-(**((*this).m_trajectory_index*4+(*this).m_dynamic_info)).left_time;
;* 1120	-----------------------    this = (*this).m_data_buffer;
;** 339	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [100]
;** 343	-----------------------    if ( (*this).m_buffer_cur_length <= 0 ) goto g7;  // [100]
;** 344	-----------------------    pointer = (*this).m_read_pointer;  // [100]
;** 345	-----------------------    C$45 = _mpyli(3816, (*this).m_buffer_total_length);  // [100]
;** 345	-----------------------    if ( pointer < (*this).m_buffer+_lo(C$45) ) goto g8;  // [100]

           LDW     .D2T2   *B4,B4            ; |1117| 
||         MVK     .S2     17064,B5          ; |1119| 

           LDW     .D1T1   *+A3[A4],A3       ; |1119| 
           ADD     .L2X    B5,A14,B5         ; |1119| 
           LDW     .D1T2   *+A14(44),B12     ; |1120| 
           LDDW    .D2T2   *B5,B7:B6         ; |1119| 
           ADDK    .S2     1376,B4           ; |1117| 

           ADDK    .S1     344,A3            ; |1119| 
||         LDDW    .D2T2   *B4,B5:B4         ; |1117| 

           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |339| 
||         LDDW    .D1T1   *A3,A13:A12       ; |1119| 

           LDW     .D2T1   *+B12(20),A4      ; |339| 
           STW     .D2T2   B6,*+SP(524)      ; |1119| 
           STW     .D2T2   B7,*+SP(528)      ; |1119| 
           STW     .D2T2   B4,*+SP(532)      ; |1119| 

           STW     .D2T2   B5,*+SP(536)      ; |1119| 
||         ADDKPC  .S2     $C$RL147,B3,0     ; |339| 

$C$RL147:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |339| 
;** --------------------------------------------------------------------------*
;** 346	-----------------------    pointer -= (int)_lo(C$45);  // [100]
;** 346	-----------------------    goto g8;  // [100]
;**	-----------------------g7:
;** 341	-----------------------    pointer = NULL;  // [100]
;**	-----------------------g8:
;** 350	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [100]
;* 1120	-----------------------    U$33 = (*this).m_geometry;
;* 1120	-----------------------    (*U$33).end_data = pointer;
;* 1122	-----------------------    C$44 = (*this).m_channel_state;
;* 1122	-----------------------    if ( !(*C$44).servo_tool_magazine ) goto g11;
           LDW     .D2T2   *+B12(8),B4       ; |343| 
           LDW     .D2T2   *+SP(528),B7
           NOP             3
           CMPGT   .L1X    B4,0,A0           ; |343| 
   [ A0]   LDW     .D2T2   *+B12(4),B5       ; |345| 
           MVK     .S2     3816,B4           ; |345| 
   [ A0]   LDW     .D2T2   *B12,B6           ; |345| 
   [ A0]   LDW     .D2T1   *+B12(16),A15     ; |344| 
           NOP             1
   [ A0]   MPYLI   .M2     B4,B5,B5:B4       ; |345| 
           NOP             3
   [ A0]   STW     .D2T2   B4,*+SP(520)      ; |345| 

   [ A0]   ADD     .L2     B4,B6,B4          ; |345| 
||         LDW     .D2T2   *+SP(524),B6

           NOP             4

   [!A0]   ZERO    .S1     A15               ; |341| 
|| [ A0]   CMPLTU  .L1X    A15,B4,A0         ; |345| 
|| [!A0]   MVK     .D1     0x1,A0            ; |345| 
||         SUBDP   .L2X    B7:B6,A13:A12,B5:B4 ; |1119| 

   [!A0]   LDW     .D2T1   *+SP(520),A3
           NOP             5
           STW     .D2T2   B4,*+SP(524)      ; |341| 
           STW     .D2T2   B5,*+SP(528)      ; |341| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         MV      .L2X    A4,B4             ; |350| 
||         LDW     .D2T1   *+B12(20),A4      ; |350| 
|| [!A0]   SUB     .L1     A15,A3,A15        ; |346| 

$C$RL148:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |350| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A14(92),A4      ; |1120| 
           MVK     .S1     512,A3            ; |1120| 
           MVK     .S1     1248,A5           ; |1122| 
           NOP             2
           ADD     .L1     A3,A4,A3          ; |1120| 
           STW     .D1T1   A15,*A3           ; |1120| 
           LDW     .D1T1   *+A14(20),A3      ; |1122| 
           NOP             4
           LDBU    .D1T1   *+A3[A5],A0       ; |1122| 
           MVK     .S1     512,A5            ; |1123| 
           ADD     .L1     A5,A4,A4          ; |1123| 
           NOP             2

   [ A0]   LDW     .D1T1   *A4,A4            ; |1123| 
|| [ A0]   MVK     .S2     1432,B4           ; |1123| 
|| [ A0]   MVK     .S1     723,A5            ; |1123| 

   [!A0]   BNOP    .S1     $C$L109,2         ; |1122| 
|| [!A0]   LDW     .D1T1   *+A14(32),A3      ; |1281| 

   [ A0]   CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |1123| 

           ADD     .L1X    B4,A4,A4          ; |1123| 
|| [ A0]   LDBU    .D1T2   *+A3[A5],B4       ; |1123| 

   [!A0]   LDW     .D1T2   *+A14(92),B4
|| [!A0]   CMPEQ   .L1     A3,2,A0           ; |1281| 

           ; BRANCHCC OCCURS {$C$L109}       ; |1122| 
;** --------------------------------------------------------------------------*
;* 1123	-----------------------    if ( AxisMovData::CheckMask((struct xisMovData *)(*U$33).end_data+1432, (*C$44).servo_tool_magazine_axis) ) goto g11;
           ADDKPC  .S2     $C$RL149,B3,2     ; |1123| 
$C$RL149:  ; CALL OCCURS {_ZN11AxisMovData9CheckMaskEh} {0}  ; |1123| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |1123| 

   [ A0]   B       .S2     $C$L108           ; |1123| 
|| [!A0]   LDW     .D1T1   *+A14(20),A4      ; |1124| 
|| [!A0]   MVK     .S1     723,A5            ; |1124| 

   [ A0]   LDW     .D1T2   *+A14(92),B4
   [!A0]   LDW     .D1T1   *+A14(24),A31     ; |1124| 
   [ A0]   LDW     .D1T1   *+A14(32),A3      ; |1281| 
   [!A0]   LDW     .D1T1   *+A14(92),A3      ; |1124| 
   [!A0]   LDBU    .D1T1   *+A4[A5],A5       ; |1124| 
           ; BRANCHCC OCCURS {$C$L108}       ; |1123| 
;** --------------------------------------------------------------------------*
;* 1124	-----------------------    C$43 = (int)(*(*this).m_channel_state).servo_tool_magazine_axis<<3;
;* 1124	-----------------------    *((*(*this).m_geometry).end_data+C$43+1440) = *((*this).m_realtime_state+C$43+512);
           NOP             3
           ADDK    .S1     512,A3            ; |1124| 

           SHL     .S1     A5,3,A6           ; |1124| 
||         LDW     .D1T2   *A3,B4            ; |1124| 

           ADD     .L1     A6,A31,A3         ; |1124| 
           ADDK    .S1     512,A3            ; |1124| 
           LDDW    .D1T1   *A3,A5:A4         ; |1124| 
           LDW     .D1T1   *+A14(32),A3      ; |1281| 
           ADD     .L2X    A6,B4,B4          ; |1124| 
           ADDK    .S2     1440,B4           ; |1124| 
           NOP             1

           STDW    .D2T1   A5:A4,*B4         ; |1124| 
||         LDW     .D1T2   *+A14(92),B4

;** --------------------------------------------------------------------------*
$C$L108:    
           NOP             2
           CMPEQ   .L1     A3,2,A0           ; |1281| 
;** --------------------------------------------------------------------------*
$C$L109:    
;**	-----------------------g11:
;**  	-----------------------    U$33 = (*this).m_geometry;
;* 1281	-----------------------    switch ( (*this).m_cur_channel_mode ) {case 2: goto g16;, case 4: goto g12;, case 6: goto g15;, DEFAULT goto g17};  // [67]

   [ A0]   B       .S2     $C$L110           ; |1281| 
||         MV      .S1     A0,A2             ; guard predicate rewrite
||         MV      .D1     A0,A1             ; branch predicate copy
|| [!A0]   CMPEQ   .L1     A3,4,A0           ; |1281| 

   [ A2]   MVK     .L1     0x1,A0            ; |1281| nullify predicate
|| [!A2]   ADDAD   .D1     A14,10,A31        ; |1295| 

   [!A0]   BNOP    .S1     $C$L111,2         ; |1281| 
|| [!A0]   CMPEQ   .L2X    A3,6,B0           ; |1281| 
|| [ A1]   ADDAD   .D1     A14,10,A3         ; |1291| 
|| [ A0]   ZERO    .S2     B0                ; |1281| 

   [ A1]   STW     .D1T1   A3,*+A14(60)      ; |1291| 
           ; BRANCHCC OCCURS {$C$L110}       ; |1281| 
;** --------------------------------------------------------------------------*

   [ B0]   STW     .D1T1   A31,*+A14(60)     ; |1295| 
|| [ A0]   MVK     .S2     512,B5            ; |1283| 

   [ A0]   ADD     .L2     B5,B4,B5          ; |1283| 
|| [!A0]   MVK     .S2     512,B5            ; |1131| 

           ; BRANCHCC OCCURS {$C$L111}       ; |1281| 
;** --------------------------------------------------------------------------*
;**	-----------------------g12:
;* 1283	-----------------------    if ( (*(*U$33).end_data).interpolation_type ) goto g14;  // [67]
;* 1284	-----------------------    (*this).m_feed_rate = &((double *)this)[9];  // [67]
;* 1285	-----------------------    goto g17;  // [67]
;**	-----------------------g14:
;* 1286	-----------------------    (*this).m_feed_rate = &((double *)this)[8];  // [67]
;* 1286	-----------------------    goto g17;  // [67]
;**	-----------------------g15:
;* 1295	-----------------------    (*this).m_feed_rate = &((double *)this)[10];  // [67]
;* 1297	-----------------------    goto g17;  // [67]
           LDW     .D2T2   *B5,B5            ; |1283| 
           ADDAD   .D1     A14,8,A3          ; |1286| 
           ADDAD   .D1     A14,9,A4          ; |1284| 
           NOP             2
           ADDK    .S2     274,B5            ; |1283| 

           LDHU    .D2T2   *B5,B0            ; |1283| 
||         MVK     .S2     512,B5            ; |1131| 

           BNOP    .S1     $C$L112,3         ; |1286| 
||         ADD     .L2     B5,B4,B4          ; |1131| 

   [ B0]   STW     .D1T1   A3,*+A14(60)      ; |1286| 

           CALL    .S1     _ZN13Interpolation19ProcessNearbyLocateEP8LineData ; |1131| 
|| [!B0]   STW     .D1T1   A4,*+A14(60)      ; |1284| 
||         MV      .L1     A14,A4            ; |1131| 

           ; BRANCH OCCURS {$C$L112}         ; |1286| 
;** --------------------------------------------------------------------------*
$C$L110:    
;**	-----------------------g16:
;* 1291	-----------------------    (*this).m_feed_rate = &((double *)this)[10];  // [67]
           MVK     .S2     512,B5            ; |1131| 
;** --------------------------------------------------------------------------*
$C$L111:    

           CALL    .S1     _ZN13Interpolation19ProcessNearbyLocateEP8LineData ; |1131| 
||         MV      .L1     A14,A4            ; |1131| 
||         ADD     .L2     B5,B4,B4          ; |1131| 

;** --------------------------------------------------------------------------*
$C$L112:    
;**	-----------------------g17:
;* 1131	-----------------------    Interpolation::ProcessNearbyLocate(this, (*U$33).end_data);
;* 1134	-----------------------    U$35 = (*(*this).m_geometry).end_data;
;* 1134	-----------------------    U$37 = U$35;
;* 1134	-----------------------    if ( *((unsigned char *)U$37+3000) ) goto g25;
           LDW     .D2T2   *B4,B4            ; |1131| 
           ADDKPC  .S2     $C$RL150,B3,3     ; |1131| 
$C$RL150:  ; CALL OCCURS {_ZN13Interpolation19ProcessNearbyLocateEP8LineData} {0}  ; |1131| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A14(92),A3      ; |1134| 
           MVK     .S1     3000,A31          ; |1134| 
           NOP             3
           ADDK    .S1     512,A3            ; |1134| 
           LDW     .D1T1   *A3,A12           ; |1134| 
           MVK     .S1     1432,A3           ; |1134| 
           NOP             3
           LDBU    .D1T1   *+A12[A31],A0     ; |1134| 
           ADD     .L1     A3,A12,A3         ; |1134| 
           NOP             3

   [ A0]   BNOP    .S1     $C$L116,3         ; |1134| 
|| [!A0]   LDDW    .D1T1   *A3,A5:A4         ; |1134| 
|| [!A0]   MVK     .L2     0xfffffff8,B4     ; |1134| 
|| [!A0]   ZERO    .L1     A31               ; |1134| 

   [!A0]   ADD     .L1X    7,B4,A3

   [!A0]   AND     .L1X    B4,A4,A30         ; |1134| 
||         AND     .S1     A3,A5,A3          ; |1134| 

           ; BRANCHCC OCCURS {$C$L116}       ; |1134| 
;** --------------------------------------------------------------------------*
;* 1134	-----------------------    if ( (*((unsigned long long *)U$37+1432)&0xfffffffffffffff8uLL) == 0uLL ) goto g25;
           CMPEQ   .L1     A3,A31,A0         ; |1134| 
   [ A0]   CMPEQ   .L1     A30,A31,A0        ; |1134| 

   [!A0]   MVK     .S1     2480,A3           ; |1137| 
|| [ A0]   B       .S2     $C$L117           ; |1134| 
||         MV      .L1     A0,A1             ; guard predicate rewrite

   [!A0]   ADD     .L1     A3,A12,A3         ; |1137| 
|| [ A0]   MVK     .S1     270,A3            ; |1152| 

   [!A0]   LDDW    .D1T1   *A3,A5:A4         ; |1137| 
   [ A0]   LDBU    .D1T1   *+A12[A3],A0      ; |1152| 
   [ A1]   MVK     .S1     2480,A31          ; |1152| 
   [ A1]   ADD     .L1     A31,A12,A3        ; |1152| 
           ; BRANCHCC OCCURS {$C$L117}       ; |1134| 
;** --------------------------------------------------------------------------*
;* 1137	-----------------------    C$41 = (double *)U$37+2480;
;* 1137	-----------------------    C$42 = *C$41;
;* 1137	-----------------------    *C$41 = C$42*C$42;
;* 1141	-----------------------    if ( (U$116 = (*(*this).m_channel_config).axis_number) < 5 ) goto g24;
           NOP             1
           MPYDP   .M1     A5:A4,A5:A4,A5:A4 ; |1137| 
           NOP             9
           STDW    .D1T1   A5:A4,*A3         ; |1137| 
           LDW     .D1T1   *+A14(16),A3      ; |1141| 
           NOP             4
           LDBU    .D1T1   *+A3(2),A15       ; |1141| 
           NOP             4
           CMPLTU  .L1     A15,5,A0          ; |1141| 

   [ A0]   BNOP    .S1     $C$L115,5         ; |1141| 
|| [!A0]   MVK     .L1     0x3,A12           ; |1141| 

           ; BRANCHCC OCCURS {$C$L115}       ; |1141| 
;** --------------------------------------------------------------------------*
;* 1141	-----------------------    i = 3;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A14(92),B12     ; |1142| 
           MVK     .S1     512,A3            ; |1142| 
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L113:    
;**	-----------------------g21:
;* 1142	-----------------------    C$40 = (*this).m_geometry;
;* 1142	-----------------------    U$35 = (*C$40).end_data;
;* 1142	-----------------------    C$39 = U$35;
;* 1142	-----------------------    if ( (*((unsigned long long *)C$39+1432)&1uLL<<i) == 0uLL ) goto g23;
           ZERO    .L1     A5                ; |1142| 
           MVK     .L1     0x1,A4            ; |1142| 

           ADD     .L1X    A3,B12,A3         ; |1142| 
||         CALL    .S1     __c6xabi_llshl    ; |1142| 

           LDW     .D1T1   *A3,A13           ; |1142| 
           MV      .L2X    A12,B4            ; |1142| 
           ADDKPC  .S2     $C$RL151,B3,2     ; |1142| 
$C$RL151:  ; CALL OCCURS {__c6xabi_llshl} {0}  ; |1142| 
;** --------------------------------------------------------------------------*
           MVK     .S2     1432,B4           ; |1142| 
           ADD     .L2X    B4,A13,B4         ; |1142| 
           LDDW    .D2T2   *B4,B5:B4         ; |1142| 
           ZERO    .L2     B6                ; |1142| 
           NOP             3

           AND     .L1X    A4,B4,A3          ; |1142| 
||         AND     .L2X    A5,B5,B5          ; |1142| 
||         MV      .S2     B6,B4             ; |1142| 

           CMPEQ   .L2     B5,B6,B0          ; |1142| 

   [ B0]   CMPEQ   .L2X    A3,B6,B0          ; |1142| 
||         ADDAD   .D1     A13,A12,A3        ; |1143| 

   [ B0]   B       .S2     $C$L114           ; |1142| 
||         ADDK    .S1     1440,A3           ; |1143| 
|| [!B0]   MV      .L1X    B12,A4            ; |1143| 
|| [ B0]   ADD     .D1     1,A12,A12         ; |1141| 

   [ B0]   SUB     .L1     A15,1,A3          ; |1141| 
|| [!B0]   LDDW    .D1T1   *+A4[A12],A5:A4   ; |1143| 
|| [!B0]   ZERO    .S1     A0                ; |1141| nullify predicate

   [ B0]   CMPGT   .L1     A3,A12,A0         ; |1141| 
|| [!B0]   LDDW    .D1T1   *A3,A7:A6         ; |1143| 

   [ A0]   BNOP    .S1     $C$L113,2         ; |1141| 
           ; BRANCHCC OCCURS {$C$L114}       ; |1142| 
;** --------------------------------------------------------------------------*
;* 1143	-----------------------    C$38 = (double *)C$39+2480;
;* 1143	-----------------------    *C$38 = *C$38+pow(*((i<<3)+(double *)U$35+1440)-*((i<<3)+(double *)C$40), 2.0);
;**  	-----------------------    U$116 = (*(*this).m_channel_config).axis_number;
           ZERO    .L2     B5
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |1143| 
           CALL    .S1     pow               ; |1143| 
           SET     .S2     B5,0x1e,0x1e,B5
           ADDKPC  .S2     $C$RL152,B3,3     ; |1143| 
$C$RL152:  ; CALL OCCURS {pow} {0}           ; |1143| 
;** --------------------------------------------------------------------------*
           MVK     .S2     2480,B4           ; |1143| 
           ADD     .L2X    B4,A13,B4         ; |1143| 
           LDDW    .D2T2   *B4,B7:B6         ; |1143| 
           ADD     .L1     1,A12,A12         ; |1141| 
           NOP             3
           ADDDP   .L2X    A5:A4,B7:B6,B7:B6 ; |1143| 
           NOP             6
           STDW    .D2T2   B7:B6,*B4         ; |1143| 
           LDW     .D1T1   *+A14(16),A3
           NOP             4
           LDBU    .D1T1   *+A3(2),A15
           NOP             4
           SUB     .L1     A15,1,A3          ; |1141| 
           CMPGT   .L1     A3,A12,A0         ; |1141| 
   [ A0]   BNOP    .S1     $C$L113,2         ; |1141| 
;** --------------------------------------------------------------------------*
$C$L114:    
;**	-----------------------g23:
;* 1141	-----------------------    if ( U$116-1 > (++i) ) goto g21;
   [ A0]   LDW     .D1T2   *+A14(92),B12     ; |1142| 
   [ A0]   MVK     .S1     512,A3            ; |1142| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L113}       ; |1141| 
;** --------------------------------------------------------------------------*
$C$L115:    
;**	-----------------------g24:
;* 1148	-----------------------    *((*(*this).m_geometry).end_data+2480) = sqrt(*((*(*this).m_geometry).end_data+2480));
;* 1150	-----------------------    *((*(*this).m_geometry).end_data+3000) = 1;
;**  	-----------------------    U$35 = (*(*this).m_geometry).end_data;
           LDW     .D1T1   *+A14(92),A3      ; |1148| 
           NOP             4
           ADDK    .S1     512,A3            ; |1148| 
           LDW     .D1T1   *A3,A3            ; |1148| 
           NOP             4
           ADDK    .S1     2480,A3           ; |1148| 

           CALLP   .S2     sqrt,B3
||         LDDW    .D1T1   *A3,A5:A4         ; |1148| 

$C$RL153:  ; CALL OCCURS {sqrt} {0}          ; |1148| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A14(92),B5      ; |1148| 
           LDW     .D1T2   *+A14(92),B4      ; |1150| 
           LDW     .D1T1   *+A14(92),A3
           MVK     .L2     1,B6              ; |1150| 
           MVK     .S2     3000,B7           ; |1150| 
           ADDK    .S2     512,B5            ; |1148| 
           LDW     .D2T2   *B5,B5            ; |1148| 
           ADDK    .S2     512,B4            ; |1150| 
           LDW     .D2T2   *B4,B4            ; |1150| 
           ADDK    .S1     512,A3
           LDW     .D1T1   *A3,A12
           ADDK    .S2     2480,B5           ; |1148| 
           STDW    .D2T1   A5:A4,*B5         ; |1148| 
           STB     .D2T2   B6,*+B4[B7]       ; |1150| 
;** --------------------------------------------------------------------------*
$C$L116:    
           MVK     .S1     270,A3            ; |1152| 
           LDBU    .D1T1   *+A12[A3],A0      ; |1152| 
           MVK     .S1     2480,A31          ; |1152| 
           ADD     .L1     A31,A12,A3        ; |1152| 
;** --------------------------------------------------------------------------*
$C$L117:    
;**	-----------------------g25:
;* 1152	-----------------------    if ( !(*U$35).interpolation_flag ) goto g27;
;* 1152	-----------------------    if ( *((double *)U$35+2480) > 1.00000000000000002092e-8 ) goto g40;
           NOP             2
   [ A0]   LDDW    .D1T1   *A3,A5:A4         ; |1152| 
           MVK     .S1     132,A3            ; |1252| 
   [!A0]   ZERO    .L2     B0                ; |1152| 
           NOP             2
   [ A0]   CMPGTDP .S2X    A5:A4,B11:B10,B0  ; |1152| 
           NOP             1

   [!B0]   LDB     .D1T1   *+A14[A3],A0      ; |1252| 
|| [ B0]   MVK     .S1     132,A3            ; |1305| 
|| [ B0]   B       .S2     $C$L124           ; |1152| 

   [ B0]   LDB     .D1T1   *+A14[A3],A3      ; |1305| 
   [ B0]   MVK     .L1     0x1,A0            ; |1252| nullify predicate
   [ B0]   LDW     .D1T1   *+A14(32),A4      ; |1305| 
           NOP             1
   [!A0]   B       .S1     $C$L118           ; |1252| 
           ; BRANCHCC OCCURS {$C$L124}       ; |1152| 
;** --------------------------------------------------------------------------*
;**	-----------------------g27:
;* 1252	-----------------------    if ( !(*this).m_is_single_line_mode ) goto g30;
   [ A0]   LDW     .D1T1   *+A14(60),A3      ; |1252| 
           NOP             4
           ; BRANCHCC OCCURS {$C$L118}       ; |1252| 
;** --------------------------------------------------------------------------*
;* 1252	-----------------------    if ( ABS(*(*this).m_feed_rate) >= 1.00000000000000002092e-8 ) goto g30;
           LDDW    .D1T1   *A3,A5:A4         ; |1252| 
           NOP             4
           ABSDP   .S1     A5:A4,A5:A4       ; |1252| 
           NOP             2
           CMPLTDP .S2X    A5:A4,B11:B10,B0  ; |1252| 
           NOP             1

   [ B0]   LDW     .D1T1   *+A14(100),A4     ; |1252| 
|| [!B0]   B       .S2     $C$L119           ; |1252| 
|| [!B0]   MVK     .S1     132,A4            ; |1305| 

   [!B0]   LDW     .D1T1   *+A14(92),A3      ; |1257| 
   [!B0]   LDB     .D1T1   *+A14[A4],A7      ; |1305| 
           NOP             2
   [ B0]   LDW     .D1T1   *A4,A3            ; |1252| 
           ; BRANCHCC OCCURS {$C$L119}       ; |1252| 
;** --------------------------------------------------------------------------*
;* 1252	-----------------------    C$37 = (*this).m_interpolation_algorithm;
;* 1252	-----------------------    if ( ABS((*(double (*)())*((*C$37).__vptr+12))(C$37)) < 1.00000000000000002092e-8 ) goto g55;
           NOP             4
           LDW     .D1T1   *+A3(12),A3       ; |1252| 
           NOP             4
           CALL    .S2X    A3                ; |1252| 
           ADDKPC  .S2     $C$RL154,B3,4     ; |1252| 
$C$RL154:  ; CALL OCCURS {A3} {0}            ; |1252| 
;** --------------------------------------------------------------------------*
           ABSDP   .S1     A5:A4,A5:A4       ; |1252| 
           NOP             2
           CMPLTDP .S2X    A5:A4,B11:B10,B0  ; |1252| 
           NOP             1
   [ B0]   BNOP    .S1     $C$L131,5         ; |1252| 
           ; BRANCHCC OCCURS {$C$L131}       ; |1252| 
;** --------------------------------------------------------------------------*
$C$L118:    

           MVK     .S1     132,A4            ; |1305| 
||         LDW     .D1T1   *+A14(92),A3      ; |1257| 

           LDB     .D1T1   *+A14[A4],A7      ; |1305| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L119:    
;**	-----------------------g30:
;* 1257	-----------------------    data = (*(*this).m_geometry).end_data;
;**  	-----------------------    K$164 = 502u;
;* 1305	-----------------------    if ( !(((*this).m_is_single_line_mode != 0)&((*this).m_cur_channel_mode == 4)) ) goto g32;  // [68]
;* 1306	-----------------------    *((double *)data+1376) = 0.0;  // [68]
;**	-----------------------g32:
;* 1310	-----------------------    U$167 = (struct Commands *)data+3128;  // [68]
;* 1310	-----------------------    if ( MCommands::HasCmd(U$167, K$164) ) goto g35;  // [68]

           LDW     .D1T1   *+A14(32),A6      ; |1305| 
||         ADDK    .S1     512,A3            ; |1257| 

           LDW     .D1T1   *A3,A12           ; |1257| 
||         CMPEQ   .L1     A7,0,A3           ; |1305| 

           CALL    .S1     _ZN9MCommands6HasCmdEj ; |1310| 
           XOR     .L1     1,A3,A3           ; |1305| 
           ZERO    .L1     A5:A4             ; |1306| 

           CMPEQ   .L1     A6,4,A6           ; |1305| 
||         MVK     .S1     1376,A7           ; |1306| 

           AND     .L1     A6,A3,A0          ; |1305| 
||         ADD     .D1     A7,A12,A3         ; |1306| 
||         MVK     .S1     3128,A6           ; |1310| 
||         MVK     .S2     0x1f6,B4

   [ A0]   STDW    .D1T1   A5:A4,*A3         ; |1306| 
||         ADD     .L1     A6,A12,A4         ; |1310| 
||         ADD     .S1     A6,A12,A13        ; |1310| 
||         ADDKPC  .S2     $C$RL155,B3,0     ; |1310| 

$C$RL155:  ; CALL OCCURS {_ZN9MCommands6HasCmdEj} {0}  ; |1310| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |1310| 

   [ A0]   B       .S1     $C$L120           ; |1310| 
|| [ A0]   LDW     .D1T1   *+A14(104),A4     ; |1312| 

   [ A0]   CALL    .S1     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType ; |1312| 
   [!A0]   CALL    .S1     _ZN9MCommands6HasCmdEj ; |1316| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L120}       ; |1310| 
;** --------------------------------------------------------------------------*
;* 1316	-----------------------    if ( !MCommands::HasCmd(U$167, 503u) ) goto g36;  // [68]
           ADDKPC  .S2     $C$RL156,B3,0     ; |1316| 

           MVK     .S2     0x1f7,B4          ; |1316| 
||         MV      .L1     A13,A4            ; |1316| 

$C$RL156:  ; CALL OCCURS {_ZN9MCommands6HasCmdEj} {0}  ; |1316| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |1316| 

   [!A0]   BNOP    .S2     $C$L121,1         ; |1316| 
|| [ A0]   LDW     .D1T2   *+A14(16),B4      ; |1318| 
|| [!A0]   MVK     .S1     133,A3            ; |1330| 

   [ A0]   LDW     .D1T1   *+A14(104),A4     ; |1318| 
   [ A0]   MVK     .S2     96,B5             ; |1318| 
   [ A0]   CALL    .S1     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType ; |1318| 

   [ A0]   LDBU    .D2T2   *+B4[B5],B4       ; |1318| 
|| [!A0]   LDB     .D1T1   *+A14[A3],A0      ; |1330| 

           ; BRANCHCC OCCURS {$C$L121}       ; |1316| 
;** --------------------------------------------------------------------------*
;* 1318	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_quick_move_interpolation, (int)(*(*this).m_channel_config).speed_profile_type);  // [68]
;* 1320	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_line_interpolation, (int)(*(*this).m_channel_config).speed_profile_type);  // [68]
;* 1322	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_circle_interpolation, (int)(*(*this).m_channel_config).speed_profile_type);  // [68]
;* 1324	-----------------------    (*this).m_is_tapping_mode = 0;  // [68]
;* 1324	-----------------------    goto g36;  // [68]
           ADDKPC  .S2     $C$RL157,B3,3     ; |1318| 
$C$RL157:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |1318| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A14(16),B4      ; |1320| 
           MVK     .S2     96,B5             ; |1320| 
           LDW     .D1T1   *+A14(108),A4     ; |1320| 
           NOP             2

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDBU    .D2T2   *+B4[B5],B4       ; |1320| 

$C$RL158:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |1320| 
           LDW     .D1T1   *+A14(16),A3      ; |1322| 
           MVK     .S1     96,A5             ; |1322| 
           LDW     .D1T1   *+A14(112),A4     ; |1322| 
           NOP             2

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDBU    .D1T2   *+A3[A5],B4       ; |1322| 

$C$RL159:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |1322| 
;** --------------------------------------------------------------------------*

           BNOP    .S2     $C$L121,2         ; |1324| 
||         MVK     .S1     17049,A4          ; |1324| 
||         ZERO    .L1     A3                ; |1324| 

           STB     .D1T1   A3,*+A14[A4]      ; |1324| 
           MVK     .S1     133,A3            ; |1330| 
           LDB     .D1T1   *+A14[A3],A0      ; |1330| 
           ; BRANCH OCCURS {$C$L121}         ; |1324| 
;** --------------------------------------------------------------------------*
$C$L120:    
;**	-----------------------g35:
;* 1312	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_quick_move_interpolation, 1);  // [68]
;* 1313	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_line_interpolation, 1);  // [68]
;* 1314	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_circle_interpolation, 1);  // [68]
;* 1315	-----------------------    (*this).m_is_tapping_mode = 1;  // [68]

           MVK     .L2     0x1,B4            ; |1312| 
||         ADDKPC  .S2     $C$RL160,B3,0     ; |1312| 

$C$RL160:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |1312| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDW     .D1T1   *+A14(108),A4     ; |1313| 
||         MVK     .L2     0x1,B4            ; |1313| 

$C$RL161:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |1313| 

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDW     .D1T1   *+A14(112),A4     ; |1314| 
||         MVK     .L2     0x1,B4            ; |1314| 

$C$RL162:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |1314| 
;** --------------------------------------------------------------------------*

           MVK     .S1     17049,A4          ; |1315| 
||         MVK     .L1     1,A3              ; |1315| 

           MVK     .S1     133,A3            ; |1330| 
||         STB     .D1T1   A3,*+A14[A4]      ; |1315| 

           LDB     .D1T1   *+A14[A3],A0      ; |1330| 
;** --------------------------------------------------------------------------*
$C$L121:    
;**	-----------------------g36:
;* 1330	-----------------------    if ( !(*this).m_is_optional_stop ) goto g38;  // [68]
           NOP             4
   [!A0]   B       .S1     $C$L122           ; |1330| 
   [ A0]   CALL    .S1     _ZN9MCommands6HasCmdEj ; |1330| 
   [!A0]   CALL    .S1     _ZN8LineData10NeedToStopEv ; |1330| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L122}       ; |1330| 
;** --------------------------------------------------------------------------*
;* 1330	-----------------------    if ( MCommands::HasCmd(U$167, 1u) ) goto g39;  // [68]

           MVK     .L2     0x1,B4            ; |1330| 
||         MV      .L1     A13,A4            ; |1330| 
||         ADDKPC  .S2     $C$RL163,B3,0     ; |1330| 

$C$RL163:  ; CALL OCCURS {_ZN9MCommands6HasCmdEj} {0}  ; |1330| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |1330| 

   [ A0]   B       .S2     $C$L123           ; |1330| 
|| [ A0]   MVK     .S1     140,A4            ; |1428| 
|| [ A0]   ZERO    .L1     A3                ; |1425| 
|| [ A0]   MVK     .L2     1,B4              ; |1424| 
|| [ A0]   MVK     .D1     2,A31             ; |1428| 

   [ A0]   BNOP    .S1     $C$L161,2         ; |1429| 
|| [ A0]   STB     .D1T1   A31,*+A14[A4]     ; |1428| 

   [ A0]   STW     .D1T1   A3,*+A14(120)     ; |1425| 
   [ A0]   STW     .D1T2   B4,*+A14(116)     ; |1424| 
           ; BRANCHCC OCCURS {$C$L123}       ; |1330| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ZN8LineData10NeedToStopEv ; |1330| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L122:    
;**	-----------------------g38:
;* 1330	-----------------------    if ( !LineData::NeedToStop(data) ) goto g94;  // [68]
           ADDKPC  .S2     $C$RL164,B3,0     ; |1330| 
           MV      .L1     A12,A4            ; |1330| 
$C$RL164:  ; CALL OCCURS {_ZN8LineData10NeedToStopEv} {0}  ; |1330| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |1330| 

   [!A0]   BNOP    .S1     $C$L162,5         ; |1330| 
|| [!A0]   LDW     .D1T2   *+A14(44),B10     ; |1262| 

           ; BRANCHCC OCCURS {$C$L162}       ; |1330| 
;** --------------------------------------------------------------------------*

           BNOP    .S2     $C$L161,1         ; |1429| 
||         MVK     .S1     140,A4            ; |1428| 
||         MVK     .L1     2,A31             ; |1428| 
||         MVK     .L2     1,B4              ; |1424| 
||         ZERO    .D1     A3                ; |1425| 

           STW     .D1T1   A3,*+A14(120)     ; |1425| 
           STW     .D1T2   B4,*+A14(116)     ; |1424| 
           STB     .D1T1   A31,*+A14[A4]     ; |1428| 
;** --------------------------------------------------------------------------*
$C$L123:    
;**	-----------------------g39:
;* 1424	-----------------------    (*this).m_run_state = 1;  // [72]
;* 1425	-----------------------    (*this).m_process_state = 0;  // [72]
;* 1428	-----------------------    (*this).m_machining_state = 2u;  // [72]
;* 1429	-----------------------    goto g94;  // [72]
           LDW     .D1T2   *+A14(44),B10     ; |1262| 
           ; BRANCH OCCURS {$C$L161}         ; |1429| 
;** --------------------------------------------------------------------------*
$C$L124:    
;**	-----------------------g40:
;* 1155	-----------------------    data = U$35;
;**  	-----------------------    K$164 = 502u;
;* 1305	-----------------------    if ( !(((*this).m_is_single_line_mode != 0)&((*this).m_cur_channel_mode == 4)) ) goto g42;  // [68]
;* 1306	-----------------------    *((double *)data+1376) = 0.0;  // [68]
;**	-----------------------g42:
;* 1310	-----------------------    U$185 = (struct Commands *)data+3128;  // [68]
;* 1310	-----------------------    if ( MCommands::HasCmd(U$185, K$164) ) goto g45;  // [68]
           CMPEQ   .L1     A3,0,A3           ; |1305| 
           CALL    .S1     _ZN9MCommands6HasCmdEj ; |1310| 
           XOR     .L1     1,A3,A5           ; |1305| 

           CMPEQ   .L1     A4,4,A31          ; |1305| 
||         MVK     .S1     1376,A30          ; |1306| 
||         MVK     .S2     3128,B5           ; |1310| 

           AND     .S1     A31,A5,A0         ; |1305| 
||         ZERO    .L1     A5:A4             ; |1306| 
||         ADD     .D1     A30,A12,A3        ; |1306| 

   [ A0]   STDW    .D1T1   A5:A4,*A3         ; |1306| 
||         ADD     .L1X    B5,A12,A4         ; |1310| 
||         MVK     .S2     0x1f6,B4

           ADD     .L1X    B5,A12,A13        ; |1310| 
||         ADDKPC  .S2     $C$RL165,B3,0     ; |1310| 

$C$RL165:  ; CALL OCCURS {_ZN9MCommands6HasCmdEj} {0}  ; |1310| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |1310| 

   [ A0]   B       .S1     $C$L125           ; |1310| 
|| [ A0]   LDW     .D1T1   *+A14(104),A4     ; |1312| 

   [ A0]   CALL    .S1     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType ; |1312| 
   [!A0]   CALL    .S1     _ZN9MCommands6HasCmdEj ; |1316| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L125}       ; |1310| 
;** --------------------------------------------------------------------------*
;* 1316	-----------------------    if ( !MCommands::HasCmd(U$185, 503u) ) goto g46;  // [68]
           ADDKPC  .S2     $C$RL166,B3,0     ; |1316| 

           MVK     .S2     0x1f7,B4          ; |1316| 
||         MV      .L1     A13,A4            ; |1316| 

$C$RL166:  ; CALL OCCURS {_ZN9MCommands6HasCmdEj} {0}  ; |1316| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |1316| 

   [!A0]   BNOP    .S2     $C$L126,1         ; |1316| 
|| [ A0]   LDW     .D1T2   *+A14(16),B4      ; |1318| 
|| [!A0]   MVK     .S1     133,A3            ; |1330| 

   [ A0]   LDW     .D1T1   *+A14(104),A4     ; |1318| 
   [ A0]   MVK     .S2     96,B5             ; |1318| 
   [ A0]   CALL    .S1     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType ; |1318| 

   [ A0]   LDBU    .D2T2   *+B4[B5],B4       ; |1318| 
|| [!A0]   LDB     .D1T1   *+A14[A3],A0      ; |1330| 

           ; BRANCHCC OCCURS {$C$L126}       ; |1316| 
;** --------------------------------------------------------------------------*
;* 1318	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_quick_move_interpolation, (int)(*(*this).m_channel_config).speed_profile_type);  // [68]
;* 1320	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_line_interpolation, (int)(*(*this).m_channel_config).speed_profile_type);  // [68]
;* 1322	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_circle_interpolation, (int)(*(*this).m_channel_config).speed_profile_type);  // [68]
;* 1324	-----------------------    (*this).m_is_tapping_mode = 0;  // [68]
;* 1324	-----------------------    goto g46;  // [68]
           ADDKPC  .S2     $C$RL167,B3,3     ; |1318| 
$C$RL167:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |1318| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A14(16),B5      ; |1320| 
           MVK     .S2     96,B4             ; |1320| 
           LDW     .D1T1   *+A14(108),A4     ; |1320| 
           NOP             2

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDBU    .D2T2   *+B5[B4],B4       ; |1320| 

$C$RL168:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |1320| 
           LDW     .D1T1   *+A14(16),A3      ; |1322| 
           MVK     .S1     96,A5             ; |1322| 
           LDW     .D1T1   *+A14(112),A4     ; |1322| 
           NOP             2

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDBU    .D1T2   *+A3[A5],B4       ; |1322| 

$C$RL169:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |1322| 
;** --------------------------------------------------------------------------*

           BNOP    .S2     $C$L126,2         ; |1324| 
||         ZERO    .L1     A4                ; |1324| 
||         MVK     .S1     17049,A3          ; |1324| 

           STB     .D1T1   A4,*+A14[A3]      ; |1324| 
           MVK     .S1     133,A3            ; |1330| 
           LDB     .D1T1   *+A14[A3],A0      ; |1330| 
           ; BRANCH OCCURS {$C$L126}         ; |1324| 
;** --------------------------------------------------------------------------*
$C$L125:    
;**	-----------------------g45:
;* 1312	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_quick_move_interpolation, 1);  // [68]
;* 1313	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_line_interpolation, 1);  // [68]
;* 1314	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_circle_interpolation, 1);  // [68]
;* 1315	-----------------------    (*this).m_is_tapping_mode = 1;  // [68]

           MVK     .L2     0x1,B4            ; |1312| 
||         ADDKPC  .S2     $C$RL170,B3,0     ; |1312| 

$C$RL170:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |1312| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDW     .D1T1   *+A14(108),A4     ; |1313| 
||         MVK     .L2     0x1,B4            ; |1313| 

$C$RL171:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |1313| 

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDW     .D1T1   *+A14(112),A4     ; |1314| 
||         MVK     .L2     0x1,B4            ; |1314| 

$C$RL172:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |1314| 
;** --------------------------------------------------------------------------*

           MVK     .S1     17049,A4          ; |1315| 
||         MVK     .L1     1,A3              ; |1315| 

           MVK     .S1     133,A3            ; |1330| 
||         STB     .D1T1   A3,*+A14[A4]      ; |1315| 

           LDB     .D1T1   *+A14[A3],A0      ; |1330| 
;** --------------------------------------------------------------------------*
$C$L126:    
;**	-----------------------g46:
;* 1330	-----------------------    if ( !(*this).m_is_optional_stop ) goto g48;  // [68]
           NOP             4
   [!A0]   B       .S1     $C$L127           ; |1330| 
   [ A0]   CALL    .S1     _ZN9MCommands6HasCmdEj ; |1330| 
   [!A0]   CALL    .S1     _ZN8LineData10NeedToStopEv ; |1330| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L127}       ; |1330| 
;** --------------------------------------------------------------------------*
;* 1330	-----------------------    if ( MCommands::HasCmd(U$185, 1u) ) goto g49;  // [68]

           MVK     .L2     0x1,B4            ; |1330| 
||         MV      .L1     A13,A4            ; |1330| 
||         ADDKPC  .S2     $C$RL173,B3,0     ; |1330| 

$C$RL173:  ; CALL OCCURS {_ZN9MCommands6HasCmdEj} {0}  ; |1330| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |1330| 

   [ A0]   BNOP    .S2     $C$L128,2         ; |1330| 
|| [ A0]   MVK     .S1     140,A4            ; |1428| 
|| [ A0]   ZERO    .L1     A3                ; |1425| 
|| [ A0]   MVK     .L2     1,B4              ; |1424| 
|| [ A0]   MVK     .D1     2,A31             ; |1428| 

   [ A0]   STB     .D1T1   A31,*+A14[A4]     ; |1428| 
   [ A0]   STW     .D1T1   A3,*+A14(120)     ; |1425| 
   [ A0]   STW     .D1T2   B4,*+A14(116)     ; |1424| 
           ; BRANCHCC OCCURS {$C$L128}       ; |1330| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ZN8LineData10NeedToStopEv ; |1330| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L127:    
;**	-----------------------g48:
;* 1330	-----------------------    if ( !LineData::NeedToStop(data) ) goto g50;  // [68]
           ADDKPC  .S2     $C$RL174,B3,0     ; |1330| 
           MV      .L1     A12,A4            ; |1330| 
$C$RL174:  ; CALL OCCURS {_ZN8LineData10NeedToStopEv} {0}  ; |1330| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |1330| 

   [!A0]   LDW     .D1T1   *+A14(60),A3      ; |1157| 
|| [!A0]   B       .S2     $C$L129           ; |1330| 
|| [ A0]   MVK     .S1     140,A4            ; |1428| 
|| [ A0]   ZERO    .L1     A3                ; |1425| 
|| [ A0]   MVK     .L2     1,B4              ; |1424| 

   [ A0]   STW     .D1T1   A3,*+A14(120)     ; |1425| 
   [ A0]   MVK     .L1     2,A31             ; |1428| 
   [ A0]   STW     .D1T2   B4,*+A14(116)     ; |1424| 
   [ A0]   STB     .D1T1   A31,*+A14[A4]     ; |1428| 
   [!A0]   LDDW    .D1T1   *A3,A5:A4         ; |1157| 
           ; BRANCHCC OCCURS {$C$L129}       ; |1330| 
;** --------------------------------------------------------------------------*
$C$L128:    
;**	-----------------------g49:
;* 1424	-----------------------    (*this).m_run_state = 1;  // [72]
;* 1425	-----------------------    (*this).m_process_state = 0;  // [72]
;* 1428	-----------------------    (*this).m_machining_state = 2u;  // [72]
           LDW     .D1T1   *+A14(60),A3      ; |1157| 
           NOP             4
           LDDW    .D1T1   *A3,A5:A4         ; |1157| 
;** --------------------------------------------------------------------------*
$C$L129:    
;**	-----------------------g50:
;* 1157	-----------------------    if ( ABS(*(*this).m_feed_rate) >= 1.00000000000000002092e-8 ) goto g52;
           NOP             4
           ABSDP   .S1     A5:A4,A5:A4       ; |1157| 
           NOP             2
           CMPLTDP .S2X    A5:A4,B11:B10,B0  ; |1157| 
           NOP             1

   [ B0]   LDW     .D1T1   *+A14(100),A4     ; |1157| 
|| [!B0]   B       .S1     $C$L130           ; |1157| 

   [!B0]   LDW     .D1T1   *+A14(92),A3      ; |1157| 
           NOP             3
   [ B0]   LDW     .D1T1   *A4,A3            ; |1157| 
           ; BRANCHCC OCCURS {$C$L130}       ; |1157| 
;** --------------------------------------------------------------------------*
;* 1157	-----------------------    C$36 = (*this).m_interpolation_algorithm;
;* 1157	-----------------------    if ( ABS((*(double (*)())*((*C$36).__vptr+12))(C$36)) < 1.00000000000000002092e-8 ) goto g55;
           NOP             4
           LDW     .D1T1   *+A3(12),A3       ; |1157| 
           NOP             4
           CALL    .S2X    A3                ; |1157| 
           ADDKPC  .S2     $C$RL175,B3,4     ; |1157| 
$C$RL175:  ; CALL OCCURS {A3} {0}            ; |1157| 
;** --------------------------------------------------------------------------*
           ABSDP   .S1     A5:A4,A5:A4       ; |1157| 
           MV      .L2     B10,B4            ; |1157| 
           MV      .L2     B11,B5            ; |1157| 
           CMPLTDP .S2X    A5:A4,B5:B4,B0    ; |1157| 
           NOP             1

   [ B0]   BNOP    .S1     $C$L131,5         ; |1157| 
|| [!B0]   LDW     .D1T1   *+A14(92),A3      ; |1157| 

           ; BRANCHCC OCCURS {$C$L131}       ; |1157| 
;** --------------------------------------------------------------------------*
$C$L130:    
;**	-----------------------g52:
;* 1157	-----------------------    if ( ABS(*((*(*this).m_geometry).end_data+1368)) >= 1.00000000000000002092e-8 ) goto g56;
           ADDK    .S1     512,A3            ; |1157| 
           LDW     .D1T1   *A3,A3            ; |1157| 
           NOP             4
           ADDK    .S1     1368,A3           ; |1157| 
           LDDW    .D1T1   *A3,A5:A4         ; |1157| 
           NOP             4
           ABSDP   .S1     A5:A4,A5:A4       ; |1157| 
           NOP             2
           CMPLTDP .S2X    A5:A4,B11:B10,B0  ; |1157| 
           NOP             1

   [ B0]   LDW     .D1T1   *+A14(100),A4     ; |1157| 
|| [!B0]   B       .S1     $C$L133           ; |1157| 

   [!B0]   LDW     .D1T1   *+A14(92),A13     ; |1164| 
   [!B0]   MVK     .S1     512,A3            ; |1164| 
           NOP             2
   [ B0]   LDW     .D1T1   *A4,A3            ; |1157| 
           ; BRANCHCC OCCURS {$C$L133}       ; |1157| 
;** --------------------------------------------------------------------------*
;* 1157	-----------------------    C$35 = (*this).m_interpolation_algorithm;
;* 1157	-----------------------    if ( ABS((*(double (*)())*((*C$35).__vptr+12))(C$35)) >= 1.00000000000000002092e-8 ) goto g56;
           NOP             4
           LDW     .D1T1   *+A3(12),A3       ; |1157| 
           NOP             4
           CALL    .S2X    A3                ; |1157| 
           ADDKPC  .S2     $C$RL176,B3,4     ; |1157| 
$C$RL176:  ; CALL OCCURS {A3} {0}            ; |1157| 
;** --------------------------------------------------------------------------*
           ABSDP   .S1     A5:A4,A5:A4       ; |1157| 
           NOP             2
           CMPLTDP .S2X    A5:A4,B11:B10,B0  ; |1157| 
           NOP             1

   [!B0]   BNOP    .S1     $C$L132,4         ; |1157| 
|| [ B0]   LDW     .D1T1   *+A14(92),A3      ; |1157| 

           ADDK    .S1     512,A3            ; |1157| 
           ; BRANCHCC OCCURS {$C$L132}       ; |1157| 
;** --------------------------------------------------------------------------*
;* 1157	-----------------------    if ( ABS(*((*(*this).m_geometry).end_data+1376)) >= 1.00000000000000002092e-8 ) goto g56;
           LDW     .D1T1   *A3,A3            ; |1157| 
           MV      .L2     B11,B5
           MV      .L2     B10,B4
           NOP             2
           ADDK    .S1     1376,A3           ; |1157| 
           LDDW    .D1T1   *A3,A5:A4         ; |1157| 
           NOP             4
           ABSDP   .S1     A5:A4,A5:A4       ; |1157| 
           NOP             2
           CMPLTDP .S2X    A5:A4,B5:B4,B0    ; |1157| 
           NOP             1

   [!B0]   BNOP    .S2     $C$L134,4         ; |1157| 
|| [!B0]   LDW     .D1T1   *+A14(92),A13     ; |1164| 
|| [!B0]   MVK     .S1     512,A3            ; |1164| 

           ADD     .L1     A3,A13,A3         ; |1164| 
           ; BRANCHCC OCCURS {$C$L134}       ; |1157| 
;** --------------------------------------------------------------------------*
$C$L131:    
;**	-----------------------g55:
;* 1162	-----------------------    return 0;
           ADDK    .S2     536,SP            ; |1278| 
           LDW     .D2T2   *++SP(8),B3       ; |1278| 
           LDDW    .D2T1   *++SP,A13:A12     ; |1278| 
           LDDW    .D2T1   *++SP,A15:A14     ; |1278| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1278| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1278| 

           LDW     .D2T1   *++SP(8),A10      ; |1278| 
||         RET     .S2     B3                ; |1278| 

           LDW     .D2T1   *++SP(8),A11      ; |1278| 
           ZERO    .L1     A4                ; |1162| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |1278| 
;** --------------------------------------------------------------------------*
$C$L132:    
           LDW     .D1T1   *+A14(92),A13     ; |1164| 
           MVK     .S1     512,A3            ; |1164| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L133:    
           ADD     .L1     A3,A13,A3         ; |1164| 
;** --------------------------------------------------------------------------*
$C$L134:    
;**	-----------------------g56:
;* 1164	-----------------------    U$33 = (*this).m_geometry;
;* 1164	-----------------------    U$35 = (*U$33).end_data;
;* 1164	-----------------------    if ( !(U$88 = (*U$35).interpolation_type) ) goto g59;
           LDW     .D1T2   *A3,B12           ; |1164| 
           MVK     .S2     274,B4            ; |1164| 
           NOP             3
           ADD     .L2     B4,B12,B4         ; |1164| 
           LDHU    .D2T2   *B4,B4            ; |1164| 
           NOP             4
           MV      .L1X    B4,A0             ; |1164| 

   [!A0]   BNOP    .S1     $C$L135,3         ; |1164| 
|| [ A0]   LDW     .D1T1   *+A14(60),A3      ; |1167| 
||         MV      .L1X    B4,A12            ; |1164| 
|| [ A0]   LDW     .D2T2   *+SP(532),B4

   [ A0]   LDW     .D2T2   *+SP(536),B5
   [ A0]   LDDW    .D1T1   *A3,A5:A4         ; |1167| 
           ; BRANCHCC OCCURS {$C$L135}       ; |1164| 
;** --------------------------------------------------------------------------*
;* 1167	-----------------------    U$37 = U$35;
;* 1167	-----------------------    C$34 = *(*this).m_feed_rate*last_fe+*((double *)U$37+1376);
;* 1167	-----------------------    if ( C$34 <= 1.00000000000000002092e-8 ) goto g59;
           MVK     .S2     1376,B31          ; |1167| 
           MV      .L1X    B12,A3            ; |1167| 
           NOP             2
           MPYDP   .M2X    B5:B4,A5:A4,B7:B6 ; |1167| 
           NOP             3
           ADD     .L2     B31,B12,B4        ; |1167| 
           LDDW    .D2T2   *B4,B5:B4         ; |1167| 
           MVK     .S1     2480,A4           ; |1168| 
           ADD     .L1     A4,A3,A3          ; |1168| 
           NOP             2
           ADDDP   .L2     B5:B4,B7:B6,B5:B4 ; |1167| 
           NOP             6
           CMPGTDP .S2     B5:B4,B11:B10,B0  ; |1167| 
           NOP             1

   [ B0]   LDDW    .D1T1   *A3,A5:A4         ; |1168| 
|| [!B0]   B       .S1     $C$L136           ; |1167| 
|| [!B0]   MVK     .S2     20,B5             ; |1184| 
||         MV      .L2     B0,B2             ; guard predicate rewrite

   [!B0]   CMPGT   .L2X    A12,B5,B1         ; |1184| 

   [ B2]   ZERO    .L2     B1                ; |1184| nullify predicate
|| [!B0]   MV      .S2X    A12,B0            ; |1184| 

   [ B1]   BNOP    .S1     $C$L137,1         ; |1184| 
           ADDDP   .L1     A5:A4,A5:A4,A5:A4 ; |1168| 
           ; BRANCHCC OCCURS {$C$L136}       ; |1167| 
;** --------------------------------------------------------------------------*
;* 1168	-----------------------    C$33 = *((double *)U$37+2480);
;* 1168	-----------------------    step_time = (C$33+C$33)/C$34;
;* 1170	-----------------------    if ( min_step_time > step_time ) goto g88;
           CALL    .S1     __c6xabi_divd     ; |1168| 
           ADDKPC  .S2     $C$RL177,B3,4     ; |1168| 
$C$RL177:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |1168| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(528),B5
           LDW     .D2T2   *+SP(524),B4
           MVK     .S1     17072,A3          ; |1172| 
           NOP             3
           CMPGTDP .S2X    B5:B4,A5:A4,B0    ; |1170| 
           NOP             1

   [ B0]   B       .S1     $C$L158           ; |1170| 
|| [ B0]   LDW     .D1T1   *+A14(96),A6      ; |1172| 

   [ B0]   LDBU    .D1T1   *+A14[A3],A3      ; |1172| 
           NOP             4
           ; BRANCHCC OCCURS {$C$L158}       ; |1170| 
;** --------------------------------------------------------------------------*
$C$L135:    
           MVK     .S2     20,B5             ; |1184| 
           CMPGT   .L2X    A12,B5,B1         ; |1184| 
   [ B1]   BNOP    .S1     $C$L137,1         ; |1184| 
           MV      .L2X    A12,B0            ; |1184| 
;** --------------------------------------------------------------------------*
$C$L136:    
;**	-----------------------g59:
;* 1184	-----------------------    switch ( U$88 ) {case 0: goto g60;, case 10: goto g86;, case 20: goto g85;, case 24: goto g85;, case 30: goto g85;, DEFAULT goto g84};

           MV      .D2     B1,B2             ; guard predicate rewrite
|| [!B1]   CMPEQ   .L2     B0,B5,B1          ; |1184| 
||         MVK     .S2     24,B4             ; |1184| 

   [ B2]   ZERO    .L2     B1                ; |1184| nullify predicate

   [ B1]   B       .S1     $C$L152           ; |1184| 
||         CMPEQ   .L2     B0,B4,B1          ; |1184| 

           ; BRANCHCC OCCURS {$C$L137}       ; |1184| 
;** --------------------------------------------------------------------------*
           NOP             5
           ; BRANCHCC OCCURS {$C$L152}       ; |1184| 
;** --------------------------------------------------------------------------*

           MV      .S2     B0,B2             ; branch predicate copy
|| [!B0]   B       .S1     $C$L138           ; |1184| 
||         MV      .D2     B0,B1             ; guard predicate rewrite
|| [ B0]   CMPEQ   .L2     B0,10,B0          ; |1184| 

   [!B2]   LDW     .D1T1   *+A14(88),A3      ; |1187| 
|| [!B1]   ZERO    .L2     B0                ; |1184| nullify predicate

   [ B0]   BNOP    .S1     $C$L155,3         ; |1184| 
           ; BRANCHCC OCCURS {$C$L138}       ; |1184| 
;** --------------------------------------------------------------------------*

   [!B0]   BNOP    .S1     $C$L150,1         ; |1184| 
|| [ B0]   LDW     .D1T1   *+A14(108),A3     ; |1231| 

           ; BRANCHCC OCCURS {$C$L155}       ; |1184| 
;** --------------------------------------------------------------------------*
           NOP             4
           ; BRANCH OCCURS {$C$L150}         ; |1184| 
;** --------------------------------------------------------------------------*
$C$L137:    

           MVK     .S2     30,B4             ; |1184| 
|| [ B1]   B       .S1     $C$L154           ; |1184| 
|| [ B1]   LDW     .D1T1   *+A14(112),A3     ; |1237| 

           CMPEQ   .L2     B0,B4,B0          ; |1184| 
   [ B1]   ZERO    .L2     B0                ; |1184| nullify predicate
   [ B0]   B       .S1     $C$L153           ; |1184| 
   [ B1]   B       .S1     $C$L157           ; |1239| 
   [ B1]   STW     .D1T1   A3,*+A14(100)     ; |1237| 
           ; BRANCHCC OCCURS {$C$L154}       ; |1184| 
;** --------------------------------------------------------------------------*

   [!B0]   BNOP    .S1     $C$L151,2         ; |1184| 
|| [ B0]   LDW     .D1T1   *+A14(112),A3     ; |1237| 

           ; BRANCHCC OCCURS {$C$L153}       ; |1184| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L162,1         ; |1243| 
||         ZERO    .L2     B4                ; |1242| 
||         MVK     .S2     270,B5            ; |1242| 

           STB     .D2T2   B4,*+B12[B5]      ; |1242| 
           ; BRANCH OCCURS {$C$L151}         ; |1184| 
;** --------------------------------------------------------------------------*
$C$L138:    
;**	-----------------------g60:
;* 1187	-----------------------    if ( !(*(*this).m_data).interpolation_type ) goto g65;
           ADDK    .S1     274,A3            ; |1187| 
           LDHU    .D1T1   *A3,A0            ; |1187| 
           NOP             4

   [ A0]   LDW     .D1T1   *+A14(16),A3      ; |1188| 
||         MV      .L1     A0,A1             ; branch predicate copy
|| [!A0]   B       .S1     $C$L143           ; |1187| 

   [!A1]   LDW     .D1T1   *+A14(16),A3      ; |1196| 
   [!A1]   MVK     .S1     97,A4             ; |1196| 
           NOP             2
   [ A0]   LDBU    .D1T1   *+A3(2),A0        ; |1188| 
           ; BRANCHCC OCCURS {$C$L143}       ; |1187| 
;** --------------------------------------------------------------------------*
;* 1188	-----------------------    if ( !(C$32 = (*(*this).m_channel_config).axis_number) ) goto g64;
           NOP             4

   [!A0]   BNOP    .S1     $C$L142,5         ; |1188| 
|| [ A0]   LDW     .D1T1   *+A14(96),A3
|| [ A0]   SUB     .L2X    A0,1,B5

           ; BRANCHCC OCCURS {$C$L142}       ; |1188| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$215 = (*this).m_dynamic_info;
;* 1189	-----------------------    L$2 = (unsigned)C$32;
;**  	-----------------------    #pragma MUST_ITERATE(1, 255, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g63:
;* 1189	-----------------------    (**U$215++).current_f = 0.0;
;* 1188	-----------------------    if ( L$2 = L$2-1 ) goto g63;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 1188
;*      Loop opening brace source line   : 1188
;*      Loop closing brace source line   : 1190
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 255                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 7
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1*       0     
;*      .S units                     0        1*    
;*      .D units                     1*       1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1*       1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       1*    
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 7  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L139:    ; PIPED LOOP PROLOG

           SPLOOPD 7       ;14               ; (P) 
||         MVC     .S2     B5,ILC

;** --------------------------------------------------------------------------*
$C$L140:    ; PIPED LOOP KERNEL
           LDW     .D1T2   *A3++,B4          ; |1189| (P) <0,0>  ^ 
           NOP             4

           ZERO    .L1     A5:A4             ; |1189| (P) <0,5> 
||         ADDK    .S2     320,B4            ; |1189| (P) <0,5>  ^ Define a twin register

           STDW    .D2T1   A5:A4,*B4         ; |1189| (P) <0,6>  ^ 
           SPKERNEL 0,1
;** --------------------------------------------------------------------------*
$C$L141:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L142:    
;**	-----------------------g64:
;* 1193	-----------------------    (**((*this).m_trajectory_index*4+(*this).m_dynamic_info)).current_f = 0.0;

           MVK     .S1     17072,A3          ; |1193| 
||         LDW     .D1T1   *+A14(96),A4      ; |1193| 

           LDBU    .D1T1   *+A14[A3],A3      ; |1193| 
           NOP             4
           LDW     .D1T1   *+A4[A3],A3       ; |1193| 
           ZERO    .L1     A5:A4             ; |1193| 
           NOP             3
           ADDK    .S1     320,A3            ; |1193| 
           STDW    .D1T1   A5:A4,*A3         ; |1193| 
           LDW     .D1T1   *+A14(16),A3      ; |1196| 
           MVK     .S1     97,A4             ; |1196| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L143:    
;**	-----------------------g65:
;* 1196	-----------------------    if ( (*(*this).m_channel_config).quick_move_mode ) goto g69;
           LDBU    .D1T1   *+A3[A4],A0       ; |1196| 
           NOP             4

   [ A0]   BNOP    .S1     $C$L144,3         ; |1196| 
|| [!A0]   LDW     .D1T1   *+A14(32),A3      ; |1196| 
||         MV      .L1     A0,A2             ; branch predicate copy

   [ A2]   LDW     .D1T1   *+A14(16),A4

           CMPEQ   .L1     A3,4,A0           ; |1196| 
|| [ A2]   LDW     .D1T1   *+A14(32),A3      ; |1207| 

           ; BRANCHCC OCCURS {$C$L144}       ; |1196| 
;** --------------------------------------------------------------------------*
;* 1196	-----------------------    if ( (*this).m_cur_channel_mode != 4 ) goto g69;

   [!A0]   B       .S1     $C$L145           ; |1196| 
|| [!A0]   LDW     .D1T1   *+A14(32),A3      ; |1207| 

   [ A0]   CALL    .S1     _ZN13Interpolation18TransferToLineDataEP8Geometry ; |1199| 
|| [!A0]   LDW     .D1T1   *+A14(16),A4

           NOP             3
   [!A0]   CMPEQ   .L1     A3,4,A0           ; |1207| 
           ; BRANCHCC OCCURS {$C$L145}       ; |1196| 
;** --------------------------------------------------------------------------*
;* 1199	-----------------------    Interpolation::TransferToLineData(this, U$33);
;* 1202	-----------------------    if ( *((*(*this).m_geometry).end_data+2480) < 1.00000000000000002092e-8 ) goto g94;

           MV      .L2X    A13,B4            ; |1199| 
||         MV      .L1     A14,A4            ; |1199| 
||         ADDKPC  .S2     $C$RL178,B3,0     ; |1199| 

$C$RL178:  ; CALL OCCURS {_ZN13Interpolation18TransferToLineDataEP8Geometry} {0}  ; |1199| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A14(92),A3      ; |1202| 
           NOP             4
           ADDK    .S1     512,A3            ; |1202| 
           LDW     .D1T1   *A3,A3            ; |1202| 
           NOP             4
           ADDK    .S1     2480,A3           ; |1202| 
           LDDW    .D1T1   *A3,A5:A4         ; |1202| 
           NOP             4
           CMPLTDP .S2X    A5:A4,B11:B10,B0  ; |1202| 
           NOP             1

   [ B0]   B       .S1     $C$L163           ; |1202| 
|| [!B0]   LDW     .D1T1   *+A14(108),A3     ; |1204| 

   [!B0]   BNOP    .S1     $C$L156,3         ; |1205| 
|| [ B0]   LDW     .D1T2   *+A14(44),B10     ; |1262| 

   [!B0]   STW     .D1T1   A3,*+A14(100)     ; |1204| 
           ; BRANCHCC OCCURS {$C$L163}       ; |1202| 
;** --------------------------------------------------------------------------*
;* 1204	-----------------------    (*this).m_interpolation_algorithm = (struct nterpolationAlgorithm *)(*this).m_line_interpolation;
;* 1205	-----------------------    goto g87;
           NOP             1
           ; BRANCH OCCURS {$C$L156}         ; |1205| 
;** --------------------------------------------------------------------------*
$C$L144:    
           NOP             4
           CMPEQ   .L1     A3,4,A0           ; |1207| 
;** --------------------------------------------------------------------------*
$C$L145:    
;**	-----------------------g69:
;**  	-----------------------    U$116 = (*(*this).m_channel_config).axis_number;
;* 1207	-----------------------    if ( (*this).m_cur_channel_mode != 4 ) goto g76;

   [!A0]   BNOP    .S1     $C$L147,4         ; |1207| 
||         LDBU    .D1T1   *+A4(2),A3

           MV      .L1     A3,A0
||         STW     .D2T1   A3,*+SP(528)

           ; BRANCHCC OCCURS {$C$L147}       ; |1207| 
;** --------------------------------------------------------------------------*
;** 346	-----------------------    if ( !U$116 ) goto g76;  // [74]

   [!A0]   BNOP    .S1     $C$L147,4         ; |346| 
|| [ A0]   LDW     .D1T1   *+A14(92),A3

           ADDK    .S1     512,A3
           ; BRANCHCC OCCURS {$C$L147}       ; |346| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$105 = *((*(*this).m_geometry).end_data+1432);
;**  	-----------------------    U$235 = (*this).m_dynamic_info;
;**  	-----------------------    L$3 = (unsigned)U$116;
;** 346	-----------------------    i = 0u;  // [74]
;**  	-----------------------    #pragma MUST_ITERATE(1, 255, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D1T1   *A3,A4
           ZERO    .L2     B12               ; |346| 
           LDW     .D1T1   *+A14(96),A15
           MV      .L1     A0,A31
           STW     .D2T1   A31,*+SP(524)
           ADDK    .S1     1432,A4
           LDDW    .D1T1   *A4,A13:A12
           CALL    .S1     __c6xabi_llshru   ; |347| 
           NOP             3

           MV      .L1     A12,A4            ; |347| 
||         MV      .S1     A13,A5            ; |347| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L146:    
;**	-----------------------g72:
;** 347	-----------------------    if ( !(int)((unsigned long long)((unsigned)(U$105>>i)^0xffffffffu)&1uLL) ) goto g74;  // [74]
;** 352	-----------------------    (**U$235).is_enabled = 0;  // [74]
;** 352	-----------------------    goto g75;  // [74]
;**	-----------------------g74:
;** 349	-----------------------    (**U$235).is_enabled = 1;  // [74]
;** 350	-----------------------    (**U$235).run_state = 0;  // [74]
;**	-----------------------g75:
;** 346	-----------------------    ++U$235;  // [74]
;** 346	-----------------------    ++i;  // [74]
;** 346	-----------------------    if ( L$3 = L$3-1 ) goto g72;  // [74]

           ADDKPC  .S2     $C$RL179,B3,0     ; |347| 
||         MV      .L2     B12,B4            ; |347| 

$C$RL179:  ; CALL OCCURS {__c6xabi_llshru} {0}  ; |347| 
;** --------------------------------------------------------------------------*

           MVK     .L1     1,A31             ; |349| 
||         XOR     .S1     -1,A4,A3          ; |347| 

           EXTU    .S1     A3,31,31,A0       ; |347| 
   [!A0]   LDW     .D1T1   *A15,A5           ; |349| 
           MVK     .S1     368,A4            ; |352| 
   [ A0]   LDW     .D1T1   *A15,A5           ; |352| 
           ZERO    .L1     A30               ; |352| 
           MVK     .S1     368,A29           ; |352| 
   [!A0]   STB     .D1T1   A31,*+A5[A4]      ; |349| 
   [!A0]   LDW     .D1T1   *A15,A5           ; |350| 
   [ A0]   STB     .D1T1   A30,*+A5[A29]     ; |352| 
           LDW     .D2T2   *+SP(524),B4      ; |352| 
           MV      .L1     A30,A3            ; |350| 
           ADD     .L1     4,A15,A15         ; |346| 
   [!A0]   ADDK    .S1     372,A5            ; |350| 
   [!A0]   STW     .D1T1   A3,*A5            ; |350| 

           SUB     .L1X    B4,1,A0           ; |346| 
||         SUB     .L2     B4,1,B4           ; |346| 

   [ A0]   B       .S1     $C$L146           ; |346| 
   [ A0]   CALL    .S1     __c6xabi_llshru   ; |347| 
           STW     .D2T2   B4,*+SP(524)      ; |350| 
   [ A0]   MV      .L1     A12,A4            ; |347| 
   [ A0]   MV      .L1     A13,A5            ; |347| 
           ADD     .L2     1,B12,B12         ; |346| 
           ; BRANCHCC OCCURS {$C$L146}       ; |346| 
;** --------------------------------------------------------------------------*
$C$L147:    
;**	-----------------------g76:
;* 1211	-----------------------    max_axis_distance = 0.0;
;* 1213	-----------------------    if ( !U$116 ) goto g82;
           LDW     .D2T1   *+SP(528),A0      ; |1211| 
           ZERO    .L1     A13:A12           ; |1211| 
           NOP             3

   [!A0]   BNOP    .S1     $C$L149,4         ; |1213| 
|| [ A0]   LDW     .D1T2   *+A14(92),B4      ; |1214| 

           ADDK    .S2     512,B4            ; |1214| 
           ; BRANCHCC OCCURS {$C$L149}       ; |1213| 
;** --------------------------------------------------------------------------*
;* 1213	-----------------------    i = 0u;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           LDW     .D2T2   *B4,B4            ; |1214| 
           ZERO    .L1     A15               ; |1213| 
           MVK     .S2     1432,B12          ; |1214| 
           CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |1214| 
           EXTU    .S1     A15,24,24,A3      ; |1214| 
           ADD     .L2     B12,B4,B5         ; |1214| 
           MV      .L2X    A3,B4             ; |1214| 
           MV      .L1X    B5,A4             ; |1214| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L148:    
;**	-----------------------g78:
;* 1214	-----------------------    if ( !AxisMovData::CheckMask((struct xisMovData *)(*(*this).m_geometry).end_data+1432, (unsigned char)i) ) goto g81;
;* 1218	-----------------------    C$31 = (*this).m_geometry;
;* 1218	-----------------------    C$30 = ABS(*((i<<3)+(*C$31).end_data+1440)-*((i<<3)+(double *)C$31));
;* 1218	-----------------------    if ( max_axis_distance >= C$30 ) goto g81;
;* 1219	-----------------------    max_axis_distance = C$30;
;**	-----------------------g81:
;* 1213	-----------------------    if ( (unsigned)(*(*this).m_channel_config).axis_number > (++i) ) goto g78;
           ADDKPC  .S2     $C$RL180,B3,0     ; |1214| 
$C$RL180:  ; CALL OCCURS {_ZN11AxisMovData9CheckMaskEh} {0}  ; |1214| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |1214| 
   [ A0]   LDW     .D1T1   *+A14(92),A4      ; |1218| 
           LDW     .D1T2   *+A14(16),B4      ; |1213| 
           MVK     .S1     512,A3            ; |1218| 
   [!A0]   ZERO    .L1     A1
           NOP             1
   [ A0]   ADD     .L1     A3,A4,A3          ; |1218| 
   [ A0]   LDW     .D1T1   *A3,A3            ; |1218| 
           LDBU    .D2T2   *+B4(2),B4        ; |1213| 
   [ A0]   LDDW    .D1T1   *+A4[A15],A7:A6   ; |1218| 
           NOP             2

   [ A0]   ADDAD   .D1     A3,A15,A3         ; |1218| 
||         ADD     .L1     1,A15,A15         ; |1213| 

   [ A0]   ADDK    .S1     1440,A3           ; |1218| 

   [ A0]   LDDW    .D1T1   *A3,A5:A4         ; |1218| 
||         CMPGTU  .L2X    B4,A15,B0         ; |1213| 

   [ B0]   LDW     .D1T2   *+A14(92),B4      ; |1214| 
   [ B0]   EXTU    .S1     A15,24,24,A3      ; |1214| 
           NOP             2
   [ A0]   SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |1218| 
   [ B0]   ADDK    .S2     512,B4            ; |1214| 
   [ B0]   LDW     .D2T2   *B4,B4            ; |1214| 
           NOP             3
   [ B0]   B       .S1     $C$L148           ; |1213| 

   [ B0]   CALL    .S2     _ZN11AxisMovData9CheckMaskEh ; |1214| 
|| [ A0]   ABSDP   .S1     A5:A4,A11:A10     ; |1218| 
|| [ B0]   ADD     .L2     B12,B4,B5         ; |1214| 

   [ B0]   MV      .L2X    A3,B4             ; |1214| 
   [ A0]   CMPLTDP .S1     A13:A12,A11:A10,A1 ; |1218| 
   [ B0]   MV      .L1X    B5,A4             ; |1214| 

   [ A1]   MV      .L1     A11,A13           ; |1219| 
|| [ A1]   MV      .S1     A10,A12           ; |1219| 

           ; BRANCHCC OCCURS {$C$L148}       ; |1213| 
;** --------------------------------------------------------------------------*
$C$L149:    
;**	-----------------------g82:
;* 1224	-----------------------    if ( max_axis_distance < 1.00000000000000002092e-8 ) goto g94;
           CMPLTDP .S1X    A13:A12,B11:B10,A0 ; |1224| 
           NOP             1

   [ A0]   B       .S1     $C$L164           ; |1224| 
|| [!A0]   LDW     .D1T1   *+A14(104),A3     ; |1226| 

   [!A0]   BNOP    .S1     $C$L156,3         ; |1226| 
|| [ A0]   LDW     .D1T2   *+A14(44),B10     ; |1262| 

   [ A0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |365| 
|| [!A0]   STW     .D1T1   A3,*+A14(100)     ; |1226| 

           ; BRANCHCC OCCURS {$C$L164}       ; |1224| 
;** --------------------------------------------------------------------------*
;* 1226	-----------------------    (*this).m_interpolation_algorithm = (struct nterpolationAlgorithm *)(*this).m_quick_move_interpolation;
;* 1226	-----------------------    goto g87;
           NOP             1
           ; BRANCH OCCURS {$C$L156}         ; |1226| 
;** --------------------------------------------------------------------------*
$C$L150:    

           BNOP    .S1     $C$L162,1         ; |1243| 
||         MVK     .S2     270,B5            ; |1242| 
||         ZERO    .L2     B4                ; |1242| 

           STB     .D2T2   B4,*+B12[B5]      ; |1242| 
;** --------------------------------------------------------------------------*
$C$L151:    
;**	-----------------------g84:
;* 1242	-----------------------    (*U$35).interpolation_flag = 0u;
;* 1243	-----------------------    goto g94;
           LDW     .D1T2   *+A14(44),B10     ; |1262| 
           NOP             2
           ; BRANCH OCCURS {$C$L162}         ; |1243| 
;** --------------------------------------------------------------------------*
$C$L152:    
           LDW     .D1T1   *+A14(112),A3     ; |1237| 
           NOP             2
;** --------------------------------------------------------------------------*
$C$L153:    
           NOP             1
           B       .S1     $C$L157           ; |1239| 
           STW     .D1T1   A3,*+A14(100)     ; |1237| 
;** --------------------------------------------------------------------------*
$C$L154:    
;**	-----------------------g85:
;* 1237	-----------------------    (*this).m_interpolation_algorithm = (struct nterpolationAlgorithm *)(*this).m_circle_interpolation;
;* 1239	-----------------------    goto g87;
           CALL    .S1     _ZN14CircularBufferI8LineDataE4NextEv ; |1246| 
           LDW     .D1T1   *+A14(44),A4      ; |1246| 
           NOP             2
           ; BRANCH OCCURS {$C$L157}         ; |1239| 
;** --------------------------------------------------------------------------*
$C$L155:    
;**	-----------------------g86:
;* 1231	-----------------------    (*this).m_interpolation_algorithm = (struct nterpolationAlgorithm *)(*this).m_line_interpolation;
           NOP             3
           STW     .D1T1   A3,*+A14(100)     ; |1231| 
;** --------------------------------------------------------------------------*
$C$L156:    
           CALL    .S1     _ZN14CircularBufferI8LineDataE4NextEv ; |1246| 
           LDW     .D1T1   *+A14(44),A4      ; |1246| 
           NOP             2
;** --------------------------------------------------------------------------*
$C$L157:    
;**	-----------------------g87:
;* 1246	-----------------------    CircularBuffer<LineData>::Next((*this).m_data_buffer);
;* 1247	-----------------------    get_data_result = 1;
;* 1248	-----------------------    goto g106;
           ADDKPC  .S2     $C$RL181,B3,1     ; |1246| 
$C$RL181:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE4NextEv} {0}  ; |1246| 
;** --------------------------------------------------------------------------*

           B       .S1     $C$L176           ; |1248| 
||         MVK     .L1     0x1,A4            ; |1247| 

           CMPEQ   .L1     A4,1,A0           ; |1111| 

   [!A0]   ADD     .L2     1,B13,B13         ; |1111| 
|| [ A0]   ZERO    .S2     B0                ; |1111| 

   [!A0]   CMPLT   .L2     B13,11,B0         ; |1111| 
   [ B0]   BNOP    .S1     $C$L107,1         ; |1111| 
           ; BRANCH OCCURS {$C$L176}         ; |1248| 
;** --------------------------------------------------------------------------*
$C$L158:    
;**	-----------------------g88:
;* 1172	-----------------------    C$29 = *((*this).m_trajectory_index*4+(*this).m_dynamic_info);
;* 1172	-----------------------    (*C$29).left_time = (*C$29).left_time+step_time;
;* 1173	-----------------------    if ( !(*(*this).m_channel_config).axis_number ) goto g93;
           LDW     .D1T1   *+A6[A3],A6       ; |1172| 
           LDW     .D1T1   *+A14(16),A31     ; |1173| 
           MVK     .S2     344,B4            ; |1172| 
           MVK     .S1     344,A30           ; |1172| 
           NOP             1
           ADD     .L2X    B4,A6,B4          ; |1172| 
           LDDW    .D2T2   *B4,B5:B4         ; |1172| 
           LDBU    .D1T1   *+A31(2),A0       ; |1173| 
           ADD     .L1     A30,A6,A3         ; |1172| 
           NOP             2
           ADDDP   .L2X    A5:A4,B5:B4,B5:B4 ; |1172| 
           NOP             1
   [!A0]   BNOP    .S1     $C$L160,4         ; |1173| 
           STDW    .D1T2   B5:B4,*A3         ; |1172| 
           ; BRANCHCC OCCURS {$C$L160}       ; |1173| 
;** --------------------------------------------------------------------------*
;* 1173	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |1174| 
||         MVK     .S2     1432,B10          ; |1174| 
||         ZERO    .L1     A12               ; |1173| 

           EXTU    .S1     A12,24,24,A3      ; |1174| 
||         ADD     .L2     B10,B12,B5        ; |1174| 

           MVK     .S1     512,A13           ; |1175| 
           MV      .L1X    B5,A4             ; |1174| 
           MV      .L2X    A3,B4             ; |1174| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L159:    
;**	-----------------------g90:
;* 1174	-----------------------    if ( !AxisMovData::CheckMask((struct xisMovData *)U$35+1432, (unsigned char)i) ) goto g92;
;* 1175	-----------------------    C$28 = (*this).m_geometry;
;* 1175	-----------------------    *((i<<3)+(double *)C$28) = *((i<<3)+(*C$28).end_data+1440);
;**	-----------------------g92:
;**  	-----------------------    U$35 = (*(*this).m_geometry).end_data;
;* 1173	-----------------------    if ( (*(*this).m_channel_config).axis_number > (++i) ) goto g90;
           ADDKPC  .S2     $C$RL182,B3,0     ; |1174| 
$C$RL182:  ; CALL OCCURS {_ZN11AxisMovData9CheckMaskEh} {0}  ; |1174| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |1174| 
   [ A0]   LDW     .D1T1   *+A14(92),A6      ; |1175| 
           LDW     .D1T1   *+A14(16),A7      ; |1173| 
           LDW     .D1T2   *+A14(92),B4
           NOP             2
   [ A0]   ADD     .L1     A13,A6,A3         ; |1175| 
   [ A0]   LDW     .D1T1   *A3,A3            ; |1175| 
           LDBU    .D1T1   *+A7(2),A31       ; |1173| 
           ADDK    .S2     512,B4
           LDW     .D2T2   *B4,B12
           NOP             1
   [ A0]   ADDAD   .D1     A3,A12,A3         ; |1175| 
   [ A0]   ADDK    .S1     1440,A3           ; |1175| 
   [ A0]   LDDW    .D1T1   *A3,A5:A4         ; |1175| 
           NOP             4

   [ A0]   STDW    .D1T1   A5:A4,*+A6[A12]   ; |1175| 
||         ADD     .L1     1,A12,A12         ; |1173| 

           CMPGT   .L1     A31,A12,A0        ; |1173| 
   [ A0]   B       .S1     $C$L159           ; |1173| 
   [ A0]   CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |1174| 
   [ A0]   EXTU    .S1     A12,24,24,A3      ; |1174| 
   [ A0]   ADD     .L2     B10,B12,B5        ; |1174| 
   [ A0]   MV      .L2X    A3,B4             ; |1174| 
   [ A0]   MV      .L1X    B5,A4             ; |1174| 
           ; BRANCHCC OCCURS {$C$L159}       ; |1173| 
;** --------------------------------------------------------------------------*
$C$L160:    
;**	-----------------------g93:
;* 1178	-----------------------    (*U$35).interpolation_flag = 0u;

           ZERO    .L2     B4                ; |1178| 
||         MVK     .S2     270,B5            ; |1178| 

           STB     .D2T2   B4,*+B12[B5]      ; |1178| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A14(44),B10     ; |1262| 
;** --------------------------------------------------------------------------*
$C$L161:    
           NOP             2
;** --------------------------------------------------------------------------*
$C$L162:    
           NOP             1
;** --------------------------------------------------------------------------*
$C$L163:    
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |365| 
;** --------------------------------------------------------------------------*
$C$L164:    
;**	-----------------------g94:
;* 1262	-----------------------    this = (*this).m_data_buffer;
;** 365	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [101]
;** 367	-----------------------    if ( (*this).m_buffer_cur_length <= 0 ) goto g98;  // [101]
           LDW     .D2T1   *+B10(20),A4      ; |365| 
           ADDKPC  .S2     $C$RL183,B3,3     ; |365| 
$C$RL183:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |365| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+B10(8),B4       ; |367| 
           NOP             4
           CMPGT   .L2     B4,0,B0           ; |367| 

   [!B0]   BNOP    .S1     $C$L165,1         ; |367| 
|| [ B0]   LDW     .D2T2   *+B10(16),B4      ; |368| 

   [ B0]   LDW     .D2T2   *+B10(4),B5       ; |369| 
           NOP             2
           ADDK    .S2     3816,B4           ; |368| 
           ; BRANCHCC OCCURS {$C$L165}       ; |367| 
;** --------------------------------------------------------------------------*
;** 368	-----------------------    (*this).m_read_pointer = (*this).m_read_pointer+3816;  // [101]
;** 369	-----------------------    C$27 = _mpyli(3816, (*this).m_buffer_total_length);  // [101]
;** 369	-----------------------    C$26 = (*this).m_read_pointer;  // [101]
;** 369	-----------------------    if ( C$26 < (*this).m_buffer+_lo(C$27) ) goto g97;  // [101]
;** 370	-----------------------    (*this).m_read_pointer = C$26-(int)_lo(C$27);  // [101]
;**	-----------------------g97:
;** 372	-----------------------    (*this).m_buffer_cur_length = (*this).m_buffer_cur_length-1;  // [101]

           MVK     .S2     3816,B31          ; |369| 
||         LDW     .D2T2   *B10,B7           ; |369| 

           STW     .D2T2   B4,*+B10(16)      ; |368| 
||         MPYLI   .M2     B31,B5,B5:B4      ; |369| 

           LDW     .D2T2   *+B10(16),B6      ; |369| 
           LDW     .D2T2   *+B10(8),B8       ; |372| 
           NOP             2
           ADD     .L2     B4,B7,B7          ; |369| 

           SUB     .S2     B6,B4,B4          ; |370| 
||         CMPLTU  .L2     B6,B7,B0          ; |369| 

           SUB     .L2     B8,1,B30          ; |372| 
|| [!B0]   STW     .D2T2   B4,*+B10(16)      ; |370| 

           STW     .D2T2   B30,*+B10(8)      ; |372| 
;** --------------------------------------------------------------------------*
$C$L165:    
;**	-----------------------g98:
;** 375	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [101]
;* 1263	-----------------------    *((*(*this).m_geometry).end_data+1384) = 0.0;
;* 1264	-----------------------    memset((*(*this).m_geometry).end_data+2488, 0, (unsigned)(*(*this).m_channel_config).axis_number<<3);
;* 1267	-----------------------    dest_data = (*this).m_data;
;* 1267	-----------------------    src_data = (*(*this).m_geometry).end_data;
;** 361	-----------------------    if ( !(C$25 = (*(*this).m_channel_config).axis_number) ) goto g101;  // [75]

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         MV      .L2X    A4,B4             ; |375| 
||         LDW     .D2T1   *+B10(20),A4      ; |375| 

$C$RL184:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |375| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A14(92),B4      ; |1263| 
           LDW     .D1T1   *+A14(92),A3      ; |1264| 
           LDW     .D1T1   *+A14(16),A4      ; |1264| 
           MVK     .S1     2488,A5           ; |1264| 
           NOP             2
           ADDK    .S2     512,B4            ; |1263| 

           LDW     .D2T2   *B4,B6            ; |1263| 
||         ADDK    .S1     512,A3            ; |1264| 
||         LDBU    .D1T1   *+A4(2),A4        ; |1264| 

           LDW     .D1T1   *A3,A3            ; |1264| 
           ZERO    .L2     B5:B4             ; |1263| 
           NOP             2
           ADDK    .S2     1384,B6           ; |1263| 

           CALLP   .S2     memset,B3
||         STDW    .D2T2   B5:B4,*B6         ; |1263| 
||         ZERO    .L2     B4                ; |1264| 
||         SHL     .S1     A4,3,A6           ; |1264| 
||         ADD     .L1     A5,A3,A4          ; |1264| 

$C$RL185:  ; CALL OCCURS {memset} {0}        ; |1264| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A14(16),A3      ; |361| 
           LDW     .D1T2   *+A14(92),B4      ; |1267| 
           LDW     .D1T2   *+A14(88),B10     ; |1267| 
           NOP             2
           LDBU    .D1T1   *+A3(2),A0        ; |361| 
           ADDK    .S2     512,B4            ; |1267| 
           LDW     .D2T2   *B4,B7            ; |1267| 
           NOP             2

   [!A0]   BNOP    .S1     $C$L169,4         ; |361| 
|| [ A0]   MVC     .S2X    A0,ILC

   [ A0]   MVK     .S1     1440,A3
           ; BRANCHCC OCCURS {$C$L169}       ; |361| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$301 = (double *)dest_data+1440;
;** 362	-----------------------    L$4 = (int)C$25;  // [75]
;**  	-----------------------    U$305 = &dest_pos[0];
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g100:
;** 362	-----------------------    *U$305++ = *U$301++;  // [75]
;** 361	-----------------------    if ( L$4 = L$4-1 ) goto g100;  // [75]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop inlined from                : /root/git/ALG_LIB/CTALG/inc/interpolation/interpolation.h
;*      Loop source line                 : 361
;*      Loop opening brace source line   : 361
;*      Loop closing brace source line   : 363
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               2*       0     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     1        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L166:    ; PIPED LOOP PROLOG

           SPLOOP  2       ;8                ; (P) 
||         ADD     .L1X    A3,B10,A3

;** --------------------------------------------------------------------------*
$C$L167:    ; PIPED LOOP KERNEL
           LDDW    .D1T1   *A3++,A5:A4       ; |362| (P) <0,0> 
           NOP             4

           SPMASK          S2
||         ADD     .S2     8,SP,B6
||         MV      .L2X    A5,B5             ; |362| (P) <0,5> Define a twin register

           MV      .L2X    A4,B4             ; |362| <0,6> Define a twin register

           SPKERNEL 3,0
||         STDW    .D2T2   B5:B4,*B6++       ; |362| <0,7> 

;** --------------------------------------------------------------------------*
$C$L168:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L169:    
;**	-----------------------g101:
;** 365	-----------------------    *dest_data = *src_data;  // [75]
;** 367	-----------------------    if ( !(C$24 = (*(*this).m_channel_config).axis_number) ) goto g104;  // [75]

           CALLP   .S2     memcpy,B3
||         MV      .L2     B7,B4             ; |365| 
||         MV      .L1X    B10,A4            ; |365| 
||         MVK     .S1     0xee8,A6          ; |365| 

$C$RL186:  ; CALL OCCURS {memcpy} {0}        ; |365| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A14(16),A3      ; |367| 
           NOP             4
           LDBU    .D1T1   *+A3(2),A0        ; |367| 
           NOP             4

   [!A0]   BNOP    .S1     $C$L173,5         ; |367| 
|| [ A0]   MVC     .S2X    A0,ILC

           ; BRANCHCC OCCURS {$C$L173}       ; |367| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$318 = (double *)dest_data+1440;
;**  	-----------------------    L$5 = (int)C$24;
;**  	-----------------------    U$316 = &dest_pos[0];
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g103:
;** 368	-----------------------    *U$318++ = *U$316++;  // [75]
;** 367	-----------------------    if ( L$5 = L$5-1 ) goto g103;  // [75]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop inlined from                : /root/git/ALG_LIB/CTALG/inc/interpolation/interpolation.h
;*      Loop source line                 : 367
;*      Loop opening brace source line   : 367
;*      Loop closing brace source line   : 369
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               2*       0     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     1        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L170:    ; PIPED LOOP PROLOG

           SPLOOP  2       ;8                ; (P) 
||         ADD     .L1X    8,SP,A3

;** --------------------------------------------------------------------------*
$C$L171:    ; PIPED LOOP KERNEL
           LDDW    .D1T1   *A3++,A5:A4       ; |368| (P) <0,0> 
           NOP             3

           SPMASK          S2
||         MVK     .S2     1440,B4

           SPMASK          S2
||         ADD     .S2     B4,B10,B6
||         MV      .L2X    A5,B5             ; |368| (P) <0,5> Define a twin register

           MV      .L2X    A4,B4             ; |368| <0,6> Define a twin register

           SPKERNEL 3,0
||         STDW    .D2T2   B5:B4,*B6++       ; |368| <0,7> 

;** --------------------------------------------------------------------------*
$C$L172:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L173:    
;**	-----------------------g104:
;** 370	-----------------------    *((double *)dest_data+2480) = 0.0;  // [75]
;* 1268	-----------------------    (*this).m_is_reach_end = 1;
;* 1270	-----------------------    (*(*this).OutputData)((*(*this).m_geometry).end_data, (*this).m_owner_ptr);
;* 1272	-----------------------    get_data_result = 2;
;* 1273	-----------------------    goto g106;
           LDW     .D1T1   *+A14(92),A3      ; |1270| 
           LDW     .D1T1   *A14,A7           ; |1270| 
           MVK     .S2     2480,B4           ; |370| 
           ADD     .L2     B4,B10,B6         ; |370| 
           ZERO    .L2     B5:B4             ; |370| 
           ADDK    .S1     512,A3            ; |1270| 

           CALL    .S2X    A7                ; |1270| 
||         LDW     .D1T1   *A3,A4            ; |1270| 
||         STDW    .D2T2   B5:B4,*B6         ; |370| 

           LDW     .D1T2   *+A14(8),B4       ; |1270| 
           MVK     .S1     134,A3            ; |1268| 
           MVK     .L1     1,A5              ; |1268| 
           STB     .D1T1   A5,*+A14[A3]      ; |1268| 
           ADDKPC  .S2     $C$RL187,B3,0     ; |1270| 
$C$RL187:  ; CALL OCCURS {A7} {0}            ; |1270| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L175,1         ; |1273| 
||         MVK     .L1     0x2,A4            ; |1272| 

           CMPEQ   .L1     A4,1,A0           ; |1111| 
   [ A0]   ZERO    .L2     B0                ; |1111| 
   [!A0]   ADD     .L2     1,B13,B13         ; |1111| 
   [!A0]   CMPLT   .L2     B13,11,B0         ; |1111| 
           ; BRANCH OCCURS {$C$L175}         ; |1273| 
;** --------------------------------------------------------------------------*
$C$L174:    
;**	-----------------------g105:
;* 1275	-----------------------    get_data_result = 0;
           CMPEQ   .L1     A4,1,A0           ; |1111| 

   [!A0]   ADD     .L2     1,B13,B13         ; |1111| 
|| [ A0]   ZERO    .S2     B0                ; |1111| 

   [!A0]   CMPLT   .L2     B13,11,B0         ; |1111| 
;** --------------------------------------------------------------------------*
$C$L175:    
   [ B0]   BNOP    .S1     $C$L107,1         ; |1111| 
;** --------------------------------------------------------------------------*
$C$L176:    
;**	-----------------------g106:
;* 1111	-----------------------    if ( get_data_result == 1 ) goto g108;
;* 1111	-----------------------    if ( (++get_data_time) < 11 ) goto g2;
;**	-----------------------g108:
;* 1277	-----------------------    return get_data_result;

   [ B0]   MVK     .S1     17072,A3          ; |1112| 
|| [ B0]   LDW     .D1T1   *+A14(96),A5      ; |1112| 
|| [ B0]   MVKL    .S2     0xe2308c3a,B10
|| [ B0]   CMPLT   .L2     B13,2,B31         ; |1112| 

   [ B0]   LDBU    .D1T1   *+A14[A3],A3      ; |1112| 
|| [ B0]   MVKL    .S2     0x3e45798e,B11

   [ B0]   MVKH    .S2     0xe2308c3a,B10
   [ B0]   MVKH    .S2     0x3e45798e,B11
           ; BRANCHCC OCCURS {$C$L107}       ; |1111| 
;** --------------------------------------------------------------------------*
$C$L177:    
           ADDK    .S2     536,SP            ; |1278| 
           LDW     .D2T2   *++SP(8),B3       ; |1278| 
           LDDW    .D2T1   *++SP,A13:A12     ; |1278| 
           LDDW    .D2T1   *++SP,A15:A14     ; |1278| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1278| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1278| 

           LDW     .D2T1   *++SP(8),A10      ; |1278| 
||         RET     .S2     B3                ; |1278| 

           LDW     .D2T1   *++SP(8),A11      ; |1278| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1278| 
	.sect	".text"
	.clink

;******************************************************************************
;* FUNCTION NAME: std::__c6xabi_isnan(double)                                 *
;*                                                                            *
;*   Regs Modified     : A4,B4,B5,B6,B7,SP                                    *
;*   Regs Used         : A4,A5,B3,B4,B5,B6,B7,SP                              *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                  *
;******************************************************************************
_ZSt14__c6xabi_isnand:
;** --------------------------------------------------------------------------*
;** 257	-----------------------    x = x;
;** 258	-----------------------    return x != x;
           SUB     .D2     SP,16,SP          ; |257| 
           STDW    .D2T1   A5:A4,*+SP(8)     ; |257| 
           LDDW    .D2T2   *+SP(8),B5:B4     ; |258| 
           LDDW    .D2T2   *+SP(8),B7:B6     ; |258| 
           ADDK    .S2     16,SP             ; |259| 
           NOP             1
           RETNOP  .S2     B3,1              ; |259| 
           CMPEQDP .S2     B7:B6,B5:B4,B4    ; |258| 
           NOP             2
           XOR     .L1X    1,B4,A4           ; |258| 
           ; BRANCH OCCURS {B3}              ; |259| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation17ChangeChannelModeEv

;******************************************************************************
;* FUNCTION NAME: Interpolation::ChangeChannelMode()                          *
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
_ZN13Interpolation17ChangeChannelModeEv:
;** --------------------------------------------------------------------------*
;* 1355	-----------------------    if ( (*this).m_cur_channel_mode != 4 ) goto g17;

           STW     .D2T1   A11,*SP--(8)      ; |1352| 
||         MVK     .S2     270,B17           ; |1357| 
||         ZERO    .L1     A7
||         MVK     .L2     0xffffffff,B5     ; |1358| 
||         ZERO    .D1     A6                ; |1356| 
||         MVK     .S1     7896,A8           ; |1361| 

           MVK     .S2     2480,B18          ; |1359| 
||         STDW    .D2T2   B11:B10,*SP--     ; |1352| 

           STDW    .D2T1   A13:A12,*SP--     ; |1352| 

           STW     .D2T1   A10,*SP--(8)      ; |1352| 
||         MV      .L1     A4,A10            ; |1352| 

           LDW     .D1T1   *+A10(32),A3      ; |1355| 
           SET     .S1     A7,0x14,0x1d,A7
           MV      .L2     B3,B11            ; |1352| 
           MVK     .S2     1432,B9           ; |1358| 
           MV      .L2     B5,B4             ; |1358| 
           CMPEQ   .L1     A3,4,A0           ; |1355| 

   [ A0]   LDW     .D1T1   *+A10(88),A3      ; |1356| 
|| [!A0]   B       .S1     $C$L193           ; |1355| 

   [ A0]   LDW     .D1T1   *+A10(16),A4      ; |1361| 
           ADD     .L1X    4,B17,A5
           MVK     .L2     1,B7              ; |1357| 
           ZERO    .L2     B16               ; |1356| 
           MV      .L2X    A3,B6             ; |1356| Define a twin register
           ; BRANCHCC OCCURS {$C$L193}       ; |1355| 
;** --------------------------------------------------------------------------*
;* 1356	-----------------------    C$15 = (*this).m_data;
;* 1356	-----------------------    (*C$15).interpolation_type = 0;
;* 1357	-----------------------    (*C$15).interpolation_flag = 1;
;* 1358	-----------------------    *((unsigned long long *)C$15+1432) = 0xffffffffffffffffuLL;
;* 1359	-----------------------    *((double *)C$15+2480) = 1.0;
;* 1361	-----------------------    C$13 = (*this).m_channel_config;
;* 1361	-----------------------    C$14 = *((struct CCCTAxisConfig **)C$13+7896);
;* 1361	-----------------------    min_acc = (*C$14).max_G00_axis_acc;
;* 1362	-----------------------    min_jerk = (*C$14).max_axis_jerk;
;* 1363	-----------------------    U$23 = C$13;
;* 1363	-----------------------    if ( (U$35 = (*U$23).axis_number) < 3 ) goto g5;

           MV      .L2X    A4,B8             ; |1363| 
||         STB     .D2T2   B7,*+B6[B17]      ; |1357| 
||         ADD     .L1     A5,A3,A30         ; |1356| 
||         ADD     .S1X    B18,A3,A31        ; |1359| 
||         ADD     .S2     B9,B6,B6          ; |1358| 
||         ADD     .D1     A8,A4,A4          ; |1361| 

           LDBU    .D2T1   *+B8(2),A1        ; |1363| 
||         LDW     .D1T2   *A4,B7            ; |1361| 

           STDW    .D2T2   B5:B4,*B6         ; |1358| 
           STDW    .D1T1   A7:A6,*A31        ; |1359| 
           ADD     .L2X    A8,B8,B6
           STH     .D1T2   B16,*A30          ; |1356| 

           CMPLTU  .L1     A1,3,A0           ; |1363| 
||         SUB     .S1     A1,2,A3           ; |1364| 
||         LDDW    .D2T1   *+B7(48),A5:A4    ; |1362| 

   [ A0]   BNOP    .S1     $C$L181,3         ; |1363| 
|| [!A0]   LDW     .D2T2   *B6,B6

           LDDW    .D2T2   *+B7(40),B5:B4    ; |1361| 
   [!A0]   LDDW    .D2T1   *+B6(48),A7:A6
           ; BRANCHCC OCCURS {$C$L181}       ; |1363| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    V$0 = U$23+7896;
;**  	-----------------------    C$12 = *(struct CCCTAxisConfig **)V$0;
;**  	-----------------------    U$46 = (*C$12).max_G00_axis_acc;
;**  	-----------------------    U$49 = (*C$12).max_axis_jerk;
;* 1364	-----------------------    L$1 = U$35-2;
;**  	-----------------------    #pragma MUST_ITERATE(1, 253, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g4:
;* 1365	-----------------------    (min_acc > U$46) ? (min_acc = U$46) : min_acc;
;* 1368	-----------------------    (min_jerk > U$49) ? (min_jerk = U$49) : min_jerk;
;* 1363	-----------------------    if ( L$1 = L$1-1 ) goto g4;

           LDDW    .D2T2   *+B6(40),B7:B6
||         MVC     .S2X    A3,ILC

           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 1363
;*      Loop opening brace source line   : 1363
;*      Loop closing brace source line   : 1370
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 253                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 3
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2*       2*    
;*      .D units                     0        0     
;*      .M units                     0        0     
;*      .X cross paths               2*       2*    
;*      .T address paths             0        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2*       2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L178:    ; PIPED LOOP PROLOG
           SPLOOP  3       ;6                ; (P) 
;** --------------------------------------------------------------------------*
$C$L179:    ; PIPED LOOP KERNEL

           CMPGTDP .S2     B5:B4,B7:B6,B0    ; |1365| (P) <0,0>  ^ 
||         CMPGTDP .S1     A5:A4,A7:A6,A0    ; |1368| (P) <0,0>  ^ 

           NOP             1

   [ B0]   MV      .L2     B6,B4             ; |1365| (P) <0,2>  ^ 
|| [ B0]   MV      .S2     B7,B5             ; |1365| (P) <0,2>  ^ 
|| [ A0]   MV      .L1     A6,A4             ; |1368| (P) <0,2>  ^ 
|| [ A0]   MV      .S1     A7,A5             ; |1368| (P) <0,2>  ^ 

           SPKERNEL 0,1
;** --------------------------------------------------------------------------*
$C$L180:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L181:    
;**	-----------------------g5:
;* 1371	-----------------------    C$11 = (*this).m_data;
;* 1371	-----------------------    (*C$11).acc = min_acc;
;* 1372	-----------------------    U$7 = C$11;
;* 1372	-----------------------    (*U$7).jerk = min_jerk;
;* 1373	-----------------------    if ( !U$35 ) goto g8;
;**  	-----------------------    V$2 = U$23;
;**  	-----------------------    L$2 = (unsigned)U$35;
;* 1373	-----------------------    i = 0u;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           LDW     .D1T1   *+A10(88),A3      ; |1371| 
|| [ A1]   MVC     .S2X    A1,ILC
||         MVK     .S1     3800,A6           ; |1372| 

   [!A1]   BNOP    .S1     $C$L185,3         ; |1373| 
||         MVK     .S2     3784,B6           ; |1371| 

           ADD     .L1     A6,A3,A6          ; |1372| 
||         ADD     .L2X    B6,A3,B6          ; |1371| 

           STDW    .D2T2   B5:B4,*B6         ; |1371| 
||         ZERO    .L2     B5                ; |1373| 
||         STDW    .D1T1   A5:A4,*A6         ; |1372| 
||         MV      .S2X    A3,B7             ; |1372| 

           ; BRANCHCC OCCURS {$C$L185}       ; |1373| 
;** --------------------------------------------------------------------------*
;**	-----------------------g7:
;* 1374	-----------------------    *((i<<3)+(double *)U$7+2488) = (*V$2).g00_speed;
;* 1373	-----------------------    ++i;
;**  	-----------------------    U$7 = (*this).m_data;
;* 1373	-----------------------    if ( L$2 = L$2-1 ) goto g7;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 1373
;*      Loop opening brace source line   : 1373
;*      Loop closing brace source line   : 1375
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        1     
;*      .D units                     2*       2*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1     
;*      Bound(.L .S .D .LS .LSD)     1        2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L182:    ; PIPED LOOP PROLOG

           SPLOOP  2       ;8                ; (P) 
||         MV      .L1     A10,A6

;** --------------------------------------------------------------------------*
$C$L183:    ; PIPED LOOP KERNEL

           SPMASK          L1
||         MV      .L1X    B8,A3
||         LDW     .D1T2   *+A6(88),B7       ; (P) <0,0> 

           LDDW    .D1T1   *+A3(120),A5:A4   ; |1374| (P) <0,1> 
           NOP             1
           ADDAD   .D2     B7,B5,B6          ; |1374| (P) <0,3>  ^ 

           ADD     .L2     1,B5,B5           ; |1373| (P) <0,4> 
||         ADDK    .S2     2488,B6           ; |1374| (P) <0,4>  ^ 

           MV      .L2     B6,B4             ; |1374| (P) <0,5> Split a long life

           SPKERNEL 0,0
||         STDW    .D2T1   A5:A4,*B4         ; |1374| <0,6> 

;** --------------------------------------------------------------------------*
$C$L184:    ; PIPED LOOP EPILOG
           MV      .L1     A6,A10
           NOP             4
;** --------------------------------------------------------------------------*
$C$L185:    
;**	-----------------------g8:
;* 1376	-----------------------    *((double *)U$7+1368) = (*(*this).m_channel_config).g00_speed;
;* 1377	-----------------------    *((*this).m_data+1376) = 0.0;
;* 1378	-----------------------    MCommands::Reset((struct Commands *)(*this).m_data+3128);
;* 1381	-----------------------    if ( !(*this).m_is_machining ) goto g13;
           LDW     .D1T1   *+A10(16),A4      ; |1376| 
           LDW     .D1T1   *+A10(88),A3      ; |1377| 
           LDW     .D1T1   *+A10(88),A8      ; |1378| 
           MVK     .S2     1368,B4           ; |1376| 
           ADD     .L2     B4,B7,B4          ; |1376| 
           LDDW    .D1T1   *+A4(120),A7:A6   ; |1376| 
           ZERO    .L1     A5:A4             ; |1377| 
           ADDK    .S1     1376,A3           ; |1377| 
           STDW    .D1T1   A5:A4,*A3         ; |1377| 
           MVK     .S1     3128,A3           ; |1378| 

           CALLP   .S2     _ZN9MCommands5ResetEv,B3
||         STDW    .D2T1   A7:A6,*B4         ; |1376| 
||         ADD     .L1     A3,A8,A4          ; |1378| 

$C$RL188:  ; CALL OCCURS {_ZN9MCommands5ResetEv} {0}  ; |1378| 
;** --------------------------------------------------------------------------*
           MVK     .S1     17048,A3          ; |1381| 
           LDB     .D1T1   *+A10[A3],A0      ; |1381| 
           NOP             4

           MV      .L1     A0,A1             ; branch predicate copy
|| [!A0]   B       .S1     $C$L188           ; |1381| 
|| [ A0]   LDW     .D1T1   *+A10(20),A3      ; |1381| 

   [!A1]   LDW     .D1T1   *+A10(16),A3      ; |1393| 
           NOP             3
   [ A0]   LDBU    .D1T1   *+A3(17),A0       ; |1381| 
           ; BRANCHCC OCCURS {$C$L188}       ; |1381| 
;** --------------------------------------------------------------------------*
;* 1381	-----------------------    C$10 = (*this).m_channel_state;
;* 1381	-----------------------    if ( (*C$10).is_changing_tool ) goto g13;
           MVK     .S1     130,A4            ; |1381| 
           MVK     .S2     131,B5            ; |1381| 
           MV      .L2X    A3,B4
           NOP             1

   [!A0]   LDBU    .D2T2   *+B4[B5],B4       ; |1381| 
|| [!A0]   LDBU    .D1T1   *+A3(18),A5       ; |1381| 
|| [ A0]   B       .S1     $C$L187           ; |1381| 

   [!A0]   LDBU    .D1T1   *+A3[A4],A3       ; |1381| 
   [ A0]   LDW     .D1T1   *+A10(16),A3      ; |1393| 
   [!A0]   MVK     .S1     1248,A13          ; |1388| 
           NOP             1
           OR      .L1X    B4,A5,A4          ; |1381| 
           ; BRANCHCC OCCURS {$C$L187}       ; |1381| 
;** --------------------------------------------------------------------------*
;* 1381	-----------------------    if ( (*C$10).is_spindle_orientation|(*C$10).tool_broken_detect|(*C$10).tool_broken_detect_setting ) goto g13;

           OR      .L1     A3,A4,A0          ; |1381| 
||         MVK     .S2     1257,B5           ; |1386| 
||         ZERO    .D1     A5                ; |1386| 
||         MVK     .S1     1432,A11          ; |1386| 

   [ A0]   BNOP    .S1     $C$L186,1         ; |1381| 
|| [!A0]   LDW     .D1T2   *+A10(16),B4      ; |1386| 
||         MVK     .L1     0x1,A4            ; |1386| 

   [ A0]   LDW     .D1T1   *+A10(16),A3      ; |1393| 
   [!A0]   LDW     .D1T1   *+A10(88),A12     ; |1386| 
   [!A0]   CALL    .S1     __c6xabi_llshl    ; |1386| 
   [!A0]   LDBU    .D2T2   *+B4[B5],B4       ; |1386| 
           ; BRANCHCC OCCURS {$C$L186}       ; |1381| 
;** --------------------------------------------------------------------------*
;* 1386	-----------------------    C$8 = (*this).m_data;
;* 1386	-----------------------    C$9 = (struct xisMovData *)C$8+1432;
;* 1386	-----------------------    (*C$9).mask = (*C$9).mask&~(1uLL<<(*(*this).m_channel_config).spindle_index);
;* 1387	-----------------------    CircularBuffer<LineData>::InsertData((*this).m_data_buffer, C$8, 1);
;* 1388	-----------------------    if ( !(*(*this).m_channel_state).servo_tool_magazine ) goto g13;
;* 1389	-----------------------    C$7 = (struct xisMovData *)(*this).m_data+1432;
;* 1389	-----------------------    (*C$7).mask = (*C$7).mask&0xfffffffffffffff7uLL;
           ADDKPC  .S2     $C$RL189,B3,3     ; |1386| 
$C$RL189:  ; CALL OCCURS {__c6xabi_llshl} {0}  ; |1386| 
;** --------------------------------------------------------------------------*
           ADD     .L1     A11,A12,A3        ; |1386| 
           LDDW    .D1T1   *A3,A7:A6         ; |1386| 
           NOT     .L1     A4,A8             ; |1386| 
           NOT     .L1     A5,A5             ; |1386| 
           LDW     .D1T1   *+A10(44),A4      ; |1387| 
           MV      .L2X    A12,B4            ; |1387| 

           AND     .L1     A8,A6,A6          ; |1386| 
||         AND     .S1     A5,A7,A7          ; |1386| 

           CALLP   .S2     _ZN14CircularBufferI8LineDataE10InsertDataEPKS0_i,B3
||         STDW    .D1T1   A7:A6,*A3         ; |1386| 
||         MVK     .L1     0x1,A6            ; |1387| 

$C$RL190:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE10InsertDataEPKS0_i} {0}  ; |1387| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(20),A3      ; |1388| 
           MVK     .L2     0xfffffff7,B4     ; |1389| 
           MVK     .L1     0xffffffff,A31    ; |1389| 
           NOP             2
           LDBU    .D1T1   *+A3[A13],A0      ; |1388| 
           NOP             4
   [ A0]   LDW     .D1T1   *+A10(88),A3      ; |1389| 
           NOP             4
   [ A0]   ADD     .L1     A11,A3,A6         ; |1389| 
   [ A0]   LDDW    .D1T1   *A6,A5:A4         ; |1389| 
           LDW     .D1T1   *+A10(16),A3      ; |1393| 
           NOP             3

   [ A0]   AND     .L1     A31,A5,A5         ; |1389| 
|| [ A0]   AND     .S1X    B4,A4,A4          ; |1389| 

   [ A0]   STDW    .D1T1   A5:A4,*A6         ; |1389| 
;** --------------------------------------------------------------------------*
$C$L186:    
;** --------------------------------------------------------------------------*
$C$L187:    
           NOP             1
;** --------------------------------------------------------------------------*
$C$L188:    
;**	-----------------------g13:
;**  	-----------------------    U$7 = (*this).m_data;
;* 1393	-----------------------    if ( !(C$6 = (*(*this).m_channel_config).axis_number) ) goto g16;
;**  	-----------------------    K$116 = 0.0;
;**  	-----------------------    L$3 = (unsigned)C$6;
;* 1393	-----------------------    index = 0u;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDBU    .D1T1   *+A3(2),A0        ; |1393| 
           ZERO    .L2     B6                ; |1393| 
           ZERO    .L2     B5:B4
           LDW     .D1T1   *+A10(88),A3
           NOP             1

   [!A0]   BNOP    .S1     $C$L192,5         ; |1393| 
|| [ A0]   MVC     .S2X    A0,ILC

           ; BRANCHCC OCCURS {$C$L192}       ; |1393| 
;** --------------------------------------------------------------------------*
;**	-----------------------g15:
;* 1394	-----------------------    *((index<<3)+(double *)U$7+2488) = K$116;
;* 1393	-----------------------    ++index;
;**  	-----------------------    U$7 = (*this).m_data;
;* 1393	-----------------------    if ( L$3 = L$3-1 ) goto g15;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 1393
;*      Loop opening brace source line   : 1393
;*      Loop closing brace source line   : 1395
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             2*       0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Did not find schedule
;*         ii = 3  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L189:    ; PIPED LOOP PROLOG

           SPLOOP  3       ;6                ; (P) 
||         MV      .L1X    B4,A4
||         MV      .L2X    A10,B4

;** --------------------------------------------------------------------------*
$C$L190:    ; PIPED LOOP KERNEL
           LDW     .D2T1   *+B4(88),A3       ; (P) <0,0> 

           SPMASK          L1
||         MV      .L1X    B6,A6

           SPMASK          L1
||         MV      .L1X    B5,A5
||         ADDAD   .D1     A3,A6,A3          ; |1394| (P) <0,2>  ^ 

           ADDK    .S1     2488,A3           ; |1394| <0,3>  ^ 

           SPKERNEL 0,0
||         ADD     .L1     1,A6,A6           ; |1393| <0,4> 
||         STDW    .D1T1   A5:A4,*A3         ; |1394| <0,4> 

;** --------------------------------------------------------------------------*
$C$L191:    ; PIPED LOOP EPILOG
           NOP             1
           MV      .S1X    B4,A10
;** --------------------------------------------------------------------------*
$C$L192:    
;**	-----------------------g16:
;* 1397	-----------------------    (*(*this).m_geometry).end_data = U$7;
           LDW     .D1T1   *+A10(92),A4      ; |1397| 
           NOP             4
           ADDK    .S1     512,A4            ; |1397| 
           STW     .D1T1   A3,*A4            ; |1397| 
;** --------------------------------------------------------------------------*
$C$L193:    
;**	-----------------------g17:
;* 1400	-----------------------    if ( (U$127 = (*this).m_next_channel_mode) == 4 ) goto g19;

           ZERO    .L2     B4                ; |1401| 
||         ZERO    .D2     B10               ; |1401| 
||         MVK     .S2     3680,B5           ; |1402| 
||         LDW     .D1T1   *+A10(36),A6      ; |1400| 

           ZERO    .L1     A4                ; |1401| 
           MVK     .S1     274,A3            ; |1403| 
           MVK     .S1     1432,A7           ; |1401| 
           ZERO    .L1     A5                ; |1401| 
           CMPEQ   .L1     A6,4,A0           ; |1400| 

   [ A0]   BNOP    .S1     $C$L194,2         ; |1400| 
|| [!A0]   LDW     .D1T2   *+A10(92),B6      ; |1401| 

   [ A0]   LDW     .D1T1   *+A10(48),A3      ; |1412| 
   [ A0]   CMPEQ   .L1     A6,2,A0           ; |1408| 
           ADDK    .S2     512,B6            ; |1401| 
           ; BRANCHCC OCCURS {$C$L194}       ; |1400| 
;** --------------------------------------------------------------------------*
;* 1401	-----------------------    C$5 = (*(*this).m_geometry).end_data;
;* 1401	-----------------------    *((unsigned long long *)C$5+1432) = 0uLL;
;* 1402	-----------------------    (*C$5).has_special_cmd = C$4 = 0;
;* 1403	-----------------------    (*C$5).interpolation_type = C$4;
;* 1404	-----------------------    this = (*this).m_next_data_buffer;
;** 428	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [99]
;** 430	-----------------------    (*this).m_buffer_cur_length = C$4;  // [99]
;** 431	-----------------------    (*this).m_write_pointer = (*this).m_buffer;  // [99]
;** 432	-----------------------    (*this).m_read_pointer = (*this).m_buffer;  // [99]
;** 434	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [99]
;**  	-----------------------    U$127 = (*this).m_next_channel_mode;
           LDW     .D2T2   *B6,B6            ; |1401| 
           LDW     .D1T1   *+A10(48),A11     ; |1404| 
           NOP             3

           STB     .D2T2   B4,*+B6[B5]       ; |1402| 
||         ADD     .L2X    A3,B6,B4          ; |1403| 
||         ADD     .L1X    A7,B6,A3          ; |1401| 

           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |428| 
||         STDW    .D1T1   A5:A4,*A3         ; |1401| 

           LDW     .D1T1   *+A11(20),A4      ; |428| 
           STH     .D2T2   B10,*B4           ; |1403| 
           ADDKPC  .S2     $C$RL191,B3,2     ; |428| 
$C$RL191:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |428| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *A11,A5           ; |432| 
           LDW     .D1T1   *A11,A6           ; |431| 
           STW     .D1T2   B10,*+A11(8)      ; |430| 
           MV      .L2X    A4,B4             ; |434| 
           LDW     .D1T1   *+A11(20),A4      ; |434| 
           STW     .D1T1   A5,*+A11(16)      ; |432| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         STW     .D1T1   A6,*+A11(12)      ; |431| 

$C$RL192:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |434| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10(36),A6
           LDW     .D1T1   *+A10(48),A3      ; |1412| 
           NOP             3
           CMPEQ   .L1     A6,2,A0           ; |1408| 
;** --------------------------------------------------------------------------*
$C$L194:    
;**	-----------------------g19:
;* 1408	-----------------------    if ( U$127 != 2 ) goto g21;
;* 1409	-----------------------    (*(*this).m_data).protection_zone_alarm_flag = 0;
;**	-----------------------g21:
;* 1411	-----------------------    (*this).m_cur_channel_mode = U$127;
;* 1412	-----------------------    (*this).m_data_buffer = (*this).m_next_data_buffer;
;**  	-----------------------    return;

           MV      .L2     B11,B3            ; |1413| 
|| [ A0]   LDW     .D1T2   *+A10(88),B4      ; |1409| 

           MVK     .S2     269,B6            ; |1409| 
           MV      .L2     B10,B5            ; |1411| 
           STW     .D1T1   A6,*+A10(32)      ; |1411| 
           STW     .D1T1   A3,*+A10(44)      ; |1412| 
   [ A0]   STB     .D2T2   B5,*+B4[B6]       ; |1409| 
           LDW     .D2T1   *++SP(8),A10      ; |1413| 
           LDDW    .D2T1   *++SP,A13:A12     ; |1413| 

           LDDW    .D2T2   *++SP,B11:B10     ; |1413| 
||         RET     .S2     B3                ; |1413| 

           LDW     .D2T1   *++SP(8),A11      ; |1413| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1413| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation19ManageInterpolationEv

;******************************************************************************
;* FUNCTION NAME: Interpolation::ManageInterpolation()                        *
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
;*   Local Frame Size  : 0 Args + 516 Auto + 56 Save = 572 byte               *
;******************************************************************************
_ZN13Interpolation19ManageInterpolationEv:
;** --------------------------------------------------------------------------*
;** 910	-----------------------    U$4 = (*this).m_process_state;
;** 909	-----------------------    res = 0;
;** 910	-----------------------    if ( U$4 ) goto g25;
           STW     .D2T1   A11,*SP--(8)      ; |908| 

           STW     .D2T1   A10,*SP--(8)      ; |908| 
||         MV      .L1     A4,A10            ; |908| 

           STDW    .D2T2   B13:B12,*SP--     ; |908| 
           STDW    .D2T2   B11:B10,*SP--     ; |908| 
           STDW    .D2T1   A15:A14,*SP--     ; |908| 
           STDW    .D2T1   A13:A12,*SP--     ; |908| 
           STW     .D2T2   B3,*SP--(8)       ; |908| 
           LDW     .D1T1   *+A10(120),A0     ; |910| 
           MVK     .S1     124,A3            ; |912| 
           ZERO    .L2     B10               ; |909| 
           ADDK    .S2     -520,SP           ; |908| 
           NOP             1

           MV      .S1     A0,A1             ; guard predicate rewrite
|| [ A0]   B       .S2     $C$L211           ; |910| 
||         MV      .D1     A0,A2             ; branch predicate copy
|| [ A0]   CMPEQ   .L1     A0,1,A0           ; |957| 

   [!A1]   MVK     .L1     0x1,A0            ; |957| nullify predicate

   [!A0]   BNOP    .S1     $C$L224,3         ; |957| 
|| [!A2]   LDB     .D1T1   *+A10[A3],A0      ; |912| 

           ; BRANCHCC OCCURS {$C$L211}       ; |910| 
;** --------------------------------------------------------------------------*
;** 912	-----------------------    if ( !(*this).m_need_get_new_data ) goto g11;
           ADDAD   .D1     A10,16,A11        ; |914| 

   [!A0]   B       .S1     $C$L203           ; |912| 
|| [!A0]   LDW     .D1T1   *+A10(32),A4      ; |924| 

   [ A0]   CALL    .S1     _ZN13Interpolation16GetMachiningDataEv ; |913| 
|| [!A0]   LDW     .D1T1   *+A10(104),A3     ; |924| 

   [!A0]   LDW     .D1T1   *+A10(100),A11    ; |924| 
           ADDAD   .D1     A10,16,A12        ; |913| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L203}       ; |912| 
;** --------------------------------------------------------------------------*
;** 913	-----------------------    (*this).m_get_data_result = Interpolation::GetMachiningData(this);
;** 914	-----------------------    if ( (*this).m_get_data_result != 1 ) goto g49;
           ADDKPC  .S2     $C$RL193,B3,0     ; |913| 
$C$RL193:  ; CALL OCCURS {_ZN13Interpolation16GetMachiningDataEv} {0}  ; |913| 
;** --------------------------------------------------------------------------*
           STW     .D1T1   A4,*A12           ; |913| 
           LDW     .D1T1   *A11,A3           ; |914| 
           MV      .L2     B10,B11           ; |914| 
           MVK     .S1     124,A11           ; |916| 
           NOP             2
           CMPEQ   .L1     A3,1,A0           ; |914| 

   [!A0]   BNOP    .S1     $C$L224,4         ; |914| 
|| [ A0]   LDW     .D1T1   *+A10(100),A4     ; |915| 

   [ A0]   LDW     .D1T1   *A4,A3            ; |915| 
           ; BRANCHCC OCCURS {$C$L224}       ; |914| 
;** --------------------------------------------------------------------------*
;** 915	-----------------------    C$103 = (*this).m_interpolation_algorithm;
;** 915	-----------------------    (*(void (*)())*((*C$103).__vptr+20))(C$103);
;** 916	-----------------------    (*this).m_need_get_new_data = 0;
;** 918	-----------------------    dest_data = (*this).m_data;
;** 918	-----------------------    src_data = (*(*this).m_geometry).end_data;
;** 361	-----------------------    if ( !(C$102 = (*(*this).m_channel_config).axis_number) ) goto g7;  // [75]
;**  	-----------------------    U$38 = (double *)dest_data+1440;
;** 362	-----------------------    L$1 = (int)C$102;  // [75]
;**  	-----------------------    U$42 = &dest_pos[0];
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           NOP             4
           LDW     .D1T1   *+A3(20),A3       ; |915| 
           NOP             4
           CALL    .S2X    A3                ; |915| 
           ADDKPC  .S2     $C$RL194,B3,4     ; |915| 
$C$RL194:  ; CALL OCCURS {A3} {0}            ; |915| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A10(16),B4      ; |361| 
           STB     .D1T2   B11,*+A10[A11]    ; |916| 
           LDW     .D1T1   *+A10(92),A3      ; |918| 
           LDW     .D1T2   *+A10(88),B11     ; |918| 
           ADD     .L2     8,SP,B6
           LDBU    .D2T2   *+B4(2),B0        ; |361| 
           MVK     .S2     1440,B31
           ADDK    .S1     512,A3            ; |918| 
           ADD     .L2     B31,B11,B4
           LDW     .D1T2   *A3,B7            ; |918| 

   [!B0]   BNOP    .S1     $C$L198,5         ; |361| 
|| [ B0]   MVC     .S2     B0,ILC

           ; BRANCHCC OCCURS {$C$L198}       ; |361| 
;** --------------------------------------------------------------------------*
;**	-----------------------g6:
;** 362	-----------------------    *U$42++ = *U$38++;  // [75]
;** 361	-----------------------    if ( L$1 = L$1-1 ) goto g6;  // [75]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop inlined from                : /root/git/ALG_LIB/CTALG/inc/interpolation/interpolation.h
;*      Loop source line                 : 361
;*      Loop opening brace source line   : 361
;*      Loop closing brace source line   : 363
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               2*       0     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     1        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L195:    ; PIPED LOOP PROLOG

           SPLOOP  2       ;8                ; (P) 
||         MV      .L1X    B4,A3

;** --------------------------------------------------------------------------*
$C$L196:    ; PIPED LOOP KERNEL
           LDDW    .D1T1   *A3++,A5:A4       ; |362| (P) <0,0> 
           NOP             4
           MV      .L2X    A5,B5             ; |362| (P) <0,5> Define a twin register
           MV      .L2X    A4,B4             ; |362| <0,6> Define a twin register

           SPKERNEL 3,0
||         STDW    .D2T2   B5:B4,*B6++       ; |362| <0,7> 

;** --------------------------------------------------------------------------*
$C$L197:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L198:    
;**	-----------------------g7:
;** 365	-----------------------    *(struct ineData *)(void *)dest_data = *src_data;  // [75]
;** 367	-----------------------    if ( !(C$101 = (*(*this).m_channel_config).axis_number) ) goto g10;  // [75]

           CALLP   .S2     memcpy,B3
||         MV      .L2     B7,B4             ; |365| 
||         MV      .L1X    B11,A4            ; |365| 
||         MVK     .S1     0xee8,A6          ; |365| 

$C$RL195:  ; CALL OCCURS {memcpy} {0}        ; |365| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$57 = (double *)dest_data+1440;
;**  	-----------------------    L$2 = (int)C$101;
;**  	-----------------------    U$55 = &dest_pos[0];
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D1T1   *+A10(16),A3      ; |367| 
           MVK     .S2     1440,B4
           ADD     .L2     B4,B11,B6
           ADD     .L2     8,SP,B4
           NOP             1
           LDBU    .D1T1   *+A3(2),A0        ; |367| 
           NOP             4

   [!A0]   BNOP    .S1     $C$L202,5         ; |367| 
|| [ A0]   MVC     .S2X    A0,ILC

           ; BRANCHCC OCCURS {$C$L202}       ; |367| 
;** --------------------------------------------------------------------------*
;**	-----------------------g9:
;** 368	-----------------------    *U$57++ = *U$55++;  // [75]
;** 367	-----------------------    if ( L$2 = L$2-1 ) goto g9;  // [75]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop inlined from                : /root/git/ALG_LIB/CTALG/inc/interpolation/interpolation.h
;*      Loop source line                 : 367
;*      Loop opening brace source line   : 367
;*      Loop closing brace source line   : 369
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               2*       0     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     1        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L199:    ; PIPED LOOP PROLOG

           SPLOOP  2       ;8                ; (P) 
||         MV      .L1X    B4,A3

;** --------------------------------------------------------------------------*
$C$L200:    ; PIPED LOOP KERNEL
           LDDW    .D1T1   *A3++,A5:A4       ; |368| (P) <0,0> 
           NOP             4
           MV      .L2X    A5,B5             ; |368| (P) <0,5> Define a twin register
           MV      .L2X    A4,B4             ; |368| <0,6> Define a twin register

           SPKERNEL 3,0
||         STDW    .D2T2   B5:B4,*B6++       ; |368| <0,7> 

;** --------------------------------------------------------------------------*
$C$L201:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L202:    
;**	-----------------------g10:
;** 370	-----------------------    *((double *)dest_data+2480) = 0.0;  // [75]
           LDW     .D1T1   *+A10(32),A4      ; |924| 
           LDW     .D1T1   *+A10(100),A11    ; |924| 

           LDW     .D1T1   *+A10(104),A3     ; |924| 
||         MVK     .S2     2480,B4           ; |370| 

           ZERO    .L2     B5:B4             ; |370| 
||         ADD     .S2     B4,B11,B6         ; |370| 

           STDW    .D2T2   B5:B4,*B6         ; |370| 
;** --------------------------------------------------------------------------*
$C$L203:    
;**	-----------------------g11:
;** 924	-----------------------    U$14 = (*this).m_interpolation_algorithm;
;** 924	-----------------------    if ( !((U$14 == (struct nterpolationAlgorithm *)(*this).m_quick_move_interpolation)&((*this).m_cur_channel_mode == 4)) ) goto g18;
           CMPEQ   .L1     A4,4,A4           ; |924| 
           NOP             1

           CMPEQ   .L1     A11,A3,A0         ; |924| 
||         ZERO    .S1     A3                ; |924| 

   [ A0]   MVK     .L1     0x1,A3            ; |924| 
           AND     .L1     A4,A3,A0          ; |924| 

   [ A0]   LDW     .D1T1   *+A10(16),A3      ; |346| 
||         MV      .L1     A0,A1             ; |924| branch predicate copy
|| [!A0]   B       .S1     $C$L206           ; |924| 

   [!A1]   LDW     .D1T1   *+A10(116),A3     ; |930| 
           NOP             3
   [ A0]   LDBU    .D1T1   *+A3(2),A0        ; |346| 
           ; BRANCHCC OCCURS {$C$L206}       ; |924| 
;** --------------------------------------------------------------------------*
;** 346	-----------------------    if ( !(C$100 = (*(*this).m_channel_config).axis_number) ) goto g18;  // [74]
           ZERO    .L2     B12               ; |346| 
           NOP             3

   [!A0]   BNOP    .S1     $C$L205,4         ; |346| 
|| [ A0]   LDW     .D1T1   *+A10(92),A3
||         MV      .L2X    A0,B11

           ADDK    .S1     512,A3
           ; BRANCHCC OCCURS {$C$L205}       ; |346| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$86 = *((*(*this).m_geometry).end_data+1432);
;**  	-----------------------    U$93 = (*this).m_dynamic_info;
;**  	-----------------------    L$3 = (unsigned)C$100;
;** 346	-----------------------    i = 0u;  // [74]
;**  	-----------------------    #pragma MUST_ITERATE(1, 255, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D1T1   *A3,A4
           LDW     .D1T1   *+A10(96),A14
           MV      .L1X    B12,A15
           NOP             2
           ADDK    .S1     1432,A4
           LDDW    .D1T1   *A4,A13:A12
           CALL    .S1     __c6xabi_llshru   ; |347| 
           NOP             3

           MV      .L1     A12,A4            ; |347| 
||         MV      .S1     A13,A5            ; |347| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L204:    
;**	-----------------------g14:
;** 347	-----------------------    if ( !(int)((unsigned long long)((unsigned)(U$86>>i)^0xffffffffu)&1uLL) ) goto g16;  // [74]
;** 352	-----------------------    (**U$93).is_enabled = 0;  // [74]
;** 352	-----------------------    goto g17;  // [74]
;**	-----------------------g16:
;** 349	-----------------------    (**U$93).is_enabled = 1;  // [74]
;** 350	-----------------------    (**U$93).run_state = 0;  // [74]
;**	-----------------------g17:
;** 346	-----------------------    ++U$93;  // [74]
;** 346	-----------------------    ++i;  // [74]
;** 346	-----------------------    if ( L$3 = L$3-1 ) goto g14;  // [74]

           ADDKPC  .S2     $C$RL196,B3,0     ; |347| 
||         MV      .L2     B12,B4            ; |347| 

$C$RL196:  ; CALL OCCURS {__c6xabi_llshru} {0}  ; |347| 
;** --------------------------------------------------------------------------*

           MVK     .S1     368,A5            ; |352| 
||         XOR     .L1     -1,A4,A3          ; |347| 

           EXTU    .S1     A3,31,31,A0       ; |347| 
   [!A0]   LDW     .D1T1   *A14,A3           ; |349| 
           MVK     .L1     1,A4              ; |349| 
           MV      .L1     A5,A31            ; |350| 
           SUB     .L1X    B11,1,A2          ; |346| 
   [ A0]   LDW     .D1T1   *A14,A3           ; |352| 

   [ A2]   MV      .L1     A13,A5            ; |347| 
|| [!A0]   STB     .D1T1   A4,*+A3[A5]       ; |349| 

   [!A0]   LDW     .D1T1   *A14,A3           ; |350| 
   [ A2]   B       .S1     $C$L204           ; |346| 
   [ A2]   CALL    .S1     __c6xabi_llshru   ; |347| 
   [ A2]   MV      .L1     A12,A4            ; |347| 
   [ A0]   STB     .D1T1   A15,*+A3[A31]     ; |352| 
   [!A0]   ADDK    .S1     372,A3            ; |350| 

   [!A0]   STW     .D1T1   A15,*A3           ; |350| 
||         ADD     .L1     4,A14,A14         ; |346| 
||         ADD     .L2     1,B12,B12         ; |346| 
||         SUB     .S2     B11,1,B11         ; |346| 

           ; BRANCHCC OCCURS {$C$L204}       ; |346| 
;** --------------------------------------------------------------------------*
$C$L205:    
           LDW     .D1T1   *+A10(116),A3     ; |930| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L206:    
;**	-----------------------g18:
;** 930	-----------------------    if ( (*this).m_run_state == 1 ) goto g23;

           CMPEQ   .L1     A3,1,A0           ; |930| 
||         MVKL    .S1     0xe2308c3a,A4

   [ A0]   BNOP    .S2     $C$L208,2         ; |930| 
|| [!A0]   LDW     .D1T1   *+A10(60),A3      ; |930| 
||         MVKL    .S1     0x3e45798e,A5

           MVKH    .S1     0xe2308c3a,A4
           MVKH    .S1     0x3e45798e,A5
   [!A0]   LDDW    .D1T1   *A3,A9:A8         ; |930| 
           ; BRANCHCC OCCURS {$C$L208}       ; |930| 
;** --------------------------------------------------------------------------*
;** 930	-----------------------    U$106 = *(*this).m_feed_rate;
;** 930	-----------------------    if ( U$106 < 1.00000000000000002092e-8 ) goto g23;
           ZERO    .L1     A7
           SET     .S1     A7,0x14,0x1d,A7
           ZERO    .L1     A6                ; |937| 
           NOP             1
           CMPLTDP .S1     A9:A8,A5:A4,A1    ; |930| 
           NOP             1

   [ A1]   LDW     .D1T1   *A11,A3           ; |932| 
|| [ A1]   B       .S2     $C$L209           ; |930| 
||         CMPLTDP .S1     A9:A8,A7:A6,A0    ; |937| 
|| [!A1]   MV      .L2X    A9,B5             ; |941| 
|| [!A1]   MV      .L1     A11,A4            ; |941| 

   [!A1]   MV      .L2X    A8,B4             ; |941| 

   [ A1]   ZERO    .L1     A0                ; |941| nullify predicate
|| [!A1]   MVK     .S1     17049,A5          ; |941| 

   [ A0]   B       .S1     $C$L207           ; |937| 
   [!A1]   MV      .L2X    A5,B6             ; |941| 
   [ A1]   LDW     .D1T1   *+A3(28),A3       ; |932| 
           ; BRANCHCC OCCURS {$C$L209}       ; |930| 
;** --------------------------------------------------------------------------*
;** 937	-----------------------    if ( U$106 < 1.0 ) goto g22;
   [!A0]   LDW     .D1T1   *A11,A3           ; |941| 
   [ A0]   LDW     .D1T1   *A11,A3           ; |938| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L207}       ; |937| 
;** --------------------------------------------------------------------------*
;** 941	-----------------------    (*(int (*)())*((*U$14).__vptr+28))(U$14, U$106, 1.0, (*this).m_is_tapping_mode);
;** 941	-----------------------    goto g24;
           LDB     .D1T2   *+A10[A5],B6      ; |941| 
           NOP             1
           LDW     .D1T1   *+A3(28),A3       ; |941| 
           NOP             4
           CALL    .S2X    A3                ; |941| 
           ADDKPC  .S2     $C$RL197,B3,4     ; |941| 
$C$RL197:  ; CALL OCCURS {A3} {0}            ; |941| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L210,3         ; |941| 
||         MVK     .L1     1,A3              ; |953| 
||         MVK     .D1     0x1,A0

           CMPEQ   .L1     A0,1,A0           ; |957| 
           STW     .D1T1   A3,*+A10(120)     ; |953| 
           ; BRANCH OCCURS {$C$L210}         ; |941| 
;** --------------------------------------------------------------------------*
$C$L207:    
;**	-----------------------g22:
;** 938	-----------------------    (*(int (*)())*((*U$14).__vptr+28))(U$14, U$106, U$106, (*this).m_is_tapping_mode);
;** 940	-----------------------    goto g24;
           MV      .L2X    A10,B4
           LDB     .D2T2   *+B4[B6],B6       ; |938| 
           MV      .L2X    A8,B4             ; |938| 
           LDW     .D1T1   *+A3(28),A3       ; |938| 
           MV      .L1     A8,A6             ; |938| 
           MV      .L1     A9,A7             ; |938| 
           NOP             2
           CALL    .S2X    A3                ; |938| 
           ADDKPC  .S2     $C$RL198,B3,4     ; |938| 
$C$RL198:  ; CALL OCCURS {A3} {0}            ; |938| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L210,3         ; |940| 
||         MVK     .L1     1,A3              ; |953| 
||         MVK     .D1     0x1,A0

           CMPEQ   .L1     A0,1,A0           ; |957| 
           STW     .D1T1   A3,*+A10(120)     ; |953| 
           ; BRANCH OCCURS {$C$L210}         ; |940| 
;** --------------------------------------------------------------------------*
$C$L208:    
           LDW     .D1T1   *A11,A3           ; |932| 
           NOP             4
           LDW     .D1T1   *+A3(28),A3       ; |932| 
;** --------------------------------------------------------------------------*
$C$L209:    
;**	-----------------------g23:
;** 932	-----------------------    (*(int (*)())*((*U$14).__vptr+28))(U$14, 0.0, 0.0, (*this).m_is_tapping_mode);
           MVK     .S1     17049,A4          ; |932| 
           LDB     .D1T2   *+A10[A4],B6      ; |932| 
           MV      .L1     A11,A4            ; |932| 
           ZERO    .L2     B5:B4             ; |932| 
           CALL    .S2X    A3                ; |932| 
           ZERO    .L1     A7:A6             ; |932| 
           ADDKPC  .S2     $C$RL199,B3,3     ; |932| 
$C$RL199:  ; CALL OCCURS {A3} {0}            ; |932| 

           MVK     .L1     1,A3              ; |953| 
||         MVK     .S1     0x1,A0

           STW     .D1T1   A3,*+A10(120)     ; |953| 
||         CMPEQ   .L1     A0,1,A0           ; |957| 

;** --------------------------------------------------------------------------*
$C$L210:    
;**	-----------------------g24:
;** 953	-----------------------    (*this).m_process_state = 1;
;**  	-----------------------    U$4 = 1;
   [!A0]   BNOP    .S1     $C$L224,3         ; |957| 
;** --------------------------------------------------------------------------*
$C$L211:    
;**	-----------------------g25:
;** 957	-----------------------    if ( U$4 != 1 ) goto g49;
           NOP             2
           ; BRANCHCC OCCURS {$C$L224}       ; |957| 
;** --------------------------------------------------------------------------*
;** 958	-----------------------    C$99 = (*this).m_interpolation_algorithm;
;** 958	-----------------------    if ( (*(char (*)())*((*C$99).__vptr+16))(C$99) ) goto g49;
           LDW     .D1T1   *+A10(100),A4     ; |958| 
           NOP             4
           LDW     .D1T1   *A4,A3            ; |958| 
           NOP             4
           LDW     .D1T1   *+A3(16),A3       ; |958| 
           NOP             4
           CALL    .S2X    A3                ; |958| 
           ADDKPC  .S2     $C$RL200,B3,4     ; |958| 
$C$RL200:  ; CALL OCCURS {A3} {0}            ; |958| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |958| 

   [ A0]   BNOP    .S1     $C$L224,4         ; |958| 
|| [!A0]   LDW     .D1T1   *+A10(100),A4     ; |959| 

   [!A0]   LDW     .D1T1   *A4,A3            ; |959| 
           ; BRANCHCC OCCURS {$C$L224}       ; |958| 
;** --------------------------------------------------------------------------*
;** 959	-----------------------    C$98 = (*this).m_interpolation_algorithm;
;** 959	-----------------------    (*(void (*)())*((*C$98).__vptr+32))(C$98, (*this).m_data);
;** 960	-----------------------    if ( !(*(*this).m_channel_config).axis_number ) goto g33;
           LDW     .D1T2   *+A10(88),B4      ; |959| 
           NOP             3
           LDW     .D1T1   *+A3(32),A3       ; |959| 
           NOP             4
           CALL    .S2X    A3                ; |959| 
           ADDKPC  .S2     $C$RL201,B3,4     ; |959| 
$C$RL201:  ; CALL OCCURS {A3} {0}            ; |959| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A10(16),B4      ; |960| 
           ZERO    .L1     A14               ; |960| 
           ZERO    .L1     A11               ; |960| 
           NOP             2
           LDBU    .D2T2   *+B4(2),B0        ; |960| 
           MVK     .S2     1440,B4
           NOP             3

   [!B0]   BNOP    .S1     $C$L215,4         ; |960| 
|| [ B0]   LDW     .D1T1   *+A10(88),A3

           ADD     .L1X    B4,A3,A3
           ; BRANCHCC OCCURS {$C$L215}       ; |960| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$133 = (*this).m_data+1440;
;**  	-----------------------    U$132 = 0;
;** 960	-----------------------    i = 0;
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
           LDDW    .D1T1   *A3,A7:A6         ; |962| 
           CALL    .S1     _ZSt14__c6xabi_isnand ; |962| 
           NOP             3

           MV      .L1     A6,A4             ; |962| 
||         MV      .S1     A7,A5             ; |962| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L212:    
;**	-----------------------g29:
;** 962	-----------------------    U$134 = *U$133;
;** 962	-----------------------    if ( std::__c6xabi_isnan(U$134) ) goto g31;
           ADDKPC  .S2     $C$RL202,B3,0     ; |962| 
$C$RL202:  ; CALL OCCURS {_ZSt14__c6xabi_isnand} {0}  ; |962| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |962| 
   [ A0]   B       .S1     $C$L213           ; |962| 
   [!A0]   CALL    .S1     __c6xabi_isinf    ; |962| 
   [!A0]   MV      .L1     A6,A4             ; |962| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L213}       ; |962| 
;** --------------------------------------------------------------------------*
;** 962	-----------------------    if ( !__c6xabi_isinf(U$134) ) goto g32;
           ADDKPC  .S2     $C$RL203,B3,0     ; |962| 
$C$RL203:  ; CALL OCCURS {__c6xabi_isinf} {0}  ; |962| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |962| 

   [!A0]   BNOP    .S2     $C$L214,4         ; |962| 
|| [!A0]   LDW     .D1T1   *+A10(88),A15     ; |976| 
|| [!A0]   MVKL    .S1     pos,A4

           ADDAD   .D1     A15,A11,A3        ; |976| 
           ; BRANCHCC OCCURS {$C$L214}       ; |962| 
;** --------------------------------------------------------------------------*
$C$L213:    
;**	-----------------------g31:
;** 965	-----------------------    *((i<<3)+(*this).m_data+1440) = *((i<<3)+(*this).m_geometry);
;** 969	-----------------------    Interpolation::SetStopState(this);
;* 1105	-----------------------    return 4000;
           LDW     .D1T1   *+A10(92),A3      ; |965| 
           LDW     .D1T1   *+A10(88),A6      ; |965| 
           NOP             3
           LDDW    .D1T1   *+A3[A11],A5:A4   ; |965| 
           ADDAD   .D1     A6,A11,A3         ; |965| 
           ADDK    .S1     1440,A3           ; |965| 
           NOP             2

           CALLP   .S2     _ZN13Interpolation12SetStopStateEv,B3
||         STDW    .D1T1   A5:A4,*A3         ; |965| 
||         MV      .L1     A10,A4            ; |969| 

$C$RL204:  ; CALL OCCURS {_ZN13Interpolation12SetStopStateEv} {0}  ; |969| 
;** --------------------------------------------------------------------------*
           ADDK    .S2     520,SP            ; |1106| 

           LDW     .D2T2   *++SP(8),B3       ; |1106| 
||         MVK     .S1     0xfa0,A12         ; |1105| 

           MV      .L1     A12,A4            ; |1105| 
||         LDDW    .D2T1   *++SP,A13:A12     ; |1106| 

           LDDW    .D2T1   *++SP,A15:A14     ; |1106| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1106| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1106| 

           LDW     .D2T1   *++SP(8),A10      ; |1106| 
||         RET     .S2     B3                ; |1106| 

           LDW     .D2T1   *++SP(8),A11      ; |1106| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1106| 
;** --------------------------------------------------------------------------*
$C$L214:    
;**	-----------------------g32:
;** 975	-----------------------    last_spd = *((i<<3)+(C$97 = &spd[0]));
;** 976	-----------------------    C$96 = cur_cycle_time-last_cycle_time;
;** 976	-----------------------    C$94 = (*this).m_data;
;** 976	-----------------------    *((i<<3)+C$97) = C$95 = (*((i<<3)+(double *)C$94+1440)-*((i<<3)+(C$93 = &pos[0])))/C$96;
;** 977	-----------------------    *((i<<3)+&acc) = (C$95-last_spd)/C$96;
;** 978	-----------------------    U$133 = (double *)C$94+U$132+1440;
;** 978	-----------------------    *((i<<3)+C$93) = *U$133++;
;** 960	-----------------------    U$132 += 8;
;** 960	-----------------------    if ( (*(*this).m_channel_config).axis_number > (++i) ) goto g29;

           MVKH    .S1     pos,A4
||         LDW     .D2T2   *+DP(cur_cycle_time+4),B7 ; |976| 

           LDW     .D2T2   *+DP(cur_cycle_time),B6 ; |976| 
||         ADDK    .S1     1440,A3           ; |976| 
||         LDDW    .D1T1   *+A4[A11],A7:A6   ; |976| 

           LDW     .D2T2   *+DP(last_cycle_time),B4 ; |976| 
           LDW     .D2T2   *+DP(last_cycle_time+4),B5 ; |976| 
           LDDW    .D1T1   *A3,A5:A4         ; |976| 
           MVKL    .S1     spd,A3
           MVKH    .S1     spd,A3
           LDDW    .D1T1   *+A3[A11],A13:A12 ; |975| 
           SUBDP   .L2     B7:B6,B5:B4,B11:B10 ; |976| 
           SUBDP   .L1     A5:A4,A7:A6,A5:A4 ; |976| 
           CALL    .S1     __c6xabi_divd     ; |976| 
           ADDKPC  .S2     $C$RL205,B3,3     ; |976| 

           MV      .L2     B11,B5            ; |976| 
||         MV      .S2     B10,B4            ; |976| 

$C$RL205:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |976| 
;** --------------------------------------------------------------------------*
           SUBDP   .L1     A5:A4,A13:A12,A7:A6 ; |977| 
           MVKL    .S1     spd,A3
           MVKH    .S1     spd,A3
           STDW    .D1T1   A5:A4,*+A3[A11]   ; |976| 
           MV      .L2     B10,B4            ; |977| 
           MV      .L2     B11,B5            ; |977| 
           NOP             1

           CALLP   .S2     __c6xabi_divd,B3
||         MV      .L1     A7,A5             ; |977| 
||         MV      .S1     A6,A4             ; |977| 

$C$RL206:  ; CALL OCCURS {__c6xabi_divd} {0}  ; |977| 
;** --------------------------------------------------------------------------*

           LDW     .D1T2   *+A10(16),B4      ; |960| 
||         MVK     .S2     1440,B5           ; |978| 
||         ADD     .L1     A14,A15,A3        ; |978| 
||         MVKL    .S1     pos,A31

           MVKL    .S1     acc,A8
           ADD     .L1X    B5,A3,A3          ; |978| 
           LDDW    .D1T1   *A3++,A7:A6       ; |978| 
           MVKH    .S1     pos,A31
           LDBU    .D2T2   *+B4(2),B4        ; |960| 
           MVKH    .S1     acc,A8
           STDW    .D1T1   A5:A4,*+A8[A11]   ; |977| 

           STDW    .D1T1   A7:A6,*+A31[A11]  ; |978| 
||         ADD     .L1     1,A11,A11         ; |960| 

           ADD     .L1     8,A14,A14         ; |960| 
           CMPGT   .L2X    B4,A11,B0         ; |960| 

   [ B0]   B       .S1     $C$L212           ; |960| 
|| [ B0]   LDDW    .D1T1   *A3,A7:A6         ; |962| 

   [ B0]   CALL    .S1     _ZSt14__c6xabi_isnand ; |962| 
           NOP             3

   [ B0]   MV      .L1     A7,A5             ; |962| 
|| [ B0]   MV      .S1     A6,A4             ; |962| 

           ; BRANCHCC OCCURS {$C$L212}       ; |960| 
;** --------------------------------------------------------------------------*
$C$L215:    
;**	-----------------------g33:
;* 1016	-----------------------    if ( res = (*(*this).OutputData)((*this).m_data, (*this).m_owner_ptr) ) goto g66;
           LDW     .D1T2   *A10,B5           ; |1016| 
           LDW     .D1T2   *+A10(8),B4       ; |1016| 
           LDW     .D1T1   *+A10(88),A4      ; |1016| 
           NOP             2
           CALL    .S2     B5                ; |1016| 
           ADDKPC  .S2     $C$RL207,B3,4     ; |1016| 
$C$RL207:  ; CALL OCCURS {B5} {0}            ; |1016| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |1016| 
||         MV      .L2X    A4,B10            ; |1016| 

   [ A0]   BNOP    .S1     $C$L230,4         ; |1016| 
|| [!A0]   LDW     .D1T1   *+A10(100),A4     ; |1022| 

   [!A0]   LDW     .D1T1   *A4,A3            ; |1022| 
           ; BRANCHCC OCCURS {$C$L230}       ; |1016| 
;** --------------------------------------------------------------------------*
;* 1022	-----------------------    C$92 = (*this).m_interpolation_algorithm;
;* 1022	-----------------------    if ( (*(char (*)())*((*C$92).__vptr+16))(C$92) ) goto g36;
;* 1023	-----------------------    (*this).m_is_reach_end = 0;
;* 1105	-----------------------    return res;
           NOP             4
           LDW     .D1T1   *+A3(16),A3       ; |1022| 
           NOP             4
           CALL    .S2X    A3                ; |1022| 
           ADDKPC  .S2     $C$RL208,B3,4     ; |1022| 
$C$RL208:  ; CALL OCCURS {A3} {0}            ; |1022| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |1022| 
||         MVK     .S1     134,A4            ; |1023| 
||         ZERO    .D1     A3                ; |1023| 

   [!A0]   BNOP    .S1     $C$L234,3         ; |1105| 
|| [ A0]   LDW     .D1T1   *+A10(100),A4     ; |1027| 
||         MV      .L1X    B10,A12           ; |1105| 

   [!A0]   STB     .D1T1   A3,*+A10[A4]      ; |1023| 
   [ A0]   LDW     .D1T1   *A4,A3            ; |1027| 
           ; BRANCHCC OCCURS {$C$L234}       ; |1105| 
;** --------------------------------------------------------------------------*
;**	-----------------------g36:
;* 1027	-----------------------    C$91 = (*this).m_interpolation_algorithm;
;* 1027	-----------------------    if ( (*(char (*)())*((*C$91).__vptr+24))(C$91) ) goto g41;
           NOP             4
           LDW     .D1T1   *+A3(24),A3       ; |1027| 
           NOP             4
           CALL    .S2X    A3                ; |1027| 
           ADDKPC  .S2     $C$RL209,B3,4     ; |1027| 
$C$RL209:  ; CALL OCCURS {A3} {0}            ; |1027| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |1027| 

   [ A0]   B       .S1     $C$L220           ; |1027| 
|| [ A0]   LDW     .D1T1   *+A10(16),A3      ; |1033| 

   [!A0]   CALL    .S1     _ZN22InterpolationAlgorithm11SaveEndDataEP14CircularBufferI8LineDataE ; |1028| 
|| [!A0]   LDW     .D1T2   *+A10(44),B4      ; |1028| 

   [!A0]   LDW     .D1T1   *+A10(100),A4     ; |1028| 
           NOP             2
   [ A0]   LDBU    .D1T1   *+A3(2),A0        ; |1033| 
           ; BRANCHCC OCCURS {$C$L220}       ; |1027| 
;** --------------------------------------------------------------------------*
;* 1028	-----------------------    InterpolationAlgorithm::SaveEndData((*this).m_interpolation_algorithm, (*this).m_data_buffer);
;* 1416	-----------------------    if ( !(C$90 = (*(*this).m_channel_config).axis_number) ) goto g40;  // [71]
           ADDKPC  .S2     $C$RL210,B3,0     ; |1028| 
$C$RL210:  ; CALL OCCURS {_ZN22InterpolationAlgorithm11SaveEndDataEP14CircularBufferI8LineDataE} {0}  ; |1028| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    L$4 = (unsigned)C$90;
;* 1416	-----------------------    i = 0u;  // [71]
;**  	-----------------------    #pragma MUST_ITERATE(1, 65, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D1T1   *+A10(16),A3      ; |1416| 
           ZERO    .L2     B5                ; |1416| 
           NOP             3
           LDBU    .D1T1   *+A3(2),A0        ; |1416| 
           NOP             4

   [!A0]   BNOP    .S1     $C$L219,5         ; |1416| 
|| [ A0]   SUB     .L1     A0,1,A4

           ; BRANCHCC OCCURS {$C$L219}       ; |1416| 
;** --------------------------------------------------------------------------*
;**	-----------------------g39:
;* 1417	-----------------------    *((i<<3)+(*this).m_geometry) = *((i<<3)+(*this).m_data+1440);  // [71]
;* 1418	-----------------------    (**(i*4+(*this).m_dynamic_info)).current_l = 0.0;  // [71]
;* 1416	-----------------------    ++i;  // [71]
;* 1416	-----------------------    if ( L$4 = L$4-1 ) goto g39;  // [71]
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 1416
;*      Loop opening brace source line   : 1416
;*      Loop closing brace source line   : 1419
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     2        0     
;*      .D units                     4*       4*    
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             3        4*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     3        2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L216:    ; PIPED LOOP PROLOG

           SPLOOPD 6       ;24               ; (P) 
||         MV      .L1     A10,A5
||         MVC     .S2X    A4,ILC

;** --------------------------------------------------------------------------*
$C$L217:    ; PIPED LOOP KERNEL
           LDW     .D1T1   *+A5(88),A3       ; |1417| (P) <0,0> 
           NOP             3

           SPMASK          L1
||         MV      .L1X    B5,A4

           ADDAD   .D1     A3,A4,A8          ; |1417| (P) <0,5> 
           ADDK    .S1     1440,A8           ; |1417| (P) <0,6> 

           SPMASK          L2
||         MV      .L2X    A10,B8

           LDW     .D2T2   *+B8(96),B6       ; |1418| (P) <0,8> 
||         LDW     .D1T1   *+A5(92),A3       ; |1417| (P) <0,8> 

           NOP             1

           ADD     .L1     1,A4,A4           ; |1416| (P) <0,10> 
||         LDDW    .D1T1   *A8,A7:A6         ; |1417| (P) <0,10>  ^ 

           NOP             2
           MV      .L2X    A3,B4             ; |1417| (P) <0,13> Define a twin register
           NOP             1
           STDW    .D2T1   A7:A6,*+B4[B5]    ; |1417| (P) <0,15>  ^ 
           LDW     .D2T2   *+B6[B5],B9       ; |1418| (P) <0,16> 
           NOP             3
           ADD     .L2     1,B5,B5           ; |1416| <0,20> Define a twin register
           NOP             1

           ZERO    .L2     B7:B6             ; |1418| <0,22> 
||         ADDK    .S2     328,B9            ; |1418| <0,22> 

           SPKERNEL 0,0
||         STDW    .D2T2   B7:B6,*B9         ; |1418| <0,23> 

;** --------------------------------------------------------------------------*
$C$L218:    ; PIPED LOOP EPILOG
           MV      .L1     A5,A10
           NOP             9
           NOP             8
;** --------------------------------------------------------------------------*
$C$L219:    
;**	-----------------------g40:
;* 1420	-----------------------    (**((*this).m_trajectory_index*4+(*this).m_dynamic_info)).current_l = 0.0;  // [71]
;* 1031	-----------------------    (*this).m_is_reach_end = 0;
;* 1032	-----------------------    goto g48;

           MVK     .S1     17072,A3          ; |1420| 
||         LDW     .D1T1   *+A10(96),A4      ; |1420| 

           LDBU    .D1T1   *+A10[A3],A3      ; |1420| 
           ZERO    .L2     B4                ; |1031| 
           MVK     .S1     134,A31           ; |1031| 
           NOP             2

           LDW     .D1T1   *+A4[A3],A3       ; |1420| 
||         ZERO    .L1     A5:A4             ; |1420| 

           BNOP    .S1     $C$L223,3         ; |1032| 
||         STB     .D1T2   B4,*+A10[A31]     ; |1031| 

           ADDK    .S1     328,A3            ; |1420| 

           STDW    .D1T1   A5:A4,*A3         ; |1420| 
||         MVK     .L1     1,A3              ; |1047| 
||         MVK     .S1     124,A4            ; |1047| 

           ; BRANCH OCCURS {$C$L223}         ; |1032| 
;** --------------------------------------------------------------------------*
$C$L220:    
;**	-----------------------g41:
;* 1033	-----------------------    if ( !(*(*this).m_channel_config).axis_number ) goto g47;
           ZERO    .L2     B11
           ZERO    .L1     A11
           ZERO    .L2     B12
           NOP             1

   [!A0]   BNOP    .S2     $C$L222,4         ; |1033| 
|| [ A0]   MVK     .S1     512,A12           ; |1036| 

   [ A0]   MVK     .S2     1432,B13          ; |1034| 
           ; BRANCHCC OCCURS {$C$L222}       ; |1033| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$199 = U$208 = 0;
;* 1033	-----------------------    i = 0u;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L221:    
;**	-----------------------g43:
;* 1034	-----------------------    if ( AxisMovData::CheckMask((struct xisMovData *)(*(*this).m_geometry).end_data+1432, (unsigned char)i) == 1 ) goto g45;
;* 1039	-----------------------    *((*this).m_geometry+U$199) = *((*this).m_data+U$199+1440);
;* 1039	-----------------------    goto g46;
;**	-----------------------g45:
;* 1036	-----------------------    C$89 = (*this).m_geometry;
;* 1036	-----------------------    *(U$199+(double *)C$89) = *((*C$89).end_data+U$199+1440);
;**	-----------------------g46:
;* 1041	-----------------------    (**((*this).m_dynamic_info+U$208)).current_l = 0.0;
;* 1033	-----------------------    U$199 += 8;
;* 1033	-----------------------    U$208 += 4;
;* 1033	-----------------------    if ( (unsigned)(*(*this).m_channel_config).axis_number > (++i) ) goto g43;
           LDW     .D1T2   *+A10(92),B4      ; |1034| 
           NOP             4
           ADDK    .S2     512,B4            ; |1034| 
           LDW     .D2T2   *B4,B5            ; |1034| 
           EXTU    .S2     B11,24,24,B4      ; |1034| 
           CALL    .S1     _ZN11AxisMovData9CheckMaskEh ; |1034| 
           ADDKPC  .S2     $C$RL211,B3,1     ; |1034| 
           ADD     .L2     B13,B5,B5         ; |1034| 
           NOP             1
           MV      .L1X    B5,A4             ; |1034| 
$C$RL211:  ; CALL OCCURS {_ZN11AxisMovData9CheckMaskEh} {0}  ; |1034| 
;** --------------------------------------------------------------------------*

           ZERO    .L2     B7:B6             ; |1041| 
||         CMPEQ   .L1     A4,1,A0           ; |1034| 
||         LDW     .D1T1   *+A10(96),A7      ; |1041| 

   [ A0]   LDW     .D1T1   *+A10(92),A3      ; |1036| 
   [!A0]   LDW     .D1T1   *+A10(88),A3      ; |1039| 
           ADD     .L2     1,B11,B11         ; |1033| 
           LDW     .D1T1   *+A10(16),A6      ; |1033| 
           ADD     .L2X    B12,A7,B4         ; |1041| 
   [ A0]   ADD     .L1     A12,A3,A4         ; |1036| 

   [ A0]   LDW     .D1T1   *A4,A4            ; |1036| 
|| [!A0]   ADD     .L1     A11,A3,A4         ; |1039| 

   [!A0]   LDW     .D1T1   *+A10(92),A3      ; |1039| 
   [!A0]   ADDK    .S1     1440,A4           ; |1039| 
   [!A0]   LDDW    .D1T1   *A4,A5:A4         ; |1039| 
           LDBU    .D1T1   *+A6(2),A31       ; |1033| 
   [ A0]   ADD     .L1     A11,A4,A4         ; |1036| 
   [ A0]   ADDK    .S1     1440,A4           ; |1036| 
   [ A0]   LDDW    .D1T1   *A4,A5:A4         ; |1036| 
   [ A0]   ADD     .L1     A3,A11,A3         ; |1036| 
   [!A0]   ADD     .L1     A11,A3,A3         ; |1039| 
           CMPGTU  .L2X    A31,B11,B0        ; |1033| 
   [!A0]   STDW    .D1T1   A5:A4,*A3         ; |1039| 
   [ A0]   STDW    .D1T1   A5:A4,*A3         ; |1036| 
           LDW     .D2T2   *B4,B4            ; |1041| 
   [ B0]   BNOP    .S1     $C$L221,3         ; |1033| 
           ADDK    .S2     328,B4            ; |1041| 

           STDW    .D2T2   B7:B6,*B4         ; |1041| 
||         ADD     .L1     8,A11,A11         ; |1033| 
||         ADD     .L2     4,B12,B12         ; |1033| 

           ; BRANCHCC OCCURS {$C$L221}       ; |1033| 
;** --------------------------------------------------------------------------*
$C$L222:    
;**	-----------------------g47:
;* 1043	-----------------------    (**((*this).m_trajectory_index*4+(*this).m_dynamic_info)).current_l = 0.0;
;* 1044	-----------------------    (*this).m_is_reach_end = 1;

           MVK     .S1     17072,A3          ; |1043| 
||         LDW     .D1T1   *+A10(96),A4      ; |1043| 

           LDBU    .D1T1   *+A10[A3],A3      ; |1043| 
           MVK     .L2     1,B4              ; |1044| 
           MVK     .S1     134,A31           ; |1044| 
           NOP             2
           LDW     .D1T1   *+A4[A3],A3       ; |1043| 
           ZERO    .L1     A5:A4             ; |1043| 
           STB     .D1T2   B4,*+A10[A31]     ; |1044| 
           NOP             2
           ADDK    .S1     328,A3            ; |1043| 

           STDW    .D1T1   A5:A4,*A3         ; |1043| 
||         MVK     .L1     1,A3              ; |1047| 
||         MVK     .S1     124,A4            ; |1047| 

;** --------------------------------------------------------------------------*
$C$L223:    
;**	-----------------------g48:
;* 1047	-----------------------    (*this).m_need_get_new_data = 1;
           STB     .D1T1   A3,*+A10[A4]      ; |1047| 
;** --------------------------------------------------------------------------*
$C$L224:    
;**	-----------------------g49:
;* 1053	-----------------------    switch ( (*this).m_run_state ) {case 0: goto g57;, case 1: goto g52;, case 2: goto g50;, DEFAULT goto g66};
           LDW     .D1T1   *+A10(116),A0     ; |1053| 
           MVK     .S1     132,A3            ; |1055| 
           NOP             3

   [!A0]   B       .S1     $C$L227           ; |1053| 
||         CMPEQ   .L1     A0,1,A1           ; |1053| 
||         MV      .L2X    A0,B0             ; guard predicate rewrite
||         MV      .D1     A0,A2             ; branch predicate copy
|| [ A0]   MVKL    .S2     0x3e45798e,B13

   [!B0]   ZERO    .L1     A1                ; |1053| nullify predicate
|| [ A0]   MVKL    .S2     0xe2308c3a,B12

   [ A1]   B       .S1     $C$L225           ; |1053| 
|| [ A0]   MVKH    .S2     0x3e45798e,B13

   [ A0]   MVKH    .S2     0xe2308c3a,B12
|| [ A0]   CMPEQ   .L1     A0,2,A0           ; |1053| 
|| [!A2]   LDB     .D1T1   *+A10[A3],A0      ; |1055| 

           NOP             2
           ; BRANCHCC OCCURS {$C$L227}       ; |1053| 
;** --------------------------------------------------------------------------*

   [ A1]   MVK     .L1     0x1,A0            ; |1095| nullify predicate
|| [!A1]   MVK     .S2     40,B5             ; |1095| 
|| [ A1]   LDW     .D1T1   *+A10(100),A4     ; |1078| 

   [!A0]   B       .S1     $C$L230           ; |1053| 
           ; BRANCHCC OCCURS {$C$L225}       ; |1053| 
;** --------------------------------------------------------------------------*
   [ A0]   MV      .L2X    A10,B4
   [ A0]   LDB     .D2T2   *+B4[B5],B0       ; |1095| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L230}       ; |1053| 
;** --------------------------------------------------------------------------*
;**	-----------------------g50:
;* 1095	-----------------------    if ( !(*this).m_is_channel_mode_changing ) goto g66;

           MV      .L1X    B10,A12           ; |1105| 
||         MV      .S1     A10,A4            ; |1096| 
||         ZERO    .L2     B11               ; |1097| 
||         MV      .S2     B5,B12            ; |1105| 

   [!B0]   B       .S1     $C$L232           ; |1095| 
|| [!B0]   ADDK    .S2     520,SP            ; |1106| 
|| [!B0]   MV      .L1X    B10,A4            ; |1105| 

   [ B0]   CALL    .S1     _ZN13Interpolation17ChangeChannelModeEv ; |1096| 
|| [!B0]   LDW     .D2T2   *++SP(8),B3       ; |1106| 

   [!B0]   LDDW    .D2T1   *++SP,A13:A12     ; |1106| 
   [!B0]   LDDW    .D2T1   *++SP,A15:A14     ; |1106| 
   [!B0]   LDDW    .D2T2   *++SP,B11:B10     ; |1106| 
   [!B0]   LDDW    .D2T2   *++SP,B13:B12     ; |1106| 
           ; BRANCHCC OCCURS {$C$L232}       ; |1095| 
;** --------------------------------------------------------------------------*
;* 1096	-----------------------    Interpolation::ChangeChannelMode(this);
;* 1097	-----------------------    (*this).m_is_channel_mode_changing = 0;
;* 1105	-----------------------    return res;
           ADDKPC  .S2     $C$RL212,B3,0     ; |1096| 
$C$RL212:  ; CALL OCCURS {_ZN13Interpolation17ChangeChannelModeEv} {0}  ; |1096| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A10,B4

           STB     .D2T2   B11,*+B4[B12]     ; |1097| 
||         ADDK    .S2     520,SP            ; |1106| 

           LDW     .D2T2   *++SP(8),B3       ; |1106| 

           MV      .L1     A12,A4            ; |1105| 
||         LDDW    .D2T1   *++SP,A13:A12     ; |1106| 

           LDDW    .D2T1   *++SP,A15:A14     ; |1106| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1106| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1106| 

           LDW     .D2T1   *++SP(8),A10      ; |1106| 
||         RET     .S2     B3                ; |1106| 

           LDW     .D2T1   *++SP(8),A11      ; |1106| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1106| 
;** --------------------------------------------------------------------------*
$C$L225:    
;**	-----------------------g52:
;* 1078	-----------------------    C$88 = (*this).m_interpolation_algorithm;
;* 1078	-----------------------    if ( ABS((*(double (*)())*((*C$88).__vptr+12))(C$88)) < 1.00000000000000002092e-8 ) goto g54;
;* 1089	-----------------------    (*this).m_process_state = 0;
;* 1105	-----------------------    return res;
           NOP             3
           LDW     .D1T1   *A4,A3            ; |1078| 
           NOP             4
           LDW     .D1T1   *+A3(12),A3       ; |1078| 
           NOP             4
           CALL    .S2X    A3                ; |1078| 
           ADDKPC  .S2     $C$RL213,B3,4     ; |1078| 
$C$RL213:  ; CALL OCCURS {A3} {0}            ; |1078| 
;** --------------------------------------------------------------------------*
           ABSDP   .S1     A5:A4,A5:A4       ; |1078| 
           ZERO    .L1     A3                ; |1089| 
           MV      .L1X    B10,A12           ; |1105| 
           CMPLTDP .S2X    A5:A4,B13:B12,B0  ; |1078| 
           NOP             1

   [!B0]   B       .S2     $C$L234           ; |1105| 
|| [!B0]   STW     .D1T1   A3,*+A10(120)     ; |1089| 
||         MVK     .S1     40,A3             ; |1080| 

   [ B0]   LDB     .D1T1   *+A10[A3],A0      ; |1080| 
           NOP             4
           ; BRANCHCC OCCURS {$C$L234}       ; |1105| 
;** --------------------------------------------------------------------------*
;**	-----------------------g54:
;* 1080	-----------------------    if ( !(*this).m_is_channel_mode_changing ) goto g56;
   [!A0]   B       .S1     $C$L226           ; |1080| 
   [ A0]   CALL    .S1     _ZN13Interpolation17ChangeChannelModeEv ; |1081| 
   [!A0]   CALL    .S1     _ZN13Interpolation12SetStopStateEv ; |1086| 
           ZERO    .L2     B10               ; |1082| 
           MV      .L2X    A3,B11            ; |1080| 
           MV      .L1     A10,A4            ; |1081| 
           ; BRANCHCC OCCURS {$C$L226}       ; |1080| 
;** --------------------------------------------------------------------------*
;* 1081	-----------------------    Interpolation::ChangeChannelMode(this);
;* 1082	-----------------------    (*this).m_is_channel_mode_changing = 0;
           ADDKPC  .S2     $C$RL214,B3,0     ; |1081| 
$C$RL214:  ; CALL OCCURS {_ZN13Interpolation17ChangeChannelModeEv} {0}  ; |1081| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ZN13Interpolation12SetStopStateEv ; |1086| 
           MV      .L2X    A10,B4
           STB     .D2T2   B10,*+B4[B11]     ; |1082| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L226:    
;**	-----------------------g56:
;* 1086	-----------------------    Interpolation::SetStopState(this);
;* 1105	-----------------------    return res;
           ADDKPC  .S2     $C$RL215,B3,0     ; |1086| 
           MV      .L1     A10,A4            ; |1086| 
$C$RL215:  ; CALL OCCURS {_ZN13Interpolation12SetStopStateEv} {0}  ; |1086| 
;** --------------------------------------------------------------------------*
           ADDK    .S2     520,SP            ; |1106| 
           LDW     .D2T2   *++SP(8),B3       ; |1106| 

           MV      .L1     A12,A4            ; |1105| 
||         LDDW    .D2T1   *++SP,A13:A12     ; |1106| 

           LDDW    .D2T1   *++SP,A15:A14     ; |1106| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1106| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1106| 

           LDW     .D2T1   *++SP(8),A10      ; |1106| 
||         RET     .S2     B3                ; |1106| 

           LDW     .D2T1   *++SP(8),A11      ; |1106| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1106| 
;** --------------------------------------------------------------------------*
$C$L227:    
;**	-----------------------g57:
;* 1055	-----------------------    if ( !(*this).m_is_single_line_mode ) goto g59;
;* 1055	-----------------------    if ( (*(*this).m_data).has_special_cmd != 1 ) goto g62;
           MVK     .S1     3680,A4           ; |1055| 
           NOP             1
   [ A0]   LDW     .D1T1   *+A10(88),A3      ; |1055| 
           NOP             4
   [ A0]   LDBU    .D1T1   *+A3[A4],A3       ; |1055| 
           NOP             4

   [ A0]   CMPEQ   .L1     A3,1,A0           ; |1055| 
|| [!A0]   MVK     .S1     0x1,A0            ; |1055| 

   [ A0]   LDW     .D1T1   *+A10(88),A3      ; |1055| 
|| [!A0]   B       .S1     $C$L228           ; |1055| 

   [!A0]   LDW     .D1T1   *+A10(100),A4     ; |1058| 
   [ A0]   MVK     .S1     1354,A4           ; |1055| 
   [ A0]   MVK     .S1     270,A31           ; |1055| 
           NOP             1
   [ A0]   LDBU    .D1T1   *+A3[A4],A4       ; |1055| 
           ; BRANCHCC OCCURS {$C$L228}       ; |1055| 
;** --------------------------------------------------------------------------*
;**	-----------------------g59:
;* 1055	-----------------------    C$87 = (*this).m_data;
;* 1055	-----------------------    if ( *((unsigned char *)C$87+1354) != 1 ) goto g61;
;* 1055	-----------------------    if ( (*C$87).interpolation_flag ) goto g62;
           NOP             4
           CMPEQ   .L1     A4,1,A0           ; |1055| 
   [ A0]   LDBU    .D1T1   *+A3[A31],A1      ; |1055| 
   [!A0]   ZERO    .L1     A1                ; |1055| 
           NOP             3

   [ A1]   BNOP    .S1     $C$L229,3         ; |1055| 
|| [ A1]   LDW     .D1T1   *+A10(100),A4     ; |1058| 
|| [!A1]   ZERO    .L1     A3                ; |1073| 

   [!A1]   STW     .D1T1   A3,*+A10(120)     ; |1073| 

   [ A1]   LDW     .D1T1   *A4,A3            ; |1058| 
|| [!A1]   ADDK    .S2     520,SP            ; |1106| 

           ; BRANCHCC OCCURS {$C$L229}       ; |1055| 
;** --------------------------------------------------------------------------*
;**	-----------------------g61:
;* 1073	-----------------------    (*this).m_process_state = 0;
;* 1105	-----------------------    return res;

           LDW     .D2T2   *++SP(8),B3       ; |1106| 
||         MV      .L1X    B10,A4            ; |1073| 

           LDDW    .D2T1   *++SP,A13:A12     ; |1106| 
           LDDW    .D2T1   *++SP,A15:A14     ; |1106| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1106| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1106| 

           LDW     .D2T1   *++SP(8),A10      ; |1106| 
||         RET     .S2     B3                ; |1106| 

           LDW     .D2T1   *++SP(8),A11      ; |1106| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1106| 
;** --------------------------------------------------------------------------*
$C$L228:    
           LDW     .D1T1   *A4,A3            ; |1058| 
;** --------------------------------------------------------------------------*
$C$L229:    
;**	-----------------------g62:
;* 1058	-----------------------    C$86 = (*this).m_interpolation_algorithm;
;* 1058	-----------------------    if ( ABS((*(double (*)())*((*C$86).__vptr+12))(C$86)) < 1.00000000000000002092e-8 ) goto g67;
           NOP             4
           LDW     .D1T1   *+A3(12),A3       ; |1058| 
           NOP             4
           CALL    .S2X    A3                ; |1058| 
           ADDKPC  .S2     $C$RL216,B3,4     ; |1058| 
$C$RL216:  ; CALL OCCURS {A3} {0}            ; |1058| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A10,B4
||         ADDAD   .D1     A10,16,A3         ; |1060| 
||         MVKL    .S1     0xe2308c3a,A12

           MVKL    .S1     0x3e45798e,A13
           ABSDP   .S1     A5:A4,A5:A4       ; |1058| 
           MVK     .S2     132,B6            ; |1067| 
           MVKH    .S1     0xe2308c3a,A12
           MVKH    .S1     0x3e45798e,A13
           CMPLTDP .S1     A5:A4,A13:A12,A0  ; |1058| 
           MVK     .S2     134,B5            ; |1060| 

   [ A0]   B       .S1     $C$L233           ; |1058| 
|| [!A0]   LDB     .D2T2   *+B4[B6],B0       ; |1067| 
||         MV      .L2X    A10,B4
|| [ A0]   LDW     .D1T1   *A3,A3            ; |1060| 

   [ A0]   LDB     .D2T2   *+B4[B5],B4       ; |1060| 
   [ A0]   MVK     .L2     0x1,B0            ; |1067| nullify predicate
           NOP             2
   [!B0]   B       .S1     $C$L231           ; |1067| 
           ; BRANCHCC OCCURS {$C$L233}       ; |1058| 
;** --------------------------------------------------------------------------*
;* 1067	-----------------------    if ( !(*this).m_is_single_line_mode ) goto g66;

   [ B0]   LDW     .D1T1   *+A10(100),A4     ; |1067| 
|| [!B0]   ADDK    .S2     520,SP            ; |1106| 
|| [!B0]   MV      .L1X    B10,A4            ; |1105| 

   [!B0]   LDW     .D2T2   *++SP(8),B3       ; |1106| 
   [!B0]   LDDW    .D2T1   *++SP,A13:A12     ; |1106| 
   [!B0]   LDDW    .D2T1   *++SP,A15:A14     ; |1106| 
   [!B0]   LDDW    .D2T2   *++SP,B11:B10     ; |1106| 
           ; BRANCHCC OCCURS {$C$L231}       ; |1067| 
;** --------------------------------------------------------------------------*
;* 1067	-----------------------    C$85 = (*this).m_interpolation_algorithm;
;* 1067	-----------------------    if ( ABS((*(double (*)())*((*C$85).__vptr+12))(C$85)) < 1.00000000000000002092e-8 ) goto g66;
;* 1070	-----------------------    (*this).m_process_state = 0;
           LDW     .D1T1   *A4,A3            ; |1067| 
           NOP             4
           LDW     .D1T1   *+A3(12),A3       ; |1067| 
           NOP             4
           CALL    .S2X    A3                ; |1067| 
           ADDKPC  .S2     $C$RL217,B3,4     ; |1067| 
$C$RL217:  ; CALL OCCURS {A3} {0}            ; |1067| 
;** --------------------------------------------------------------------------*
           ABSDP   .S1     A5:A4,A5:A4       ; |1067| 
           ZERO    .L1     A3                ; |1070| 
           CMPLTDP .S1     A5:A4,A13:A12,A0  ; |1067| 
           NOP             1
   [!A0]   STW     .D1T1   A3,*+A10(120)     ; |1070| 
;** --------------------------------------------------------------------------*
$C$L230:    
           ADDK    .S2     520,SP            ; |1106| 
           LDW     .D2T2   *++SP(8),B3       ; |1106| 
           LDDW    .D2T1   *++SP,A13:A12     ; |1106| 
           LDDW    .D2T1   *++SP,A15:A14     ; |1106| 

           LDDW    .D2T2   *++SP,B11:B10     ; |1106| 
||         MV      .L1X    B10,A4            ; |1105| 

;** --------------------------------------------------------------------------*
$C$L231:    
           LDDW    .D2T2   *++SP,B13:B12     ; |1106| 
;** --------------------------------------------------------------------------*
$C$L232:    
;**	-----------------------g66:
;* 1105	-----------------------    return res;

           LDW     .D2T1   *++SP(8),A10      ; |1106| 
||         RET     .S2     B3                ; |1106| 

           LDW     .D2T1   *++SP(8),A11      ; |1106| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1106| 
;** --------------------------------------------------------------------------*
$C$L233:    
;**	-----------------------g67:
;* 1060	-----------------------    if ( !(((*this).m_is_reach_end != 0)&((*this).m_get_data_result != 0)) ) goto g69;

           CMPEQ   .L2     B4,0,B4           ; |1060| 
||         CMPEQ   .L1     A3,0,A3           ; |1060| 
||         MV      .S1X    B10,A12           ; |1060| 

           MV      .L1     A10,A4            ; |1062| 
           OR      .L1X    B4,A3,A0
   [ A0]   B       .S1     $C$L234           ; |1060| 
   [!A0]   CALL    .S1     _ZN13Interpolation12SetStopStateEv ; |1062| 
           MV      .L2     B5,B10            ; |1060| 
           ZERO    .L1     A11               ; |1065| 
           ZERO    .L2     B4                ; |1065| 
   [ A0]   STW     .D1T2   B4,*+A10(120)     ; |1065| 
           ; BRANCHCC OCCURS {$C$L234}       ; |1060| 
;** --------------------------------------------------------------------------*
;* 1062	-----------------------    Interpolation::SetStopState(this);
;* 1063	-----------------------    (*this).m_is_reach_end = 0;
;* 1105	-----------------------    return res;
           ADDKPC  .S2     $C$RL218,B3,0     ; |1062| 
$C$RL218:  ; CALL OCCURS {_ZN13Interpolation12SetStopStateEv} {0}  ; |1062| 
;** --------------------------------------------------------------------------*
;**	-----------------------g69:
;* 1065	-----------------------    (*this).m_process_state = 0;
;* 1105	-----------------------    return res;
           MV      .L1X    B10,A3

           STB     .D1T1   A11,*+A10[A3]     ; |1063| 
||         ADDK    .S2     520,SP            ; |1106| 

           LDW     .D2T2   *++SP(8),B3       ; |1106| 

           MV      .L1     A12,A4            ; |1105| 
||         LDDW    .D2T1   *++SP,A13:A12     ; |1106| 

           LDDW    .D2T1   *++SP,A15:A14     ; |1106| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1106| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1106| 

           LDW     .D2T1   *++SP(8),A10      ; |1106| 
||         RET     .S2     B3                ; |1106| 

           LDW     .D2T1   *++SP(8),A11      ; |1106| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1106| 
;** --------------------------------------------------------------------------*
$C$L234:    
           ADDK    .S2     520,SP            ; |1106| 
           LDW     .D2T2   *++SP(8),B3       ; |1106| 

           MV      .L1     A12,A4            ; |1105| 
||         LDDW    .D2T1   *++SP,A13:A12     ; |1106| 

           LDDW    .D2T1   *++SP,A15:A14     ; |1106| 
           LDDW    .D2T2   *++SP,B11:B10     ; |1106| 
           LDDW    .D2T2   *++SP,B13:B12     ; |1106| 

           LDW     .D2T1   *++SP(8),A10      ; |1106| 
||         RET     .S2     B3                ; |1106| 

           LDW     .D2T1   *++SP(8),A11      ; |1106| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1106| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation17SetSingleLineModeEb

;******************************************************************************
;* FUNCTION NAME: Interpolation::SetSingleLineMode(bool)                      *
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
_ZN13Interpolation17SetSingleLineModeEb:
;** --------------------------------------------------------------------------*
;** 527	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);
;** 529	-----------------------    if ( (*this).m_is_single_line_mode == is_single_line_mode ) goto g5;
           STW     .D2T2   B13,*SP--(8)      ; |522| 

           STDW    .D2T1   A11:A10,*SP--     ; |522| 
||         MV      .L1     A4,A10            ; |522| 

           MV      .L2     B3,B13            ; |522| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(28),A4      ; |527| 
||         MV      .L1X    B4,A11            ; |522| 

$C$RL219:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |527| 
;** --------------------------------------------------------------------------*
           MVK     .S1     132,A3            ; |529| 
           LDB     .D1T1   *+A10[A3],A3      ; |529| 
           MV      .L2X    A11,B4            ; |522| 
           MVK     .S2     132,B6            ; |530| 
           NOP             2
           CMPEQ   .L1     A3,A11,A0         ; |529| 

   [ A0]   B       .S1     $C$L235           ; |529| 
|| [!A0]   LDW     .D1T1   *+A10(32),A3      ; |533| 

   [!A0]   LDW     .D1T1   *+A10(120),A5     ; |533| 
           NOP             3
           CMPEQ   .L1     A3,4,A3           ; |533| 
           ; BRANCHCC OCCURS {$C$L235}       ; |529| 
;** --------------------------------------------------------------------------*
;** 530	-----------------------    (*this).m_is_single_line_mode = is_single_line_mode;
;** 533	-----------------------    if ( !(((*this).m_cur_channel_mode == 4)&((*this).m_process_state == 1)) ) goto g5;

           CMPEQ   .L1     A5,1,A5           ; |533| 
||         MV      .L2X    A10,B5

           AND     .L1     A5,A3,A0          ; |533| 
||         STB     .D2T2   B4,*+B5[B6]       ; |530| 

   [ A0]   LDW     .D1T1   *+A10(88),A3      ; |533| 
|| [!A0]   B       .S1     $C$L236           ; |533| 
|| [!A0]   MV      .L2X    A4,B4             ; |543| 

   [!A0]   CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |543| 
   [!A0]   LDW     .D1T1   *+A10(28),A4      ; |543| 
           NOP             2
           ADDK    .S1     274,A3            ; |533| 
           ; BRANCHCC OCCURS {$C$L236}       ; |533| 
;** --------------------------------------------------------------------------*
;** 533	-----------------------    if ( !(((*(*this).m_data).interpolation_type != 0)&is_single_line_mode) ) goto g5;
;** 537	-----------------------    *((*(*this).m_geometry).end_data+1376) = 0.0;
;** 538	-----------------------    (*this).m_process_state = 0;
           LDHU    .D1T1   *A3,A3            ; |533| 
           ZERO    .L1     A31               ; |538| 
           NOP             3
           CMPEQ   .L1     A3,0,A3           ; |533| 
           XOR     .L1     1,A3,A3           ; |533| 
           NOP             1
           AND     .L2X    B4,A3,B0          ; |533| 
   [ B0]   LDW     .D1T2   *+A10(92),B4      ; |537| 
           NOP             4
   [ B0]   ADDK    .S2     512,B4            ; |537| 
   [ B0]   LDW     .D2T2   *B4,B6            ; |537| 
   [ B0]   STW     .D1T1   A31,*+A10(120)    ; |538| 
           ZERO    .L2     B5:B4             ; |537| 
           NOP             2
   [ B0]   ADDK    .S2     1376,B6           ; |537| 
   [ B0]   STDW    .D2T2   B5:B4,*B6         ; |537| 
;** --------------------------------------------------------------------------*
$C$L235:    
           CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |543| 

           MV      .L2X    A4,B4             ; |543| 
||         LDW     .D1T1   *+A10(28),A4      ; |543| 

           NOP             3
;** --------------------------------------------------------------------------*
$C$L236:    
;**	-----------------------g5:
;** 543	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;**  	-----------------------    return;
           ADDKPC  .S2     $C$RL220,B3,0     ; |543| 
$C$RL220:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |543| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |547| 

           RET     .S2     B3                ; |547| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |547| 

           LDW     .D2T2   *++SP(8),B13      ; |547| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |547| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation17SetRetRefPosStateEbh

;******************************************************************************
;* FUNCTION NAME: Interpolation::SetRetRefPosState(bool, unsigned char)       *
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
_ZN13Interpolation17SetRetRefPosStateEbh:
;** --------------------------------------------------------------------------*
;** 779	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);
;** 781	-----------------------    if ( returning_ref_pos == 1 ) goto g13;
           STW     .D2T1   A11,*SP--(8)      ; |774| 
           STDW    .D2T2   B11:B10,*SP--     ; |774| 
           STDW    .D2T1   A13:A12,*SP--     ; |774| 

           STW     .D2T1   A10,*SP--(8)      ; |774| 
||         MV      .L1     A4,A11            ; |774| 

           MV      .L2     B3,B11            ; |774| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A11(28),A4      ; |779| 
||         MV      .L1     A6,A10            ; |774| 
||         MV      .D2     B4,B10            ; |774| 

$C$RL221:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |779| 
;** --------------------------------------------------------------------------*

           CMPEQ   .L2     B10,1,B0          ; |781| 
||         MV      .S2X    A4,B4             ; |779| 
||         MV      .L1     A4,A12            ; |779| 
||         MV      .S1     A11,A4            ; |785| 

   [ B0]   B       .S1     $C$L240           ; |781| 
|| [ B0]   LDW     .D1T1   *+A11(56),A3      ; |784| 

   [!B0]   CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |794| 
|| [!B0]   LDW     .D1T1   *+A11(28),A4      ; |794| 

   [ B0]   CALL    .S1     _ZN13Interpolation17ChangeChannelModeEv ; |785| 
           MVK     .L2     6,B5              ; |783| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L240}       ; |781| 
;** --------------------------------------------------------------------------*
;** 794	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;** 500	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);  // [54]
;** 502	-----------------------    if ( (*this).m_cur_channel_mode == cur_mode ) goto g6;  // [54]
           ADDKPC  .S2     $C$RL222,B3,0     ; |794| 
$C$RL222:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |794| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A11(28),A4      ; |500| 

$C$RL223:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |500| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A11(32),A3      ; |502| 
           NOP             4
           CMPEQ   .L1     A3,A10,A0         ; |502| 

   [ A0]   B       .S2     $C$L237           ; |502| 
||         MV      .L1     A0,A2             ; |502| branch predicate copy
||         MV      .S1     A0,A1             ; guard predicate rewrite
|| [!A0]   LDW     .D1T1   *+A11(116),A0     ; |503| 

   [!A1]   ZERO    .L2     B4                ; |1425| 
|| [!A1]   MVK     .S1     40,A5             ; |507| 
|| [ A2]   CMPEQ   .L1     A10,4,A0          ; |509| 

   [!A1]   MVK     .L1     1,A3              ; |507| 
   [!A1]   MVK     .S1     140,A31           ; |1428| 
   [!A1]   MVK     .L1     2,A30             ; |1428| 
   [!A1]   MV      .L2X    A3,B31            ; |1425| 
           ; BRANCHCC OCCURS {$C$L237}       ; |502| 
;** --------------------------------------------------------------------------*
;** 503	-----------------------    if ( (*this).m_run_state ) goto g5;  // [54]
;* 1424	-----------------------    (*this).m_run_state = 1;  // [72]
;* 1425	-----------------------    (*this).m_process_state = 0;  // [72]
;* 1428	-----------------------    (*this).m_machining_state = 2u;  // [72]
;**	-----------------------g5:
;** 506	-----------------------    (*this).m_next_channel_mode = cur_mode;  // [54]
;** 507	-----------------------    (*this).m_is_channel_mode_changing = 1;  // [54]
   [!A0]   STB     .D1T1   A30,*+A11[A31]    ; |1428| 
   [!A0]   STW     .D1T2   B31,*+A11(116)    ; |1424| 

   [!A0]   STW     .D1T2   B4,*+A11(120)     ; |1425| 
||         CMPEQ   .L1     A10,4,A0          ; |509| 

           STB     .D1T1   A3,*+A11[A5]      ; |507| 
           STW     .D1T1   A10,*+A11(36)     ; |506| 
;** --------------------------------------------------------------------------*
$C$L237:    
;**	-----------------------g6:
;** 509	-----------------------    if ( cur_mode == 4 ) goto g8;  // [54]
;** 512	-----------------------    (*this).m_next_data_buffer = (*this).m_non_auto_buffer;  // [54]
;** 512	-----------------------    goto g9;  // [54]
;**	-----------------------g8:
;** 510	-----------------------    (*this).m_next_data_buffer = (*this).m_auto_buffer;  // [54]
;**	-----------------------g9:
;** 515	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);  // [54]
;** 798	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);
;** 800	-----------------------    if ( cur_mode == 4 ) goto g11;
   [ A0]   LDW     .D1T1   *+A11(52),A5      ; |510| 

           CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |515| 
|| [!A0]   LDW     .D1T1   *+A11(56),A5      ; |512| 

           MV      .L2X    A4,B4             ; |515| 
||         LDW     .D1T1   *+A11(28),A4      ; |515| 

           ADDKPC  .S2     $C$RL224,B3,1     ; |515| 
   [ A0]   STW     .D1T1   A5,*+A11(48)      ; |510| 
   [!A0]   STW     .D1T1   A5,*+A11(48)      ; |512| 
$C$RL224:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |515| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A11(28),A4      ; |798| 

$C$RL225:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |798| 
;** --------------------------------------------------------------------------*

           ZERO    .S1     A13               ; |430| 
||         CMPEQ   .L1     A10,4,A0          ; |800| 

   [ A0]   B       .S1     $C$L238           ; |800| 
|| [!A0]   LDW     .D1T1   *+A11(56),A10     ; |803| 

   [ A0]   LDW     .D1T1   *+A11(52),A10     ; |801| 
           ZERO    .L2     B10               ; |430| 
           MV      .L1     A4,A12            ; |798| 
   [!A0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |428| 

   [ A0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |428| 
|| [!A0]   LDW     .D1T1   *+A10(20),A4      ; |428| 

           ; BRANCHCC OCCURS {$C$L238}       ; |800| 
;** --------------------------------------------------------------------------*
;** 803	-----------------------    this = (*this).m_non_auto_buffer;
;** 428	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [99]
;** 430	-----------------------    (*this).m_buffer_cur_length = 0;  // [99]
;** 431	-----------------------    (*this).m_write_pointer = (*this).m_buffer;  // [99]
;** 432	-----------------------    (*this).m_read_pointer = (*this).m_buffer;  // [99]
;** 434	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [99]
;** 436	-----------------------    goto g12;  // [99]
           ADDKPC  .S2     $C$RL226,B3,3     ; |428| 
$C$RL226:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |428| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *A10,A5           ; |432| 
           LDW     .D1T1   *A10,A6           ; |431| 
           STW     .D1T1   A13,*+A10(8)      ; |430| 
           MV      .L2X    A4,B4             ; |434| 
           LDW     .D1T1   *+A10(20),A4      ; |434| 
           STW     .D1T1   A5,*+A10(16)      ; |432| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         STW     .D1T1   A6,*+A10(12)      ; |431| 

$C$RL227:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |434| 
;** --------------------------------------------------------------------------*

           BNOP    .S1     $C$L239,3         ; |436| 
||         LDW     .D1T2   *+A11(16),B4      ; |806| 

           CALL    .S1     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType ; |806| 
||         MVK     .S2     96,B5             ; |806| 

           LDBU    .D2T2   *+B4[B5],B4       ; |806| 
||         LDW     .D1T1   *+A11(104),A4     ; |806| 

           ; BRANCH OCCURS {$C$L239}         ; |436| 
;** --------------------------------------------------------------------------*
$C$L238:    
;**	-----------------------g11:
;** 801	-----------------------    this = (*this).m_auto_buffer;
;** 428	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [99]
;** 430	-----------------------    (*this).m_buffer_cur_length = 0;  // [99]
;** 431	-----------------------    (*this).m_write_pointer = (*this).m_buffer;  // [99]
;** 432	-----------------------    (*this).m_read_pointer = (*this).m_buffer;  // [99]
;** 434	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [99]
           LDW     .D1T1   *+A10(20),A4      ; |428| 
           ADDKPC  .S2     $C$RL228,B3,3     ; |428| 
$C$RL228:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |428| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *A10,A5           ; |432| 
           LDW     .D1T1   *A10,A6           ; |431| 
           STW     .D1T2   B10,*+A10(8)      ; |430| 
           MV      .L2X    A4,B4             ; |434| 
           LDW     .D1T1   *+A10(20),A4      ; |434| 
           STW     .D1T1   A5,*+A10(16)      ; |432| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         STW     .D1T1   A6,*+A10(12)      ; |431| 

$C$RL229:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |434| 
           LDW     .D1T2   *+A11(16),B4      ; |806| 
           MVK     .S2     96,B5             ; |806| 
           LDW     .D1T1   *+A11(104),A4     ; |806| 
           NOP             1
           CALL    .S1     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType ; |806| 
           LDBU    .D2T2   *+B4[B5],B4       ; |806| 
;** --------------------------------------------------------------------------*
$C$L239:    
;**	-----------------------g12:
;** 806	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_quick_move_interpolation, (int)(*(*this).m_channel_config).speed_profile_type);
;** 808	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_line_interpolation, (int)(*(*this).m_channel_config).speed_profile_type);
;** 810	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_circle_interpolation, (int)(*(*this).m_channel_config).speed_profile_type);
;** 810	-----------------------    goto g14;
           ADDKPC  .S2     $C$RL230,B3,3     ; |806| 
$C$RL230:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |806| 
;** --------------------------------------------------------------------------*
           LDW     .D1T2   *+A11(16),B4      ; |808| 
           MVK     .S2     96,B5             ; |808| 
           LDW     .D1T1   *+A11(108),A4     ; |808| 
           NOP             2

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDBU    .D2T2   *+B4[B5],B4       ; |808| 

$C$RL231:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |808| 
           LDW     .D1T1   *+A11(16),A3      ; |810| 
           MVK     .S1     96,A5             ; |810| 
           LDW     .D1T1   *+A11(112),A4     ; |810| 
           NOP             2

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDBU    .D1T2   *+A3[A5],B4       ; |810| 

$C$RL232:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |810| 
;** --------------------------------------------------------------------------*
           B       .S1     $C$L241           ; |810| 
           CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |814| 
           LDW     .D1T1   *+A11(28),A4      ; |814| 
           NOP             3
           ; BRANCH OCCURS {$C$L241}         ; |810| 
;** --------------------------------------------------------------------------*
$C$L240:    
;**	-----------------------g13:
;** 783	-----------------------    (*this).m_next_channel_mode = 6;
;** 784	-----------------------    (*this).m_next_data_buffer = (*this).m_non_auto_buffer;
;** 785	-----------------------    Interpolation::ChangeChannelMode(this);
;** 788	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_quick_move_interpolation, 0);
;** 789	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_line_interpolation, 0);
;** 790	-----------------------    InterpolationAlgorithm::SetSpeedProfileType((struct nterpolationAlgorithm *)(*this).m_circle_interpolation, 0);
           STW     .D1T1   A3,*+A11(48)      ; |784| 

           STW     .D1T2   B5,*+A11(36)      ; |783| 
||         ADDKPC  .S2     $C$RL233,B3,0     ; |785| 

$C$RL233:  ; CALL OCCURS {_ZN13Interpolation17ChangeChannelModeEv} {0}  ; |785| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDW     .D1T1   *+A11(104),A4     ; |788| 
||         ZERO    .L2     B4                ; |788| 

$C$RL234:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |788| 

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDW     .D1T1   *+A11(108),A4     ; |789| 
||         ZERO    .L2     B4                ; |789| 

$C$RL235:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |789| 

           CALLP   .S2     _ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType,B3
||         LDW     .D1T1   *+A11(112),A4     ; |790| 
||         ZERO    .L2     B4                ; |790| 

$C$RL236:  ; CALL OCCURS {_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType} {0}  ; |790| 
           CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |814| 
           LDW     .D1T1   *+A11(28),A4      ; |814| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L241:    
;**	-----------------------g14:
;** 814	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;**  	-----------------------    return;

           MV      .L2X    A12,B4            ; |814| 
||         ADDKPC  .S2     $C$RL237,B3,0     ; |814| 

$C$RL237:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |814| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *++SP(8),A10      ; |818| 

           LDDW    .D2T1   *++SP,A13:A12     ; |818| 
||         MV      .L2     B11,B3            ; |818| 

           LDDW    .D2T2   *++SP,B11:B10     ; |818| 
||         RET     .S2     B3                ; |818| 

           LDW     .D2T1   *++SP(8),A11      ; |818| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |818| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation14SetAxisMoveCmdE12NCCCmdNumbertbddb

;******************************************************************************
;* FUNCTION NAME: Interpolation::SetAxisMoveCmd(NCCCmdNumber, unsigned short, bool, double, double, bool)*
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
;*   Local Frame Size  : 0 Args + 48 Auto + 56 Save = 104 byte                *
;******************************************************************************
_ZN13Interpolation14SetAxisMoveCmdE12NCCCmdNumbertbddb:
;** --------------------------------------------------------------------------*
;** 580	-----------------------    if ( (move_cmd != 3009)&(ABS(distance) < 1.00000000000000002092e-8)&step_mode ) goto g54;

           STW     .D2T1   A11,*SP--(8)      ; |574| 
||         MVKL    .S1     0xe2308c3a,A3
||         MVK     .S2     3009,B7           ; |580| 
||         MV      .L2     B9,B5             ; |580| 

           STW     .D2T1   A10,*SP--(8)      ; |574| 
||         MVKH    .S1     0xe2308c3a,A3
||         MVK     .S2     256,B16           ; |583| 

           STDW    .D2T2   B13:B12,*SP--     ; |574| 

           STDW    .D2T2   B11:B10,*SP--     ; |574| 
||         MV      .L2X    A4,B10            ; |574| 
||         MV      .L1     A3,A4

           STDW    .D2T1   A15:A14,*SP--     ; |574| 
||         MV      .L1X    B4,A15            ; |574| 
||         MV      .L2     B8,B4             ; |580| 
||         MV      .S2X    A6,B11            ; |574| 

           STDW    .D2T1   A13:A12,*SP--     ; |574| 
||         ABSDP   .S2     B5:B4,B5:B4       ; |580| 

           STW     .D2T2   B3,*SP--(56)      ; |574| 

           STW     .D2T1   A3,*+SP(44)       ; |580| 
||         MVKL    .S1     0x3e45798e,A3

           MVKH    .S1     0x3e45798e,A3
||         STW     .D2T1   A10,*+SP(40)      ; |574| 

           MV      .S1     A3,A5
||         STW     .D2T1   A3,*+SP(48)       ; |580| 
||         CMPEQ   .L1X    A15,B7,A3         ; |580| 

           XOR     .L1     1,A3,A3           ; |580| 
||         STW     .D2T2   B6,*+SP(20)       ; |574| 

           CMPLTDP .S2X    B5:B4,A5:A4,B4    ; |580| 
||         STW     .D2T1   A8,*+SP(24)       ; |574| 

           MV      .L2     B6,B5             ; |574| 
||         MVK     .L1     1,A4              ; |589| 
||         STW     .D2T1   A9,*+SP(28)       ; |574| 

           AND     .L2X    B4,A3,B4          ; |580| 
||         MVK     .S1     3475,A3           ; |589| 
||         STW     .D2T2   B8,*+SP(32)       ; |574| 

           SHL     .S2X    A4,B11,B4         ; |589| 
||         SHL     .S1X    B11,2,A4          ; |583| 
||         LDW     .D2T1   *+SP(32),A6       ; |583| 
||         AND     .L2     B5,B4,B0          ; |580| 

   [ B0]   B       .S1     $C$L278           ; |580| 
||         STW     .D2T2   B4,*+SP(4)        ; |589| 

   [!B0]   LDW     .D2T2   *+B10(16),B4      ; |583| 
   [!B0]   LDW     .D2T2   *+SP(20),B30
           STW     .D2T2   B9,*+SP(36)       ; |574| 
           LDW     .D2T1   *+SP(36),A7       ; |583| 
           STW     .D2T1   A4,*+SP(8)        ; |589| 
           ; BRANCHCC OCCURS {$C$L278}       ; |580| 
;** --------------------------------------------------------------------------*
;** 583	-----------------------    K$24 = axis_index*4;
;** 583	-----------------------    U$26 = *((*this).m_channel_config+K$24+7896);
;** 583	-----------------------    resolution = (*U$26).axis_cmd_res;
;** 589	-----------------------    K$34 = 1<<axis_index;
;** 589	-----------------------    U$30 = (*this).m_realtime_state;
;** 589	-----------------------    if ( (*U$30).second_soft_limit_p_valid&K$34 ) goto g4;
;** 593	-----------------------    positive_soft_limit = (*U$26).positive_soft_limit1;
;** 593	-----------------------    goto g5;
;**	-----------------------g4:
;** 590	-----------------------    positive_soft_limit = (*U$26).positive_soft_limit2;
;**	-----------------------g5:
;** 596	-----------------------    if ( (*U$30).second_soft_limit_n_valid&K$34 ) goto g7;
;** 600	-----------------------    negative_soft_limit = (*U$26).negative_soft_limit1;
;** 600	-----------------------    goto g8;
;**	-----------------------g7:
;** 597	-----------------------    negative_soft_limit = (*U$26).negative_soft_limit2;
;**	-----------------------g8:
;** 605	-----------------------    K$50 = step_mode^1;
;** 605	-----------------------    K$48 = 3007;
;** 580	-----------------------    K$7 = 3009;
;** 605	-----------------------    if ( !((move_cmd != 3007)|((((distance > 0.0)&step_mode|K$50)&1) == 0)) ) goto g14;

           LDW     .D2T1   *+SP(20),A31      ; |605| 
||         ZERO    .L2     B7:B6             ; |605| 
||         MV      .S2X    A3,B17
||         ADD     .D1X    A4,B4,A3          ; |583| 
||         ZERO    .L1     A5:A4             ; |614| 
||         MVK     .S1     32,A8             ; |1270| 

           MV      .L2X    A6,B4             ; |583| 
||         LDW     .D2T2   *+B10(24),B8      ; |589| 
||         ADD     .S2     1,B17,B31
||         ADDK    .S1     7896,A3           ; |583| 

           LDW     .D2T2   *+SP(4),B29       ; |605| 
||         LDW     .D1T1   *A3,A3            ; |583| 
||         CMPLTU  .L2X    B11,A8,B1         ; |1270| 
||         MVK     .S1     0xbc1,A14         ; |580| 

           MV      .L2X    A7,B5             ; |583| 
||         CMPLTDP .S1     A7:A6,A5:A4,A5    ; |614| 
||         LDW     .D2T2   *+SP(4),B27       ; |597| 

           CMPGTDP .S2     B5:B4,B7:B6,B5    ; |605| 
||         XOR     .L1X    1,B30,A4          ; |605| 

           AND     .L1     A31,A5,A5         ; |614| 
||         MVK     .S1     3007,A6           ; |605| 

           AND     .L2     B30,B5,B5         ; |605| 
||         OR      .S1     A4,A5,A29         ; |614| 
||         LDBU    .D2T2   *+B8[B31],B9      ; |596| 
||         CMPEQ   .L1     A15,A6,A30        ; |605| 

           ADD     .L2X    1,A6,B28
||         LDBU    .D2T2   *+B8[B17],B30     ; |589| 

           OR      .L1X    A4,B5,A7          ; |605| 
||         CMPEQ   .L2X    A15,B28,B5        ; |614| 

           AND     .L1     1,A7,A5           ; |605| 
||         AND     .L2X    A29,B5,B2         ; |614| 

           CMPEQ   .L1     A5,0,A6           ; |605| 
||         XOR     .S1     1,A30,A5          ; |605| 
||         ADD     .L2X    B16,A3,B26        ; |583| 

           OR      .L1     A6,A5,A0          ; |605| 
||         AND     .L2     B29,B9,B0         ; |596| 
||         LDDW    .D2T2   *B26,B13:B12      ; |583| 

   [!A0]   B       .S2     $C$L246           ; |605| 
||         MV      .L1     A0,A2             ; guard predicate rewrite
||         MV      .S1     A0,A1             ; |605| branch predicate copy
|| [!B0]   LDDW    .D1T1   *+A3(224),A13:A12 ; |600| 

   [!A2]   MVK     .L2     0x1,B2            ; |1268| nullify predicate
|| [ A1]   MVK     .S2     0x1,B1            ; |606| nullify predicate
|| [ B0]   LDDW    .D1T1   *+A3(240),A13:A12 ; |597| 
||         AND     .D2     B27,B30,B0        ; |589| 

   [!B2]   B       .S1     $C$L250           ; |614| 
|| [!A1]   LDW     .D2T2   *+B10(20),B4      ; |606| 
|| [!A1]   MVK     .L2     1,B6              ; |1270| 
|| [!B0]   LDDW    .D1T1   *+A3(232),A11:A10 ; |593| 

   [!B1]   B       .S1     $C$L247           ; |1270| 
|| [!A1]   SUBAW   .D2     B11,8,B5          ; |1270| 
|| [ B0]   LDDW    .D1T1   *+A3(248),A11:A10 ; |590| 
||         ZERO    .L2     B0                ; |1268| 

   [ A0]   CMPLTU  .L2X    B11,A8,B0         ; |1270| 
|| [ A0]   ZERO    .L1     A0                ; |1268| 

   [!A1]   SHL     .S2     B6,B5,B6          ; |1270| 
           ; BRANCHCC OCCURS {$C$L246}       ; |605| 
;** --------------------------------------------------------------------------*
;** 614	-----------------------    if ( !((move_cmd == 3008)&((distance < 0.0)&step_mode|K$50)) ) goto g18;

   [ B2]   LDW     .D2T2   *+B10(20),B4      ; |615| 
|| [!B2]   MVK     .L2     0x1,B0            ; |615| nullify predicate
|| [ B2]   MVK     .S2     1,B6              ; |1270| 

   [!B0]   B       .S1     $C$L242           ; |1270| 
|| [ B2]   SUBAW   .D2     B11,8,B5          ; |1270| 

           ; BRANCHCC OCCURS {$C$L250}       ; |614| 
;** --------------------------------------------------------------------------*
;** 615	-----------------------    C$18 = (*this).m_channel_state;
;** 615	-----------------------    this = (struct ask_64 *)C$18+116;
;* 1268	-----------------------    mask = 0;  // [36]
;* 1270	-----------------------    if ( !((axis_index < 32) ? (*this).mask_l&K$34 : *((struct ask_64 *)C$18+120)&1<<axis_index-32) ) goto g12;  // [36]
           SHL     .S2     B6,B5,B6          ; |1270| 
           NOP             2
           ADDAW   .D2     B4,29,B5          ; |615| 
   [ B0]   LDW     .D2T2   *B5,B4            ; |1270| 
           ; BRANCHCC OCCURS {$C$L242}       ; |1270| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(4),B5
           SUBDP   .L1X    A13:A12,B13:B12,A7:A6 ; |619| 
           NOP             3
           AND     .L2     B5,B4,B0          ; |1270| 

   [!B0]   B       .S1     $C$L244           ; |1270| 
|| [!B0]   LDW     .D2T1   *+SP(48),A5       ; |619| 

   [ B0]   BNOP    .S1     $C$L243,4         ; |1270| 
|| [!B0]   LDW     .D2T1   *+SP(44),A4       ; |619| 

           ; BRANCHCC OCCURS {$C$L244}       ; |1270| 
;** --------------------------------------------------------------------------*

           SUBDP   .L1X    A13:A12,B13:B12,A7:A6 ; |619| 
||         LDW     .D2T1   *+SP(48),A5       ; |619| 
||         MVK     .S1     0x1,A0            ; |1271| 

           ; BRANCH OCCURS {$C$L243}         ; |1270| 
;** --------------------------------------------------------------------------*
$C$L242:    
           LDW     .D2T2   *+B4(120),B4      ; |1270| 
           SUBDP   .L1X    A13:A12,B13:B12,A7:A6 ; |619| 
           NOP             3
           AND     .L2     B6,B4,B0          ; |1270| 

   [!B0]   B       .S1     $C$L245           ; |1270| 
|| [ B0]   MVK     .D1     0x1,A0            ; |619| nullify predicate
|| [!B0]   LDW     .D2T1   *+SP(44),A4       ; |619| 
|| [ B0]   SUBDP   .L1X    A13:A12,B13:B12,A7:A6 ; |619| 

   [!B0]   LDW     .D2T1   *+SP(48),A5       ; |619| 

   [!A0]   BNOP    .S1     $C$L250,3         ; |1278| 
|| [ B0]   MVK     .L1     0x1,A0            ; |1271| 
|| [ B0]   LDW     .D2T1   *+SP(48),A5       ; |619| 

           ; BRANCHCC OCCURS {$C$L245}       ; |1270| 
;** --------------------------------------------------------------------------*
$C$L243:    
;* 1271	-----------------------    mask = 1;  // [36]
           LDW     .D2T1   *+SP(44),A4       ; |619| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L244:    
   [!A0]   BNOP    .S1     $C$L250,3         ; |1278| 
;** --------------------------------------------------------------------------*
$C$L245:    
;**	-----------------------g12:
;* 1278	-----------------------    if ( mask != 1 ) goto g18;  // [36]

           ADDAD   .D2     B8,B11,B4         ; |619| 
||         ADDDP   .L1     A5:A4,A7:A6,A5:A4 ; |619| 

           ADDK    .S2     512,B4            ; |619| 
           ; BRANCHCC OCCURS {$C$L250}       ; |1278| 
;** --------------------------------------------------------------------------*
;** 619	-----------------------    if ( *(((int)axis_index<<3)+(double *)U$30+512) > negative_soft_limit-resolution+1.00000000000000002092e-8 ) goto g18;
           LDDW    .D2T2   *B4,B5:B4         ; |619| 
           NOP             4
           CMPGTDP .S1X    B5:B4,A5:A4,A0    ; |619| 
           NOP             1

   [ A0]   B       .S1     $C$L251           ; |619| 
|| [ A0]   LDW     .D2T1   *+B10(28),A4      ; |626| 

   [ A0]   CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |626| 
|| [!A0]   LDW     .D2T2   *++SP(56),B3      ; |771| 

   [!A0]   LDDW    .D2T1   *++SP,A13:A12     ; |771| 
   [!A0]   LDDW    .D2T1   *++SP,A15:A14     ; |771| 
   [!A0]   LDDW    .D2T2   *++SP,B11:B10     ; |771| 
   [!A0]   LDDW    .D2T2   *++SP,B13:B12     ; |771| 
           ; BRANCHCC OCCURS {$C$L251}       ; |619| 
;** --------------------------------------------------------------------------*
;** 619	-----------------------    goto g54;

           LDW     .D2T1   *++SP(8),A10      ; |771| 
||         RET     .S2     B3                ; |771| 

           LDW     .D2T1   *++SP(8),A11      ; |771| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |771| 
;** --------------------------------------------------------------------------*
$C$L246:    
;**	-----------------------g14:
;** 606	-----------------------    C$17 = (*this).m_channel_state;
;** 606	-----------------------    this = (struct ask_64 *)C$17+116;
;* 1268	-----------------------    mask = 0;  // [36]
;* 1270	-----------------------    if ( !((axis_index < 32) ? (*this).mask_l&K$34 : *((struct ask_64 *)C$17+120)&1<<axis_index-32) ) goto g16;  // [36]
           NOP             1
           ADDAW   .D2     B4,29,B5          ; |606| 
   [ B1]   LDW     .D2T2   *B5,B4            ; |1270| 
           ; BRANCHCC OCCURS {$C$L247}       ; |1270| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(4),B5
           ADDDP   .L1X    B13:B12,A11:A10,A7:A6 ; |610| 
           NOP             3
           AND     .L2     B5,B4,B1          ; |1270| 

   [!B1]   B       .S1     $C$L249           ; |1270| 
|| [!B1]   LDW     .D2T1   *+SP(48),A5

   [ B1]   BNOP    .S1     $C$L248,4         ; |1270| 
|| [!B1]   LDW     .D2T1   *+SP(44),A4       ; |610| 

           ; BRANCHCC OCCURS {$C$L249}       ; |1270| 
;** --------------------------------------------------------------------------*

           ADDDP   .L1X    B13:B12,A11:A10,A7:A6 ; |610| 
||         LDW     .D2T1   *+SP(44),A4       ; |610| 
||         MVK     .L2     0x1,B0            ; |1271| 

           ; BRANCH OCCURS {$C$L248}         ; |1270| 
;** --------------------------------------------------------------------------*
$C$L247:    
           LDW     .D2T2   *+B4(120),B4      ; |1270| 
           ADDDP   .L1X    B13:B12,A11:A10,A7:A6 ; |610| 
           NOP             3
           AND     .L2     B6,B4,B1          ; |1270| 

   [!B1]   B       .S1     $C$L249           ; |1270| 
|| [!B1]   LDW     .D2T1   *+SP(48),A5

   [!B1]   LDW     .D2T1   *+SP(44),A4       ; |610| 
   [ B1]   ADDDP   .L1X    B13:B12,A11:A10,A7:A6 ; |610| 
   [ B1]   MVK     .L2     0x1,B0            ; |1271| 
   [ B1]   LDW     .D2T1   *+SP(44),A4       ; |610| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L249}       ; |1270| 
;** --------------------------------------------------------------------------*
$C$L248:    
;* 1271	-----------------------    mask = 1;  // [36]
           LDW     .D2T1   *+SP(48),A5
           NOP             5
;** --------------------------------------------------------------------------*
$C$L249:    
;**	-----------------------g16:
;* 1278	-----------------------    if ( mask != 1 ) goto g18;  // [36]
;** 610	-----------------------    if ( *(((int)axis_index<<3)+(double *)U$30+512) >= positive_soft_limit+resolution-1.00000000000000002092e-8 ) goto g54;
           SUBDP   .L1     A7:A6,A5:A4,A5:A4 ; |610| 
           ADDAD   .D2     B8,B11,B4         ; |610| 
           ADDK    .S2     512,B4            ; |610| 
   [ B0]   LDDW    .D2T2   *B4,B5:B4         ; |610| 
   [!B0]   MVK     .L2     0x1,B1            ; |610| 
           NOP             3
   [ B0]   CMPLTDP .S2X    B5:B4,A5:A4,B1    ; |610| 
           NOP             1
   [!B1]   BNOP    .S1     $C$L278,5         ; |610| 
           ; BRANCHCC OCCURS {$C$L278}       ; |610| 
;** --------------------------------------------------------------------------*
$C$L250:    
           CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |626| 
           LDW     .D2T1   *+B10(28),A4      ; |626| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L251:    
;**	-----------------------g18:
;** 626	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);
;** 630	-----------------------    if ( move_cmd == K$7 ) goto g50;
           ADDKPC  .S2     $C$RL238,B3,0     ; |626| 
$C$RL238:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |626| 
;** --------------------------------------------------------------------------*

           CMPEQ   .L1     A15,A14,A0        ; |630| 
||         LDW     .D2T1   *+SP(8),A3
||         MVK     .S2     17052,B4          ; |654| 

   [ A0]   B       .S1     $C$L275           ; |630| 
|| [!A0]   LDW     .D2T2   *+B10(96),B6      ; |653| 
||         SHL     .S2     B11,3,B5          ; |656| 
||         ADD     .L2     B4,B10,B7         ; |654| 

           STW     .D2T2   B5,*+SP(12)       ; |656| 
           ZERO    .L2     B5:B4             ; |658| 
   [ A0]   LDW     .D2T2   *+B10(96),B4      ; |632| 
           STW     .D2T1   A4,*+SP(16)       ; |626| 

           ADD     .L1X    A3,B6,A3          ; |653| 
|| [ A0]   LDW     .D2T1   *+SP(8),A3

           ; BRANCHCC OCCURS {$C$L275}       ; |630| 
;** --------------------------------------------------------------------------*
;** 653	-----------------------    (**((*this).m_dynamic_info+K$24)).run_state = C$15 = 0;
;** 654	-----------------------    *((*this).m_axis_manual_move_mod+axis_index) = step_mode;
;** 656	-----------------------    K$95 = (int)axis_index<<3;
;** 656	-----------------------    *(((int)axis_index<<3)+(*this).m_geometry) = *((*this).m_data+K$95+1440);
;** 658	-----------------------    (**((*this).m_dynamic_info+K$24)).current_l = 0.0;
;** 661	-----------------------    this = (*this).m_data_buffer;
;** 428	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gateHwi);  // [99]
;** 430	-----------------------    (*this).m_buffer_cur_length = C$15;  // [99]
;** 431	-----------------------    (*this).m_write_pointer = (*this).m_buffer;  // [99]
;** 432	-----------------------    (*this).m_read_pointer = (*this).m_buffer;  // [99]
;** 434	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gateHwi, (int)gate_key);  // [99]
;** 662	-----------------------    CircularBuffer<LineData>::WriteData((*this).m_data_buffer, (*(*this).m_geometry).end_data, 1);
;** 665	-----------------------    C$16 = (*this).m_geometry;
;** 665	-----------------------    (*C$16).end_data = CircularBuffer<LineData>::ReadDataPtr((*this).m_data_buffer, 0);
;** 666	-----------------------    data = (*C$16).end_data;
;** 667	-----------------------    U$148 = data;
;** 667	-----------------------    (*U$148).over_flag = C$15;
;** 670	-----------------------    if ( step_mode != 1 ) goto g36;
           LDW     .D1T1   *A3,A3            ; |653| 
           LDW     .D2T2   *+SP(20),B31
           ZERO    .L1     A4                ; |653| 
           NOP             2
           ADDK    .S1     372,A3            ; |653| 
           STW     .D1T1   A4,*A3            ; |653| 
           LDW     .D2T2   *B7,B6            ; |654| 
           NOP             4
           STB     .D2T2   B31,*+B6[B11]     ; |654| 
           LDW     .D2T2   *+B10(88),B6      ; |656| 
           LDW     .D2T2   *+SP(12),B7
           LDW     .D2T2   *+B10(92),B8      ; |656| 
           NOP             3
           ADD     .L2     B7,B6,B6          ; |656| 
           ADDK    .S2     1440,B6           ; |656| 
           LDDW    .D2T2   *B6,B7:B6         ; |656| 
           NOP             4
           STDW    .D2T2   B7:B6,*+B8[B11]   ; |656| 
           LDW     .D2T1   *+SP(8),A3
           LDW     .D2T2   *+B10(96),B6      ; |658| 
           LDW     .D2T1   *+B10(44),A14     ; |661| 
           NOP             3
           ADD     .L1X    A3,B6,A3          ; |658| 
           LDW     .D1T1   *A3,A3            ; |658| 
           NOP             4
           ADDK    .S1     328,A3            ; |658| 

           STDW    .D1T2   B5:B4,*A3         ; |658| 
||         MV      .L2X    A14,B4            ; |658| 
||         CALL    .S1     ti_sysbios_gates_GateHwi_enter__E ; |428| 

           LDW     .D2T1   *+B4(20),A4       ; |428| 
           ADDKPC  .S2     $C$RL239,B3,3     ; |428| 
$C$RL239:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |428| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A14,B4            ; |428| 
           LDW     .D2T2   *B4,B4            ; |432| 
           MV      .L2X    A14,B5            ; |432| 
           LDW     .D2T2   *B5,B5            ; |431| 
           MV      .L2X    A14,B7            ; |653| 
           ZERO    .L1     A3                ; |653| 
           STW     .D2T2   B4,*+B7(16)       ; |432| 

           MV      .L2X    A14,B31           ; |432| 
||         STW     .D2T1   A3,*+B7(8)        ; |430| 

           MV      .L2X    A14,B6            ; |434| 
||         STW     .D2T2   B5,*+B31(12)      ; |431| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         MV      .L2X    A4,B4             ; |434| 
||         LDW     .D2T1   *+B6(20),A4       ; |434| 

$C$RL240:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |434| 
           LDW     .D2T1   *+B10(92),A3      ; |662| 
           LDW     .D2T1   *+B10(44),A4      ; |662| 
           MVK     .L1     0x1,A6            ; |662| 
           NOP             2
           ADDK    .S1     512,A3            ; |662| 

           CALLP   .S2     _ZN14CircularBufferI8LineDataE9WriteDataEPKS0_i,B3
||         LDW     .D1T2   *A3,B4            ; |662| 

$C$RL241:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE9WriteDataEPKS0_i} {0}  ; |662| 
           LDW     .D2T1   *+B10(44),A4      ; |665| 

           CALLP   .S2     _ZN14CircularBufferI8LineDataE11ReadDataPtrEs,B3
||         LDW     .D2T1   *+B10(92),A14     ; |665| 
||         ZERO    .L2     B4                ; |665| 

$C$RL242:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE11ReadDataPtrEs} {0}  ; |665| 
;** --------------------------------------------------------------------------*
           MVK     .S1     512,A3            ; |665| 

           ADD     .L1     A3,A14,A3         ; |665| 
||         MVK     .S1     512,A5            ; |666| 

           STW     .D1T1   A4,*A3            ; |665| 
||         ADD     .L1     A5,A14,A31        ; |666| 

           LDW     .D1T1   *A31,A14          ; |666| 
           MVK     .S1     268,A30           ; |667| 
           ZERO    .L1     A4                ; |653| 
           MVK     .S2     0x20,B4
           MVK     .S1     0xbbf,A5          ; |605| 
           STB     .D1T1   A4,*+A14[A30]     ; |667| 
           LDW     .D2T2   *+SP(20),B0       ; |667| 
           CMPEQ   .L1     A15,A5,A0         ; |672| 
           NOP             3

   [!B0]   BNOP    .S1     $C$L262,5         ; |670| 
|| [ B0]   LDW     .D2T1   *+SP(40),A0       ; |692| 

           ; BRANCHCC OCCURS {$C$L262}       ; |670| 
;** --------------------------------------------------------------------------*
;** 692	-----------------------    if ( is_accumulative != 1 ) goto g24;

   [!A0]   B       .S1     $C$L252           ; |692| 
|| [ A0]   LDW     .D2T1   *+SP(8),A3

   [ A0]   LDW     .D2T2   *+B10(96),B4      ; |692| 
           MVK     .S1     336,A4            ; |692| 
           NOP             2
           ADD     .L2X    4,A4,B5
           ; BRANCHCC OCCURS {$C$L252}       ; |692| 
;** --------------------------------------------------------------------------*
;** 692	-----------------------    C$14 = *((*this).m_dynamic_info+K$24);
;** 692	-----------------------    if ( (*C$14).current_step >= (*C$14).step_number ) goto g24;
           ADD     .L1X    A3,B4,A3          ; |692| 
           LDW     .D1T1   *A3,A3            ; |692| 
           MVK     .S2     17056,B31         ; |697| 
           NOP             3

           ADD     .L2X    B5,A3,B4          ; |692| 
||         ADD     .L1     A4,A3,A3          ; |692| 

           LDW     .D2T2   *B4,B4            ; |692| 
||         LDW     .D1T1   *A3,A3            ; |692| 

           LDW     .D2T2   *+SP(12),B5
           NOP             3

           CMPLTU  .L2X    B4,A3,B0          ; |692| 
||         ADD     .S2     B31,B10,B4        ; |697| 

   [ B0]   LDW     .D2T2   *B4,B4            ; |697| 
|| [!B0]   B       .S1     $C$L253           ; |692| 
||         MV      .L2     B0,B1             ; guard predicate rewrite
||         MV      .S2     B0,B2             ; |692| branch predicate copy

   [ B1]   LDW     .D2T1   *+SP(12),A3
   [!B2]   LDW     .D2T2   *+B10(88),B4      ; |707| 
           NOP             2
   [ B0]   LDB     .D2T2   *+B4[B11],B0      ; |697| 
           ; BRANCHCC OCCURS {$C$L253}       ; |692| 
;** --------------------------------------------------------------------------*
;** 697	-----------------------    if ( !*((*this).m_last_step_mode+axis_index) ) goto g50;
           MVK     .S2     0x20,B16
           ADD     .L1     A14,A3,A3         ; |699| 
           ADDK    .S1     1440,A3           ; |699| 
           NOP             1

   [!B0]   B       .S1     $C$L275           ; |697| 
|| [!B0]   LDW     .D2T2   *+B10(96),B4      ; |632| 

   [ B0]   BNOP    .S1     $C$L254,4         ; |700| 
|| [ B0]   LDDW    .D1T2   *A3,B5:B4         ; |699| 
|| [!B0]   LDW     .D2T1   *+SP(8),A3

           ; BRANCHCC OCCURS {$C$L275}       ; |697| 
;** --------------------------------------------------------------------------*
;** 699	-----------------------    position = *(K$95+(double *)U$148+1440);
;**  	-----------------------    K$72 = 32;
;** 700	-----------------------    goto g25;

           LDW     .D2T2   *+SP(12),B8       ; |605| 
||         CMPEQ   .L1     A15,A5,A2         ; |709| 
||         ZERO    .S1     A1                ; |1268| 
||         ZERO    .D1     A0                ; |1268| 
||         CMPLT   .L2     B11,B16,B0        ; |1270| 

           ; BRANCH OCCURS {$C$L254}         ; |700| 
;** --------------------------------------------------------------------------*
$C$L252:    
           LDW     .D2T2   *+SP(12),B5
           LDW     .D2T2   *+B10(88),B4      ; |707| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L253:    
;**	-----------------------g24:
;** 707	-----------------------    position = *((*this).m_data+K$95+1440);
;**  	-----------------------    K$72 = 32;

           MVK     .S2     0x20,B16
||         ZERO    .S1     A1                ; |1268| 
||         ZERO    .D1     A0                ; |1268| 
||         CMPEQ   .L1     A15,A5,A2         ; |709| 
||         LDW     .D2T2   *+SP(12),B8       ; |605| 

           ADD     .S2     B5,B4,B4          ; |707| 
||         CMPLT   .L2     B11,B16,B0        ; |1270| 

           ADDK    .S2     1440,B4           ; |707| 
           LDDW    .D2T2   *B4,B5:B4         ; |707| 
;** --------------------------------------------------------------------------*
$C$L254:    
;**	-----------------------g25:
;** 709	-----------------------    if ( move_cmd == K$48 ) goto g31;
           LDW     .D2T1   *+SP(12),A3       ; |719| 
           LDW     .D2T2   *+SP(32),B6
           LDW     .D2T2   *+SP(36),B7
           LDW     .D2T2   *+SP(36),B9       ; |1270| 

           ADD     .L2X    B8,A14,B17        ; |719| 
||         LDW     .D2T2   *+SP(32),B8       ; |1270| 
|| [ A2]   B       .S1     $C$L258           ; |709| 

           ADD     .L1     A3,A14,A4         ; |710| 
||         MVK     .S1     1440,A3           ; |710| 

           CMPLT   .L2     B11,B16,B1        ; |1270| 

           SUBDP   .L2     B5:B4,B7:B6,B7:B6 ; |719| 
||         MV      .S2X    A3,B18            ; |710| 
||         ADD     .L1     A3,A4,A3          ; |710| 

           ADD     .S2     B18,B17,B16       ; |719| 
           ADDDP   .L2     B9:B8,B5:B4,B9:B8 ; |710| 
           ; BRANCHCC OCCURS {$C$L258}       ; |709| 
;** --------------------------------------------------------------------------*
;** 719	-----------------------    U$177 = (double *)data+K$95+1440;
;** 719	-----------------------    *U$177 = position-distance;
;** 721	-----------------------    C$13 = (*this).m_channel_state;
;** 721	-----------------------    this = (struct ask_64 *)C$13+116;
;* 1268	-----------------------    mask = 0;  // [36]
;* 1270	-----------------------    if ( !((axis_index < K$72) ? (*this).mask_l&K$34 : *((struct ask_64 *)C$13+120)&1<<axis_index-32) ) goto g28;  // [36]

   [!B0]   BNOP    .S1     $C$L255,2         ; |1270| 
||         LDW     .D2T2   *+B10(20),B4      ; |721| 

           SUBAW   .D2     B11,8,B5          ; |1270| 

           STDW    .D2T2   B7:B6,*B16        ; |719| 
||         MVK     .S2     1,B6              ; |1270| 

           SHL     .S2     B6,B5,B6          ; |1270| 
||         ADDAW   .D2     B4,29,B5          ; |721| 

           ; BRANCHCC OCCURS {$C$L255}       ; |1270| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(4),B4
           LDW     .D2T2   *B5,B5            ; |1270| 
           NOP             4
           AND     .L2     B4,B5,B0          ; |1270| 
   [!B0]   B       .S1     $C$L257           ; |1270| 
   [ B0]   B       .S1     $C$L256           ; |1270| 
   [!B0]   SUBDP   .L2X    A13:A12,B13:B12,B5:B4 ; |721| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L257}       ; |1270| 
;** --------------------------------------------------------------------------*
           NOP             1
           ; BRANCH OCCURS {$C$L256}         ; |1270| 
;** --------------------------------------------------------------------------*
$C$L255:    
           LDW     .D2T2   *+B4(120),B4      ; |1270| 
           NOP             4

           AND     .L2     B6,B4,B0          ; |1270| 
||         SUBDP   .S2X    A13:A12,B13:B12,B5:B4 ; |721| 

   [!B0]   BNOP    .S1     $C$L257,5         ; |1270| 
           ; BRANCHCC OCCURS {$C$L257}       ; |1270| 
;** --------------------------------------------------------------------------*
$C$L256:    
;* 1271	-----------------------    mask = 1;  // [36]
           SUBDP   .L2X    A13:A12,B13:B12,B5:B4 ; |721| 
           MVK     .L1     0x1,A0            ; |1271| 
;** --------------------------------------------------------------------------*
$C$L257:    
;**	-----------------------g28:
;* 1278	-----------------------    if ( mask != 1 ) goto g47;  // [36]
;** 721	-----------------------    C$12 = negative_soft_limit-resolution;
;** 721	-----------------------    if ( *U$177 >= C$12 ) goto g47;
;** 724	-----------------------    *U$177 = C$12;
;** 724	-----------------------    goto g47;

   [!A0]   MV      .L2X    A1,B0             ; |721| 
||         MVK     .S2     1360,B30          ; |733| 
|| [ A0]   LDDW    .D2T2   *B16,B7:B6        ; |721| 

           ZERO    .L1     A7
           BNOP    .S1     $C$L272,2         ; |724| 
   [ A0]   CMPLTDP .S2     B7:B6,B5:B4,B0    ; |721| 
           SET     .S1     A7,0x14,0x1d,A7

   [ B0]   STDW    .D2T2   B5:B4,*B16        ; |724| 
||         MVK     .S2     17056,B4          ; |729| 

           ; BRANCH OCCURS {$C$L272}         ; |724| 
;** --------------------------------------------------------------------------*
$C$L258:    
;**	-----------------------g31:
;** 710	-----------------------    U$177 = (double *)data+K$95+1440;
;** 710	-----------------------    *U$177 = position+distance;
;** 712	-----------------------    C$11 = (*this).m_channel_state;
;** 712	-----------------------    this = (struct ask_64 *)C$11+116;
;* 1268	-----------------------    mask = 0;  // [36]
;* 1270	-----------------------    if ( !((axis_index < K$72) ? (*this).mask_l&K$34 : *((struct ask_64 *)C$11+120)&1<<axis_index-32) ) goto g33;  // [36]
           LDW     .D2T2   *+B10(20),B4      ; |712| 

   [!B1]   BNOP    .S1     $C$L259,2         ; |1270| 
||         SUBAW   .D2     B11,8,B5          ; |1270| 

           MVK     .S2     1,B6              ; |1270| 

           SHL     .S2     B6,B5,B6          ; |1270| 
||         ADDAW   .D2     B4,29,B5          ; |712| 

           STDW    .D1T2   B9:B8,*A3         ; |710| 
           ; BRANCHCC OCCURS {$C$L259}       ; |1270| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *B5,B5            ; |1270| 
           LDW     .D2T2   *+SP(4),B4
           NOP             4
           AND     .L2     B4,B5,B0          ; |1270| 

   [!B0]   B       .S1     $C$L261           ; |1270| 
|| [!B0]   ADDDP   .L1X    B13:B12,A11:A10,A5:A4 ; |712| 

   [ B0]   BNOP    .S1     $C$L260,4         ; |1270| 
           ; BRANCHCC OCCURS {$C$L261}       ; |1270| 
;** --------------------------------------------------------------------------*

           ADDDP   .L1X    B13:B12,A11:A10,A5:A4 ; |712| 
||         MVK     .S1     0x1,A1            ; |1271| 

           ; BRANCH OCCURS {$C$L260}         ; |1270| 
;** --------------------------------------------------------------------------*
$C$L259:    
           LDW     .D2T2   *+B4(120),B4      ; |1270| 
           ADDDP   .L1X    B13:B12,A11:A10,A5:A4 ; |712| 
           NOP             3
           AND     .L2     B6,B4,B0          ; |1270| 

   [!B0]   BNOP    .S1     $C$L261,5         ; |1270| 
|| [ B0]   MVK     .D1     0x1,A1            ; |1271| 
|| [ B0]   ADDDP   .L1X    B13:B12,A11:A10,A5:A4 ; |712| 

           ; BRANCHCC OCCURS {$C$L261}       ; |1270| 
;** --------------------------------------------------------------------------*
$C$L260:    
;* 1271	-----------------------    mask = 1;  // [36]
           NOP             1
;** --------------------------------------------------------------------------*
$C$L261:    
;**	-----------------------g33:
;* 1278	-----------------------    if ( mask != 1 ) goto g47;  // [36]
;** 712	-----------------------    C$10 = positive_soft_limit+resolution;
;** 712	-----------------------    if ( *U$177 <= C$10 ) goto g47;
;** 715	-----------------------    *U$177 = C$10;
;** 715	-----------------------    goto g47;

   [ A1]   LDDW    .D1T1   *A3,A7:A6         ; |712| 
||         MVK     .S2     17056,B4          ; |729| 
||         LDW     .D2T2   *+SP(20),B5
|| [!A1]   ZERO    .S1     A0

           ADD     .L2     B4,B10,B4         ; |729| 
||         MVK     .S2     1360,B30          ; |733| 

           BNOP    .S1     $C$L274,1         ; |715| 
||         LDW     .D2T2   *B4,B4            ; |729| 
||         MVK     .S2     1368,B6           ; |735| 

           ADD     .L2X    B6,A14,B29        ; |735| 
   [ A1]   CMPGTDP .S1     A7:A6,A5:A4,A0    ; |712| 

           ZERO    .L1     A7
||         ZERO    .D1     A6                ; |737| 

   [ A0]   STDW    .D1T1   A5:A4,*A3         ; |715| 
||         STB     .D2T2   B5,*+B4[B11]      ; |729| 
||         SET     .S1     A7,0x14,0x1d,A7

           ; BRANCH OCCURS {$C$L274}         ; |715| 
;** --------------------------------------------------------------------------*
$C$L262:    
;**	-----------------------g36:
;**  	-----------------------    K$72 = 32;
;** 672	-----------------------    if ( move_cmd == K$48 ) goto g42;

   [ A0]   B       .S1     $C$L267           ; |672| 
||         CMPLT   .L2     B11,B4,B1         ; |1270| 
|| [!A0]   MVK     .S2     1,B6              ; |1270| 
|| [!A0]   SUBAW   .D2     B11,8,B5          ; |1270| 
||         MV      .L1     A4,A5             ; |1270| 

   [ A0]   MVK     .S2     0x1,B1            ; |681| nullify predicate
||         CMPLT   .L2     B11,B4,B0         ; |1270| 
|| [!A0]   LDW     .D2T2   *+B10(20),B4      ; |681| 

   [!B1]   B       .S1     $C$L263           ; |1270| 
|| [!A0]   MVK     .L2     0x1,B0            ; |673| nullify predicate
|| [ A0]   LDW     .D2T2   *+B10(20),B4      ; |673| 
|| [ A0]   MVK     .S2     1,B6              ; |1270| 

   [!B0]   BNOP    .S1     $C$L268,1         ; |1270| 
|| [ A0]   SUBAW   .D2     B11,8,B5          ; |1270| 
|| [!A0]   SHL     .S2     B6,B5,B6          ; |1270| 

   [ A0]   SHL     .S2     B6,B5,B6          ; |1270| 
           ; BRANCHCC OCCURS {$C$L267}       ; |672| 
;** --------------------------------------------------------------------------*
;** 681	-----------------------    C$9 = (*this).m_channel_state;
;** 681	-----------------------    this = (struct ask_64 *)C$9+116;
;* 1268	-----------------------    mask = 0;  // [36]
;* 1270	-----------------------    if ( !((axis_index < K$72) ? (*this).mask_l&K$34 : *((struct ask_64 *)C$9+120)&1<<axis_index-32) ) goto g39;  // [36]
           ADDAW   .D2     B4,29,B5          ; |681| 
   [ B1]   LDW     .D2T2   *B5,B5            ; |1270| 
           ; BRANCHCC OCCURS {$C$L263}       ; |1270| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(4),B4
           SUBDP   .L1X    A13:A12,B13:B12,A7:A6 ; |683| 
           LDW     .D2T1   *+SP(12),A3       ; |686| 
           NOP             2

           AND     .L2     B4,B5,B0          ; |1270| 
||         LDW     .D2T2   *+SP(12),B4       ; |1278| 

   [!B0]   B       .S1     $C$L265           ; |1270| 
   [ B0]   BNOP    .S1     $C$L264,4         ; |1270| 
           ; BRANCHCC OCCURS {$C$L265}       ; |1270| 
;** --------------------------------------------------------------------------*

           LDW     .D2T2   *+SP(12),B4       ; |1278| 
||         MVK     .L1     0x1,A4            ; |1271| 

           ; BRANCH OCCURS {$C$L264}         ; |1270| 
;** --------------------------------------------------------------------------*
$C$L263:    
           LDW     .D2T2   *+B4(120),B4      ; |1270| 
           NOP             4

           AND     .L2     B6,B4,B0          ; |1270| 
||         LDW     .D2T2   *+SP(12),B4       ; |1278| 

   [!B0]   BNOP    .S2     $C$L266,3         ; |1270| 
|| [!B0]   LDW     .D2T1   *+SP(12),A3       ; |686| 
|| [!B0]   SUBDP   .L1X    A13:A12,B13:B12,A7:A6 ; |683| 
||         MV      .L2     B0,B1             ; guard predicate rewrite
|| [ B0]   MVK     .S1     0x1,A4            ; |1271| 
|| [!B0]   ZERO    .D1     A5

   [!B1]   B       .S1     $C$L273           ; |685| 
||         ADD     .L2X    A14,B4,B4         ; |683| 
|| [ B0]   LDW     .D2T2   *+SP(12),B4       ; |1278| 

   [!B1]   ADD     .S1     A14,A3,A3         ; |686| 
           ; BRANCHCC OCCURS {$C$L266}       ; |1270| 
;** --------------------------------------------------------------------------*
$C$L264:    
;* 1271	-----------------------    mask = 1;  // [36]
           LDW     .D2T1   *+SP(12),A3       ; |686| 
           SUBDP   .L1X    A13:A12,B13:B12,A7:A6 ; |683| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L265:    

           BNOP    .S1     $C$L273,1         ; |685| 
||         ADD     .L2X    A14,B4,B4         ; |683| 
||         ZERO    .L1     A5
||         ADD     .D1     A14,A3,A3         ; |686| 

;** --------------------------------------------------------------------------*
$C$L266:    
;**	-----------------------g39:
;* 1278	-----------------------    if ( mask == 1 ) goto g41;  // [36]
;** 686	-----------------------    *(K$95+(double *)data+1440) = -100.0;
;** 686	-----------------------    goto g47;
;**	-----------------------g41:
;** 683	-----------------------    *(K$95+(double *)data+1440) = negative_soft_limit-resolution;
;** 685	-----------------------    goto g47;

           ADDK    .S2     1440,B4           ; |683| 
||         CMPEQ   .L2X    A4,1,B0           ; |1278| 
||         LDW     .D2T2   *+SP(20),B5
||         MVKH    .S1     0xc0590000,A5
||         ZERO    .D1     A4                ; |686| 

   [ B0]   STDW    .D2T1   A7:A6,*B4         ; |683| 
||         MVK     .S2     17056,B4          ; |729| 
||         ADDK    .S1     1440,A3           ; |686| 
||         ZERO    .L1     A7

           ADD     .L2     B4,B10,B4         ; |729| 
|| [!B0]   STDW    .D1T1   A5:A4,*A3         ; |686| 
||         MVK     .S2     1360,B30          ; |733| 
||         SET     .S1     A7,0x14,0x1d,A7

           LDW     .D2T2   *B4,B4            ; |729| 
||         MVK     .S2     1368,B6           ; |735| 

           ; BRANCH OCCURS {$C$L273}         ; |685| 
;** --------------------------------------------------------------------------*
$C$L267:    
;**	-----------------------g42:
;** 673	-----------------------    C$8 = (*this).m_channel_state;
;** 673	-----------------------    this = (struct ask_64 *)C$8+116;
;* 1268	-----------------------    mask = 0;  // [36]
;* 1270	-----------------------    if ( !((axis_index < K$72) ? (*this).mask_l&K$34 : *((struct ask_64 *)C$8+120)&1<<axis_index-32) ) goto g44;  // [36]
           NOP             1
           ADDAW   .D2     B4,29,B5          ; |673| 
   [ B0]   LDW     .D2T2   *B5,B5            ; |1270| 
           ; BRANCHCC OCCURS {$C$L268}       ; |1270| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(4),B4
           LDW     .D2T1   *+SP(12),A3       ; |678| 
           ADDDP   .L1X    B13:B12,A11:A10,A7:A6 ; |675| 
           NOP             2

           AND     .L2     B4,B5,B0          ; |1270| 
||         LDW     .D2T2   *+SP(12),B4       ; |1278| 

   [!B0]   B       .S1     $C$L271           ; |1270| 
||         MV      .L2     B0,B1             ; guard predicate rewrite
|| [!B0]   ZERO    .L1     A9
||         ADD     .D1     A14,A3,A3         ; |678| 

   [ B0]   BNOP    .S2     $C$L269,1         ; |1270| 
|| [!B1]   MVKH    .S1     0x40590000,A9
|| [!B0]   CMPEQ   .L2X    A5,1,B0           ; |1278| 
|| [!B1]   MV      .D1     A4,A8             ; |675| 

   [!B1]   ADDK    .S1     1440,A3           ; |678| 
           ADD     .L2X    A14,B4,B4         ; |675| 
   [!B1]   ADDK    .S2     1440,B4           ; |675| 
           ; BRANCHCC OCCURS {$C$L271}       ; |1270| 
;** --------------------------------------------------------------------------*

           LDW     .D2T2   *+SP(12),B4       ; |1278| 
||         ZERO    .L1     A9
||         ADDDP   .S1X    B13:B12,A11:A10,A7:A6 ; |675| 
||         MVK     .D1     0x1,A5            ; |1271| 

           ; BRANCH OCCURS {$C$L269}         ; |1270| 
;** --------------------------------------------------------------------------*
$C$L268:    
           LDW     .D2T2   *+B4(120),B4      ; |1270| 
           NOP             4

           AND     .L2     B6,B4,B0          ; |1270| 
||         LDW     .D2T2   *+SP(12),B4       ; |1278| 

   [ B0]   MVK     .L1     0x1,A5            ; |1271| 
|| [ B0]   ZERO    .S1     A9
|| [!B0]   ZERO    .D1     A9
|| [!B0]   B       .S2     $C$L270           ; |1270| 
|| [!B0]   LDW     .D2T1   *+SP(12),A3       ; |678| 

   [ B0]   ADDDP   .L1X    B13:B12,A11:A10,A7:A6 ; |675| 
           MV      .L2     B0,B1             ; guard predicate rewrite
   [!B0]   ADDDP   .L1X    B13:B12,A11:A10,A7:A6 ; |675| 

           ADD     .L2X    A14,B4,B4         ; |675| 
|| [ B0]   LDW     .D2T2   *+SP(12),B4       ; |1278| 

   [!B1]   ADD     .L1     A14,A3,A3         ; |678| 
           ; BRANCHCC OCCURS {$C$L270}       ; |1270| 
;** --------------------------------------------------------------------------*
$C$L269:    
;* 1271	-----------------------    mask = 1;  // [36]
           LDW     .D2T1   *+SP(12),A3       ; |678| 
           NOP             3
           ADD     .L2X    A14,B4,B4         ; |675| 
           ADD     .L1     A14,A3,A3         ; |678| 
;** --------------------------------------------------------------------------*
$C$L270:    
           MVKH    .S1     0x40590000,A9
           ADDK    .S2     1440,B4           ; |675| 
           CMPEQ   .L2X    A5,1,B0           ; |1278| 

           ADDK    .S1     1440,A3           ; |678| 
||         MV      .D1     A4,A8             ; |675| 

;** --------------------------------------------------------------------------*
$C$L271:    
;**	-----------------------g44:
;* 1278	-----------------------    if ( mask == 1 ) goto g46;  // [36]
;** 678	-----------------------    *(K$95+(double *)data+1440) = 100.0;
;** 678	-----------------------    goto g47;
;**	-----------------------g46:
;** 675	-----------------------    *(K$95+(double *)data+1440) = positive_soft_limit+resolution;

   [ B0]   STDW    .D2T1   A7:A6,*B4         ; |675| 
||         ZERO    .L1     A7
||         MVK     .S2     1360,B30          ; |733| 

           SET     .S1     A7,0x14,0x1d,A7
|| [!B0]   STDW    .D1T1   A9:A8,*A3         ; |678| 
||         MVK     .S2     17056,B4          ; |729| 

;** --------------------------------------------------------------------------*
$C$L272:    

           ADD     .L2     B4,B10,B4         ; |729| 
||         LDW     .D2T2   *+SP(20),B5
||         MVK     .S2     1368,B6           ; |735| 

           LDW     .D2T2   *B4,B4            ; |729| 
;** --------------------------------------------------------------------------*
$C$L273:    
           ZERO    .L1     A6                ; |737| 
           ADD     .L2X    B6,A14,B29        ; |735| 
           NOP             2
           STB     .D2T2   B5,*+B4[B11]      ; |729| 
;** --------------------------------------------------------------------------*
$C$L274:    
;**	-----------------------g47:
;** 729	-----------------------    *((*this).m_last_step_mode+axis_index) = step_mode;
;** 732	-----------------------    if ( (**((*this).m_channel_config+K$24+7896)).axis_type == 2 ) goto g49;
;** 733	-----------------------    *((double *)data+1360) = speed;
;**	-----------------------g49:
;** 735	-----------------------    C$7 = (double *)data;
;** 735	-----------------------    C$7[171] = speed;
;** 736	-----------------------    *(K$95+(double (*)[64])data+2488) = speed;
;** 737	-----------------------    (*data).interpolation_stop_flag = 0u;
;** 738	-----------------------    C$7[310] = 1.0;
;** 739	-----------------------    (*data).interpolation_flag = 1u;
;** 740	-----------------------    (*data).has_tool_compensated = 0;
;** 750	-----------------------    C$6 = (struct xisMovData *)C$7+1432;
;** 750	-----------------------    (*C$6).mask = (*C$6).mask|1uLL<<axis_index;
;** 753	-----------------------    (*this).m_run_state = C$5 = 0;
;** 754	-----------------------    (*this).m_process_state = C$5;
;** 755	-----------------------    (*this).m_need_get_new_data = 1;
;**  	-----------------------    U$120 = *((*this).m_dynamic_info+K$24);
;** 755	-----------------------    goto g53;
           LDW     .D2T2   *+B10(16),B4      ; |732| 
           LDW     .D2T1   *+SP(8),A3
           LDW     .D2T2   *+SP(12),B31
           MVK     .S1     271,A31           ; |737| 
           MVK     .S1     2480,A30          ; |738| 
           MVK     .S1     270,A29           ; |739| 
           ADD     .L1X    A3,B4,A3          ; |732| 
           ADDK    .S1     7896,A3           ; |732| 
           LDW     .D1T1   *A3,A3            ; |732| 
           ADD     .L2X    B30,A14,B4        ; |733| 
           ADD     .L2X    A14,B31,B5        ; |736| 
           ADDK    .S2     2488,B5           ; |736| 
           MVK     .L2     1,B28             ; |739| 
           LDBU    .D1T1   *A3,A3            ; |732| 
           NOP             4
           CMPEQ   .L1     A3,2,A0           ; |732| 
   [!A0]   LDW     .D2T1   *+SP(28),A5       ; |732| 
   [!A0]   LDW     .D2T1   *+SP(24),A4       ; |732| 
           ADD     .L1     A30,A14,A3        ; |738| 
           NOP             3
   [!A0]   STDW    .D2T1   A5:A4,*B4         ; |733| 
           LDW     .D2T1   *+SP(28),A5       ; |733| 
           LDW     .D2T1   *+SP(24),A4       ; |733| 
           MV      .L2     B11,B4            ; |750| 
           NOP             3

           CALL    .S1     __c6xabi_llshl    ; |750| 
||         STDW    .D2T1   A5:A4,*B29        ; |735| 

           MVK     .L1     0x1,A4            ; |750| 
||         STDW    .D2T1   A5:A4,*B5         ; |736| 
||         ZERO    .S1     A5                ; |737| 

           STB     .D1T1   A5,*+A14[A31]     ; |737| 

           STDW    .D1T1   A7:A6,*A3         ; |738| 
||         MV      .L2X    A5,B5             ; |740| 
||         MVK     .S1     3776,A3           ; |740| 

           STB     .D1T2   B5,*+A14[A3]      ; |740| 

           STB     .D1T2   B28,*+A14[A29]    ; |739| 
||         ADDKPC  .S2     $C$RL243,B3,0     ; |750| 

$C$RL243:  ; CALL OCCURS {__c6xabi_llshl} {0}  ; |750| 
;** --------------------------------------------------------------------------*

           MVK     .S1     1432,A3           ; |750| 
||         LDW     .D2T1   *+SP(8),A31       ; |753| 
||         ZERO    .L2     B4                ; |753| 
||         MVK     .S2     124,B30           ; |755| 

           ADD     .L1     A3,A14,A6         ; |750| 
||         LDW     .D2T2   *+B10(96),B5
||         MVK     .L2     1,B31             ; |755| 

           LDDW    .D1T1   *A6,A9:A8         ; |750| 
||         STB     .D2T2   B31,*+B10[B30]    ; |755| 

           BNOP    .S1     $C$L277,1         ; |755| 
||         STW     .D2T2   B4,*+B10(116)     ; |753| 

           STW     .D2T2   B4,*+B10(120)     ; |754| 
           ADD     .L1X    A31,B5,A3

           OR      .L1     A4,A8,A4          ; |750| 
||         OR      .S1     A5,A9,A5          ; |750| 
||         LDW     .D1T1   *A3,A3

           STDW    .D1T1   A5:A4,*A6         ; |750| 
           ; BRANCH OCCURS {$C$L277}         ; |755| 
;** --------------------------------------------------------------------------*
$C$L275:    
;**	-----------------------g50:
;**  	-----------------------    U$148 = (*(*this).m_geometry).end_data;
;** 632	-----------------------    U$120 = *((*this).m_dynamic_info+K$24);
;** 632	-----------------------    if ( ABS((*U$120).current_f) >= 1.00000000000000002092e-8 ) goto g52;

           LDW     .D2T2   *+B10(92),B31
||         MVK     .S1     320,A31           ; |632| 
||         ZERO    .L2     B9:B8             ; |633| 
||         MVK     .S2     372,B7            ; |646| 
||         ZERO    .L1     A8                ; |644| 
||         MVK     .D1     1,A16             ; |637| 

           LDW     .D2T1   *+SP(44),A2       ; |632| 
||         MVK     .S1     340,A7            ; |645| 
||         MVK     .S2     1432,B6           ; |640| 
||         ZERO    .L1     A15               ; |644| 

           MVK     .S1     328,A6            ; |641| 
||         MV      .L1X    B7,A9             ; |632| 
||         MVK     .S2     271,B17           ; |636| 

           LDW     .D2T1   *+SP(16),A14      ; |632| 
           ADD     .L1X    A3,B4,A3          ; |632| 
           LDW     .D1T1   *A3,A10           ; |632| 
           ADDK    .S2     512,B31
           LDW     .D2T2   *B31,B12
           ADD     .L2X    -4,A7,B16
           MV      .L2     B11,B4            ; |640| 

           ADD     .L1     A31,A10,A3        ; |632| 
||         ADD     .L2X    B7,A10,B13        ; |646| 
||         ADD     .S1     A7,A10,A11        ; |645| 
||         ADD     .D1     A6,A10,A13        ; |641| 

           LDDW    .D1T1   *A3,A5:A4         ; |632| 
           ADDAD   .D2     B12,B11,B5        ; |633| 
           LDW     .D2T1   *+SP(48),A3
           ADD     .L1X    B16,A10,A12       ; |644| 
           ADD     .L2     B6,B12,B11        ; |640| 
           ABSDP   .S1     A5:A4,A5:A4       ; |632| 
           ADDK    .S2     2488,B5           ; |633| 
           CMPLTDP .S1     A5:A4,A3:A2,A0    ; |632| 
           MVK     .L1     0x1,A4            ; |640| 

   [!A0]   B       .S1     $C$L276           ; |632| 
|| [!A0]   STDW    .D2T2   B9:B8,*B5         ; |633| 

   [ A0]   CALL    .S1     __c6xabi_llshl    ; |640| 
|| [!A0]   LDW     .D2T2   *+B10(96),B6      ; |637| 

   [!A0]   LDW     .D2T2   *+B10(92),B5      ; |634| 
   [!A0]   LDW     .D2T1   *+SP(8),A3        ; |634| 
   [!A0]   LDW     .D2T2   *+B10(92),B4      ; |636| 
           ZERO    .L1     A5                ; |640| 
           ; BRANCHCC OCCURS {$C$L276}       ; |632| 
;** --------------------------------------------------------------------------*
;** 640	-----------------------    C$4 = (struct xisMovData *)U$148+1432;
;** 640	-----------------------    (*C$4).mask = (*C$4).mask&~(1uLL<<axis_index);
;** 641	-----------------------    (*U$120).le = (*U$120).current_l;
;** 643	-----------------------    (*U$148).interpolation_stop_flag = 0u;
;** 644	-----------------------    (*U$120).step_number = C$3 = 0u;
;** 645	-----------------------    (*U$120).current_step = C$3;
;** 646	-----------------------    (*U$120).run_state = 2;
;** 648	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;** 650	-----------------------    goto g54;
           ADDKPC  .S2     $C$RL244,B3,0     ; |640| 
$C$RL244:  ; CALL OCCURS {__c6xabi_llshl} {0}  ; |640| 
;** --------------------------------------------------------------------------*
           LDDW    .D2T2   *B11,B5:B4        ; |640| 
           NOT     .L1     A5,A3             ; |640| 
           NOT     .L2X    A4,B6             ; |640| 
           STW     .D1T1   A15,*A11          ; |645| 
           STW     .D1T1   A15,*A12          ; |644| 

           AND     .L2     B6,B4,B4          ; |640| 
||         AND     .S2X    A3,B5,B5          ; |640| 

           STDW    .D2T2   B5:B4,*B11        ; |640| 
           LDDW    .D1T1   *A13,A5:A4        ; |641| 
           MVK     .S1     271,A3            ; |643| 
           MVK     .L2     2,B4              ; |646| 
           ZERO    .L2     B6                ; |643| 

           STW     .D2T2   B4,*B13           ; |646| 
||         MV      .L2X    A3,B4

           STDW    .D1T1   A5:A4,*+A10(32)   ; |641| 
||         STB     .D2T2   B6,*+B12[B4]      ; |643| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D2T1   *+B10(28),A4      ; |648| 
||         MV      .L2X    A14,B4            ; |648| 

$C$RL245:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |648| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(56),B3      ; |771| 
           LDDW    .D2T1   *++SP,A13:A12     ; |771| 
           LDDW    .D2T1   *++SP,A15:A14     ; |771| 
           LDDW    .D2T2   *++SP,B11:B10     ; |771| 
           LDDW    .D2T2   *++SP,B13:B12     ; |771| 

           LDW     .D2T1   *++SP(8),A10      ; |771| 
||         RET     .S2     B3                ; |771| 

           LDW     .D2T1   *++SP(8),A11      ; |771| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |771| 
;** --------------------------------------------------------------------------*
$C$L276:    
;**	-----------------------g52:
;** 633	-----------------------    *(((int)axis_index<<3)+U$148+2488) = C$2 = 0.0;
;** 634	-----------------------    *((*(*this).m_geometry).end_data+1368) = C$2;
;** 635	-----------------------    (*this).m_process_state = C$1 = 0;
;** 636	-----------------------    (*(*(*this).m_geometry).end_data).interpolation_stop_flag = C$1;
;** 637	-----------------------    U$120 = *((*this).m_dynamic_info+K$24);
;** 637	-----------------------    (*U$120).run_state = 1;
           NOP             1
           ADDK    .S2     512,B5            ; |634| 

           ADD     .L1X    A3,B6,A3          ; |637| 
||         LDW     .D2T2   *B5,B5            ; |634| 

           ADDK    .S2     512,B4            ; |636| 
||         LDW     .D1T1   *A3,A3            ; |637| 

           STW     .D2T1   A8,*+B10(120)     ; |635| 
           LDW     .D2T2   *B4,B4            ; |636| 
           NOP             1
           ADDK    .S2     1368,B5           ; |634| 

           ADD     .L1     A9,A3,A4          ; |637| 
||         STDW    .D2T2   B9:B8,*B5         ; |634| 

           STW     .D1T1   A16,*A4           ; |637| 
           STB     .D2T1   A8,*+B4[B17]      ; |636| 
;** --------------------------------------------------------------------------*
$C$L277:    
;**	-----------------------g53:
;** 762	-----------------------    (*U$120).is_enabled = 1;
;** 764	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;**	-----------------------g54:
;**  	-----------------------    return;
           MVK     .S1     368,A5            ; |762| 
           MVK     .L1     1,A4              ; |762| 
           LDW     .D2T2   *+SP(16),B4       ; |762| 

           STB     .D1T1   A4,*+A3[A5]       ; |762| 
||         CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |764| 

           LDW     .D2T1   *+B10(28),A4      ; |764| 
           ADDKPC  .S2     $C$RL246,B3,3     ; |764| 
$C$RL246:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |764| 
;** --------------------------------------------------------------------------*
$C$L278:    
           LDW     .D2T2   *++SP(56),B3      ; |771| 
           LDDW    .D2T1   *++SP,A13:A12     ; |771| 
           LDDW    .D2T1   *++SP,A15:A14     ; |771| 
           LDDW    .D2T2   *++SP,B11:B10     ; |771| 
           LDDW    .D2T2   *++SP,B13:B12     ; |771| 

           LDW     .D2T1   *++SP(8),A10      ; |771| 
||         RET     .S2     B3                ; |771| 

           LDW     .D2T1   *++SP(8),A11      ; |771| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |771| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation12SetHeartbeatEb

;******************************************************************************
;* FUNCTION NAME: Interpolation::SetHeartbeat(bool)                           *
;*                                                                            *
;*   Regs Modified     : A0,A3,A5,B4                                          *
;*   Regs Used         : A0,A3,A4,A5,B3,B4                                    *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN13Interpolation12SetHeartbeatEb:
;** --------------------------------------------------------------------------*
;* 1506	-----------------------    if ( system_ready != 1 ) goto g3;
;* 1507	-----------------------    (*this).m_system_ready = 1;
;**	-----------------------g3:
;* 1509	-----------------------    (*this).m_heartbeat = 1u;
;**  	-----------------------    return;
           RETNOP  .S2     B3,2              ; |1510| 

           MVK     .L1     1,A3              ; |1509| 
||         MVK     .S1     135,A5            ; |1509| 

           STB     .D1T1   A3,*+A4[A5]       ; |1509| 
||         MVK     .S1     142,A3            ; |1507| 
||         MV      .L1X    B4,A0             ; |1505| 
||         MVK     .L2     1,B4              ; |1507| 

   [ A0]   STB     .D1T2   B4,*+A4[A3]       ; |1507| 
           ; BRANCH OCCURS {B3}              ; |1510| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation11SetFeedRateE9RatioTyped

;******************************************************************************
;* FUNCTION NAME: Interpolation::SetFeedRate(RatioType, double)               *
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
_ZN13Interpolation11SetFeedRateE9RatioTyped:
;** --------------------------------------------------------------------------*
;** 434	-----------------------    feed_rate = feed_rate*0.0100000000000000002082;
;** 437	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);
;** 439	-----------------------    switch ( type ) {case 1: goto g23;, case 2: goto g14;, case 3: goto g2;, DEFAULT goto g26};
           STW     .D2T2   B10,*SP--(8)      ; |430| 
           STDW    .D2T1   A13:A12,*SP--     ; |430| 

           STDW    .D2T1   A11:A10,*SP--     ; |430| 
||         MV      .L1     A4,A10            ; |430| 
||         MV      .S1     A6,A12            ; |430| 

           MV      .L1X    B3,A11            ; |430| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(28),A4      ; |437| 
||         MV      .S1     A7,A13            ; |430| 
||         MV      .L2     B4,B10            ; |430| 

$C$RL247:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |437| 
;** --------------------------------------------------------------------------*

           CMPEQ   .L2     B10,1,B0          ; |439| 
||         MVKL    .S2     0x47ae147b,B6
||         MV      .D2     B10,B4            ; |430| 
||         MV      .L1     A4,A9             ; |437| 

   [ B0]   B       .S1     $C$L289           ; |439| 
||         MV      .L2     B0,B1             ; guard predicate rewrite
||         CMPEQ   .L1X    B10,2,A0          ; |439| 
||         MVKL    .S2     0x3f847ae1,B7

   [ B1]   ZERO    .L1     A0                ; |439| nullify predicate
||         MVKH    .S2     0x47ae147b,B6

   [ A0]   BNOP    .S1     $C$L284,1         ; |439| 
||         MVKH    .S2     0x3f847ae1,B7

           MPYDP   .M1X    B7:B6,A13:A12,A7:A6 ; |434| 
   [!B0]   CMPEQ   .L2     B4,3,B0           ; |439| 
           ; BRANCHCC OCCURS {$C$L289}       ; |439| 
;** --------------------------------------------------------------------------*
   [ A0]   MVK     .L2     0x1,B0            ; nullify predicate
   [!B0]   B       .S1     $C$L290           ; |439| 
           ; BRANCHCC OCCURS {$C$L284}       ; |439| 
;** --------------------------------------------------------------------------*
   [ B0]   LDW     .D1T1   *+A10(32),A3      ; |450| 
           NOP             4
           ; BRANCHCC OCCURS {$C$L290}       ; |439| 
;** --------------------------------------------------------------------------*
;**	-----------------------g2:
;** 450	-----------------------    if ( (*this).m_cur_channel_mode != 4 ) goto g5;
;** 450	-----------------------    if ( (*(*this).m_data).interpolation_type ) goto g5;
;** 450	-----------------------    S$1 = 1;
;** 450	-----------------------    goto g6;
;**	-----------------------g5:
;** 450	-----------------------    S$1 = 0;
;**	-----------------------g6:
;** 450	-----------------------    if ( !(((*this).m_G00_rate != feed_rate)&((*this).m_process_state != 2)&S$1) ) goto g13;
           CMPEQ   .L1     A3,4,A0           ; |450| 
   [ A0]   LDW     .D1T1   *+A10(88),A3      ; |450| 
           LDDW    .D1T1   *+A10(72),A5:A4   ; |450| 
           LDW     .D1T1   *+A10(120),A8     ; |450| 
           NOP             2
   [ A0]   ADDK    .S1     274,A3            ; |450| 

   [ A0]   LDHU    .D1T1   *A3,A1            ; |450| 
||         CMPEQDP .S1     A5:A4,A7:A6,A4    ; |450| 
||         MVK     .L1     0x1,A3            ; |450| 

   [!A0]   MV      .L1     A3,A1             ; |450| 
           CMPEQ   .L1     A8,2,A31          ; |450| 
           OR      .L1     A4,A31,A4
           XOR     .L1     1,A4,A4
   [ A1]   ZERO    .L1     A3                ; |450| 
           AND     .L1     A3,A4,A0          ; |450| 

   [!A0]   BNOP    .S1     $C$L283,4         ; |450| 
|| [ A0]   LDW     .D1T1   *+A10(16),A3      ; |455| 

   [ A0]   LDBU    .D1T1   *+A3(2),A0        ; |455| 
           ; BRANCHCC OCCURS {$C$L283}       ; |450| 
;** --------------------------------------------------------------------------*
;** 455	-----------------------    if ( !(C$7 = (*(*this).m_channel_config).axis_number) ) goto g12;
           NOP             4

   [!A0]   BNOP    .S1     $C$L282,5         ; |455| 
|| [ A0]   LDW     .D1T1   *+A10(96),A4
|| [ A0]   SUB     .L1     A0,1,A3

           ; BRANCHCC OCCURS {$C$L282}       ; |455| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$39 = (*this).m_dynamic_info;
;**  	-----------------------    L$1 = (int)C$7;
;**  	-----------------------    #pragma MUST_ITERATE(1, 255, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g9:
;** 456	-----------------------    C$6 = *U$39++;
;** 456	-----------------------    if ( (*C$6).run_state == 2 ) goto g11;
;** 457	-----------------------    (*C$6).is_enabled = 1;
;**	-----------------------g11:
;** 455	-----------------------    if ( L$1 = L$1-1 ) goto g9;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 455
;*      Loop opening brace source line   : 455
;*      Loop closing brace source line   : 459
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 255                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 13
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     0        0     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 13 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L279:    ; PIPED LOOP PROLOG

           SPLOOPD 13      ;26               ; (P) 
||         MVC     .S2X    A3,ILC

;** --------------------------------------------------------------------------*
$C$L280:    ; PIPED LOOP KERNEL
           LDW     .D1T1   *A4++,A5          ; |456| (P) <0,0>  ^ 
           NOP             1

           SPMASK          S2
||         MVK     .S2     368,B6            ; |457| 

           NOP             1

           SPMASK          L1
||         ADD     .L1X    4,B6,A3

           MV      .L2X    A5,B4             ; |456| (P) <0,5> Define a twin register
||         ADD     .L1     A3,A5,A5          ; |456| (P) <0,5>  ^ 

           LDW     .D1T1   *A5,A5            ; |456| (P) <0,6>  ^ 
           NOP             4

           SPMASK          L2
||         MVK     .L2     1,B5              ; |457| 
||         CMPEQ   .L1     A5,2,A0           ; |456| (P) <0,11>  ^ 

   [!A0]   STB     .D2T2   B5,*+B4[B6]       ; |457| (P) <0,12>  ^ 
           SPKERNEL 0,1
;** --------------------------------------------------------------------------*
$C$L281:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L282:    
;**	-----------------------g12:
;** 460	-----------------------    (*this).m_process_state = 0;
           ZERO    .L1     A3                ; |460| 
           STW     .D1T1   A3,*+A10(120)     ; |460| 
;** --------------------------------------------------------------------------*
$C$L283:    
;**	-----------------------g13:
;** 462	-----------------------    (*this).m_G00_rate = feed_rate;
;** 464	-----------------------    goto g26;

           BNOP    .S1     $C$L290,5         ; |464| 
||         STDW    .D1T1   A7:A6,*+A10(72)   ; |462| 

           ; BRANCH OCCURS {$C$L290}         ; |464| 
;** --------------------------------------------------------------------------*
$C$L284:    
;**	-----------------------g14:
;** 466	-----------------------    C$5 = (*this).m_cur_channel_mode;
;** 466	-----------------------    if ( !(((C$5 == 2)|(C$5 == 6))&((*this).m_manual_rate != feed_rate)&((*this).m_process_state != 2)) ) goto g22;
           LDW     .D1T1   *+A10(32),A3      ; |466| 
           LDDW    .D1T1   *+A10(80),A5:A4   ; |466| 
           LDW     .D1T1   *+A10(120),A8     ; |466| 
           NOP             2

           CMPEQ   .L2X    A3,6,B4           ; |466| 
||         CMPEQ   .L1     A3,2,A3           ; |466| 

           CMPEQDP .S1     A5:A4,A7:A6,A4    ; |466| 

           OR      .D1X    B4,A3,A3          ; |466| 
||         CMPEQ   .L1     A8,2,A31          ; |466| 

           XOR     .L1     1,A4,A4           ; |466| 
||         XOR     .S1     1,A31,A30         ; |466| 

           AND     .L1     A4,A3,A3          ; |466| 
           AND     .L1     A30,A3,A0         ; |466| 

   [!A0]   BNOP    .S1     $C$L288,4         ; |466| 
|| [ A0]   LDW     .D1T1   *+A10(20),A3      ; |470| 

   [ A0]   LDBU    .D1T1   *+A3(17),A0       ; |470| 
           ; BRANCHCC OCCURS {$C$L288}       ; |466| 
;** --------------------------------------------------------------------------*
;** 470	-----------------------    C$4 = (*this).m_channel_state;
;** 470	-----------------------    if ( (*C$4).is_changing_tool ) goto g22;
           MVK     .S1     137,A4            ; |470| 
           NOP             3

   [ A0]   BNOP    .S1     $C$L288,2         ; |470| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
|| [!A0]   LDBU    .D1T1   *+A3[A4],A0       ; |470| 

   [!A1]   ZERO    .L2     B4                ; |472| 
   [ A1]   ZERO    .L1     A0                ; |472| nullify predicate
   [ A0]   B       .S1     $C$L288           ; |470| 
           ; BRANCHCC OCCURS {$C$L288}       ; |470| 
;** --------------------------------------------------------------------------*
;** 470	-----------------------    if ( (*C$4).servo_cutter_zero ) goto g22;
   [!A0]   LDW     .D1T1   *+A10(16),A3      ; |474| 
           NOP             4
           ; BRANCHCC OCCURS {$C$L288}       ; |470| 
;** --------------------------------------------------------------------------*
;** 472	-----------------------    (*this).m_process_state = 0;
;** 474	-----------------------    if ( !(C$3 = (*(*this).m_channel_config).axis_number) ) goto g22;
           LDBU    .D1T1   *+A3(2),A0        ; |474| 
           STW     .D1T2   B4,*+A10(120)     ; |472| 
           NOP             3

   [!A0]   BNOP    .S1     $C$L288,5         ; |474| 
|| [ A0]   LDW     .D1T1   *+A10(96),A4
|| [ A0]   SUB     .L1     A0,1,A3

           ; BRANCHCC OCCURS {$C$L288}       ; |474| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    U$72 = (*this).m_dynamic_info;
;**  	-----------------------    L$2 = (int)C$3;
;**  	-----------------------    #pragma MUST_ITERATE(1, 255, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g19:
;** 475	-----------------------    C$2 = *U$72++;
;** 475	-----------------------    if ( (*C$2).run_state == 2 ) goto g21;
;** 476	-----------------------    (*C$2).is_enabled = 1;
;**	-----------------------g21:
;** 474	-----------------------    if ( L$2 = L$2-1 ) goto g19;
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : ../src/interpolation/interpolation.cpp
;*      Loop source line                 : 474
;*      Loop opening brace source line   : 474
;*      Loop closing brace source line   : 478
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 255                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 13
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     0        0     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     2*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 13 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*----------------------------------------------------------------------------*
$C$L285:    ; PIPED LOOP PROLOG

           SPLOOPD 13      ;26               ; (P) 
||         MVC     .S2X    A3,ILC

;** --------------------------------------------------------------------------*
$C$L286:    ; PIPED LOOP KERNEL
           LDW     .D1T1   *A4++,A5          ; |475| (P) <0,0>  ^ 
           NOP             1

           SPMASK          S2
||         MVK     .S2     368,B6            ; |476| 

           NOP             1

           SPMASK          L1
||         ADD     .L1X    4,B6,A3

           MV      .L2X    A5,B4             ; |475| (P) <0,5> Define a twin register
||         ADD     .L1     A3,A5,A5          ; |475| (P) <0,5>  ^ 

           LDW     .D1T1   *A5,A5            ; |475| (P) <0,6>  ^ 
           NOP             4

           SPMASK          L2
||         MVK     .L2     1,B5              ; |476| 
||         CMPEQ   .L1     A5,2,A0           ; |475| (P) <0,11>  ^ 

   [!A0]   STB     .D2T2   B5,*+B4[B6]       ; |476| (P) <0,12>  ^ 
           SPKERNEL 0,1
;** --------------------------------------------------------------------------*
$C$L287:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L288:    
;**	-----------------------g22:
;** 482	-----------------------    (*this).m_manual_rate = feed_rate;
;** 484	-----------------------    goto g26;
           B       .S1     $C$L291           ; |484| 
           CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |489| 
           LDW     .D1T1   *+A10(28),A4      ; |489| 
           STDW    .D1T1   A7:A6,*+A10(80)   ; |482| 
           NOP             2
           ; BRANCH OCCURS {$C$L291}         ; |484| 
;** --------------------------------------------------------------------------*
$C$L289:    
;**	-----------------------g23:
;** 442	-----------------------    if ( !(((*this).m_cur_channel_mode == 4)&((*this).m_auto_rate != feed_rate)&((*this).m_process_state != 2)) ) goto g25;
;** 444	-----------------------    (*this).m_process_state = 0;
;**	-----------------------g25:
;** 446	-----------------------    (*this).m_auto_rate = feed_rate;
           LDW     .D1T1   *+A10(32),A3      ; |442| 
           LDW     .D1T1   *+A10(120),A8     ; |442| 
           LDDW    .D1T1   *+A10(64),A5:A4   ; |442| 
           ZERO    .L1     A29               ; |444| 
           NOP             2
           CMPEQ   .L1     A3,4,A31          ; |442| 
           CMPEQ   .L1     A8,2,A30          ; |442| 

           CMPEQDP .S1     A5:A4,A7:A6,A5    ; |442| 
||         STDW    .D1T1   A7:A6,*+A10(64)   ; |446| 

           XOR     .L1     1,A30,A4          ; |442| 
           XOR     .L1     1,A5,A5           ; |442| 
           AND     .L1     A5,A31,A3         ; |442| 
           AND     .L1     A4,A3,A0          ; |442| 
   [ A0]   STW     .D1T1   A29,*+A10(120)    ; |444| 
;** --------------------------------------------------------------------------*
$C$L290:    
           CALL    .S1     ti_sysbios_gates_GateHwi_leave__E ; |489| 
           LDW     .D1T1   *+A10(28),A4      ; |489| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L291:    
;**	-----------------------g26:
;** 489	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;**  	-----------------------    return;

           MV      .L2X    A9,B4             ; |489| 
||         ADDKPC  .S2     $C$RL248,B3,0     ; |489| 

$C$RL248:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |489| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A11,B3            ; |493| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |493| 

           LDDW    .D2T1   *++SP,A13:A12     ; |493| 
||         RET     .S2     B3                ; |493| 

           LDW     .D2T2   *++SP(8),B10      ; |493| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |493| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation11InterpolateEv

;******************************************************************************
;* FUNCTION NAME: Interpolation::Interpolate()                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18,A19,   *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B13,DP,SP,A16,A17,A18,A19,*
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************
_ZN13Interpolation11InterpolateEv:
;** --------------------------------------------------------------------------*
;** 857	-----------------------    v$1 = Interpolation::m_count+1u;
;** 857	-----------------------    Interpolation::m_count = v$1;
;** 858	-----------------------    g_count = g_count+1.0;
;** 860	-----------------------    if ( !(((*this).m_system_ready != 0)&((*this).m_machining_state != 0)) ) goto g7;

           STW     .D2T2   B13,*SP--(8)      ; |850| 
||         MVK     .S1     140,A3            ; |860| 
||         ZERO    .L2     B7
||         ZERO    .S2     B6                ; |858| 

           STDW    .D2T2   B11:B10,*SP--     ; |850| 

           STDW    .D2T1   A11:A10,*SP--     ; |850| 
||         MV      .L1     A4,A10            ; |850| 
||         MVK     .S1     142,A4            ; |860| 

           LDW     .D2T2   *+DP(g_count+4),B5 ; |858| 
||         LDBU    .D1T1   *+A10[A3],A3      ; |860| 

           LDW     .D2T2   *+DP(g_count),B4  ; |858| 
           LDB     .D1T1   *+A10[A4],A4      ; |860| 
           MV      .L2     B3,B13            ; |850| 
           SET     .S2     B7,0x14,0x1d,B7
           CMPEQ   .L1     A3,0,A3           ; |860| 
           ADDDP   .L2     B7:B6,B5:B4,B5:B4 ; |858| 
           CMPEQ   .L1     A4,0,A4           ; |860| 
           LDW     .D2T2   *+DP(_ZN13Interpolation7m_countE),B6 ; |857| 
           OR      .L1     A4,A3,A0
   [ A0]   B       .S1     $C$L293           ; |860| 
   [ A0]   CALL    .S1     _ZN13Interpolation19ManageInterpolationEv ; |875| 
           ADDAD   .D1     A10,17,A3         ; |860| 

           STW     .D2T2   B4,*+DP(g_count)  ; |858| 
||         ADD     .L2     1,B6,B4           ; |857| 

           STW     .D2T2   B4,*+DP(_ZN13Interpolation7m_countE) ; |857| 

   [!A0]   CALL    .S1     __c6xabi_remu     ; |860| 
||         MV      .L1X    B4,A4             ; |860| 
||         STW     .D2T2   B5,*+DP(g_count+4) ; |858| 

           ; BRANCHCC OCCURS {$C$L293}       ; |860| 
;** --------------------------------------------------------------------------*
;** 860	-----------------------    if ( v$1%(*this).m_heartbeat_period ) goto g7;
           LDW     .D1T2   *A3,B4            ; |860| 
           ADDKPC  .S2     $C$RL249,B3,3     ; |860| 
$C$RL249:  ; CALL OCCURS {__c6xabi_remu} {0}  ; |860| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |860| 
||         MVK     .S1     135,A3            ; |862| 

   [ A0]   BNOP    .S1     $C$L292,4         ; |860| 
||         MV      .L1     A0,A2             ; guard predicate rewrite
|| [!A0]   LDBU    .D1T1   *+A10[A3],A0      ; |862| 

   [!A2]   MVK     .S1     141,A3            ; |864| 
           ; BRANCHCC OCCURS {$C$L292}       ; |860| 
;** --------------------------------------------------------------------------*
;** 862	-----------------------    if ( (*this).m_heartbeat ) goto g6;
;** 864	-----------------------    if ( (*this).m_heartbeat_err ) goto g7;

   [!A0]   LDB     .D1T1   *+A10[A3],A1      ; |864| 
||         MVK     .L2     0x1,B4            ; |866| 

           MVK     .L2     1,B10             ; |870| 
           MVK     .S2     141,B11           ; |870| 
           MVK     .S1     135,A5            ; |863| 
   [ A0]   MV      .L1X    B4,A1             ; |863| 
   [ A1]   B       .S1     $C$L292           ; |864| 
   [!A1]   CALL    .S1     _ZN13Interpolation5PauseEb ; |866| 
           ZERO    .L1     A31               ; |863| 
   [!A0]   MV      .L1     A10,A4            ; |866| 
           MVK     .L1     0x4,A11           ; |871| 
   [ A0]   STB     .D1T1   A31,*+A10[A5]     ; |863| 
           ; BRANCHCC OCCURS {$C$L292}       ; |864| 
;** --------------------------------------------------------------------------*
;** 866	-----------------------    Interpolation::Pause(this, 1);
;** 870	-----------------------    (*this).m_heartbeat_err = 1;
;** 871	-----------------------    return 4;
;**	-----------------------g6:
;** 863	-----------------------    (*this).m_heartbeat = 0u;
           ADDKPC  .S2     $C$RL250,B3,0     ; |866| 
$C$RL250:  ; CALL OCCURS {_ZN13Interpolation5PauseEb} {0}  ; |866| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A10,B4
           STB     .D2T2   B10,*+B4[B11]     ; |870| 

           MV      .L1     A11,A4            ; |904| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |905| 
||         MV      .L2     B13,B3            ; |905| 

           LDDW    .D2T2   *++SP,B11:B10     ; |905| 
||         RET     .S2     B3                ; |905| 

           LDW     .D2T2   *++SP(8),B13      ; |905| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |905| 
;** --------------------------------------------------------------------------*
$C$L292:    
           CALL    .S1     _ZN13Interpolation19ManageInterpolationEv ; |875| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L293:    
;**	-----------------------g7:
;** 875	-----------------------    Interpolation::ManageInterpolation(this);
;** 877	-----------------------    if ( !(((*this).m_machining_state == 1)&((*this).m_get_data_result != 0)&((*this).m_process_state == 2)) ) goto g9;

           ADDKPC  .S2     $C$RL251,B3,0     ; |875| 
||         MV      .L1     A10,A4            ; |875| 

$C$RL251:  ; CALL OCCURS {_ZN13Interpolation19ManageInterpolationEv} {0}  ; |875| 
;** --------------------------------------------------------------------------*

           ADDAD   .D1     A10,16,A3         ; |877| 
||         MVK     .S1     140,A31           ; |877| 

           LDW     .D1T1   *A3,A5            ; |877| 
           LDBU    .D1T1   *+A10[A31],A3     ; |877| 
           LDW     .D1T1   *+A10(120),A4     ; |877| 
           NOP             2
           CMPEQ   .L1     A5,0,A5           ; |877| 

           XOR     .S1     1,A5,A5           ; |877| 
||         CMPEQ   .L1     A3,1,A3           ; |877| 

           AND     .S1     A5,A3,A3          ; |877| 
||         CMPEQ   .L1     A4,2,A4           ; |877| 

           AND     .L1     A4,A3,A0          ; |877| 
||         ZERO    .S1     A4                ; |880| 

   [!A0]   BNOP    .S1     $C$L294,2         ; |877| 
|| [ A0]   LDW     .D1T2   *A10,B5           ; |880| 
|| [!A0]   MV      .L2     B13,B3            ; |905| 

   [ A0]   LDW     .D1T2   *+A10(8),B4       ; |880| 
   [!A0]   LDDW    .D2T1   *++SP,A11:A10     ; |905| 
   [ A0]   CALL    .S2     B5                ; |880| 
           ; BRANCHCC OCCURS {$C$L294}       ; |877| 
;** --------------------------------------------------------------------------*
;** 880	-----------------------    (*(*this).OutputData)(NULL, (*this).m_owner_ptr);
           ADDKPC  .S2     $C$RL252,B3,4     ; |880| 
$C$RL252:  ; CALL OCCURS {B5} {0}            ; |880| 

           MV      .L2     B13,B3            ; |905| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |905| 

;** --------------------------------------------------------------------------*
$C$L294:    
;**	-----------------------g9:
;** 904	-----------------------    return 0;

           RET     .S2     B3                ; |905| 
||         LDDW    .D2T2   *++SP,B11:B10     ; |905| 

           LDW     .D2T2   *++SP(8),B13      ; |905| 
           ZERO    .L1     A4                ; |904| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |905| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation11AddIntpDataEP8LineData

;******************************************************************************
;* FUNCTION NAME: Interpolation::AddIntpData(LineData *)                      *
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
_ZN13Interpolation11AddIntpDataEP8LineData:
;** --------------------------------------------------------------------------*
;** 295	-----------------------    gate_key = ti_sysbios_gates_GateHwi_enter__E((*this).m_gate_hwi);
;** 297	-----------------------    CircularBuffer<LineData>::InsertData((*this).m_data_buffer, data, 1);
;** 299	-----------------------    ti_sysbios_gates_GateHwi_leave__E((*this).m_gate_hwi, (int)gate_key);
;** 303	-----------------------    return 0;
           STW     .D2T1   A11,*SP--(8)      ; |289| 
           STDW    .D2T1   A13:A12,*SP--     ; |289| 

           STW     .D2T1   A10,*SP--(8)      ; |289| 
||         MV      .L1     A4,A10            ; |289| 
||         MV      .S1X    B4,A11            ; |289| 

           MV      .L1X    B3,A13            ; |289| 
||         CALLP   .S2     ti_sysbios_gates_GateHwi_enter__E,B3
||         LDW     .D1T1   *+A10(28),A4      ; |295| 

$C$RL253:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_enter__E} {0}  ; |295| 
;** --------------------------------------------------------------------------*

           CALLP   .S2     _ZN14CircularBufferI8LineDataE10InsertDataEPKS0_i,B3
||         MV      .L1     A4,A12            ; |295| 
||         LDW     .D1T1   *+A10(44),A4      ; |297| 
||         MV      .L2X    A11,B4            ; |289| 
||         MVK     .S1     0x1,A6            ; |297| 

$C$RL254:  ; CALL OCCURS {_ZN14CircularBufferI8LineDataE10InsertDataEPKS0_i} {0}  ; |297| 

           CALLP   .S2     ti_sysbios_gates_GateHwi_leave__E,B3
||         LDW     .D1T1   *+A10(28),A4      ; |299| 
||         MV      .L2X    A12,B4            ; |299| 

$C$RL255:  ; CALL OCCURS {ti_sysbios_gates_GateHwi_leave__E} {0}  ; |299| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *++SP(8),A10      ; |304| 
||         MV      .L2X    A13,B3            ; |304| 

           LDDW    .D2T1   *++SP,A13:A12     ; |304| 
||         RET     .S2     B3                ; |304| 

           LDW     .D2T1   *++SP(8),A11      ; |304| 
           ZERO    .L1     A4                ; |303| 
           NOP             3
           ; BRANCH OCCURS {B3}              ; |304| 
	.sect	".text"
	.clink
	.global	_ZN13Interpolation10GetCurModeEv

;******************************************************************************
;* FUNCTION NAME: Interpolation::GetCurMode()                                 *
;*                                                                            *
;*   Regs Modified     : A4                                                   *
;*   Regs Used         : A4,B3                                                *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ZN13Interpolation10GetCurModeEv:
;** --------------------------------------------------------------------------*
;* 1513	-----------------------    return (*this).m_cur_channel_mode;
           RET     .S2     B3                ; |1514| 
           LDW     .D1T1   *+A4(32),A4       ; |1513| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |1514| 
;; Inlined function references:
;; [ 13] ti_sysbios_gates_GateHwi_Params_init(ti_sysbios_gates_GateHwi_Params *)
;; [ 14] ti_sysbios_gates_GateHwi_create(const ti_sysbios_gates_GateHwi_Params *, xdc_runtime_Error_Block *)
;; [ 15] ti_sysbios_gates_GateHwi_delete(ti_sysbios_gates_GateHwi_Object **)
;; [ 36] mask_64::CheckMask(int)
;; [ 37] NCCCmd::NCCCmd()
;; [ 54] Interpolation::SetMode(ChannelMode)
;; [ 64] Interpolation::InitState()
;; [ 67] Interpolation::ConfigFeedRateType(GCode)
;; [ 68] Interpolation::ProcessCmd(LineData *)
;; [ 71] Interpolation::UpdateStartCondition()
;; [ 72] Interpolation::CreateStopCmd()
;; [ 74] Interpolation::SetAxisDynamicMask()
;; [ 75] Interpolation::CopyNonMoveInfo(LineData *, LineData *)
;; [ 77] Interpolation::SetChannelIndex(int, NCCCTChannelConfig *)
;; [ 82] QuickMoveInterpolation::QuickMoveInterpolation(Geometry *, DynamicInfo **, int, NCCCTChannelConfig *, ChannelRealtimeState *)
;; [ 85] LineInterpolation::LineInterpolation(Geometry *, DynamicInfo **, int, NCCCTChannelConfig *, ChannelRealtimeState *)
;; [ 88] CircleInterpolation::CircleInterpolation(Geometry *, DynamicInfo **, int, NCCCTChannelConfig *, ChannelRealtimeState *)
;; [ 93] CircularBuffer<LineData>::~CircularBuffer()
;; [ 97] CircularBuffer<LineData>::EmptyBufLen()
;; [ 98] CircularBuffer<LineData>::BufLen()
;; [ 99] CircularBuffer<LineData>::ClearBuf()
;; [100] CircularBuffer<LineData>::ReadDataPtr(short)
;; [101] CircularBuffer<LineData>::Next()
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_Znwj
	.global	_ZdlPv
	.global	_Znaj
	.global	_ZdaPv
	.global	memset
	.global	ti_sysbios_gates_GateHwi_Object__create__S
	.global	ti_sysbios_gates_GateHwi_Object__delete__S
	.global	ti_sysbios_gates_GateHwi_Params__init__S
	.global	ti_sysbios_gates_GateHwi_enter__E
	.global	ti_sysbios_gates_GateHwi_leave__E
	.global	sqrt
	.global	pow
	.global	fmod
	.global	__c6xabi_isinf
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
	.global	_ZN9MCommands5ResetEv
	.global	_ZN9MCommands6HasCmdEj
	.global	_ZN9ParaEntryC1Ev
	.global	_ZN8LineData10NeedToStopEv
	.global	_ZN22InterpolationAlgorithmC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState
	.global	_ZN22InterpolationAlgorithm19SetSpeedProfileTypeE16SpeedProfileType
	.global	_ZN22InterpolationAlgorithm11SaveEndDataEP14CircularBufferI8LineDataE
	.global	_ZN22QuickMoveInterpolation15SetChannelIndexEiP18NCCCTChannelConfig
	.global	_ZN17LineInterpolation15SetChannelIndexEiP18NCCCTChannelConfig
	.global	_ZN19CircleInterpolation15SetChannelIndexEiP18NCCCTChannelConfig
	.global	_ZTV22QuickMoveInterpolation
	.global	_ZTV17LineInterpolation
	.global	_ZTV19CircleInterpolation
	.global	memcpy
	.global	__c6xabi_divi
	.global	__c6xabi_divd
	.global	__c6xabi_fixdu
	.global	__c6xabi_llshl
	.global	__c6xabi_llshru
	.global	__c6xabi_remu
;*****************************************************************************
;* SECTION GROUPS                                                            *
;*****************************************************************************
	.group    "_ZN14CircularBufferI8LineDataE10InsertDataEPKS0_i", 1
	.gmember  ".text:_ZN14CircularBufferI8LineDataE10InsertDataEPKS0_i"
	.endgroup
	.group    "_ZN14CircularBufferI8LineDataE11ReadDataPtrEs", 1
	.gmember  ".text:_ZN14CircularBufferI8LineDataE11ReadDataPtrEs"
	.endgroup
	.group    "_ZN14CircularBufferI8LineDataE4NextEv", 1
	.gmember  ".text:_ZN14CircularBufferI8LineDataE4NextEv"
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
	.group    "_ZN17LineInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState", 1
	.gmember  ".text:_ZN17LineInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState"
	.endgroup
	.group    "_ZN19CircleInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState", 1
	.gmember  ".text:_ZN19CircleInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState"
	.endgroup
	.group    "_ZN22QuickMoveInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState", 1
	.gmember  ".text:_ZN22QuickMoveInterpolationC2EP8GeometryPP11DynamicInfoiP18NCCCTChannelConfigP20ChannelRealtimeState"
	.endgroup
	.group    "_ZN6NCCCmdC2Ev", 1
	.gmember  ".text:_ZN6NCCCmdC2Ev"
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
