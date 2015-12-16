;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Apr 25 2013) (Linux)
; This file was generated Sat Dec 12 12:42:36 2015
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _process_leader
	.globl _process_body
	.globl _process_end
	.globl _read_period
	.globl _process_validation
	.globl _process_success
	.globl _init_rf
	.globl _send
	.globl _process_response
	.globl _rng_get_one_byte_and_turn_off
	.globl _rf_spi_execute_command
	.globl _rf_irq_clear_all
	.globl _rf_spi_configure_enable
	.globl _rf_write_tx_payload
	.globl _rf_read_rx_payload
	.globl _rf_set_as_tx
	.globl _rf_set_as_rx
	.globl _rf_configure
	.globl _pwr_clk_mgmt_op_mode_configure
	.globl _pwr_clk_mgmt_wakeup_pins_configure
	.globl _pwr_clk_mgmt_clklf_configure
	.globl _gpio_pin_val_read
	.globl _gpio_pin_val_write
	.globl _gpio_pin_val_set
	.globl _gpio_pin_configure
	.globl _delay_ms
	.globl _delay_us
	.globl _FSR_SB_ENDBG
	.globl _FSR_SB_STP
	.globl _FSR_SB_WEN
	.globl _FSR_SB_RDYN
	.globl _FSR_SB_INFEN
	.globl _FSR_SB_RDISMB
	.globl _RFCON_SB_RFCKEN
	.globl _RFCON_SB_RFCSN
	.globl _RFCON_SB_RFCE
	.globl _ADCON_SB_BD
	.globl _PSW_SB_P
	.globl _PSW_SB_F1
	.globl _PSW_SB_OV
	.globl _PSW_SB_RS0
	.globl _PSW_SB_RS1
	.globl _PSW_SB_F0
	.globl _PSW_SB_AC
	.globl _PSW_SB_CY
	.globl _T2CON_SB_T2PS
	.globl _T2CON_SB_I3FR
	.globl _T2CON_SB_I2FR
	.globl _T2CON_SB_T2R1
	.globl _T2CON_SB_T2R0
	.globl _T2CON_SB_T2CM
	.globl _T2CON_SB_T2I1
	.globl _T2CON_SB_T2I0
	.globl _IRCON_SB_EXF2
	.globl _IRCON_SB_TF2
	.globl _IRCON_SB_TICK
	.globl _IRCON_SB_MISCIRQ
	.globl _IRCON_SB_WUOPIRQ
	.globl _IRCON_SB_SPI_2WIRE
	.globl _IRCON_SB_RFIRQ
	.globl _IRCON_SB_RFRDY
	.globl _IEN1_SB_T2EXTRLD
	.globl _IEN1_SB_TICK
	.globl _IEN1_SB_MISCIRQ
	.globl _IEN1_SB_WUOPIRQ
	.globl _IEN1_SB_SPI_2WIRE
	.globl _IEN1_SB_RFIRQ
	.globl _IEN1_SB_RFRDY
	.globl _P3_SB_D7
	.globl _P3_SB_D6
	.globl _P3_SB_D5
	.globl _P3_SB_D4
	.globl _P3_SB_D3
	.globl _P3_SB_D2
	.globl _P3_SB_D1
	.globl _P3_SB_D0
	.globl _IEN0_SB_GLOBAL
	.globl _IEN0_SB_T2
	.globl _IEN0_SB_UART
	.globl _IEN0_SB_T1
	.globl _IEN0_SB_POFIRQ
	.globl _IEN0_SB_T0
	.globl _IEN0_SB_IFP
	.globl _P2_SB_D7
	.globl _P2_SB_D6
	.globl _P2_SB_D5
	.globl _P2_SB_D4
	.globl _P2_SB_D3
	.globl _P2_SB_D2
	.globl _P2_SB_D1
	.globl _P2_SB_D0
	.globl _S0CON_SB_SM0
	.globl _S0CON_SB_SM1
	.globl _S0CON_SB_SM20
	.globl _S0CON_SB_REN0
	.globl _S0CON_SB_TB80
	.globl _S0CON_SB_RB80
	.globl _S0CON_SB_TI0
	.globl _S0CON_SB_RI0
	.globl _P1_SB_D7
	.globl _P1_SB_D6
	.globl _P1_SB_D5
	.globl _P1_SB_D4
	.globl _P1_SB_D3
	.globl _P1_SB_D2
	.globl _P1_SB_D1
	.globl _P1_SB_D0
	.globl _TCON_SB_TF1
	.globl _TCON_SB_TR1
	.globl _TCON_SB_TF0
	.globl _TCON_SB_TR0
	.globl _TCON_SB_IE1
	.globl _TCON_SB_IT1
	.globl _TCON_SB_IE0
	.globl _TCON_SB_IT0
	.globl _P0_SB_D7
	.globl _P0_SB_D6
	.globl _P0_SB_D5
	.globl _P0_SB_D4
	.globl _P0_SB_D3
	.globl _P0_SB_D2
	.globl _P0_SB_D1
	.globl _P0_SB_D0
	.globl _ADCDAT
	.globl _S0REL
	.globl _T2
	.globl _T1
	.globl _T0
	.globl _CRC
	.globl _CC3
	.globl _CC2
	.globl _CC1
	.globl _SPIMDAT
	.globl _SPIMSTAT
	.globl _SPIMCON1
	.globl _SPIMCON0
	.globl _FCR
	.globl _FPCR
	.globl _FSR
	.globl _B
	.globl _ARCON
	.globl _MD5
	.globl _MD4
	.globl _MD3
	.globl _MD2
	.globl _MD1
	.globl _MD0
	.globl _RFCON
	.globl _SPIRDAT
	.globl _SPIRSTAT
	.globl _SPIRCON1
	.globl _SPIRCON0
	.globl _W2CON0
	.globl _W2CON1
	.globl _ACC
	.globl _CCPDATO
	.globl _CCPDATIB
	.globl _CCPDATIA
	.globl _POFCON
	.globl _COMPCON
	.globl _W2DAT
	.globl _W2SADR
	.globl _ADCON
	.globl _RNGDAT
	.globl _RNGCTL
	.globl _ADCDATL
	.globl _ADCDATH
	.globl _ADCCON1
	.globl _ADCCON2
	.globl _ADCCON3
	.globl _PSW
	.globl _WUOPC0
	.globl _WUOPC1
	.globl _TH2
	.globl _TL2
	.globl _CRCH
	.globl _CRCL
	.globl __XPAGE
	.globl _MPAGE
	.globl _T2CON
	.globl _CCH3
	.globl _CCL3
	.globl _CCH2
	.globl _CCL2
	.globl _CCH1
	.globl _CCL1
	.globl _CCEN
	.globl _IRCON
	.globl _SPISDAT
	.globl _SPISSTAT
	.globl _SPISCON1
	.globl _SPISCON0
	.globl _S0RELH
	.globl _IP1
	.globl _IEN1
	.globl _SPISRDSZ
	.globl _RTC2CPT00
	.globl _RTC2CMP1
	.globl _RTC2CMP0
	.globl _RTC2CON
	.globl _PWMCON
	.globl _RSTREAS
	.globl _P3
	.globl _WDSV
	.globl _OPMCON
	.globl _CLKLFCTRL
	.globl _RTC2CPT10
	.globl _RTC2CPT01
	.globl _S0RELL
	.globl _IP0
	.globl _IEN0
	.globl _MEMCON
	.globl _INTEXP
	.globl _WUCON
	.globl _PWRDWN
	.globl _CLKCTRL
	.globl _PWMDC1
	.globl _PWMDC0
	.globl _P2
	.globl _P1CON
	.globl _P0CON
	.globl _S0BUF
	.globl _S0CON
	.globl _P2CON
	.globl _P3DIR
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _DPS
	.globl _P1
	.globl _P3CON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH1
	.globl _DPL1
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _send_PARM_2
	.globl _process_response_PARM_2
	.globl _body
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P3CON	=	0x008f
_P1	=	0x0090
_DPS	=	0x0092
_P0DIR	=	0x0093
_P1DIR	=	0x0094
_P2DIR	=	0x0095
_P3DIR	=	0x0096
_P2CON	=	0x0097
_S0CON	=	0x0098
_S0BUF	=	0x0099
_P0CON	=	0x009e
_P1CON	=	0x009f
_P2	=	0x00a0
_PWMDC0	=	0x00a1
_PWMDC1	=	0x00a2
_CLKCTRL	=	0x00a3
_PWRDWN	=	0x00a4
_WUCON	=	0x00a5
_INTEXP	=	0x00a6
_MEMCON	=	0x00a7
_IEN0	=	0x00a8
_IP0	=	0x00a9
_S0RELL	=	0x00aa
_RTC2CPT01	=	0x00ab
_RTC2CPT10	=	0x00ac
_CLKLFCTRL	=	0x00ad
_OPMCON	=	0x00ae
_WDSV	=	0x00af
_P3	=	0x00b0
_RSTREAS	=	0x00b1
_PWMCON	=	0x00b2
_RTC2CON	=	0x00b3
_RTC2CMP0	=	0x00b4
_RTC2CMP1	=	0x00b5
_RTC2CPT00	=	0x00b6
_SPISRDSZ	=	0x00b7
_IEN1	=	0x00b8
_IP1	=	0x00b9
_S0RELH	=	0x00ba
_SPISCON0	=	0x00bc
_SPISCON1	=	0x00bd
_SPISSTAT	=	0x00be
_SPISDAT	=	0x00bf
_IRCON	=	0x00c0
_CCEN	=	0x00c1
_CCL1	=	0x00c2
_CCH1	=	0x00c3
_CCL2	=	0x00c4
_CCH2	=	0x00c5
_CCL3	=	0x00c6
_CCH3	=	0x00c7
_T2CON	=	0x00c8
_MPAGE	=	0x00c9
__XPAGE	=	0x00c9
_CRCL	=	0x00ca
_CRCH	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_WUOPC1	=	0x00ce
_WUOPC0	=	0x00cf
_PSW	=	0x00d0
_ADCCON3	=	0x00d1
_ADCCON2	=	0x00d2
_ADCCON1	=	0x00d3
_ADCDATH	=	0x00d4
_ADCDATL	=	0x00d5
_RNGCTL	=	0x00d6
_RNGDAT	=	0x00d7
_ADCON	=	0x00d8
_W2SADR	=	0x00d9
_W2DAT	=	0x00da
_COMPCON	=	0x00db
_POFCON	=	0x00dc
_CCPDATIA	=	0x00dd
_CCPDATIB	=	0x00de
_CCPDATO	=	0x00df
_ACC	=	0x00e0
_W2CON1	=	0x00e1
_W2CON0	=	0x00e2
_SPIRCON0	=	0x00e4
_SPIRCON1	=	0x00e5
_SPIRSTAT	=	0x00e6
_SPIRDAT	=	0x00e7
_RFCON	=	0x00e8
_MD0	=	0x00e9
_MD1	=	0x00ea
_MD2	=	0x00eb
_MD3	=	0x00ec
_MD4	=	0x00ed
_MD5	=	0x00ee
_ARCON	=	0x00ef
_B	=	0x00f0
_FSR	=	0x00f8
_FPCR	=	0x00f9
_FCR	=	0x00fa
_SPIMCON0	=	0x00fc
_SPIMCON1	=	0x00fd
_SPIMSTAT	=	0x00fe
_SPIMDAT	=	0x00ff
_CC1	=	0xc3c2
_CC2	=	0xc5c4
_CC3	=	0xc7c6
_CRC	=	0xcbca
_T0	=	0x8c8a
_T1	=	0x8d8b
_T2	=	0xcdcc
_S0REL	=	0xbaaa
_ADCDAT	=	0xd4d5
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_SB_D0	=	0x0080
_P0_SB_D1	=	0x0081
_P0_SB_D2	=	0x0082
_P0_SB_D3	=	0x0083
_P0_SB_D4	=	0x0084
_P0_SB_D5	=	0x0085
_P0_SB_D6	=	0x0086
_P0_SB_D7	=	0x0087
_TCON_SB_IT0	=	0x0088
_TCON_SB_IE0	=	0x0089
_TCON_SB_IT1	=	0x008a
_TCON_SB_IE1	=	0x008b
_TCON_SB_TR0	=	0x008c
_TCON_SB_TF0	=	0x008d
_TCON_SB_TR1	=	0x008e
_TCON_SB_TF1	=	0x008f
_P1_SB_D0	=	0x0090
_P1_SB_D1	=	0x0091
_P1_SB_D2	=	0x0092
_P1_SB_D3	=	0x0093
_P1_SB_D4	=	0x0094
_P1_SB_D5	=	0x0095
_P1_SB_D6	=	0x0096
_P1_SB_D7	=	0x0097
_S0CON_SB_RI0	=	0x0098
_S0CON_SB_TI0	=	0x0099
_S0CON_SB_RB80	=	0x009a
_S0CON_SB_TB80	=	0x009b
_S0CON_SB_REN0	=	0x009c
_S0CON_SB_SM20	=	0x009d
_S0CON_SB_SM1	=	0x009e
_S0CON_SB_SM0	=	0x009f
_P2_SB_D0	=	0x00a0
_P2_SB_D1	=	0x00a1
_P2_SB_D2	=	0x00a2
_P2_SB_D3	=	0x00a3
_P2_SB_D4	=	0x00a4
_P2_SB_D5	=	0x00a5
_P2_SB_D6	=	0x00a6
_P2_SB_D7	=	0x00a7
_IEN0_SB_IFP	=	0x00a8
_IEN0_SB_T0	=	0x00a9
_IEN0_SB_POFIRQ	=	0x00aa
_IEN0_SB_T1	=	0x00ab
_IEN0_SB_UART	=	0x00ac
_IEN0_SB_T2	=	0x00ad
_IEN0_SB_GLOBAL	=	0x00af
_P3_SB_D0	=	0x00b0
_P3_SB_D1	=	0x00b1
_P3_SB_D2	=	0x00b2
_P3_SB_D3	=	0x00b3
_P3_SB_D4	=	0x00b4
_P3_SB_D5	=	0x00b5
_P3_SB_D6	=	0x00b6
_P3_SB_D7	=	0x00b7
_IEN1_SB_RFRDY	=	0x00b8
_IEN1_SB_RFIRQ	=	0x00b9
_IEN1_SB_SPI_2WIRE	=	0x00ba
_IEN1_SB_WUOPIRQ	=	0x00bb
_IEN1_SB_MISCIRQ	=	0x00bc
_IEN1_SB_TICK	=	0x00bd
_IEN1_SB_T2EXTRLD	=	0x00bf
_IRCON_SB_RFRDY	=	0x00c0
_IRCON_SB_RFIRQ	=	0x00c1
_IRCON_SB_SPI_2WIRE	=	0x00c2
_IRCON_SB_WUOPIRQ	=	0x00c3
_IRCON_SB_MISCIRQ	=	0x00c4
_IRCON_SB_TICK	=	0x00c5
_IRCON_SB_TF2	=	0x00c6
_IRCON_SB_EXF2	=	0x00c7
_T2CON_SB_T2I0	=	0x00c8
_T2CON_SB_T2I1	=	0x00c9
_T2CON_SB_T2CM	=	0x00ca
_T2CON_SB_T2R0	=	0x00cb
_T2CON_SB_T2R1	=	0x00cc
_T2CON_SB_I2FR	=	0x00cd
_T2CON_SB_I3FR	=	0x00ce
_T2CON_SB_T2PS	=	0x00cf
_PSW_SB_CY	=	0x00d7
_PSW_SB_AC	=	0x00d6
_PSW_SB_F0	=	0x00d5
_PSW_SB_RS1	=	0x00d4
_PSW_SB_RS0	=	0x00d3
_PSW_SB_OV	=	0x00d2
_PSW_SB_F1	=	0x00d1
_PSW_SB_P	=	0x00d0
_ADCON_SB_BD	=	0x00df
_RFCON_SB_RFCE	=	0x00e8
_RFCON_SB_RFCSN	=	0x00e9
_RFCON_SB_RFCKEN	=	0x00ea
_FSR_SB_RDISMB	=	0x00fa
_FSR_SB_INFEN	=	0x00fb
_FSR_SB_RDYN	=	0x00fc
_FSR_SB_WEN	=	0x00fd
_FSR_SB_STP	=	0x00fe
_FSR_SB_ENDBG	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_body::
	.ds 32
