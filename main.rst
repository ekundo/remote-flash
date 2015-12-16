                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Apr 25 2013) (Linux)
                              4 ; This file was generated Sat Dec 12 12:42:36 2015
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _process_leader
                             14 	.globl _process_body
                             15 	.globl _process_end
                             16 	.globl _read_period
                             17 	.globl _process_validation
                             18 	.globl _process_success
                             19 	.globl _init_rf
                             20 	.globl _send
                             21 	.globl _process_response
                             22 	.globl _rng_get_one_byte_and_turn_off
                             23 	.globl _rf_spi_execute_command
                             24 	.globl _rf_irq_clear_all
                             25 	.globl _rf_spi_configure_enable
                             26 	.globl _rf_write_tx_payload
                             27 	.globl _rf_read_rx_payload
                             28 	.globl _rf_set_as_tx
                             29 	.globl _rf_set_as_rx
                             30 	.globl _rf_configure
                             31 	.globl _pwr_clk_mgmt_op_mode_configure
                             32 	.globl _pwr_clk_mgmt_wakeup_pins_configure
                             33 	.globl _pwr_clk_mgmt_clklf_configure
                             34 	.globl _gpio_pin_val_read
                             35 	.globl _gpio_pin_val_write
                             36 	.globl _gpio_pin_val_set
                             37 	.globl _gpio_pin_configure
                             38 	.globl _delay_ms
                             39 	.globl _delay_us
                             40 	.globl _FSR_SB_ENDBG
                             41 	.globl _FSR_SB_STP
                             42 	.globl _FSR_SB_WEN
                             43 	.globl _FSR_SB_RDYN
                             44 	.globl _FSR_SB_INFEN
                             45 	.globl _FSR_SB_RDISMB
                             46 	.globl _RFCON_SB_RFCKEN
                             47 	.globl _RFCON_SB_RFCSN
                             48 	.globl _RFCON_SB_RFCE
                             49 	.globl _ADCON_SB_BD
                             50 	.globl _PSW_SB_P
                             51 	.globl _PSW_SB_F1
                             52 	.globl _PSW_SB_OV
                             53 	.globl _PSW_SB_RS0
                             54 	.globl _PSW_SB_RS1
                             55 	.globl _PSW_SB_F0
                             56 	.globl _PSW_SB_AC
                             57 	.globl _PSW_SB_CY
                             58 	.globl _T2CON_SB_T2PS
                             59 	.globl _T2CON_SB_I3FR
                             60 	.globl _T2CON_SB_I2FR
                             61 	.globl _T2CON_SB_T2R1
                             62 	.globl _T2CON_SB_T2R0
                             63 	.globl _T2CON_SB_T2CM
                             64 	.globl _T2CON_SB_T2I1
                             65 	.globl _T2CON_SB_T2I0
                             66 	.globl _IRCON_SB_EXF2
                             67 	.globl _IRCON_SB_TF2
                             68 	.globl _IRCON_SB_TICK
                             69 	.globl _IRCON_SB_MISCIRQ
                             70 	.globl _IRCON_SB_WUOPIRQ
                             71 	.globl _IRCON_SB_SPI_2WIRE
                             72 	.globl _IRCON_SB_RFIRQ
                             73 	.globl _IRCON_SB_RFRDY
                             74 	.globl _IEN1_SB_T2EXTRLD
                             75 	.globl _IEN1_SB_TICK
                             76 	.globl _IEN1_SB_MISCIRQ
                             77 	.globl _IEN1_SB_WUOPIRQ
                             78 	.globl _IEN1_SB_SPI_2WIRE
                             79 	.globl _IEN1_SB_RFIRQ
                             80 	.globl _IEN1_SB_RFRDY
                             81 	.globl _P3_SB_D7
                             82 	.globl _P3_SB_D6
                             83 	.globl _P3_SB_D5
                             84 	.globl _P3_SB_D4
                             85 	.globl _P3_SB_D3
                             86 	.globl _P3_SB_D2
                             87 	.globl _P3_SB_D1
                             88 	.globl _P3_SB_D0
                             89 	.globl _IEN0_SB_GLOBAL
                             90 	.globl _IEN0_SB_T2
                             91 	.globl _IEN0_SB_UART
                             92 	.globl _IEN0_SB_T1
                             93 	.globl _IEN0_SB_POFIRQ
                             94 	.globl _IEN0_SB_T0
                             95 	.globl _IEN0_SB_IFP
                             96 	.globl _P2_SB_D7
                             97 	.globl _P2_SB_D6
                             98 	.globl _P2_SB_D5
                             99 	.globl _P2_SB_D4
                            100 	.globl _P2_SB_D3
                            101 	.globl _P2_SB_D2
                            102 	.globl _P2_SB_D1
                            103 	.globl _P2_SB_D0
                            104 	.globl _S0CON_SB_SM0
                            105 	.globl _S0CON_SB_SM1
                            106 	.globl _S0CON_SB_SM20
                            107 	.globl _S0CON_SB_REN0
                            108 	.globl _S0CON_SB_TB80
                            109 	.globl _S0CON_SB_RB80
                            110 	.globl _S0CON_SB_TI0
                            111 	.globl _S0CON_SB_RI0
                            112 	.globl _P1_SB_D7
                            113 	.globl _P1_SB_D6
                            114 	.globl _P1_SB_D5
                            115 	.globl _P1_SB_D4
                            116 	.globl _P1_SB_D3
                            117 	.globl _P1_SB_D2
                            118 	.globl _P1_SB_D1
                            119 	.globl _P1_SB_D0
                            120 	.globl _TCON_SB_TF1
                            121 	.globl _TCON_SB_TR1
                            122 	.globl _TCON_SB_TF0
                            123 	.globl _TCON_SB_TR0
                            124 	.globl _TCON_SB_IE1
                            125 	.globl _TCON_SB_IT1
                            126 	.globl _TCON_SB_IE0
                            127 	.globl _TCON_SB_IT0
                            128 	.globl _P0_SB_D7
                            129 	.globl _P0_SB_D6
                            130 	.globl _P0_SB_D5
                            131 	.globl _P0_SB_D4
                            132 	.globl _P0_SB_D3
                            133 	.globl _P0_SB_D2
                            134 	.globl _P0_SB_D1
                            135 	.globl _P0_SB_D0
                            136 	.globl _ADCDAT
                            137 	.globl _S0REL
                            138 	.globl _T2
                            139 	.globl _T1
                            140 	.globl _T0
                            141 	.globl _CRC
                            142 	.globl _CC3
                            143 	.globl _CC2
                            144 	.globl _CC1
                            145 	.globl _SPIMDAT
                            146 	.globl _SPIMSTAT
                            147 	.globl _SPIMCON1
                            148 	.globl _SPIMCON0
                            149 	.globl _FCR
                            150 	.globl _FPCR
                            151 	.globl _FSR
                            152 	.globl _B
                            153 	.globl _ARCON
                            154 	.globl _MD5
                            155 	.globl _MD4
                            156 	.globl _MD3
                            157 	.globl _MD2
                            158 	.globl _MD1
                            159 	.globl _MD0
                            160 	.globl _RFCON
                            161 	.globl _SPIRDAT
                            162 	.globl _SPIRSTAT
                            163 	.globl _SPIRCON1
                            164 	.globl _SPIRCON0
                            165 	.globl _W2CON0
                            166 	.globl _W2CON1
                            167 	.globl _ACC
                            168 	.globl _CCPDATO
                            169 	.globl _CCPDATIB
                            170 	.globl _CCPDATIA
                            171 	.globl _POFCON
                            172 	.globl _COMPCON
                            173 	.globl _W2DAT
                            174 	.globl _W2SADR
                            175 	.globl _ADCON
                            176 	.globl _RNGDAT
                            177 	.globl _RNGCTL
                            178 	.globl _ADCDATL
                            179 	.globl _ADCDATH
                            180 	.globl _ADCCON1
                            181 	.globl _ADCCON2
                            182 	.globl _ADCCON3
                            183 	.globl _PSW
                            184 	.globl _WUOPC0
                            185 	.globl _WUOPC1
                            186 	.globl _TH2
                            187 	.globl _TL2
                            188 	.globl _CRCH
                            189 	.globl _CRCL
                            190 	.globl __XPAGE
                            191 	.globl _MPAGE
                            192 	.globl _T2CON
                            193 	.globl _CCH3
                            194 	.globl _CCL3
                            195 	.globl _CCH2
                            196 	.globl _CCL2
                            197 	.globl _CCH1
                            198 	.globl _CCL1
                            199 	.globl _CCEN
                            200 	.globl _IRCON
                            201 	.globl _SPISDAT
                            202 	.globl _SPISSTAT
                            203 	.globl _SPISCON1
                            204 	.globl _SPISCON0
                            205 	.globl _S0RELH
                            206 	.globl _IP1
                            207 	.globl _IEN1
                            208 	.globl _SPISRDSZ
                            209 	.globl _RTC2CPT00
                            210 	.globl _RTC2CMP1
                            211 	.globl _RTC2CMP0
                            212 	.globl _RTC2CON
                            213 	.globl _PWMCON
                            214 	.globl _RSTREAS
                            215 	.globl _P3
                            216 	.globl _WDSV
                            217 	.globl _OPMCON
                            218 	.globl _CLKLFCTRL
                            219 	.globl _RTC2CPT10
                            220 	.globl _RTC2CPT01
                            221 	.globl _S0RELL
                            222 	.globl _IP0
                            223 	.globl _IEN0
                            224 	.globl _MEMCON
                            225 	.globl _INTEXP
                            226 	.globl _WUCON
                            227 	.globl _PWRDWN
                            228 	.globl _CLKCTRL
                            229 	.globl _PWMDC1
                            230 	.globl _PWMDC0
                            231 	.globl _P2
                            232 	.globl _P1CON
                            233 	.globl _P0CON
                            234 	.globl _S0BUF
                            235 	.globl _S0CON
                            236 	.globl _P2CON
                            237 	.globl _P3DIR
                            238 	.globl _P2DIR
                            239 	.globl _P1DIR
                            240 	.globl _P0DIR
                            241 	.globl _DPS
                            242 	.globl _P1
                            243 	.globl _P3CON
                            244 	.globl _TH1
                            245 	.globl _TH0
                            246 	.globl _TL1
                            247 	.globl _TL0
                            248 	.globl _TMOD
                            249 	.globl _TCON
                            250 	.globl _PCON
                            251 	.globl _DPH1
                            252 	.globl _DPL1
                            253 	.globl _DPH
                            254 	.globl _DPL
                            255 	.globl _SP
                            256 	.globl _P0
                            257 	.globl _send_PARM_2
                            258 	.globl _process_response_PARM_2
                            259 	.globl _body
                            260 ;--------------------------------------------------------
                            261 ; special function registers
                            262 ;--------------------------------------------------------
                            263 	.area RSEG    (ABS,DATA)
   0000                     264 	.org 0x0000
                    0080    265 _P0	=	0x0080
                    0081    266 _SP	=	0x0081
                    0082    267 _DPL	=	0x0082
                    0083    268 _DPH	=	0x0083
                    0084    269 _DPL1	=	0x0084
                    0085    270 _DPH1	=	0x0085
                    0087    271 _PCON	=	0x0087
                    0088    272 _TCON	=	0x0088
                    0089    273 _TMOD	=	0x0089
                    008A    274 _TL0	=	0x008a
                    008B    275 _TL1	=	0x008b
                    008C    276 _TH0	=	0x008c
                    008D    277 _TH1	=	0x008d
                    008F    278 _P3CON	=	0x008f
                    0090    279 _P1	=	0x0090
                    0092    280 _DPS	=	0x0092
                    0093    281 _P0DIR	=	0x0093
                    0094    282 _P1DIR	=	0x0094
                    0095    283 _P2DIR	=	0x0095
                    0096    284 _P3DIR	=	0x0096
                    0097    285 _P2CON	=	0x0097
                    0098    286 _S0CON	=	0x0098
                    0099    287 _S0BUF	=	0x0099
                    009E    288 _P0CON	=	0x009e
                    009F    289 _P1CON	=	0x009f
                    00A0    290 _P2	=	0x00a0
                    00A1    291 _PWMDC0	=	0x00a1
                    00A2    292 _PWMDC1	=	0x00a2
                    00A3    293 _CLKCTRL	=	0x00a3
                    00A4    294 _PWRDWN	=	0x00a4
                    00A5    295 _WUCON	=	0x00a5
                    00A6    296 _INTEXP	=	0x00a6
                    00A7    297 _MEMCON	=	0x00a7
                    00A8    298 _IEN0	=	0x00a8
                    00A9    299 _IP0	=	0x00a9
                    00AA    300 _S0RELL	=	0x00aa
                    00AB    301 _RTC2CPT01	=	0x00ab
                    00AC    302 _RTC2CPT10	=	0x00ac
                    00AD    303 _CLKLFCTRL	=	0x00ad
                    00AE    304 _OPMCON	=	0x00ae
                    00AF    305 _WDSV	=	0x00af
                    00B0    306 _P3	=	0x00b0
                    00B1    307 _RSTREAS	=	0x00b1
                    00B2    308 _PWMCON	=	0x00b2
                    00B3    309 _RTC2CON	=	0x00b3
                    00B4    310 _RTC2CMP0	=	0x00b4
                    00B5    311 _RTC2CMP1	=	0x00b5
                    00B6    312 _RTC2CPT00	=	0x00b6
                    00B7    313 _SPISRDSZ	=	0x00b7
                    00B8    314 _IEN1	=	0x00b8
                    00B9    315 _IP1	=	0x00b9
                    00BA    316 _S0RELH	=	0x00ba
                    00BC    317 _SPISCON0	=	0x00bc
                    00BD    318 _SPISCON1	=	0x00bd
                    00BE    319 _SPISSTAT	=	0x00be
                    00BF    320 _SPISDAT	=	0x00bf
                    00C0    321 _IRCON	=	0x00c0
                    00C1    322 _CCEN	=	0x00c1
                    00C2    323 _CCL1	=	0x00c2
                    00C3    324 _CCH1	=	0x00c3
                    00C4    325 _CCL2	=	0x00c4
                    00C5    326 _CCH2	=	0x00c5
                    00C6    327 _CCL3	=	0x00c6
                    00C7    328 _CCH3	=	0x00c7
                    00C8    329 _T2CON	=	0x00c8
                    00C9    330 _MPAGE	=	0x00c9
                    00C9    331 __XPAGE	=	0x00c9
                    00CA    332 _CRCL	=	0x00ca
                    00CB    333 _CRCH	=	0x00cb
                    00CC    334 _TL2	=	0x00cc
                    00CD    335 _TH2	=	0x00cd
                    00CE    336 _WUOPC1	=	0x00ce
                    00CF    337 _WUOPC0	=	0x00cf
                    00D0    338 _PSW	=	0x00d0
                    00D1    339 _ADCCON3	=	0x00d1
                    00D2    340 _ADCCON2	=	0x00d2
                    00D3    341 _ADCCON1	=	0x00d3
                    00D4    342 _ADCDATH	=	0x00d4
                    00D5    343 _ADCDATL	=	0x00d5
                    00D6    344 _RNGCTL	=	0x00d6
                    00D7    345 _RNGDAT	=	0x00d7
                    00D8    346 _ADCON	=	0x00d8
                    00D9    347 _W2SADR	=	0x00d9
                    00DA    348 _W2DAT	=	0x00da
                    00DB    349 _COMPCON	=	0x00db
                    00DC    350 _POFCON	=	0x00dc
                    00DD    351 _CCPDATIA	=	0x00dd
                    00DE    352 _CCPDATIB	=	0x00de
                    00DF    353 _CCPDATO	=	0x00df
                    00E0    354 _ACC	=	0x00e0
                    00E1    355 _W2CON1	=	0x00e1
                    00E2    356 _W2CON0	=	0x00e2
                    00E4    357 _SPIRCON0	=	0x00e4
                    00E5    358 _SPIRCON1	=	0x00e5
                    00E6    359 _SPIRSTAT	=	0x00e6
                    00E7    360 _SPIRDAT	=	0x00e7
                    00E8    361 _RFCON	=	0x00e8
                    00E9    362 _MD0	=	0x00e9
                    00EA    363 _MD1	=	0x00ea
                    00EB    364 _MD2	=	0x00eb
                    00EC    365 _MD3	=	0x00ec
                    00ED    366 _MD4	=	0x00ed
                    00EE    367 _MD5	=	0x00ee
                    00EF    368 _ARCON	=	0x00ef
                    00F0    369 _B	=	0x00f0
                    00F8    370 _FSR	=	0x00f8
                    00F9    371 _FPCR	=	0x00f9
                    00FA    372 _FCR	=	0x00fa
                    00FC    373 _SPIMCON0	=	0x00fc
                    00FD    374 _SPIMCON1	=	0x00fd
                    00FE    375 _SPIMSTAT	=	0x00fe
                    00FF    376 _SPIMDAT	=	0x00ff
                    C3C2    377 _CC1	=	0xc3c2
                    C5C4    378 _CC2	=	0xc5c4
                    C7C6    379 _CC3	=	0xc7c6
                    CBCA    380 _CRC	=	0xcbca
                    8C8A    381 _T0	=	0x8c8a
                    8D8B    382 _T1	=	0x8d8b
                    CDCC    383 _T2	=	0xcdcc
                    BAAA    384 _S0REL	=	0xbaaa
                    D4D5    385 _ADCDAT	=	0xd4d5
                            386 ;--------------------------------------------------------
                            387 ; special function bits
                            388 ;--------------------------------------------------------
                            389 	.area RSEG    (ABS,DATA)
   0000                     390 	.org 0x0000
                    0080    391 _P0_SB_D0	=	0x0080
                    0081    392 _P0_SB_D1	=	0x0081
                    0082    393 _P0_SB_D2	=	0x0082
                    0083    394 _P0_SB_D3	=	0x0083
                    0084    395 _P0_SB_D4	=	0x0084
                    0085    396 _P0_SB_D5	=	0x0085
                    0086    397 _P0_SB_D6	=	0x0086
                    0087    398 _P0_SB_D7	=	0x0087
                    0088    399 _TCON_SB_IT0	=	0x0088
                    0089    400 _TCON_SB_IE0	=	0x0089
                    008A    401 _TCON_SB_IT1	=	0x008a
                    008B    402 _TCON_SB_IE1	=	0x008b
                    008C    403 _TCON_SB_TR0	=	0x008c
                    008D    404 _TCON_SB_TF0	=	0x008d
                    008E    405 _TCON_SB_TR1	=	0x008e
                    008F    406 _TCON_SB_TF1	=	0x008f
                    0090    407 _P1_SB_D0	=	0x0090
                    0091    408 _P1_SB_D1	=	0x0091
                    0092    409 _P1_SB_D2	=	0x0092
                    0093    410 _P1_SB_D3	=	0x0093
                    0094    411 _P1_SB_D4	=	0x0094
                    0095    412 _P1_SB_D5	=	0x0095
                    0096    413 _P1_SB_D6	=	0x0096
                    0097    414 _P1_SB_D7	=	0x0097
                    0098    415 _S0CON_SB_RI0	=	0x0098
                    0099    416 _S0CON_SB_TI0	=	0x0099
                    009A    417 _S0CON_SB_RB80	=	0x009a
                    009B    418 _S0CON_SB_TB80	=	0x009b
                    009C    419 _S0CON_SB_REN0	=	0x009c
                    009D    420 _S0CON_SB_SM20	=	0x009d
                    009E    421 _S0CON_SB_SM1	=	0x009e
                    009F    422 _S0CON_SB_SM0	=	0x009f
                    00A0    423 _P2_SB_D0	=	0x00a0
                    00A1    424 _P2_SB_D1	=	0x00a1
                    00A2    425 _P2_SB_D2	=	0x00a2
                    00A3    426 _P2_SB_D3	=	0x00a3
                    00A4    427 _P2_SB_D4	=	0x00a4
                    00A5    428 _P2_SB_D5	=	0x00a5
                    00A6    429 _P2_SB_D6	=	0x00a6
                    00A7    430 _P2_SB_D7	=	0x00a7
                    00A8    431 _IEN0_SB_IFP	=	0x00a8
                    00A9    432 _IEN0_SB_T0	=	0x00a9
                    00AA    433 _IEN0_SB_POFIRQ	=	0x00aa
                    00AB    434 _IEN0_SB_T1	=	0x00ab
                    00AC    435 _IEN0_SB_UART	=	0x00ac
                    00AD    436 _IEN0_SB_T2	=	0x00ad
                    00AF    437 _IEN0_SB_GLOBAL	=	0x00af
                    00B0    438 _P3_SB_D0	=	0x00b0
                    00B1    439 _P3_SB_D1	=	0x00b1
                    00B2    440 _P3_SB_D2	=	0x00b2
                    00B3    441 _P3_SB_D3	=	0x00b3
                    00B4    442 _P3_SB_D4	=	0x00b4
                    00B5    443 _P3_SB_D5	=	0x00b5
                    00B6    444 _P3_SB_D6	=	0x00b6
                    00B7    445 _P3_SB_D7	=	0x00b7
                    00B8    446 _IEN1_SB_RFRDY	=	0x00b8
                    00B9    447 _IEN1_SB_RFIRQ	=	0x00b9
                    00BA    448 _IEN1_SB_SPI_2WIRE	=	0x00ba
                    00BB    449 _IEN1_SB_WUOPIRQ	=	0x00bb
                    00BC    450 _IEN1_SB_MISCIRQ	=	0x00bc
                    00BD    451 _IEN1_SB_TICK	=	0x00bd
                    00BF    452 _IEN1_SB_T2EXTRLD	=	0x00bf
                    00C0    453 _IRCON_SB_RFRDY	=	0x00c0
                    00C1    454 _IRCON_SB_RFIRQ	=	0x00c1
                    00C2    455 _IRCON_SB_SPI_2WIRE	=	0x00c2
                    00C3    456 _IRCON_SB_WUOPIRQ	=	0x00c3
                    00C4    457 _IRCON_SB_MISCIRQ	=	0x00c4
                    00C5    458 _IRCON_SB_TICK	=	0x00c5
                    00C6    459 _IRCON_SB_TF2	=	0x00c6
                    00C7    460 _IRCON_SB_EXF2	=	0x00c7
                    00C8    461 _T2CON_SB_T2I0	=	0x00c8
                    00C9    462 _T2CON_SB_T2I1	=	0x00c9
                    00CA    463 _T2CON_SB_T2CM	=	0x00ca
                    00CB    464 _T2CON_SB_T2R0	=	0x00cb
                    00CC    465 _T2CON_SB_T2R1	=	0x00cc
                    00CD    466 _T2CON_SB_I2FR	=	0x00cd
                    00CE    467 _T2CON_SB_I3FR	=	0x00ce
                    00CF    468 _T2CON_SB_T2PS	=	0x00cf
                    00D7    469 _PSW_SB_CY	=	0x00d7
                    00D6    470 _PSW_SB_AC	=	0x00d6
                    00D5    471 _PSW_SB_F0	=	0x00d5
                    00D4    472 _PSW_SB_RS1	=	0x00d4
                    00D3    473 _PSW_SB_RS0	=	0x00d3
                    00D2    474 _PSW_SB_OV	=	0x00d2
                    00D1    475 _PSW_SB_F1	=	0x00d1
                    00D0    476 _PSW_SB_P	=	0x00d0
                    00DF    477 _ADCON_SB_BD	=	0x00df
                    00E8    478 _RFCON_SB_RFCE	=	0x00e8
                    00E9    479 _RFCON_SB_RFCSN	=	0x00e9
                    00EA    480 _RFCON_SB_RFCKEN	=	0x00ea
                    00FA    481 _FSR_SB_RDISMB	=	0x00fa
                    00FB    482 _FSR_SB_INFEN	=	0x00fb
                    00FC    483 _FSR_SB_RDYN	=	0x00fc
                    00FD    484 _FSR_SB_WEN	=	0x00fd
                    00FE    485 _FSR_SB_STP	=	0x00fe
                    00FF    486 _FSR_SB_ENDBG	=	0x00ff
                            487 ;--------------------------------------------------------
                            488 ; overlayable register banks
                            489 ;--------------------------------------------------------
                            490 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     491 	.ds 8
                            492 ;--------------------------------------------------------
                            493 ; internal ram data
                            494 ;--------------------------------------------------------
                            495 	.area DSEG    (DATA)
                            496 ;--------------------------------------------------------
                            497 ; overlayable items in internal ram 
                            498 ;--------------------------------------------------------
                            499 	.area OSEG    (OVR,DATA)
                            500 ;--------------------------------------------------------
                            501 ; Stack segment in internal ram 
                            502 ;--------------------------------------------------------
                            503 	.area	SSEG	(DATA)
   0010                     504 __start__stack:
   0010                     505 	.ds	1
                            506 
                            507 ;--------------------------------------------------------
                            508 ; indirectly addressable internal ram data
                            509 ;--------------------------------------------------------
                            510 	.area ISEG    (DATA)
                            511 ;--------------------------------------------------------
                            512 ; absolute internal ram data
                            513 ;--------------------------------------------------------
                            514 	.area IABS    (ABS,DATA)
                            515 	.area IABS    (ABS,DATA)
                            516 ;--------------------------------------------------------
                            517 ; bit data
                            518 ;--------------------------------------------------------
                            519 	.area BSEG    (BIT)
                            520 ;--------------------------------------------------------
                            521 ; paged external ram data
                            522 ;--------------------------------------------------------
                            523 	.area PSEG    (PAG,XDATA)
                            524 ;--------------------------------------------------------
                            525 ; external ram data
                            526 ;--------------------------------------------------------
                            527 	.area XSEG    (XDATA)
   0000                     528 _body::
   0000                     529 	.ds 32
   0020                     530 _process_response_PARM_2:
   0020                     531 	.ds 1
   0021                     532 _process_response_command_1_1:
   0021                     533 	.ds 1
   0022                     534 _send_PARM_2:
   0022                     535 	.ds 1
   0023                     536 _send_command_1_1:
   0023                     537 	.ds 1
   0024                     538 _send_payload_1_1:
   0024                     539 	.ds 3
   0027                     540 _init_rf_pipes_1_1:
   0027                     541 	.ds 10
   0031                     542 _process_success_customByte_1_1:
   0031                     543 	.ds 1
   0032                     544 _process_success_dataByte_1_1:
   0032                     545 	.ds 1
   0033                     546 _process_end_period_1_1:
   0033                     547 	.ds 1
   0034                     548 _process_end_highs_1_1:
   0034                     549 	.ds 2
   0036                     550 _process_body_highs_1_1:
   0036                     551 	.ds 2
   0038                     552 _process_body_lows_1_1:
   0038                     553 	.ds 2
   003A                     554 _process_body_period_2_2:
   003A                     555 	.ds 1
   003B                     556 _process_leader_period_1_1:
   003B                     557 	.ds 1
   003C                     558 _process_leader_lows_1_1:
   003C                     559 	.ds 2
   003E                     560 _process_leader_highs_1_1:
   003E                     561 	.ds 2
                            562 ;--------------------------------------------------------
                            563 ; absolute external ram data
                            564 ;--------------------------------------------------------
                            565 	.area XABS    (ABS,XDATA)
                            566 ;--------------------------------------------------------
                            567 ; external initialized ram data
                            568 ;--------------------------------------------------------
                            569 	.area XISEG   (XDATA)
                            570 	.area HOME    (CODE)
                            571 	.area GSINIT0 (CODE)
                            572 	.area GSINIT1 (CODE)
                            573 	.area GSINIT2 (CODE)
                            574 	.area GSINIT3 (CODE)
                            575 	.area GSINIT4 (CODE)
                            576 	.area GSINIT5 (CODE)
                            577 	.area GSINIT  (CODE)
                            578 	.area GSFINAL (CODE)
                            579 	.area CSEG    (CODE)
                            580 ;--------------------------------------------------------
                            581 ; interrupt vector 
                            582 ;--------------------------------------------------------
                            583 	.area HOME    (CODE)
   0000                     584 __interrupt_vect:
   0000 02 00 08            585 	ljmp	__sdcc_gsinit_startup
                            586 ;--------------------------------------------------------
                            587 ; global & static initialisations
                            588 ;--------------------------------------------------------
                            589 	.area HOME    (CODE)
                            590 	.area GSINIT  (CODE)
                            591 	.area GSFINAL (CODE)
                            592 	.area GSINIT  (CODE)
                            593 	.globl __sdcc_gsinit_startup
                            594 	.globl __sdcc_program_startup
                            595 	.globl __start__stack
                            596 	.globl __mcs51_genXINIT
                            597 	.globl __mcs51_genXRAMCLEAR
                            598 	.globl __mcs51_genRAMCLEAR
                            599 	.area GSFINAL (CODE)
   0061 02 00 03            600 	ljmp	__sdcc_program_startup
                            601 ;--------------------------------------------------------
                            602 ; Home
                            603 ;--------------------------------------------------------
                            604 	.area HOME    (CODE)
                            605 	.area HOME    (CODE)
   0003                     606 __sdcc_program_startup:
   0003 12 06 E6            607 	lcall	_main
                            608 ;	return from main will lock up
   0006 80 FE               609 	sjmp .
                            610 ;--------------------------------------------------------
                            611 ; code
                            612 ;--------------------------------------------------------
                            613 	.area CSEG    (CODE)
                            614 ;------------------------------------------------------------
                            615 ;Allocation info for local variables in function 'process_response'
                            616 ;------------------------------------------------------------
                            617 ;dataByte                  Allocated with name '_process_response_PARM_2'
                            618 ;command                   Allocated with name '_process_response_command_1_1'
                            619 ;delay                     Allocated with name '_process_response_delay_1_1'
                            620 ;------------------------------------------------------------
                            621 ;	main.c:44: void process_response(uint8_t command, uint8_t dataByte)
                            622 ;	-----------------------------------------
                            623 ;	 function process_response
                            624 ;	-----------------------------------------
   0064                     625 _process_response:
                    0007    626 	ar7 = 0x07
                    0006    627 	ar6 = 0x06
                    0005    628 	ar5 = 0x05
                    0004    629 	ar4 = 0x04
                    0003    630 	ar3 = 0x03
                    0002    631 	ar2 = 0x02
                    0001    632 	ar1 = 0x01
                    0000    633 	ar0 = 0x00
   0064 E5 82               634 	mov	a,dpl
                            635 ;	main.c:47: if (command == 2) {
   0066 90 00 21            636 	mov	dptr,#_process_response_command_1_1
   0069 F0                  637 	movx	@dptr,a
   006A FF                  638 	mov	r7,a
   006B BF 02 02            639 	cjne	r7,#0x02,00106$
   006E 80 01               640 	sjmp	00107$
   0070                     641 00106$:
   0070 22                  642 	ret
   0071                     643 00107$:
                            644 ;	main.c:49: ((dataByte >> 3) & 1) * LED_TIME_0BIT +
   0071 90 00 20            645 	mov	dptr,#_process_response_PARM_2
   0074 E0                  646 	movx	a,@dptr
   0075 FF                  647 	mov	r7,a
   0076 A2 E3               648 	mov	c,acc[3]
   0078 E4                  649 	clr	a
   0079 33                  650 	rlc	a
   007A 75 F0 14            651 	mov	b,#0x14
   007D A4                  652 	mul	ab
   007E FE                  653 	mov	r6,a
   007F AD F0               654 	mov	r5,b
                            655 ;	main.c:50: ((dataByte >> 4) & 1) * LED_TIME_1BIT +
   0081 EF                  656 	mov	a,r7
   0082 C4                  657 	swap	a
   0083 54 01               658 	anl	a,#0x01
   0085 75 F0 32            659 	mov	b,#0x32
   0088 A4                  660 	mul	ab
   0089 2E                  661 	add	a,r6
   008A FE                  662 	mov	r6,a
   008B ED                  663 	mov	a,r5
   008C 35 F0               664 	addc	a,b
   008E FD                  665 	mov	r5,a
                            666 ;	main.c:51: ((dataByte >> 5) & 1) * LED_TIME_2BIT +
   008F EF                  667 	mov	a,r7
   0090 A2 E5               668 	mov	c,acc[5]
   0092 E4                  669 	clr	a
   0093 33                  670 	rlc	a
   0094 75 F0 64            671 	mov	b,#0x64
   0097 A4                  672 	mul	ab
   0098 2E                  673 	add	a,r6
   0099 FE                  674 	mov	r6,a
   009A ED                  675 	mov	a,r5
   009B 35 F0               676 	addc	a,b
   009D FD                  677 	mov	r5,a
                            678 ;	main.c:52: ((dataByte >> 6) & 1) * LED_TIME_3BIT +
   009E EF                  679 	mov	a,r7
   009F 23                  680 	rl	a
   00A0 23                  681 	rl	a
   00A1 54 01               682 	anl	a,#0x01
   00A3 75 F0 FA            683 	mov	b,#0xFA
   00A6 A4                  684 	mul	ab
   00A7 2E                  685 	add	a,r6
   00A8 FE                  686 	mov	r6,a
   00A9 ED                  687 	mov	a,r5
   00AA 35 F0               688 	addc	a,b
   00AC FD                  689 	mov	r5,a
                            690 ;	main.c:53: ((dataByte >> 7) & 1) * LED_TIME_4BIT;
   00AD EF                  691 	mov	a,r7
   00AE 23                  692 	rl	a
   00AF 54 01               693 	anl	a,#0x01
   00B1 90 00 EB            694 	mov	dptr,#__mulint_PARM_2
   00B4 F0                  695 	movx	@dptr,a
   00B5 A3                  696 	inc	dptr
   00B6 E4                  697 	clr	a
   00B7 F0                  698 	movx	@dptr,a
   00B8 90 01 F4            699 	mov	dptr,#0x01F4
   00BB C0 07               700 	push	ar7
   00BD C0 06               701 	push	ar6
   00BF C0 05               702 	push	ar5
   00C1 12 1B 61            703 	lcall	__mulint
   00C4 AB 82               704 	mov	r3,dpl
   00C6 AC 83               705 	mov	r4,dph
   00C8 D0 05               706 	pop	ar5
   00CA D0 06               707 	pop	ar6
   00CC D0 07               708 	pop	ar7
   00CE EB                  709 	mov	a,r3
   00CF 2E                  710 	add	a,r6
   00D0 FE                  711 	mov	r6,a
   00D1 EC                  712 	mov	a,r4
   00D2 3D                  713 	addc	a,r5
   00D3 FD                  714 	mov	r5,a
                            715 ;	main.c:54: gpio_pin_val_write(RED_PIN, ((~dataByte >> 0) & 1));
   00D4 7C 00               716 	mov	r4,#0x00
   00D6 EF                  717 	mov	a,r7
   00D7 F4                  718 	cpl	a
   00D8 FF                  719 	mov	r7,a
   00D9 EC                  720 	mov	a,r4
   00DA F4                  721 	cpl	a
   00DB FC                  722 	mov	r4,a
   00DC 90 00 51            723 	mov	dptr,#_gpio_pin_val_write_PARM_2
   00DF EF                  724 	mov	a,r7
   00E0 54 01               725 	anl	a,#0x01
   00E2 F0                  726 	movx	@dptr,a
   00E3 75 82 0C            727 	mov	dpl,#0x0C
   00E6 C0 07               728 	push	ar7
   00E8 C0 06               729 	push	ar6
   00EA C0 05               730 	push	ar5
   00EC C0 04               731 	push	ar4
   00EE 12 0D 14            732 	lcall	_gpio_pin_val_write
   00F1 D0 04               733 	pop	ar4
   00F3 D0 05               734 	pop	ar5
   00F5 D0 06               735 	pop	ar6
   00F7 D0 07               736 	pop	ar7
                            737 ;	main.c:55: gpio_pin_val_write(GREEN_PIN, ((~dataByte >> 1) & 1));
   00F9 90 00 51            738 	mov	dptr,#_gpio_pin_val_write_PARM_2
   00FC EF                  739 	mov	a,r7
   00FD 03                  740 	rr	a
   00FE 54 01               741 	anl	a,#0x01
   0100 F0                  742 	movx	@dptr,a
   0101 75 82 0B            743 	mov	dpl,#0x0B
   0104 C0 07               744 	push	ar7
   0106 C0 06               745 	push	ar6
   0108 C0 05               746 	push	ar5
   010A C0 04               747 	push	ar4
   010C 12 0D 14            748 	lcall	_gpio_pin_val_write
   010F D0 04               749 	pop	ar4
   0111 D0 05               750 	pop	ar5
   0113 D0 06               751 	pop	ar6
   0115 D0 07               752 	pop	ar7
                            753 ;	main.c:56: gpio_pin_val_write(BLUE_PIN, ((~dataByte >> 2) & 1));
   0117 90 00 51            754 	mov	dptr,#_gpio_pin_val_write_PARM_2
   011A EF                  755 	mov	a,r7
   011B 03                  756 	rr	a
   011C 03                  757 	rr	a
   011D 54 01               758 	anl	a,#0x01
   011F F0                  759 	movx	@dptr,a
   0120 75 82 0A            760 	mov	dpl,#0x0A
   0123 C0 06               761 	push	ar6
   0125 C0 05               762 	push	ar5
   0127 12 0D 14            763 	lcall	_gpio_pin_val_write
   012A D0 05               764 	pop	ar5
   012C D0 06               765 	pop	ar6
                            766 ;	main.c:57: delay_ms(delay);
   012E 8E 82               767 	mov	dpl,r6
   0130 8D 83               768 	mov	dph,r5
   0132 12 07 55            769 	lcall	_delay_ms
                            770 ;	main.c:58: gpio_pin_val_set(RED_PIN);
   0135 75 82 0C            771 	mov	dpl,#0x0C
   0138 12 0C AD            772 	lcall	_gpio_pin_val_set
                            773 ;	main.c:59: gpio_pin_val_set(GREEN_PIN);
   013B 75 82 0B            774 	mov	dpl,#0x0B
   013E 12 0C AD            775 	lcall	_gpio_pin_val_set
                            776 ;	main.c:60: gpio_pin_val_set(BLUE_PIN);
   0141 75 82 0A            777 	mov	dpl,#0x0A
   0144 02 0C AD            778 	ljmp	_gpio_pin_val_set
                            779 ;------------------------------------------------------------
                            780 ;Allocation info for local variables in function 'send'
                            781 ;------------------------------------------------------------
                            782 ;dataByte                  Allocated with name '_send_PARM_2'
                            783 ;command                   Allocated with name '_send_command_1_1'
                            784 ;count                     Allocated with name '_send_count_1_1'
                            785 ;payload                   Allocated with name '_send_payload_1_1'
                            786 ;------------------------------------------------------------
                            787 ;	main.c:64: void send(uint8_t command, uint8_t dataByte)
                            788 ;	-----------------------------------------
                            789 ;	 function send
                            790 ;	-----------------------------------------
   0147                     791 _send:
   0147 E5 82               792 	mov	a,dpl
                            793 ;	main.c:67: uint8_t payload[3] = { command, dataByte, rng_get_one_byte_and_turn_off() };
   0149 90 00 23            794 	mov	dptr,#_send_command_1_1
   014C F0                  795 	movx	@dptr,a
   014D 90 00 24            796 	mov	dptr,#_send_payload_1_1
   0150 F0                  797 	movx	@dptr,a
   0151 90 00 22            798 	mov	dptr,#_send_PARM_2
   0154 E0                  799 	movx	a,@dptr
   0155 90 00 25            800 	mov	dptr,#(_send_payload_1_1 + 0x0001)
   0158 F0                  801 	movx	@dptr,a
   0159 12 1B 33            802 	lcall	_rng_get_one_byte_and_turn_off
   015C AF 82               803 	mov	r7,dpl
   015E 90 00 26            804 	mov	dptr,#(_send_payload_1_1 + 0x0002)
   0161 EF                  805 	mov	a,r7
   0162 F0                  806 	movx	@dptr,a
                            807 ;	main.c:69: rf_write_tx_payload(&payload[0], 3, true);
   0163 90 00 D0            808 	mov	dptr,#_rf_write_tx_payload_PARM_2
   0166 74 03               809 	mov	a,#0x03
   0168 F0                  810 	movx	@dptr,a
   0169 A3                  811 	inc	dptr
   016A E4                  812 	clr	a
   016B F0                  813 	movx	@dptr,a
   016C 90 00 D2            814 	mov	dptr,#_rf_write_tx_payload_PARM_3
   016F 74 01               815 	mov	a,#0x01
   0171 F0                  816 	movx	@dptr,a
   0172 90 00 24            817 	mov	dptr,#_send_payload_1_1
   0175 75 F0 00            818 	mov	b,#0x00
   0178 12 19 5E            819 	lcall	_rf_write_tx_payload
                            820 ;	main.c:70: while(!rf_irq_tx_ds_active() && !rf_irq_max_rt_active());
   017B                     821 00102$:
   017B 90 00 B4            822 	mov	dptr,#_rf_spi_execute_command_PARM_2
   017E E4                  823 	clr	a
   017F F0                  824 	movx	@dptr,a
   0180 A3                  825 	inc	dptr
   0181 F0                  826 	movx	@dptr,a
   0182 A3                  827 	inc	dptr
   0183 F0                  828 	movx	@dptr,a
   0184 90 00 B7            829 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0187 F0                  830 	movx	@dptr,a
   0188 A3                  831 	inc	dptr
   0189 E4                  832 	clr	a
   018A F0                  833 	movx	@dptr,a
   018B 90 00 B9            834 	mov	dptr,#_rf_spi_execute_command_PARM_4
   018E 74 01               835 	mov	a,#0x01
   0190 F0                  836 	movx	@dptr,a
   0191 75 82 FF            837 	mov	dpl,#0xFF
   0194 12 17 73            838 	lcall	_rf_spi_execute_command
   0197 E5 82               839 	mov	a,dpl
   0199 20 E5 21            840 	jb	acc.5,00104$
   019C 90 00 B4            841 	mov	dptr,#_rf_spi_execute_command_PARM_2
   019F E4                  842 	clr	a
   01A0 F0                  843 	movx	@dptr,a
   01A1 A3                  844 	inc	dptr
   01A2 F0                  845 	movx	@dptr,a
   01A3 A3                  846 	inc	dptr
   01A4 F0                  847 	movx	@dptr,a
   01A5 90 00 B7            848 	mov	dptr,#_rf_spi_execute_command_PARM_3
   01A8 F0                  849 	movx	@dptr,a
   01A9 A3                  850 	inc	dptr
   01AA E4                  851 	clr	a
   01AB F0                  852 	movx	@dptr,a
   01AC 90 00 B9            853 	mov	dptr,#_rf_spi_execute_command_PARM_4
   01AF 74 01               854 	mov	a,#0x01
   01B1 F0                  855 	movx	@dptr,a
   01B2 75 82 FF            856 	mov	dpl,#0xFF
   01B5 12 17 73            857 	lcall	_rf_spi_execute_command
   01B8 E5 82               858 	mov	a,dpl
   01BA 30 E4 BE            859 	jnb	acc.4,00102$
   01BD                     860 00104$:
                            861 ;	main.c:71: if (rf_irq_tx_ds_active())
   01BD 90 00 B4            862 	mov	dptr,#_rf_spi_execute_command_PARM_2
   01C0 E4                  863 	clr	a
   01C1 F0                  864 	movx	@dptr,a
   01C2 A3                  865 	inc	dptr
   01C3 F0                  866 	movx	@dptr,a
   01C4 A3                  867 	inc	dptr
   01C5 F0                  868 	movx	@dptr,a
   01C6 90 00 B7            869 	mov	dptr,#_rf_spi_execute_command_PARM_3
   01C9 F0                  870 	movx	@dptr,a
   01CA A3                  871 	inc	dptr
   01CB E4                  872 	clr	a
   01CC F0                  873 	movx	@dptr,a
   01CD 90 00 B9            874 	mov	dptr,#_rf_spi_execute_command_PARM_4
   01D0 74 01               875 	mov	a,#0x01
   01D2 F0                  876 	movx	@dptr,a
   01D3 75 82 FF            877 	mov	dpl,#0xFF
   01D6 12 17 73            878 	lcall	_rf_spi_execute_command
   01D9 E5 82               879 	mov	a,dpl
   01DB 20 E5 03            880 	jb	acc.5,00129$
   01DE 02 02 C9            881 	ljmp	00108$
   01E1                     882 00129$:
                            883 ;	main.c:73: rf_flush_rx();
   01E1 90 00 B4            884 	mov	dptr,#_rf_spi_execute_command_PARM_2
   01E4 E4                  885 	clr	a
   01E5 F0                  886 	movx	@dptr,a
   01E6 A3                  887 	inc	dptr
   01E7 F0                  888 	movx	@dptr,a
   01E8 A3                  889 	inc	dptr
   01E9 F0                  890 	movx	@dptr,a
   01EA 90 00 B7            891 	mov	dptr,#_rf_spi_execute_command_PARM_3
   01ED F0                  892 	movx	@dptr,a
   01EE A3                  893 	inc	dptr
   01EF E4                  894 	clr	a
   01F0 F0                  895 	movx	@dptr,a
   01F1 90 00 B9            896 	mov	dptr,#_rf_spi_execute_command_PARM_4
   01F4 74 01               897 	mov	a,#0x01
   01F6 F0                  898 	movx	@dptr,a
   01F7 75 82 E2            899 	mov	dpl,#0xE2
   01FA 12 17 73            900 	lcall	_rf_spi_execute_command
                            901 ;	main.c:74: rf_flush_tx();
   01FD 90 00 B4            902 	mov	dptr,#_rf_spi_execute_command_PARM_2
   0200 E4                  903 	clr	a
   0201 F0                  904 	movx	@dptr,a
   0202 A3                  905 	inc	dptr
   0203 F0                  906 	movx	@dptr,a
   0204 A3                  907 	inc	dptr
   0205 F0                  908 	movx	@dptr,a
   0206 90 00 B7            909 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0209 F0                  910 	movx	@dptr,a
   020A A3                  911 	inc	dptr
   020B E4                  912 	clr	a
   020C F0                  913 	movx	@dptr,a
   020D 90 00 B9            914 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0210 74 01               915 	mov	a,#0x01
   0212 F0                  916 	movx	@dptr,a
   0213 75 82 E1            917 	mov	dpl,#0xE1
   0216 12 17 73            918 	lcall	_rf_spi_execute_command
                            919 ;	main.c:75: rf_irq_clear_all();
   0219 12 12 E1            920 	lcall	_rf_irq_clear_all
                            921 ;	main.c:76: rf_set_as_rx(true);
   021C 75 82 01            922 	mov	dpl,#0x01
   021F 12 15 6E            923 	lcall	_rf_set_as_rx
                            924 ;	main.c:77: for(count = 0; count < RESPONSE_TIMEOUT_US && !rf_irq_rx_dr_active(); count++)
   0222 7C 00               925 	mov	r4,#0x00
   0224 7D 00               926 	mov	r5,#0x00
   0226 7E 00               927 	mov	r6,#0x00
   0228 7F 00               928 	mov	r7,#0x00
   022A                     929 00110$:
   022A C3                  930 	clr	c
   022B EC                  931 	mov	a,r4
   022C 94 88               932 	subb	a,#0x88
   022E ED                  933 	mov	a,r5
   022F 94 13               934 	subb	a,#0x13
   0231 EE                  935 	mov	a,r6
   0232 94 00               936 	subb	a,#0x00
   0234 EF                  937 	mov	a,r7
   0235 94 00               938 	subb	a,#0x00
   0237 50 4B               939 	jnc	00113$
   0239 90 00 B4            940 	mov	dptr,#_rf_spi_execute_command_PARM_2
   023C E4                  941 	clr	a
   023D F0                  942 	movx	@dptr,a
   023E A3                  943 	inc	dptr
   023F F0                  944 	movx	@dptr,a
   0240 A3                  945 	inc	dptr
   0241 F0                  946 	movx	@dptr,a
   0242 90 00 B7            947 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0245 F0                  948 	movx	@dptr,a
   0246 A3                  949 	inc	dptr
   0247 E4                  950 	clr	a
   0248 F0                  951 	movx	@dptr,a
   0249 90 00 B9            952 	mov	dptr,#_rf_spi_execute_command_PARM_4
   024C 74 01               953 	mov	a,#0x01
   024E F0                  954 	movx	@dptr,a
   024F 75 82 FF            955 	mov	dpl,#0xFF
   0252 C0 07               956 	push	ar7
   0254 C0 06               957 	push	ar6
   0256 C0 05               958 	push	ar5
   0258 C0 04               959 	push	ar4
   025A 12 17 73            960 	lcall	_rf_spi_execute_command
   025D E5 82               961 	mov	a,dpl
   025F D0 04               962 	pop	ar4
   0261 D0 05               963 	pop	ar5
   0263 D0 06               964 	pop	ar6
   0265 D0 07               965 	pop	ar7
   0267 30 E6 04            966 	jnb	acc.6,00116$
   026A 7B 01               967 	mov	r3,#0x01
   026C 80 02               968 	sjmp	00117$
   026E                     969 00116$:
   026E 7B 00               970 	mov	r3,#0x00
   0270                     971 00117$:
   0270 EB                  972 	mov	a,r3
   0271 70 11               973 	jnz	00113$
                            974 ;	main.c:79: nop();
   0273 00                  975 	 nop 
                            976 ;	main.c:80: nop();
   0274 00                  977 	 nop 
                            978 ;	main.c:77: for(count = 0; count < RESPONSE_TIMEOUT_US && !rf_irq_rx_dr_active(); count++)
   0275 0C                  979 	inc	r4
   0276 BC 00 09            980 	cjne	r4,#0x00,00133$
   0279 0D                  981 	inc	r5
   027A BD 00 05            982 	cjne	r5,#0x00,00133$
   027D 0E                  983 	inc	r6
   027E BE 00 A9            984 	cjne	r6,#0x00,00110$
   0281 0F                  985 	inc	r7
   0282                     986 00133$:
   0282 80 A6               987 	sjmp	00110$
   0284                     988 00113$:
                            989 ;	main.c:82: if (rf_irq_rx_dr_active())
   0284 90 00 B4            990 	mov	dptr,#_rf_spi_execute_command_PARM_2
   0287 E4                  991 	clr	a
   0288 F0                  992 	movx	@dptr,a
   0289 A3                  993 	inc	dptr
   028A F0                  994 	movx	@dptr,a
   028B A3                  995 	inc	dptr
   028C F0                  996 	movx	@dptr,a
   028D 90 00 B7            997 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0290 F0                  998 	movx	@dptr,a
   0291 A3                  999 	inc	dptr
   0292 E4                 1000 	clr	a
   0293 F0                 1001 	movx	@dptr,a
   0294 90 00 B9           1002 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0297 74 01              1003 	mov	a,#0x01
   0299 F0                 1004 	movx	@dptr,a
   029A 75 82 FF           1005 	mov	dpl,#0xFF
   029D 12 17 73           1006 	lcall	_rf_spi_execute_command
   02A0 E5 82              1007 	mov	a,dpl
   02A2 30 E6 24           1008 	jnb	acc.6,00108$
                           1009 ;	main.c:84: rf_read_rx_payload(&payload[0], 3);
   02A5 90 00 97           1010 	mov	dptr,#_rf_read_rx_payload_PARM_2
   02A8 74 03              1011 	mov	a,#0x03
   02AA F0                 1012 	movx	@dptr,a
   02AB A3                 1013 	inc	dptr
   02AC E4                 1014 	clr	a
   02AD F0                 1015 	movx	@dptr,a
   02AE 90 00 24           1016 	mov	dptr,#_send_payload_1_1
   02B1 75 F0 00           1017 	mov	b,#0x00
   02B4 12 14 97           1018 	lcall	_rf_read_rx_payload
                           1019 ;	main.c:85: process_response(payload[0], payload[1]);
   02B7 90 00 24           1020 	mov	dptr,#_send_payload_1_1
   02BA E0                 1021 	movx	a,@dptr
   02BB FF                 1022 	mov	r7,a
   02BC 90 00 25           1023 	mov	dptr,#(_send_payload_1_1 + 0x0001)
   02BF E0                 1024 	movx	a,@dptr
   02C0 90 00 20           1025 	mov	dptr,#_process_response_PARM_2
   02C3 F0                 1026 	movx	@dptr,a
   02C4 8F 82              1027 	mov	dpl,r7
   02C6 12 00 64           1028 	lcall	_process_response
   02C9                    1029 00108$:
                           1030 ;	main.c:88: rf_flush_rx();
   02C9 90 00 B4           1031 	mov	dptr,#_rf_spi_execute_command_PARM_2
   02CC E4                 1032 	clr	a
   02CD F0                 1033 	movx	@dptr,a
   02CE A3                 1034 	inc	dptr
   02CF F0                 1035 	movx	@dptr,a
   02D0 A3                 1036 	inc	dptr
   02D1 F0                 1037 	movx	@dptr,a
   02D2 90 00 B7           1038 	mov	dptr,#_rf_spi_execute_command_PARM_3
   02D5 F0                 1039 	movx	@dptr,a
   02D6 A3                 1040 	inc	dptr
   02D7 E4                 1041 	clr	a
   02D8 F0                 1042 	movx	@dptr,a
   02D9 90 00 B9           1043 	mov	dptr,#_rf_spi_execute_command_PARM_4
   02DC 74 01              1044 	mov	a,#0x01
   02DE F0                 1045 	movx	@dptr,a
   02DF 75 82 E2           1046 	mov	dpl,#0xE2
   02E2 12 17 73           1047 	lcall	_rf_spi_execute_command
                           1048 ;	main.c:89: rf_flush_tx();
   02E5 90 00 B4           1049 	mov	dptr,#_rf_spi_execute_command_PARM_2
   02E8 E4                 1050 	clr	a
   02E9 F0                 1051 	movx	@dptr,a
   02EA A3                 1052 	inc	dptr
   02EB F0                 1053 	movx	@dptr,a
   02EC A3                 1054 	inc	dptr
   02ED F0                 1055 	movx	@dptr,a
   02EE 90 00 B7           1056 	mov	dptr,#_rf_spi_execute_command_PARM_3
   02F1 F0                 1057 	movx	@dptr,a
   02F2 A3                 1058 	inc	dptr
   02F3 E4                 1059 	clr	a
   02F4 F0                 1060 	movx	@dptr,a
   02F5 90 00 B9           1061 	mov	dptr,#_rf_spi_execute_command_PARM_4
   02F8 74 01              1062 	mov	a,#0x01
   02FA F0                 1063 	movx	@dptr,a
   02FB 75 82 E1           1064 	mov	dpl,#0xE1
   02FE 12 17 73           1065 	lcall	_rf_spi_execute_command
                           1066 ;	main.c:90: rf_irq_clear_all();
   0301 12 12 E1           1067 	lcall	_rf_irq_clear_all
                           1068 ;	main.c:91: rf_set_as_tx();
   0304 02 15 D6           1069 	ljmp	_rf_set_as_tx
                           1070 ;------------------------------------------------------------
                           1071 ;Allocation info for local variables in function 'init_rf'
                           1072 ;------------------------------------------------------------
                           1073 ;pipes                     Allocated with name '_init_rf_pipes_1_1'
                           1074 ;------------------------------------------------------------
                           1075 ;	main.c:94: void init_rf()
                           1076 ;	-----------------------------------------
                           1077 ;	 function init_rf
                           1078 ;	-----------------------------------------
   0307                    1079 _init_rf:
                           1080 ;	main.c:96: uint8_t pipes[2][5] = {  
   0307 90 00 27           1081 	mov	dptr,#_init_rf_pipes_1_1
   030A 74 B8              1082 	mov	a,#0xB8
   030C F0                 1083 	movx	@dptr,a
   030D 90 00 28           1084 	mov	dptr,#(_init_rf_pipes_1_1 + 0x0001)
   0310 74 25              1085 	mov	a,#0x25
   0312 F0                 1086 	movx	@dptr,a
   0313 90 00 29           1087 	mov	dptr,#(_init_rf_pipes_1_1 + 0x0002)
   0316 74 B9              1088 	mov	a,#0xB9
   0318 F0                 1089 	movx	@dptr,a
   0319 90 00 2A           1090 	mov	dptr,#(_init_rf_pipes_1_1 + 0x0003)
   031C 74 E1              1091 	mov	a,#0xE1
   031E F0                 1092 	movx	@dptr,a
   031F 90 00 2B           1093 	mov	dptr,#(_init_rf_pipes_1_1 + 0x0004)
   0322 74 BD              1094 	mov	a,#0xBD
   0324 F0                 1095 	movx	@dptr,a
   0325 90 00 2C           1096 	mov	dptr,#(_init_rf_pipes_1_1 + 0x0005)
   0328 74 D9              1097 	mov	a,#0xD9
   032A F0                 1098 	movx	@dptr,a
   032B 90 00 2D           1099 	mov	dptr,#(_init_rf_pipes_1_1 + 0x0006)
   032E 74 02              1100 	mov	a,#0x02
   0330 F0                 1101 	movx	@dptr,a
   0331 90 00 2E           1102 	mov	dptr,#(_init_rf_pipes_1_1 + 0x0007)
   0334 74 86              1103 	mov	a,#0x86
   0336 F0                 1104 	movx	@dptr,a
   0337 90 00 2F           1105 	mov	dptr,#(_init_rf_pipes_1_1 + 0x0008)
   033A 74 D0              1106 	mov	a,#0xD0
   033C F0                 1107 	movx	@dptr,a
   033D 90 00 30           1108 	mov	dptr,#(_init_rf_pipes_1_1 + 0x0009)
   0340 74 EE              1109 	mov	a,#0xEE
   0342 F0                 1110 	movx	@dptr,a
                           1111 ;	main.c:101: rf_spi_configure_enable();
   0343 12 17 6C           1112 	lcall	_rf_spi_configure_enable
                           1113 ;	main.c:112: &pipes[1][0],
                           1114 ;	main.c:113: &pipes[0][0],
                           1115 ;	main.c:118: &pipes[1][0],
                           1116 ;	main.c:126: 0x00);
   0346 90 00 53           1117 	mov	dptr,#_rf_configure_PARM_2
   0349 E4                 1118 	clr	a
   034A F0                 1119 	movx	@dptr,a
   034B 90 00 54           1120 	mov	dptr,#_rf_configure_PARM_3
   034E 74 03              1121 	mov	a,#0x03
   0350 F0                 1122 	movx	@dptr,a
   0351 90 00 55           1123 	mov	dptr,#_rf_configure_PARM_4
   0354 74 03              1124 	mov	a,#0x03
   0356 F0                 1125 	movx	@dptr,a
   0357 90 00 56           1126 	mov	dptr,#_rf_configure_PARM_5
   035A 74 03              1127 	mov	a,#0x03
   035C F0                 1128 	movx	@dptr,a
   035D 90 00 57           1129 	mov	dptr,#_rf_configure_PARM_6
   0360 74 1F              1130 	mov	a,#0x1F
   0362 F0                 1131 	movx	@dptr,a
   0363 90 00 58           1132 	mov	dptr,#_rf_configure_PARM_7
   0366 74 60              1133 	mov	a,#0x60
   0368 F0                 1134 	movx	@dptr,a
   0369 90 00 59           1135 	mov	dptr,#_rf_configure_PARM_8
   036C 74 26              1136 	mov	a,#0x26
   036E F0                 1137 	movx	@dptr,a
   036F 90 00 5A           1138 	mov	dptr,#_rf_configure_PARM_9
   0372 74 2C              1139 	mov	a,#(_init_rf_pipes_1_1 + 0x0005)
   0374 F0                 1140 	movx	@dptr,a
   0375 A3                 1141 	inc	dptr
   0376 74 00              1142 	mov	a,#((_init_rf_pipes_1_1 + 0x0005) >> 8)
   0378 F0                 1143 	movx	@dptr,a
   0379 A3                 1144 	inc	dptr
   037A E4                 1145 	clr	a
   037B F0                 1146 	movx	@dptr,a
   037C 90 00 5D           1147 	mov	dptr,#_rf_configure_PARM_10
   037F 74 27              1148 	mov	a,#_init_rf_pipes_1_1
   0381 F0                 1149 	movx	@dptr,a
   0382 A3                 1150 	inc	dptr
   0383 74 00              1151 	mov	a,#(_init_rf_pipes_1_1 >> 8)
   0385 F0                 1152 	movx	@dptr,a
   0386 A3                 1153 	inc	dptr
   0387 E4                 1154 	clr	a
   0388 F0                 1155 	movx	@dptr,a
   0389 90 00 60           1156 	mov	dptr,#_rf_configure_PARM_11
   038C 74 C3              1157 	mov	a,#0xC3
   038E F0                 1158 	movx	@dptr,a
   038F 90 00 61           1159 	mov	dptr,#_rf_configure_PARM_12
   0392 74 C4              1160 	mov	a,#0xC4
   0394 F0                 1161 	movx	@dptr,a
   0395 90 00 62           1162 	mov	dptr,#_rf_configure_PARM_13
   0398 74 C5              1163 	mov	a,#0xC5
   039A F0                 1164 	movx	@dptr,a
   039B 90 00 63           1165 	mov	dptr,#_rf_configure_PARM_14
   039E 74 C6              1166 	mov	a,#0xC6
   03A0 F0                 1167 	movx	@dptr,a
   03A1 90 00 64           1168 	mov	dptr,#_rf_configure_PARM_15
   03A4 74 2C              1169 	mov	a,#(_init_rf_pipes_1_1 + 0x0005)
   03A6 F0                 1170 	movx	@dptr,a
   03A7 A3                 1171 	inc	dptr
   03A8 74 00              1172 	mov	a,#((_init_rf_pipes_1_1 + 0x0005) >> 8)
   03AA F0                 1173 	movx	@dptr,a
   03AB A3                 1174 	inc	dptr
   03AC E4                 1175 	clr	a
   03AD F0                 1176 	movx	@dptr,a
   03AE 90 00 67           1177 	mov	dptr,#_rf_configure_PARM_16
   03B1 74 03              1178 	mov	a,#0x03
   03B3 F0                 1179 	movx	@dptr,a
   03B4 90 00 68           1180 	mov	dptr,#_rf_configure_PARM_17
   03B7 74 03              1181 	mov	a,#0x03
   03B9 F0                 1182 	movx	@dptr,a
   03BA 90 00 69           1183 	mov	dptr,#_rf_configure_PARM_18
   03BD E4                 1184 	clr	a
   03BE F0                 1185 	movx	@dptr,a
   03BF 90 00 6A           1186 	mov	dptr,#_rf_configure_PARM_19
   03C2 F0                 1187 	movx	@dptr,a
   03C3 90 00 6B           1188 	mov	dptr,#_rf_configure_PARM_20
   03C6 F0                 1189 	movx	@dptr,a
   03C7 90 00 6C           1190 	mov	dptr,#_rf_configure_PARM_21
   03CA F0                 1191 	movx	@dptr,a
   03CB 90 00 6D           1192 	mov	dptr,#_rf_configure_PARM_22
   03CE E4                 1193 	clr	a
   03CF F0                 1194 	movx	@dptr,a
   03D0 90 00 6E           1195 	mov	dptr,#_rf_configure_PARM_23
   03D3 F0                 1196 	movx	@dptr,a
   03D4 75 82 0E           1197 	mov	dpl,#0x0E
   03D7 02 0D 33           1198 	ljmp	_rf_configure
                           1199 ;------------------------------------------------------------
                           1200 ;Allocation info for local variables in function 'process_success'
                           1201 ;------------------------------------------------------------
                           1202 ;customByte                Allocated with name '_process_success_customByte_1_1'
                           1203 ;dataByte                  Allocated with name '_process_success_dataByte_1_1'
                           1204 ;bitNum                    Allocated with name '_process_success_bitNum_1_1'
                           1205 ;------------------------------------------------------------
                           1206 ;	main.c:129: void process_success()
                           1207 ;	-----------------------------------------
                           1208 ;	 function process_success
                           1209 ;	-----------------------------------------
   03DA                    1210 _process_success:
                           1211 ;	main.c:131: uint8_t customByte = 0;
   03DA 90 00 31           1212 	mov	dptr,#_process_success_customByte_1_1
                           1213 ;	main.c:132: uint8_t dataByte = 0;
   03DD E4                 1214 	clr	a
   03DE F0                 1215 	movx	@dptr,a
   03DF 90 00 32           1216 	mov	dptr,#_process_success_dataByte_1_1
   03E2 F0                 1217 	movx	@dptr,a
                           1218 ;	main.c:135: for (bitNum = 0; bitNum < BODY_CUSTOM_BITS; bitNum++)
   03E3 7F 00              1219 	mov	r7,#0x00
   03E5                    1220 00103$:
   03E5 BF 08 00           1221 	cjne	r7,#0x08,00120$
   03E8                    1222 00120$:
   03E8 50 27              1223 	jnc	00106$
                           1224 ;	main.c:137: customByte += body[bitNum] << bitNum;
   03EA EF                 1225 	mov	a,r7
   03EB 24 00              1226 	add	a,#_body
   03ED F5 82              1227 	mov	dpl,a
   03EF E4                 1228 	clr	a
   03F0 34 00              1229 	addc	a,#(_body >> 8)
   03F2 F5 83              1230 	mov	dph,a
   03F4 E0                 1231 	movx	a,@dptr
   03F5 FE                 1232 	mov	r6,a
   03F6 8F F0              1233 	mov	b,r7
   03F8 05 F0              1234 	inc	b
   03FA EE                 1235 	mov	a,r6
   03FB 80 02              1236 	sjmp	00124$
   03FD                    1237 00122$:
   03FD 25 E0              1238 	add	a,acc
   03FF                    1239 00124$:
   03FF D5 F0 FB           1240 	djnz	b,00122$
   0402 FE                 1241 	mov	r6,a
   0403 90 00 31           1242 	mov	dptr,#_process_success_customByte_1_1
   0406 E0                 1243 	movx	a,@dptr
   0407 FD                 1244 	mov	r5,a
   0408 90 00 31           1245 	mov	dptr,#_process_success_customByte_1_1
   040B EE                 1246 	mov	a,r6
   040C 2D                 1247 	add	a,r5
   040D F0                 1248 	movx	@dptr,a
                           1249 ;	main.c:135: for (bitNum = 0; bitNum < BODY_CUSTOM_BITS; bitNum++)
   040E 0F                 1250 	inc	r7
   040F 80 D4              1251 	sjmp	00103$
   0411                    1252 00106$:
                           1253 ;	main.c:139: for (bitNum = 0; bitNum < BODY_DATA_BITS; bitNum++)
   0411 7F 00              1254 	mov	r7,#0x00
   0413                    1255 00107$:
   0413 BF 08 00           1256 	cjne	r7,#0x08,00125$
   0416                    1257 00125$:
   0416 50 29              1258 	jnc	00110$
                           1259 ;	main.c:141: dataByte += body[BODY_CUSTOM_BITS * 2 + bitNum] << bitNum;
   0418 74 10              1260 	mov	a,#0x10
   041A 2F                 1261 	add	a,r7
   041B 24 00              1262 	add	a,#_body
   041D F5 82              1263 	mov	dpl,a
   041F E4                 1264 	clr	a
   0420 34 00              1265 	addc	a,#(_body >> 8)
   0422 F5 83              1266 	mov	dph,a
   0424 E0                 1267 	movx	a,@dptr
   0425 FE                 1268 	mov	r6,a
   0426 8F F0              1269 	mov	b,r7
   0428 05 F0              1270 	inc	b
   042A EE                 1271 	mov	a,r6
   042B 80 02              1272 	sjmp	00129$
   042D                    1273 00127$:
   042D 25 E0              1274 	add	a,acc
   042F                    1275 00129$:
   042F D5 F0 FB           1276 	djnz	b,00127$
   0432 FE                 1277 	mov	r6,a
   0433 90 00 32           1278 	mov	dptr,#_process_success_dataByte_1_1
   0436 E0                 1279 	movx	a,@dptr
   0437 FD                 1280 	mov	r5,a
   0438 90 00 32           1281 	mov	dptr,#_process_success_dataByte_1_1
   043B EE                 1282 	mov	a,r6
   043C 2D                 1283 	add	a,r5
   043D F0                 1284 	movx	@dptr,a
                           1285 ;	main.c:139: for (bitNum = 0; bitNum < BODY_DATA_BITS; bitNum++)
   043E 0F                 1286 	inc	r7
   043F 80 D2              1287 	sjmp	00107$
   0441                    1288 00110$:
                           1289 ;	main.c:144: if (customByte != 7) {
   0441 90 00 31           1290 	mov	dptr,#_process_success_customByte_1_1
   0444 E0                 1291 	movx	a,@dptr
   0445 FF                 1292 	mov	r7,a
                           1293 ;	main.c:145: return;
   0446 BF 07 11           1294 	cjne	r7,#0x07,00111$
                           1295 ;	main.c:148: init_rf();
   0449 12 03 07           1296 	lcall	_init_rf
                           1297 ;	main.c:149: send(1, dataByte);
   044C 90 00 32           1298 	mov	dptr,#_process_success_dataByte_1_1
   044F E0                 1299 	movx	a,@dptr
   0450 90 00 22           1300 	mov	dptr,#_send_PARM_2
   0453 F0                 1301 	movx	@dptr,a
   0454 75 82 01           1302 	mov	dpl,#0x01
   0457 02 01 47           1303 	ljmp	_send
   045A                    1304 00111$:
   045A 22                 1305 	ret
                           1306 ;------------------------------------------------------------
                           1307 ;Allocation info for local variables in function 'process_validation'
                           1308 ;------------------------------------------------------------
                           1309 ;bitNum                    Allocated with name '_process_validation_bitNum_1_1'
                           1310 ;------------------------------------------------------------
                           1311 ;	main.c:152: void process_validation()
                           1312 ;	-----------------------------------------
                           1313 ;	 function process_validation
                           1314 ;	-----------------------------------------
   045B                    1315 _process_validation:
                           1316 ;	main.c:155: for (bitNum = 0; bitNum < BODY_CUSTOM_BITS; bitNum++)
   045B 7F 00              1317 	mov	r7,#0x00
   045D                    1318 00105$:
   045D BF 08 00           1319 	cjne	r7,#0x08,00121$
   0460                    1320 00121$:
   0460 50 21              1321 	jnc	00120$
                           1322 ;	main.c:157: if (body[bitNum] != body[BODY_CUSTOM_BITS + bitNum]) {
   0462 EF                 1323 	mov	a,r7
   0463 24 00              1324 	add	a,#_body
   0465 F5 82              1325 	mov	dpl,a
   0467 E4                 1326 	clr	a
   0468 34 00              1327 	addc	a,#(_body >> 8)
   046A F5 83              1328 	mov	dph,a
   046C E0                 1329 	movx	a,@dptr
   046D FE                 1330 	mov	r6,a
   046E 74 08              1331 	mov	a,#0x08
   0470 2F                 1332 	add	a,r7
   0471 24 00              1333 	add	a,#_body
   0473 F5 82              1334 	mov	dpl,a
   0475 E4                 1335 	clr	a
   0476 34 00              1336 	addc	a,#(_body >> 8)
   0478 F5 83              1337 	mov	dph,a
   047A E0                 1338 	movx	a,@dptr
   047B FD                 1339 	mov	r5,a
   047C EE                 1340 	mov	a,r6
                           1341 ;	main.c:158: return;
   047D B5 05 31           1342 	cjne	a,ar5,00113$
                           1343 ;	main.c:155: for (bitNum = 0; bitNum < BODY_CUSTOM_BITS; bitNum++)
   0480 0F                 1344 	inc	r7
                           1345 ;	main.c:161: for (bitNum = 0; bitNum < BODY_DATA_BITS; bitNum++)
   0481 80 DA              1346 	sjmp	00105$
   0483                    1347 00120$:
   0483 7F 00              1348 	mov	r7,#0x00
   0485                    1349 00109$:
   0485 BF 08 00           1350 	cjne	r7,#0x08,00124$
   0488                    1351 00124$:
   0488 50 24              1352 	jnc	00112$
                           1353 ;	main.c:163: if (body[BODY_CUSTOM_BITS * 2 + bitNum] ==
   048A 74 10              1354 	mov	a,#0x10
   048C 2F                 1355 	add	a,r7
   048D 24 00              1356 	add	a,#_body
   048F F5 82              1357 	mov	dpl,a
   0491 E4                 1358 	clr	a
   0492 34 00              1359 	addc	a,#(_body >> 8)
   0494 F5 83              1360 	mov	dph,a
   0496 E0                 1361 	movx	a,@dptr
   0497 FE                 1362 	mov	r6,a
                           1363 ;	main.c:164: body[BODY_CUSTOM_BITS * 2 + BODY_DATA_BITS + bitNum]) {
   0498 74 18              1364 	mov	a,#0x18
   049A 2F                 1365 	add	a,r7
   049B 24 00              1366 	add	a,#_body
   049D F5 82              1367 	mov	dpl,a
   049F E4                 1368 	clr	a
   04A0 34 00              1369 	addc	a,#(_body >> 8)
   04A2 F5 83              1370 	mov	dph,a
   04A4 E0                 1371 	movx	a,@dptr
   04A5 FD                 1372 	mov	r5,a
   04A6 EE                 1373 	mov	a,r6
   04A7 B5 05 01           1374 	cjne	a,ar5,00111$
                           1375 ;	main.c:165: return;
   04AA 22                 1376 	ret
   04AB                    1377 00111$:
                           1378 ;	main.c:161: for (bitNum = 0; bitNum < BODY_DATA_BITS; bitNum++)
   04AB 0F                 1379 	inc	r7
   04AC 80 D7              1380 	sjmp	00109$
   04AE                    1381 00112$:
                           1382 ;	main.c:169: process_success();
   04AE 02 03 DA           1383 	ljmp	_process_success
   04B1                    1384 00113$:
   04B1 22                 1385 	ret
                           1386 ;------------------------------------------------------------
                           1387 ;Allocation info for local variables in function 'read_period'
                           1388 ;------------------------------------------------------------
                           1389 ;sample                    Allocated with name '_read_period_sample_1_1'
                           1390 ;------------------------------------------------------------
                           1391 ;	main.c:172: bool read_period()
                           1392 ;	-----------------------------------------
                           1393 ;	 function read_period
                           1394 ;	-----------------------------------------
   04B2                    1395 _read_period:
                           1396 ;	main.c:175: sample = !gpio_pin_val_read(IN_PIN);
   04B2 75 82 06           1397 	mov	dpl,#0x06
   04B5 12 0C 19           1398 	lcall	_gpio_pin_val_read
   04B8 E5 82              1399 	mov	a,dpl
   04BA FF                 1400 	mov	r7,a
   04BB B4 01 00           1401 	cjne	a,#0x01,00103$
   04BE                    1402 00103$:
   04BE E4                 1403 	clr	a
   04BF 33                 1404 	rlc	a
   04C0 FF                 1405 	mov	r7,a
                           1406 ;	main.c:176: delay_us(40);
   04C1 90 00 28           1407 	mov	dptr,#0x0028
   04C4 C0 07              1408 	push	ar7
   04C6 12 07 CD           1409 	lcall	_delay_us
   04C9 D0 07              1410 	pop	ar7
                           1411 ;	main.c:177: return sample;
   04CB 8F 82              1412 	mov	dpl,r7
   04CD 22                 1413 	ret
                           1414 ;------------------------------------------------------------
                           1415 ;Allocation info for local variables in function 'process_end'
                           1416 ;------------------------------------------------------------
                           1417 ;period                    Allocated with name '_process_end_period_1_1'
                           1418 ;highs                     Allocated with name '_process_end_highs_1_1'
                           1419 ;------------------------------------------------------------
                           1420 ;	main.c:180: void process_end()
                           1421 ;	-----------------------------------------
                           1422 ;	 function process_end
                           1423 ;	-----------------------------------------
   04CE                    1424 _process_end:
                           1425 ;	main.c:182: bool period = true;
   04CE 90 00 33           1426 	mov	dptr,#_process_end_period_1_1
   04D1 74 01              1427 	mov	a,#0x01
   04D3 F0                 1428 	movx	@dptr,a
                           1429 ;	main.c:183: uint16_t highs = 0;
   04D4 90 00 34           1430 	mov	dptr,#_process_end_highs_1_1
   04D7 E4                 1431 	clr	a
   04D8 F0                 1432 	movx	@dptr,a
   04D9 A3                 1433 	inc	dptr
   04DA F0                 1434 	movx	@dptr,a
                           1435 ;	main.c:184: while (period && highs <= MAX_BIT_HIGHS) {
   04DB                    1436 00102$:
   04DB 90 00 33           1437 	mov	dptr,#_process_end_period_1_1
   04DE E0                 1438 	movx	a,@dptr
   04DF FF                 1439 	mov	r7,a
   04E0 60 30              1440 	jz	00104$
   04E2 90 00 34           1441 	mov	dptr,#_process_end_highs_1_1
   04E5 E0                 1442 	movx	a,@dptr
   04E6 FE                 1443 	mov	r6,a
   04E7 A3                 1444 	inc	dptr
   04E8 E0                 1445 	movx	a,@dptr
   04E9 FF                 1446 	mov	r7,a
   04EA C3                 1447 	clr	c
   04EB 74 0C              1448 	mov	a,#0x0C
   04ED 9E                 1449 	subb	a,r6
   04EE E4                 1450 	clr	a
   04EF 9F                 1451 	subb	a,r7
   04F0 40 20              1452 	jc	00104$
                           1453 ;	main.c:185: period = read_period();
   04F2 C0 07              1454 	push	ar7
   04F4 C0 06              1455 	push	ar6
   04F6 12 04 B2           1456 	lcall	_read_period
   04F9 AD 82              1457 	mov	r5,dpl
   04FB D0 06              1458 	pop	ar6
   04FD D0 07              1459 	pop	ar7
   04FF 90 00 33           1460 	mov	dptr,#_process_end_period_1_1
   0502 ED                 1461 	mov	a,r5
   0503 F0                 1462 	movx	@dptr,a
                           1463 ;	main.c:186: highs += period;
   0504 7C 00              1464 	mov	r4,#0x00
   0506 90 00 34           1465 	mov	dptr,#_process_end_highs_1_1
   0509 ED                 1466 	mov	a,r5
   050A 2E                 1467 	add	a,r6
   050B F0                 1468 	movx	@dptr,a
   050C EC                 1469 	mov	a,r4
   050D 3F                 1470 	addc	a,r7
   050E A3                 1471 	inc	dptr
   050F F0                 1472 	movx	@dptr,a
   0510 80 C9              1473 	sjmp	00102$
   0512                    1474 00104$:
                           1475 ;	main.c:188: if (highs > MAX_BIT_HIGHS || highs < MIN_BIT_HIGHS)
   0512 90 00 34           1476 	mov	dptr,#_process_end_highs_1_1
   0515 E0                 1477 	movx	a,@dptr
   0516 FE                 1478 	mov	r6,a
   0517 A3                 1479 	inc	dptr
   0518 E0                 1480 	movx	a,@dptr
   0519 FF                 1481 	mov	r7,a
   051A C3                 1482 	clr	c
   051B 74 0C              1483 	mov	a,#0x0C
   051D 9E                 1484 	subb	a,r6
   051E E4                 1485 	clr	a
   051F 9F                 1486 	subb	a,r7
   0520 40 08              1487 	jc	00105$
   0522 EE                 1488 	mov	a,r6
   0523 94 08              1489 	subb	a,#0x08
   0525 EF                 1490 	mov	a,r7
   0526 94 00              1491 	subb	a,#0x00
   0528 50 01              1492 	jnc	00106$
   052A                    1493 00105$:
                           1494 ;	main.c:190: return;
   052A 22                 1495 	ret
   052B                    1496 00106$:
                           1497 ;	main.c:193: process_validation();
   052B 02 04 5B           1498 	ljmp	_process_validation
                           1499 ;------------------------------------------------------------
                           1500 ;Allocation info for local variables in function 'process_body'
                           1501 ;------------------------------------------------------------
                           1502 ;bitNum                    Allocated with name '_process_body_bitNum_1_1'
                           1503 ;highs                     Allocated with name '_process_body_highs_1_1'
                           1504 ;lows                      Allocated with name '_process_body_lows_1_1'
                           1505 ;period                    Allocated with name '_process_body_period_2_2'
                           1506 ;------------------------------------------------------------
                           1507 ;	main.c:196: void process_body()
                           1508 ;	-----------------------------------------
                           1509 ;	 function process_body
                           1510 ;	-----------------------------------------
   052E                    1511 _process_body:
                           1512 ;	main.c:201: for (bitNum = 0; bitNum < BODY_BITS; bitNum++)
   052E 7F 00              1513 	mov	r7,#0x00
   0530                    1514 00117$:
   0530 BF 20 00           1515 	cjne	r7,#0x20,00134$
   0533                    1516 00134$:
   0533 40 03              1517 	jc	00135$
   0535 02 06 25           1518 	ljmp	00120$
   0538                    1519 00135$:
                           1520 ;	main.c:203: bool period = true;
   0538 90 00 3A           1521 	mov	dptr,#_process_body_period_2_2
   053B 74 01              1522 	mov	a,#0x01
   053D F0                 1523 	movx	@dptr,a
                           1524 ;	main.c:204: highs = 0;
   053E 90 00 36           1525 	mov	dptr,#_process_body_highs_1_1
   0541 E4                 1526 	clr	a
   0542 F0                 1527 	movx	@dptr,a
   0543 A3                 1528 	inc	dptr
   0544 F0                 1529 	movx	@dptr,a
                           1530 ;	main.c:205: while (period && highs <= MAX_BIT_HIGHS) {
   0545                    1531 00102$:
   0545 90 00 3A           1532 	mov	dptr,#_process_body_period_2_2
   0548 E0                 1533 	movx	a,@dptr
   0549 FE                 1534 	mov	r6,a
   054A 60 34              1535 	jz	00104$
   054C 90 00 36           1536 	mov	dptr,#_process_body_highs_1_1
   054F E0                 1537 	movx	a,@dptr
   0550 FD                 1538 	mov	r5,a
   0551 A3                 1539 	inc	dptr
   0552 E0                 1540 	movx	a,@dptr
   0553 FE                 1541 	mov	r6,a
   0554 C3                 1542 	clr	c
   0555 74 0C              1543 	mov	a,#0x0C
   0557 9D                 1544 	subb	a,r5
   0558 E4                 1545 	clr	a
   0559 9E                 1546 	subb	a,r6
   055A 40 24              1547 	jc	00104$
                           1548 ;	main.c:206: period = read_period();
   055C C0 07              1549 	push	ar7
   055E C0 06              1550 	push	ar6
   0560 C0 05              1551 	push	ar5
   0562 12 04 B2           1552 	lcall	_read_period
   0565 AC 82              1553 	mov	r4,dpl
   0567 D0 05              1554 	pop	ar5
   0569 D0 06              1555 	pop	ar6
   056B D0 07              1556 	pop	ar7
   056D 90 00 3A           1557 	mov	dptr,#_process_body_period_2_2
   0570 EC                 1558 	mov	a,r4
   0571 F0                 1559 	movx	@dptr,a
                           1560 ;	main.c:207: highs += period;
   0572 7B 00              1561 	mov	r3,#0x00
   0574 90 00 36           1562 	mov	dptr,#_process_body_highs_1_1
   0577 EC                 1563 	mov	a,r4
   0578 2D                 1564 	add	a,r5
   0579 F0                 1565 	movx	@dptr,a
   057A EB                 1566 	mov	a,r3
   057B 3E                 1567 	addc	a,r6
   057C A3                 1568 	inc	dptr
   057D F0                 1569 	movx	@dptr,a
   057E 80 C5              1570 	sjmp	00102$
   0580                    1571 00104$:
                           1572 ;	main.c:210: if (highs > MAX_BIT_HIGHS || highs < MIN_BIT_HIGHS)
   0580 90 00 36           1573 	mov	dptr,#_process_body_highs_1_1
   0583 E0                 1574 	movx	a,@dptr
   0584 FD                 1575 	mov	r5,a
   0585 A3                 1576 	inc	dptr
   0586 E0                 1577 	movx	a,@dptr
   0587 FE                 1578 	mov	r6,a
   0588 C3                 1579 	clr	c
   0589 74 0C              1580 	mov	a,#0x0C
   058B 9D                 1581 	subb	a,r5
   058C E4                 1582 	clr	a
   058D 9E                 1583 	subb	a,r6
   058E 40 08              1584 	jc	00105$
   0590 ED                 1585 	mov	a,r5
   0591 94 08              1586 	subb	a,#0x08
   0593 EE                 1587 	mov	a,r6
   0594 94 00              1588 	subb	a,#0x00
   0596 50 01              1589 	jnc	00106$
   0598                    1590 00105$:
                           1591 ;	main.c:212: return;
   0598 22                 1592 	ret
   0599                    1593 00106$:
                           1594 ;	main.c:215: lows = 0;
   0599 90 00 38           1595 	mov	dptr,#_process_body_lows_1_1
   059C E4                 1596 	clr	a
   059D F0                 1597 	movx	@dptr,a
   059E A3                 1598 	inc	dptr
   059F F0                 1599 	movx	@dptr,a
                           1600 ;	main.c:216: while (!period && lows <= MAX_DATA1_BIT_LOWS) {
   05A0                    1601 00109$:
   05A0 90 00 3A           1602 	mov	dptr,#_process_body_period_2_2
   05A3 E0                 1603 	movx	a,@dptr
   05A4 FE                 1604 	mov	r6,a
   05A5 70 3B              1605 	jnz	00111$
   05A7 90 00 38           1606 	mov	dptr,#_process_body_lows_1_1
   05AA E0                 1607 	movx	a,@dptr
   05AB FD                 1608 	mov	r5,a
   05AC A3                 1609 	inc	dptr
   05AD E0                 1610 	movx	a,@dptr
   05AE FE                 1611 	mov	r6,a
   05AF C3                 1612 	clr	c
   05B0 74 21              1613 	mov	a,#0x21
   05B2 9D                 1614 	subb	a,r5
   05B3 E4                 1615 	clr	a
   05B4 9E                 1616 	subb	a,r6
   05B5 40 2B              1617 	jc	00111$
                           1618 ;	main.c:217: period = read_period();
   05B7 C0 07              1619 	push	ar7
   05B9 C0 06              1620 	push	ar6
   05BB C0 05              1621 	push	ar5
   05BD 12 04 B2           1622 	lcall	_read_period
   05C0 AC 82              1623 	mov	r4,dpl
   05C2 D0 05              1624 	pop	ar5
   05C4 D0 06              1625 	pop	ar6
   05C6 D0 07              1626 	pop	ar7
   05C8 90 00 3A           1627 	mov	dptr,#_process_body_period_2_2
   05CB EC                 1628 	mov	a,r4
   05CC F0                 1629 	movx	@dptr,a
                           1630 ;	main.c:218: lows += !period;
   05CD EC                 1631 	mov	a,r4
   05CE B4 01 00           1632 	cjne	a,#0x01,00142$
   05D1                    1633 00142$:
   05D1 E4                 1634 	clr	a
   05D2 33                 1635 	rlc	a
   05D3 FC                 1636 	mov	r4,a
   05D4 7B 00              1637 	mov	r3,#0x00
   05D6 90 00 38           1638 	mov	dptr,#_process_body_lows_1_1
   05D9 EC                 1639 	mov	a,r4
   05DA 2D                 1640 	add	a,r5
   05DB F0                 1641 	movx	@dptr,a
   05DC EB                 1642 	mov	a,r3
   05DD 3E                 1643 	addc	a,r6
   05DE A3                 1644 	inc	dptr
   05DF F0                 1645 	movx	@dptr,a
   05E0 80 BE              1646 	sjmp	00109$
   05E2                    1647 00111$:
                           1648 ;	main.c:221: if (lows > MAX_DATA1_BIT_LOWS ||
   05E2 90 00 38           1649 	mov	dptr,#_process_body_lows_1_1
   05E5 E0                 1650 	movx	a,@dptr
   05E6 FD                 1651 	mov	r5,a
   05E7 A3                 1652 	inc	dptr
   05E8 E0                 1653 	movx	a,@dptr
   05E9 FE                 1654 	mov	r6,a
   05EA C3                 1655 	clr	c
   05EB 74 21              1656 	mov	a,#0x21
   05ED 9D                 1657 	subb	a,r5
   05EE E4                 1658 	clr	a
   05EF 9E                 1659 	subb	a,r6
                           1660 ;	main.c:222: (lows < MIN_DATA1_BIT_LOWS && lows > MAX_DATA0_BIT_LOWS) ||
   05F0 40 1C              1661 	jc	00112$
   05F2 ED                 1662 	mov	a,r5
   05F3 94 16              1663 	subb	a,#0x16
   05F5 EE                 1664 	mov	a,r6
   05F6 94 00              1665 	subb	a,#0x00
   05F8 E4                 1666 	clr	a
   05F9 33                 1667 	rlc	a
   05FA FC                 1668 	mov	r4,a
   05FB 60 08              1669 	jz	00116$
   05FD C3                 1670 	clr	c
   05FE 74 09              1671 	mov	a,#0x09
   0600 9D                 1672 	subb	a,r5
   0601 E4                 1673 	clr	a
   0602 9E                 1674 	subb	a,r6
   0603 40 09              1675 	jc	00112$
   0605                    1676 00116$:
                           1677 ;	main.c:223: lows < MIN_DATA0_BIT_LOWS)
   0605 C3                 1678 	clr	c
   0606 ED                 1679 	mov	a,r5
   0607 94 06              1680 	subb	a,#0x06
   0609 EE                 1681 	mov	a,r6
   060A 94 00              1682 	subb	a,#0x00
   060C 50 01              1683 	jnc	00113$
   060E                    1684 00112$:
                           1685 ;	main.c:225: return;
   060E 22                 1686 	ret
   060F                    1687 00113$:
                           1688 ;	main.c:228: body[bitNum] = lows >= MIN_DATA1_BIT_LOWS;
   060F EF                 1689 	mov	a,r7
   0610 24 00              1690 	add	a,#_body
   0612 F5 82              1691 	mov	dpl,a
   0614 E4                 1692 	clr	a
   0615 34 00              1693 	addc	a,#(_body >> 8)
   0617 F5 83              1694 	mov	dph,a
   0619 EC                 1695 	mov	a,r4
   061A B4 01 00           1696 	cjne	a,#0x01,00147$
   061D                    1697 00147$:
   061D E4                 1698 	clr	a
   061E 33                 1699 	rlc	a
   061F FC                 1700 	mov	r4,a
   0620 F0                 1701 	movx	@dptr,a
                           1702 ;	main.c:201: for (bitNum = 0; bitNum < BODY_BITS; bitNum++)
   0621 0F                 1703 	inc	r7
   0622 02 05 30           1704 	ljmp	00117$
   0625                    1705 00120$:
                           1706 ;	main.c:230: process_end();
   0625 02 04 CE           1707 	ljmp	_process_end
                           1708 ;------------------------------------------------------------
                           1709 ;Allocation info for local variables in function 'process_leader'
                           1710 ;------------------------------------------------------------
                           1711 ;period                    Allocated with name '_process_leader_period_1_1'
                           1712 ;lows                      Allocated with name '_process_leader_lows_1_1'
                           1713 ;highs                     Allocated with name '_process_leader_highs_1_1'
                           1714 ;------------------------------------------------------------
                           1715 ;	main.c:233: void process_leader()
                           1716 ;	-----------------------------------------
                           1717 ;	 function process_leader
                           1718 ;	-----------------------------------------
   0628                    1719 _process_leader:
                           1720 ;	main.c:235: bool period = true;
   0628 90 00 3B           1721 	mov	dptr,#_process_leader_period_1_1
   062B 74 01              1722 	mov	a,#0x01
   062D F0                 1723 	movx	@dptr,a
                           1724 ;	main.c:236: uint16_t lows = 0;
   062E 90 00 3C           1725 	mov	dptr,#_process_leader_lows_1_1
                           1726 ;	main.c:237: uint16_t highs = 0;
   0631 E4                 1727 	clr	a
   0632 F0                 1728 	movx	@dptr,a
   0633 A3                 1729 	inc	dptr
   0634 F0                 1730 	movx	@dptr,a
   0635 90 00 3E           1731 	mov	dptr,#_process_leader_highs_1_1
   0638 F0                 1732 	movx	@dptr,a
   0639 A3                 1733 	inc	dptr
   063A E4                 1734 	clr	a
   063B F0                 1735 	movx	@dptr,a
                           1736 ;	main.c:239: while (period && highs <= MAX_LEADER_HIGHS)
   063C                    1737 00102$:
   063C 90 00 3B           1738 	mov	dptr,#_process_leader_period_1_1
   063F E0                 1739 	movx	a,@dptr
   0640 FF                 1740 	mov	r7,a
   0641 60 30              1741 	jz	00104$
   0643 90 00 3E           1742 	mov	dptr,#_process_leader_highs_1_1
   0646 E0                 1743 	movx	a,@dptr
   0647 FE                 1744 	mov	r6,a
   0648 A3                 1745 	inc	dptr
   0649 E0                 1746 	movx	a,@dptr
   064A FF                 1747 	mov	r7,a
   064B C3                 1748 	clr	c
   064C 74 5D              1749 	mov	a,#0x5D
   064E 9E                 1750 	subb	a,r6
   064F E4                 1751 	clr	a
   0650 9F                 1752 	subb	a,r7
   0651 40 20              1753 	jc	00104$
                           1754 ;	main.c:241: period = read_period();
   0653 C0 07              1755 	push	ar7
   0655 C0 06              1756 	push	ar6
   0657 12 04 B2           1757 	lcall	_read_period
   065A AD 82              1758 	mov	r5,dpl
   065C D0 06              1759 	pop	ar6
   065E D0 07              1760 	pop	ar7
   0660 90 00 3B           1761 	mov	dptr,#_process_leader_period_1_1
   0663 ED                 1762 	mov	a,r5
   0664 F0                 1763 	movx	@dptr,a
                           1764 ;	main.c:242: highs += period;
   0665 7C 00              1765 	mov	r4,#0x00
   0667 90 00 3E           1766 	mov	dptr,#_process_leader_highs_1_1
   066A ED                 1767 	mov	a,r5
   066B 2E                 1768 	add	a,r6
   066C F0                 1769 	movx	@dptr,a
   066D EC                 1770 	mov	a,r4
   066E 3F                 1771 	addc	a,r7
   066F A3                 1772 	inc	dptr
   0670 F0                 1773 	movx	@dptr,a
   0671 80 C9              1774 	sjmp	00102$
   0673                    1775 00104$:
                           1776 ;	main.c:245: if (highs > MAX_LEADER_HIGHS || highs < MIN_LEADER_HIGHS) {
   0673 90 00 3E           1777 	mov	dptr,#_process_leader_highs_1_1
   0676 E0                 1778 	movx	a,@dptr
   0677 FE                 1779 	mov	r6,a
   0678 A3                 1780 	inc	dptr
   0679 E0                 1781 	movx	a,@dptr
   067A FF                 1782 	mov	r7,a
   067B C3                 1783 	clr	c
   067C 74 5D              1784 	mov	a,#0x5D
   067E 9E                 1785 	subb	a,r6
   067F E4                 1786 	clr	a
   0680 9F                 1787 	subb	a,r7
   0681 40 08              1788 	jc	00105$
   0683 EE                 1789 	mov	a,r6
   0684 94 3E              1790 	subb	a,#0x3E
   0686 EF                 1791 	mov	a,r7
   0687 94 00              1792 	subb	a,#0x00
   0689 50 01              1793 	jnc	00109$
   068B                    1794 00105$:
                           1795 ;	main.c:246: return;
                           1796 ;	main.c:249: while (!period && lows <= MAX_LEADER_LOWS)
   068B 22                 1797 	ret
   068C                    1798 00109$:
   068C 90 00 3B           1799 	mov	dptr,#_process_leader_period_1_1
   068F E0                 1800 	movx	a,@dptr
   0690 FF                 1801 	mov	r7,a
   0691 70 37              1802 	jnz	00111$
   0693 90 00 3C           1803 	mov	dptr,#_process_leader_lows_1_1
   0696 E0                 1804 	movx	a,@dptr
   0697 FE                 1805 	mov	r6,a
   0698 A3                 1806 	inc	dptr
   0699 E0                 1807 	movx	a,@dptr
   069A FF                 1808 	mov	r7,a
   069B C3                 1809 	clr	c
   069C 74 5D              1810 	mov	a,#0x5D
   069E 9E                 1811 	subb	a,r6
   069F E4                 1812 	clr	a
   06A0 9F                 1813 	subb	a,r7
   06A1 40 27              1814 	jc	00111$
                           1815 ;	main.c:251: period = read_period();
   06A3 C0 07              1816 	push	ar7
   06A5 C0 06              1817 	push	ar6
   06A7 12 04 B2           1818 	lcall	_read_period
   06AA AD 82              1819 	mov	r5,dpl
   06AC D0 06              1820 	pop	ar6
   06AE D0 07              1821 	pop	ar7
   06B0 90 00 3B           1822 	mov	dptr,#_process_leader_period_1_1
   06B3 ED                 1823 	mov	a,r5
   06B4 F0                 1824 	movx	@dptr,a
                           1825 ;	main.c:252: lows += !period;
   06B5 ED                 1826 	mov	a,r5
   06B6 B4 01 00           1827 	cjne	a,#0x01,00131$
   06B9                    1828 00131$:
   06B9 E4                 1829 	clr	a
   06BA 33                 1830 	rlc	a
   06BB FD                 1831 	mov	r5,a
   06BC 7C 00              1832 	mov	r4,#0x00
   06BE 90 00 3C           1833 	mov	dptr,#_process_leader_lows_1_1
   06C1 ED                 1834 	mov	a,r5
   06C2 2E                 1835 	add	a,r6
   06C3 F0                 1836 	movx	@dptr,a
   06C4 EC                 1837 	mov	a,r4
   06C5 3F                 1838 	addc	a,r7
   06C6 A3                 1839 	inc	dptr
   06C7 F0                 1840 	movx	@dptr,a
   06C8 80 C2              1841 	sjmp	00109$
   06CA                    1842 00111$:
                           1843 ;	main.c:255: if (lows > MAX_LEADER_LOWS || lows < MIN_LEADER_LOWS) {
   06CA 90 00 3C           1844 	mov	dptr,#_process_leader_lows_1_1
   06CD E0                 1845 	movx	a,@dptr
   06CE FE                 1846 	mov	r6,a
   06CF A3                 1847 	inc	dptr
   06D0 E0                 1848 	movx	a,@dptr
   06D1 FF                 1849 	mov	r7,a
   06D2 C3                 1850 	clr	c
   06D3 74 5D              1851 	mov	a,#0x5D
   06D5 9E                 1852 	subb	a,r6
   06D6 E4                 1853 	clr	a
   06D7 9F                 1854 	subb	a,r7
   06D8 40 08              1855 	jc	00112$
   06DA EE                 1856 	mov	a,r6
   06DB 94 3E              1857 	subb	a,#0x3E
   06DD EF                 1858 	mov	a,r7
   06DE 94 00              1859 	subb	a,#0x00
   06E0 50 01              1860 	jnc	00113$
   06E2                    1861 00112$:
                           1862 ;	main.c:256: return;
   06E2 22                 1863 	ret
   06E3                    1864 00113$:
                           1865 ;	main.c:259: process_body();
   06E3 02 05 2E           1866 	ljmp	_process_body
                           1867 ;------------------------------------------------------------
                           1868 ;Allocation info for local variables in function 'main'
                           1869 ;------------------------------------------------------------
                           1870 ;__00020004                Allocated with name '_main___00020004_5_12'
                           1871 ;__00020002                Allocated with name '_main___00020002_3_8'
                           1872 ;__00030005                Allocated with name '_main___00030005_4_11'
                           1873 ;msec                      Allocated with name '_main_msec_4_11'
                           1874 ;wdsv_value                Allocated with name '_main_wdsv_value_3_8'
                           1875 ;------------------------------------------------------------
                           1876 ;	main.c:262: void main(void)
                           1877 ;	-----------------------------------------
                           1878 ;	 function main
                           1879 ;	-----------------------------------------
   06E6                    1880 _main:
                           1881 ;	/mnt/workspace/nRF24LE1_SDK-master/include/inline/watchdog_setup.inc:11: if (!pwr_clk_mgmt_is_clklf_enabled())
   06E6 74 07              1882 	mov	a,#0x07
   06E8 55 AD              1883 	anl	a,_CLKLFCTRL
   06EA FF                 1884 	mov	r7,a
   06EB BF 07 0B           1885 	cjne	r7,#0x07,00109$
                           1886 ;	/mnt/workspace/nRF24LE1_SDK-master/include/inline/watchdog_setup.inc:14: pwr_clk_mgmt_clklf_configure(PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLK_SRC_RCOSC32K);
   06EE 75 82 01           1887 	mov	dpl,#0x01
   06F1 12 1A 17           1888 	lcall	_pwr_clk_mgmt_clklf_configure
                           1889 ;	/mnt/workspace/nRF24LE1_SDK-master/include/inline/watchdog_setup.inc:15: pwr_clk_mgmt_wait_until_clklf_is_ready();
   06F4                    1890 00104$:
   06F4 E5 AD              1891 	mov	a,_CLKLFCTRL
   06F6 30 E6 FB           1892 	jnb	acc.6,00104$
                           1893 ;	main.c:264: watchdog_setup();
   06F9                    1894 00109$:
                           1895 ;	/mnt/workspace/nRF24LE1_SDK-master/include/inline/watchdog_set_wdsv_count.inc:48: WDSV = (uint8_t)wdsv_value;
   06F9 75 AF 1A           1896 	mov	_WDSV,#0x1A
                           1897 ;	main.c:49: ((dataByte >> 3) & 1) * LED_TIME_0BIT +
   06FC 75 AF 00           1898 	mov	_WDSV,#0x00
                           1899 ;	main.c:267: gpio_pins_val_clear(P0, 0xFF);
   06FF E5 80              1900 	mov	a,_P0
   0701 75 80 00           1901 	mov	_P0,#0x00
                           1902 ;	main.c:268: gpio_pins_val_clear(P1, 0xFF);
   0704 E5 90              1903 	mov	a,_P1
   0706 75 90 00           1904 	mov	_P1,#0x00
                           1905 ;	main.c:273: GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
   0709 90 00 46           1906 	mov	dptr,#_gpio_pin_configure_PARM_2
   070C 74 03              1907 	mov	a,#0x03
   070E F0                 1908 	movx	@dptr,a
   070F 75 82 0C           1909 	mov	dpl,#0x0C
   0712 12 08 0E           1910 	lcall	_gpio_pin_configure
                           1911 ;	main.c:278: GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
   0715 90 00 46           1912 	mov	dptr,#_gpio_pin_configure_PARM_2
   0718 74 03              1913 	mov	a,#0x03
   071A F0                 1914 	movx	@dptr,a
   071B 75 82 0B           1915 	mov	dpl,#0x0B
   071E 12 08 0E           1916 	lcall	_gpio_pin_configure
                           1917 ;	main.c:283: GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
   0721 90 00 46           1918 	mov	dptr,#_gpio_pin_configure_PARM_2
   0724 74 03              1919 	mov	a,#0x03
   0726 F0                 1920 	movx	@dptr,a
   0727 75 82 0A           1921 	mov	dpl,#0x0A
   072A 12 08 0E           1922 	lcall	_gpio_pin_configure
                           1923 ;	main.c:287: GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_NO_RESISTORS);
   072D 90 00 46           1924 	mov	dptr,#_gpio_pin_configure_PARM_2
   0730 E4                 1925 	clr	a
   0731 F0                 1926 	movx	@dptr,a
   0732 75 82 06           1927 	mov	dpl,#0x06
   0735 12 08 0E           1928 	lcall	_gpio_pin_configure
                           1929 ;	main.c:291: PWR_CLK_MGMT_OP_MODE_CONFIG_OPTION_SOME_WAKEUP_PINS_ACTIVE_HIGH);
   0738 75 82 04           1930 	mov	dpl,#0x04
   073B 12 1A C0           1931 	lcall	_pwr_clk_mgmt_op_mode_configure
                           1932 ;	main.c:293: pwr_clk_mgmt_enter_pwr_mode_active();
   073E 75 A4 00           1933 	mov	_PWRDWN,#0x00
                           1934 ;	main.c:295: process_leader();
   0741 12 06 28           1935 	lcall	_process_leader
                           1936 ;	main.c:297: pwr_clk_mgmt_wakeup_pins_configure(PWR_CLK_MGMT_WAKEUP_CONFIG_OPTION_INPUT_P0_6_ENABLE);
   0744 90 00 40           1937 	mov	dptr,#0x0040
   0747 12 1A EC           1938 	lcall	_pwr_clk_mgmt_wakeup_pins_configure
                           1939 ;	main.c:301: PWR_CLK_MGMT_OP_MODE_CONFIG_OPTION_SOME_WAKEUP_PINS_ACTIVE_HIGH);
   074A 75 82 06           1940 	mov	dpl,#0x06
   074D 12 1A C0           1941 	lcall	_pwr_clk_mgmt_op_mode_configure
                           1942 ;	main.c:303: while(1) {
   0750                    1943 00102$:
                           1944 ;	main.c:304: pwr_clk_mgmt_enter_pwr_mode_deep_sleep();	
   0750 75 A4 01           1945 	mov	_PWRDWN,#0x01
   0753 80 FB              1946 	sjmp	00102$
                           1947 	.area CSEG    (CODE)
                           1948 	.area CONST   (CODE)
                           1949 	.area XINIT   (CODE)
                           1950 	.area CABS    (ABS,CODE)