_process_response_PARM_2:
	.ds 1
_process_response_command_1_1:
	.ds 1
_send_PARM_2:
	.ds 1
_send_command_1_1:
	.ds 1
_send_payload_1_1:
	.ds 3
_init_rf_pipes_1_1:
	.ds 10
_process_success_customByte_1_1:
	.ds 1
_process_success_dataByte_1_1:
	.ds 1
_process_end_period_1_1:
	.ds 1
_process_end_highs_1_1:
	.ds 2
_process_body_highs_1_1:
	.ds 2
_process_body_lows_1_1:
	.ds 2
_process_body_period_2_2:
	.ds 1
_process_leader_period_1_1:
	.ds 1
_process_leader_lows_1_1:
	.ds 2
_process_leader_highs_1_1:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'process_response'
;------------------------------------------------------------
;dataByte                  Allocated with name '_process_response_PARM_2'
;command                   Allocated with name '_process_response_command_1_1'
;delay                     Allocated with name '_process_response_delay_1_1'
;------------------------------------------------------------
;	main.c:44: void process_response(uint8_t command, uint8_t dataByte)
;	-----------------------------------------
;	 function process_response
;	-----------------------------------------
_process_response:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
;	main.c:47: if (command == 2) {
	mov	dptr,#_process_response_command_1_1
	movx	@dptr,a
	mov	r7,a
	cjne	r7,#0x02,00106$
	sjmp	00107$
00106$:
	ret
00107$:
;	main.c:49: ((dataByte >> 3) & 1) * LED_TIME_0BIT +
	mov	dptr,#_process_response_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	c,acc[3]
	clr	a
	rlc	a
	mov	b,#0x14
	mul	ab
	mov	r6,a
	mov	r5,b
;	main.c:50: ((dataByte >> 4) & 1) * LED_TIME_1BIT +
	mov	a,r7
	swap	a
	anl	a,#0x01
	mov	b,#0x32
	mul	ab
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,b
	mov	r5,a
;	main.c:51: ((dataByte >> 5) & 1) * LED_TIME_2BIT +
	mov	a,r7
	mov	c,acc[5]
	clr	a
	rlc	a
	mov	b,#0x64
	mul	ab
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,b
	mov	r5,a
;	main.c:52: ((dataByte >> 6) & 1) * LED_TIME_3BIT +
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x01
	mov	b,#0xFA
	mul	ab
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,b
	mov	r5,a
;	main.c:53: ((dataByte >> 7) & 1) * LED_TIME_4BIT;
	mov	a,r7
	rl	a
	anl	a,#0x01
	mov	dptr,#__mulint_PARM_2
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#0x01F4
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r5
	mov	r5,a
;	main.c:54: gpio_pin_val_write(RED_PIN, ((~dataByte >> 0) & 1));
	mov	r4,#0x00
	mov	a,r7
	cpl	a
	mov	r7,a
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	dptr,#_gpio_pin_val_write_PARM_2
	mov	a,r7
	anl	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x0C
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_gpio_pin_val_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:55: gpio_pin_val_write(GREEN_PIN, ((~dataByte >> 1) & 1));
	mov	dptr,#_gpio_pin_val_write_PARM_2
	mov	a,r7
	rr	a
	anl	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x0B
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_gpio_pin_val_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:56: gpio_pin_val_write(BLUE_PIN, ((~dataByte >> 2) & 1));
	mov	dptr,#_gpio_pin_val_write_PARM_2
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x0A
	push	ar6
	push	ar5
	lcall	_gpio_pin_val_write
	pop	ar5
	pop	ar6
;	main.c:57: delay_ms(delay);
	mov	dpl,r6
	mov	dph,r5
	lcall	_delay_ms
;	main.c:58: gpio_pin_val_set(RED_PIN);
	mov	dpl,#0x0C
	lcall	_gpio_pin_val_set
;	main.c:59: gpio_pin_val_set(GREEN_PIN);
	mov	dpl,#0x0B
	lcall	_gpio_pin_val_set
;	main.c:60: gpio_pin_val_set(BLUE_PIN);
	mov	dpl,#0x0A
	ljmp	_gpio_pin_val_set
;------------------------------------------------------------
;Allocation info for local variables in function 'send'
;------------------------------------------------------------
;dataByte                  Allocated with name '_send_PARM_2'
;command                   Allocated with name '_send_command_1_1'
;count                     Allocated with name '_send_count_1_1'
;payload                   Allocated with name '_send_payload_1_1'
;------------------------------------------------------------
;	main.c:64: void send(uint8_t command, uint8_t dataByte)
;	-----------------------------------------
;	 function send
;	-----------------------------------------
_send:
	mov	a,dpl
;	main.c:67: uint8_t payload[3] = { command, dataByte, rng_get_one_byte_and_turn_off() };
	mov	dptr,#_send_command_1_1
	movx	@dptr,a
	mov	dptr,#_send_payload_1_1
	movx	@dptr,a
	mov	dptr,#_send_PARM_2
	movx	a,@dptr
	mov	dptr,#(_send_payload_1_1 + 0x0001)
	movx	@dptr,a
	lcall	_rng_get_one_byte_and_turn_off
	mov	r7,dpl
	mov	dptr,#(_send_payload_1_1 + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	main.c:69: rf_write_tx_payload(&payload[0], 3, true);
	mov	dptr,#_rf_write_tx_payload_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_write_tx_payload_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_send_payload_1_1
	mov	b,#0x00
	lcall	_rf_write_tx_payload
;	main.c:70: while(!rf_irq_tx_ds_active() && !rf_irq_max_rt_active());
00102$:
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0xFF
	lcall	_rf_spi_execute_command
	mov	a,dpl
	jb	acc.5,00104$
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0xFF
	lcall	_rf_spi_execute_command
	mov	a,dpl
	jnb	acc.4,00102$
00104$:
;	main.c:71: if (rf_irq_tx_ds_active())
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0xFF
	lcall	_rf_spi_execute_command
	mov	a,dpl
	jb	acc.5,00129$
	ljmp	00108$
00129$:
;	main.c:73: rf_flush_rx();
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0xE2
	lcall	_rf_spi_execute_command
;	main.c:74: rf_flush_tx();
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0xE1
	lcall	_rf_spi_execute_command
;	main.c:75: rf_irq_clear_all();
	lcall	_rf_irq_clear_all
;	main.c:76: rf_set_as_rx(true);
	mov	dpl,#0x01
	lcall	_rf_set_as_rx
;	main.c:77: for(count = 0; count < RESPONSE_TIMEOUT_US && !rf_irq_rx_dr_active(); count++)
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00110$:
	clr	c
	mov	a,r4
	subb	a,#0x88
	mov	a,r5
	subb	a,#0x13
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00113$
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0xFF
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_rf_spi_execute_command
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnb	acc.6,00116$
	mov	r3,#0x01
	sjmp	00117$
00116$:
	mov	r3,#0x00
00117$:
	mov	a,r3
	jnz	00113$
;	main.c:79: nop();
	 nop 
;	main.c:80: nop();
	 nop 
;	main.c:77: for(count = 0; count < RESPONSE_TIMEOUT_US && !rf_irq_rx_dr_active(); count++)
	inc	r4
	cjne	r4,#0x00,00133$
	inc	r5
	cjne	r5,#0x00,00133$
	inc	r6
	cjne	r6,#0x00,00110$
	inc	r7
00133$:
	sjmp	00110$
00113$:
;	main.c:82: if (rf_irq_rx_dr_active())
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0xFF
	lcall	_rf_spi_execute_command
	mov	a,dpl
	jnb	acc.6,00108$
;	main.c:84: rf_read_rx_payload(&payload[0], 3);
	mov	dptr,#_rf_read_rx_payload_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_send_payload_1_1
	mov	b,#0x00
	lcall	_rf_read_rx_payload
;	main.c:85: process_response(payload[0], payload[1]);
	mov	dptr,#_send_payload_1_1
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_send_payload_1_1 + 0x0001)
	movx	a,@dptr
	mov	dptr,#_process_response_PARM_2
	movx	@dptr,a
	mov	dpl,r7
	lcall	_process_response
00108$:
;	main.c:88: rf_flush_rx();
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0xE2
	lcall	_rf_spi_execute_command
;	main.c:89: rf_flush_tx();
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0xE1
	lcall	_rf_spi_execute_command
;	main.c:90: rf_irq_clear_all();
	lcall	_rf_irq_clear_all
;	main.c:91: rf_set_as_tx();
	ljmp	_rf_set_as_tx
;------------------------------------------------------------
;Allocation info for local variables in function 'init_rf'
;------------------------------------------------------------
;pipes                     Allocated with name '_init_rf_pipes_1_1'
;------------------------------------------------------------
;	main.c:94: void init_rf()
;	-----------------------------------------
;	 function init_rf
;	-----------------------------------------
_init_rf:
;	main.c:96: uint8_t pipes[2][5] = {  
	mov	dptr,#_init_rf_pipes_1_1
	mov	a,#0xB8
	movx	@dptr,a
	mov	dptr,#(_init_rf_pipes_1_1 + 0x0001)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_init_rf_pipes_1_1 + 0x0002)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_init_rf_pipes_1_1 + 0x0003)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_init_rf_pipes_1_1 + 0x0004)
	mov	a,#0xBD
	movx	@dptr,a
	mov	dptr,#(_init_rf_pipes_1_1 + 0x0005)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_init_rf_pipes_1_1 + 0x0006)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_init_rf_pipes_1_1 + 0x0007)
	mov	a,#0x86
	movx	@dptr,a
	mov	dptr,#(_init_rf_pipes_1_1 + 0x0008)
	mov	a,#0xD0
	movx	@dptr,a
	mov	dptr,#(_init_rf_pipes_1_1 + 0x0009)
	mov	a,#0xEE
	movx	@dptr,a
;	main.c:101: rf_spi_configure_enable();
	lcall	_rf_spi_configure_enable
;	main.c:112: &pipes[1][0],
;	main.c:113: &pipes[0][0],
;	main.c:118: &pipes[1][0],
;	main.c:126: 0x00);
	mov	dptr,#_rf_configure_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_3
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_4
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_5
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_6
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_7
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_8
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_9
	mov	a,#(_init_rf_pipes_1_1 + 0x0005)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_init_rf_pipes_1_1 + 0x0005) >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_10
	mov	a,#_init_rf_pipes_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_init_rf_pipes_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_11
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_12
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_13
	mov	a,#0xC5
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_14
	mov	a,#0xC6
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_15
	mov	a,#(_init_rf_pipes_1_1 + 0x0005)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_init_rf_pipes_1_1 + 0x0005) >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_16
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_17
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_18
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_19
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_20
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_21
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_22
	clr	a
	movx	@dptr,a
	mov	dptr,#_rf_configure_PARM_23
	movx	@dptr,a
	mov	dpl,#0x0E
	ljmp	_rf_configure
;------------------------------------------------------------
;Allocation info for local variables in function 'process_success'
;------------------------------------------------------------
;customByte                Allocated with name '_process_success_customByte_1_1'
;dataByte                  Allocated with name '_process_success_dataByte_1_1'
;bitNum                    Allocated with name '_process_success_bitNum_1_1'
;------------------------------------------------------------
;	main.c:129: void process_success()
;	-----------------------------------------
;	 function process_success
;	-----------------------------------------
_process_success:
;	main.c:131: uint8_t customByte = 0;
	mov	dptr,#_process_success_customByte_1_1
;	main.c:132: uint8_t dataByte = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_process_success_dataByte_1_1
	movx	@dptr,a
;	main.c:135: for (bitNum = 0; bitNum < BODY_CUSTOM_BITS; bitNum++)
	mov	r7,#0x00
00103$:
	cjne	r7,#0x08,00120$
00120$:
	jnc	00106$
;	main.c:137: customByte += body[bitNum] << bitNum;
	mov	a,r7
	add	a,#_body
	mov	dpl,a
	clr	a
	addc	a,#(_body >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	b,r7
	inc	b
	mov	a,r6
	sjmp	00124$
00122$:
	add	a,acc
00124$:
	djnz	b,00122$
	mov	r6,a
	mov	dptr,#_process_success_customByte_1_1
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_process_success_customByte_1_1
	mov	a,r6
	add	a,r5
	movx	@dptr,a
;	main.c:135: for (bitNum = 0; bitNum < BODY_CUSTOM_BITS; bitNum++)
	inc	r7
	sjmp	00103$
00106$:
;	main.c:139: for (bitNum = 0; bitNum < BODY_DATA_BITS; bitNum++)
	mov	r7,#0x00
00107$:
	cjne	r7,#0x08,00125$
00125$:
	jnc	00110$
;	main.c:141: dataByte += body[BODY_CUSTOM_BITS * 2 + bitNum] << bitNum;
	mov	a,#0x10
	add	a,r7
	add	a,#_body
	mov	dpl,a
	clr	a
	addc	a,#(_body >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	b,r7
	inc	b
	mov	a,r6
	sjmp	00129$
00127$:
	add	a,acc
00129$:
	djnz	b,00127$
	mov	r6,a
	mov	dptr,#_process_success_dataByte_1_1
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_process_success_dataByte_1_1
	mov	a,r6
	add	a,r5
	movx	@dptr,a
;	main.c:139: for (bitNum = 0; bitNum < BODY_DATA_BITS; bitNum++)
	inc	r7
	sjmp	00107$
00110$:
;	main.c:144: if (customByte != 7) {
	mov	dptr,#_process_success_customByte_1_1
	movx	a,@dptr
	mov	r7,a
;	main.c:145: return;
	cjne	r7,#0x07,00111$
;	main.c:148: init_rf();
	lcall	_init_rf
;	main.c:149: send(1, dataByte);
	mov	dptr,#_process_success_dataByte_1_1
	movx	a,@dptr
	mov	dptr,#_send_PARM_2
	movx	@dptr,a
	mov	dpl,#0x01
	ljmp	_send
00111$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_validation'
;------------------------------------------------------------
;bitNum                    Allocated with name '_process_validation_bitNum_1_1'
;------------------------------------------------------------
;	main.c:152: void process_validation()
;	-----------------------------------------
;	 function process_validation
;	-----------------------------------------
_process_validation:
;	main.c:155: for (bitNum = 0; bitNum < BODY_CUSTOM_BITS; bitNum++)
	mov	r7,#0x00
00105$:
	cjne	r7,#0x08,00121$
00121$:
	jnc	00120$
;	main.c:157: if (body[bitNum] != body[BODY_CUSTOM_BITS + bitNum]) {
	mov	a,r7
	add	a,#_body
	mov	dpl,a
	clr	a
	addc	a,#(_body >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x08
	add	a,r7
	add	a,#_body
	mov	dpl,a
	clr	a
	addc	a,#(_body >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
;	main.c:158: return;
	cjne	a,ar5,00113$
;	main.c:155: for (bitNum = 0; bitNum < BODY_CUSTOM_BITS; bitNum++)
	inc	r7
;	main.c:161: for (bitNum = 0; bitNum < BODY_DATA_BITS; bitNum++)
	sjmp	00105$
00120$:
	mov	r7,#0x00
00109$:
	cjne	r7,#0x08,00124$
00124$:
	jnc	00112$
;	main.c:163: if (body[BODY_CUSTOM_BITS * 2 + bitNum] ==
	mov	a,#0x10
	add	a,r7
	add	a,#_body
	mov	dpl,a
	clr	a
	addc	a,#(_body >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
;	main.c:164: body[BODY_CUSTOM_BITS * 2 + BODY_DATA_BITS + bitNum]) {
	mov	a,#0x18
	add	a,r7
	add	a,#_body
	mov	dpl,a
	clr	a
	addc	a,#(_body >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar5,00111$
;	main.c:165: return;
	ret
00111$:
;	main.c:161: for (bitNum = 0; bitNum < BODY_DATA_BITS; bitNum++)
	inc	r7
	sjmp	00109$
00112$:
;	main.c:169: process_success();
	ljmp	_process_success
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_period'
;------------------------------------------------------------
;sample                    Allocated with name '_read_period_sample_1_1'
;------------------------------------------------------------
;	main.c:172: bool read_period()
;	-----------------------------------------
;	 function read_period
;	-----------------------------------------
_read_period:
;	main.c:175: sample = !gpio_pin_val_read(IN_PIN);
	mov	dpl,#0x06
	lcall	_gpio_pin_val_read
	mov	a,dpl
	mov	r7,a
	cjne	a,#0x01,00103$
00103$:
	clr	a
	rlc	a
	mov	r7,a
;	main.c:176: delay_us(40);
	mov	dptr,#0x0028
	push	ar7
	lcall	_delay_us
	pop	ar7
;	main.c:177: return sample;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_end'
;------------------------------------------------------------
;period                    Allocated with name '_process_end_period_1_1'
;highs                     Allocated with name '_process_end_highs_1_1'
;------------------------------------------------------------
;	main.c:180: void process_end()
;	-----------------------------------------
;	 function process_end
;	-----------------------------------------
_process_end:
;	main.c:182: bool period = true;
	mov	dptr,#_process_end_period_1_1
	mov	a,#0x01
	movx	@dptr,a
;	main.c:183: uint16_t highs = 0;
	mov	dptr,#_process_end_highs_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:184: while (period && highs <= MAX_BIT_HIGHS) {
00102$:
	mov	dptr,#_process_end_period_1_1
	movx	a,@dptr
	mov	r7,a
	jz	00104$
	mov	dptr,#_process_end_highs_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x0C
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00104$
;	main.c:185: period = read_period();
	push	ar7
	push	ar6
	lcall	_read_period
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	dptr,#_process_end_period_1_1
	mov	a,r5
	movx	@dptr,a
;	main.c:186: highs += period;
	mov	r4,#0x00
	mov	dptr,#_process_end_highs_1_1
	mov	a,r5
	add	a,r6
	movx	@dptr,a
	mov	a,r4
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00102$
00104$:
;	main.c:188: if (highs > MAX_BIT_HIGHS || highs < MIN_BIT_HIGHS)
	mov	dptr,#_process_end_highs_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x0C
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00105$
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	jnc	00106$
00105$:
;	main.c:190: return;
	ret
00106$:
;	main.c:193: process_validation();
	ljmp	_process_validation
;------------------------------------------------------------
;Allocation info for local variables in function 'process_body'
;------------------------------------------------------------
;bitNum                    Allocated with name '_process_body_bitNum_1_1'
;highs                     Allocated with name '_process_body_highs_1_1'
;lows                      Allocated with name '_process_body_lows_1_1'
;period                    Allocated with name '_process_body_period_2_2'
;------------------------------------------------------------
;	main.c:196: void process_body()
;	-----------------------------------------
;	 function process_body
;	-----------------------------------------
_process_body:
;	main.c:201: for (bitNum = 0; bitNum < BODY_BITS; bitNum++)
	mov	r7,#0x00
00117$:
	cjne	r7,#0x20,00134$
00134$:
	jc	00135$
	ljmp	00120$
00135$:
;	main.c:203: bool period = true;
	mov	dptr,#_process_body_period_2_2
	mov	a,#0x01
	movx	@dptr,a
;	main.c:204: highs = 0;
	mov	dptr,#_process_body_highs_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:205: while (period && highs <= MAX_BIT_HIGHS) {
00102$:
	mov	dptr,#_process_body_period_2_2
	movx	a,@dptr
	mov	r6,a
	jz	00104$
	mov	dptr,#_process_body_highs_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,#0x0C
	subb	a,r5
	clr	a
	subb	a,r6
	jc	00104$
;	main.c:206: period = read_period();
	push	ar7
	push	ar6
	push	ar5
	lcall	_read_period
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_process_body_period_2_2
	mov	a,r4
	movx	@dptr,a
;	main.c:207: highs += period;
	mov	r3,#0x00
	mov	dptr,#_process_body_highs_1_1
	mov	a,r4
	add	a,r5
	movx	@dptr,a
	mov	a,r3
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	sjmp	00102$
00104$:
;	main.c:210: if (highs > MAX_BIT_HIGHS || highs < MIN_BIT_HIGHS)
	mov	dptr,#_process_body_highs_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,#0x0C
	subb	a,r5
	clr	a
	subb	a,r6
	jc	00105$
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	subb	a,#0x00
	jnc	00106$
00105$:
;	main.c:212: return;
	ret
00106$:
;	main.c:215: lows = 0;
	mov	dptr,#_process_body_lows_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:216: while (!period && lows <= MAX_DATA1_BIT_LOWS) {
00109$:
	mov	dptr,#_process_body_period_2_2
	movx	a,@dptr
	mov	r6,a
	jnz	00111$
	mov	dptr,#_process_body_lows_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,#0x21
	subb	a,r5
	clr	a
	subb	a,r6
	jc	00111$
;	main.c:217: period = read_period();
	push	ar7
	push	ar6
	push	ar5
	lcall	_read_period
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_process_body_period_2_2
	mov	a,r4
	movx	@dptr,a
;	main.c:218: lows += !period;
	mov	a,r4
	cjne	a,#0x01,00142$
00142$:
	clr	a
	rlc	a
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_process_body_lows_1_1
	mov	a,r4
	add	a,r5
	movx	@dptr,a
	mov	a,r3
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	sjmp	00109$
00111$:
;	main.c:221: if (lows > MAX_DATA1_BIT_LOWS ||
	mov	dptr,#_process_body_lows_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,#0x21
	subb	a,r5
	clr	a
	subb	a,r6
;	main.c:222: (lows < MIN_DATA1_BIT_LOWS && lows > MAX_DATA0_BIT_LOWS) ||
	jc	00112$
	mov	a,r5
	subb	a,#0x16
	mov	a,r6
	subb	a,#0x00
	clr	a
	rlc	a
	mov	r4,a
	jz	00116$
	clr	c
	mov	a,#0x09
	subb	a,r5
	clr	a
	subb	a,r6
	jc	00112$
00116$:
;	main.c:223: lows < MIN_DATA0_BIT_LOWS)
	clr	c
	mov	a,r5
	subb	a,#0x06
	mov	a,r6
	subb	a,#0x00
	jnc	00113$
00112$:
;	main.c:225: return;
	ret
00113$:
;	main.c:228: body[bitNum] = lows >= MIN_DATA1_BIT_LOWS;
	mov	a,r7
	add	a,#_body
	mov	dpl,a
	clr	a
	addc	a,#(_body >> 8)
	mov	dph,a
	mov	a,r4
	cjne	a,#0x01,00147$
00147$:
	clr	a
	rlc	a
	mov	r4,a
	movx	@dptr,a
;	main.c:201: for (bitNum = 0; bitNum < BODY_BITS; bitNum++)
	inc	r7
	ljmp	00117$
00120$:
;	main.c:230: process_end();
	ljmp	_process_end
;------------------------------------------------------------
;Allocation info for local variables in function 'process_leader'
;------------------------------------------------------------
;period                    Allocated with name '_process_leader_period_1_1'
;lows                      Allocated with name '_process_leader_lows_1_1'
;highs                     Allocated with name '_process_leader_highs_1_1'
;------------------------------------------------------------
;	main.c:233: void process_leader()
;	-----------------------------------------
;	 function process_leader
;	-----------------------------------------
_process_leader:
;	main.c:235: bool period = true;
	mov	dptr,#_process_leader_period_1_1
	mov	a,#0x01
	movx	@dptr,a
;	main.c:236: uint16_t lows = 0;
	mov	dptr,#_process_leader_lows_1_1
;	main.c:237: uint16_t highs = 0;
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_process_leader_highs_1_1
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	main.c:239: while (period && highs <= MAX_LEADER_HIGHS)
00102$:
	mov	dptr,#_process_leader_period_1_1
	movx	a,@dptr
	mov	r7,a
	jz	00104$
	mov	dptr,#_process_leader_highs_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x5D
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00104$
;	main.c:241: period = read_period();
	push	ar7
	push	ar6
	lcall	_read_period
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	dptr,#_process_leader_period_1_1
	mov	a,r5
	movx	@dptr,a
;	main.c:242: highs += period;
	mov	r4,#0x00
	mov	dptr,#_process_leader_highs_1_1
	mov	a,r5
	add	a,r6
	movx	@dptr,a
	mov	a,r4
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00102$
00104$:
;	main.c:245: if (highs > MAX_LEADER_HIGHS || highs < MIN_LEADER_HIGHS) {
	mov	dptr,#_process_leader_highs_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x5D
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00105$
	mov	a,r6
	subb	a,#0x3E
	mov	a,r7
	subb	a,#0x00
	jnc	00109$
00105$:
;	main.c:246: return;
;	main.c:249: while (!period && lows <= MAX_LEADER_LOWS)
	ret
00109$:
	mov	dptr,#_process_leader_period_1_1
	movx	a,@dptr
	mov	r7,a
	jnz	00111$
	mov	dptr,#_process_leader_lows_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x5D
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00111$
;	main.c:251: period = read_period();
	push	ar7
	push	ar6
	lcall	_read_period
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	dptr,#_process_leader_period_1_1
	mov	a,r5
	movx	@dptr,a
;	main.c:252: lows += !period;
	mov	a,r5
	cjne	a,#0x01,00131$
00131$:
	clr	a
	rlc	a
	mov	r5,a
	mov	r4,#0x00
	mov	dptr,#_process_leader_lows_1_1
	mov	a,r5
	add	a,r6
	movx	@dptr,a
	mov	a,r4
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00109$
00111$:
;	main.c:255: if (lows > MAX_LEADER_LOWS || lows < MIN_LEADER_LOWS) {
	mov	dptr,#_process_leader_lows_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x5D
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00112$
	mov	a,r6
	subb	a,#0x3E
	mov	a,r7
	subb	a,#0x00
	jnc	00113$
00112$:
;	main.c:256: return;
	ret
00113$:
;	main.c:259: process_body();
	ljmp	_process_body
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;__00020004                Allocated with name '_main___00020004_5_12'
;__00020002                Allocated with name '_main___00020002_3_8'
;__00030005                Allocated with name '_main___00030005_4_11'
;msec                      Allocated with name '_main_msec_4_11'
;wdsv_value                Allocated with name '_main_wdsv_value_3_8'
;------------------------------------------------------------
;	main.c:262: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	/mnt/workspace/nRF24LE1_SDK-master/include/inline/watchdog_setup.inc:11: if (!pwr_clk_mgmt_is_clklf_enabled())
	mov	a,#0x07
	anl	a,_CLKLFCTRL
	mov	r7,a
	cjne	r7,#0x07,00109$
;	/mnt/workspace/nRF24LE1_SDK-master/include/inline/watchdog_setup.inc:14: pwr_clk_mgmt_clklf_configure(PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLK_SRC_RCOSC32K);
	mov	dpl,#0x01
	lcall	_pwr_clk_mgmt_clklf_configure
;	/mnt/workspace/nRF24LE1_SDK-master/include/inline/watchdog_setup.inc:15: pwr_clk_mgmt_wait_until_clklf_is_ready();
00104$:
	mov	a,_CLKLFCTRL
	jnb	acc.6,00104$
;	main.c:264: watchdog_setup();
00109$:
;	/mnt/workspace/nRF24LE1_SDK-master/include/inline/watchdog_set_wdsv_count.inc:48: WDSV = (uint8_t)wdsv_value;
	mov	_WDSV,#0x1A
;	main.c:49: ((dataByte >> 3) & 1) * LED_TIME_0BIT +
	mov	_WDSV,#0x00
;	main.c:267: gpio_pins_val_clear(P0, 0xFF);
	mov	a,_P0
	mov	_P0,#0x00
;	main.c:268: gpio_pins_val_clear(P1, 0xFF);
	mov	a,_P1
	mov	_P1,#0x00
;	main.c:273: GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
	mov	dptr,#_gpio_pin_configure_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x0C
	lcall	_gpio_pin_configure
;	main.c:278: GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
	mov	dptr,#_gpio_pin_configure_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x0B
	lcall	_gpio_pin_configure
;	main.c:283: GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
	mov	dptr,#_gpio_pin_configure_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x0A
	lcall	_gpio_pin_configure
;	main.c:287: GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_NO_RESISTORS);
	mov	dptr,#_gpio_pin_configure_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_gpio_pin_configure
;	main.c:291: PWR_CLK_MGMT_OP_MODE_CONFIG_OPTION_SOME_WAKEUP_PINS_ACTIVE_HIGH);
	mov	dpl,#0x04
	lcall	_pwr_clk_mgmt_op_mode_configure
;	main.c:293: pwr_clk_mgmt_enter_pwr_mode_active();
	mov	_PWRDWN,#0x00
;	main.c:295: process_leader();
	lcall	_process_leader
;	main.c:297: pwr_clk_mgmt_wakeup_pins_configure(PWR_CLK_MGMT_WAKEUP_CONFIG_OPTION_INPUT_P0_6_ENABLE);
	mov	dptr,#0x0040
	lcall	_pwr_clk_mgmt_wakeup_pins_configure
;	main.c:301: PWR_CLK_MGMT_OP_MODE_CONFIG_OPTION_SOME_WAKEUP_PINS_ACTIVE_HIGH);
	mov	dpl,#0x06
	lcall	_pwr_clk_mgmt_op_mode_configure
;	main.c:303: while(1) {
00102$:
;	main.c:304: pwr_clk_mgmt_enter_pwr_mode_deep_sleep();	
	mov	_PWRDWN,#0x01
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
