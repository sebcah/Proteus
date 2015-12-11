opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F628A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 10 "C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 10 "C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\Main.c"
	dw 0xFFEE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_InitI2C
	FNCALL	_main,_I2C_Start
	FNCALL	_main,_I2C_Write_Byte
	FNCALL	_main,_I2C_Read_Byte
	FNCALL	_main,_I2C_Send_ACK
	FNCALL	_main,_I2C_Stop
	FNROOT	_main
	global	_RA4
psect	text80,local,class=CODE,delta=2
global __ptext80
__ptext80:
_RA4	set	44
	global	_RB0
_RB0	set	48
	global	_TRISA4
_TRISA4	set	1068
	global	_TRISB0
_TRISB0	set	1072
	file	"I2C.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_InitI2C
?_InitI2C:	; 0 bytes @ 0x0
	global	??_InitI2C
??_InitI2C:	; 0 bytes @ 0x0
	global	?_I2C_Start
?_I2C_Start:	; 0 bytes @ 0x0
	global	??_I2C_Start
??_I2C_Start:	; 0 bytes @ 0x0
	global	?_I2C_Stop
?_I2C_Stop:	; 0 bytes @ 0x0
	global	??_I2C_Stop
??_I2C_Stop:	; 0 bytes @ 0x0
	global	?_I2C_Send_ACK
?_I2C_Send_ACK:	; 0 bytes @ 0x0
	global	??_I2C_Send_ACK
??_I2C_Send_ACK:	; 0 bytes @ 0x0
	global	?_I2C_Write_Byte
?_I2C_Write_Byte:	; 1 bit 
	global	??_I2C_Write_Byte
??_I2C_Write_Byte:	; 0 bytes @ 0x0
	global	??_I2C_Read_Byte
??_I2C_Read_Byte:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_I2C_Read_Byte
?_I2C_Read_Byte:	; 1 bytes @ 0x0
	ds	1
	global	I2C_Write_Byte@Byte
I2C_Write_Byte@Byte:	; 1 bytes @ 0x1
	global	I2C_Read_Byte@RxData
I2C_Read_Byte@RxData:	; 1 bytes @ 0x1
	ds	1
	global	I2C_Write_Byte@i
I2C_Write_Byte@i:	; 1 bytes @ 0x2
	global	I2C_Read_Byte@i
I2C_Read_Byte@i:	; 1 bytes @ 0x2
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       3
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK2           48      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_I2C_Write_Byte
;;   _main->_I2C_Read_Byte
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     120
;;                            _InitI2C
;;                          _I2C_Start
;;                     _I2C_Write_Byte
;;                      _I2C_Read_Byte
;;                       _I2C_Send_ACK
;;                           _I2C_Stop
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Read_Byte                                        3     3      0      60
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Write_Byte                                       3     3      0      60
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Send_ACK                                         1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Stop                                             1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Start                                            1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _InitI2C                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InitI2C
;;   _I2C_Start
;;   _I2C_Write_Byte
;;   _I2C_Read_Byte
;;   _I2C_Send_ACK
;;   _I2C_Stop
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA              80      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       3       1       21.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      0       0       3        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;ABS                  0      0       0       4        0.0%
;;BITBANK0            50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK2            30      0       0       8        0.0%
;;BANK2               30      0       0       9        0.0%
;;DATA                 0      0       0      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  RxByte          1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_InitI2C
;;		_I2C_Start
;;		_I2C_Write_Byte
;;		_I2C_Read_Byte
;;		_I2C_Send_ACK
;;		_I2C_Stop
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\Main.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	17
	
l1659:	
;Main.c: 17: InitI2C();
	fcall	_InitI2C
	line	19
	
l1661:	
;Main.c: 19: I2C_Start();
	fcall	_I2C_Start
	line	20
	
l1663:	
;Main.c: 20: I2C_Write_Byte(0xA0);
	movlw	(0A0h)
	fcall	_I2C_Write_Byte
	line	21
	
l1665:	
;Main.c: 21: RxByte = I2C_Read_Byte();
	fcall	_I2C_Read_Byte
	line	22
	
l1667:	
;Main.c: 22: I2C_Send_ACK();
	fcall	_I2C_Send_ACK
	line	23
	
l1669:	
;Main.c: 23: I2C_Stop();
	fcall	_I2C_Stop
	line	29
;Main.c: 26: {
	
l796:	
	line	25
	goto	l796
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	30
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_I2C_Read_Byte
psect	text81,local,class=CODE,delta=2
global __ptext81
__ptext81:

;; *************** function _I2C_Read_Byte *****************
;; Defined at:
;;		line 128 in file "C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    2[COMMON] unsigned char 
;;  RxData          1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text81
	file	"C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\I2C.c"
	line	128
	global	__size_of_I2C_Read_Byte
	__size_of_I2C_Read_Byte	equ	__end_of_I2C_Read_Byte-_I2C_Read_Byte
	
_I2C_Read_Byte:	
	opt	stack 7
; Regs used in _I2C_Read_Byte: [wreg+status,2+status,0]
	line	129
	
l1639:	
;I2C.c: 129: unsigned char i, RxData = 0;
	clrf	(I2C_Read_Byte@RxData)
	line	131
;I2C.c: 131: for(i=0;i<8;i++)
	clrf	(I2C_Read_Byte@i)
	line	132
	
l404:	
	line	133
;I2C.c: 132: {
;I2C.c: 133: TRISB0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1072/8)^080h,(1072)&7
	line	134
;I2C.c: 134: TRISA4 = 1;
	bsf	(1068/8)^080h,(1068)&7
	line	135
	
l1645:	
;I2C.c: 135: _delay((unsigned long)((500/10)*(20000000/4000000.0)));
	opt asmopt_off
movlw	83
movwf	(??_I2C_Read_Byte+0)+0,f
u67:
decfsz	(??_I2C_Read_Byte+0)+0,f
	goto	u67
opt asmopt_on

	line	136
	
l1647:	
;I2C.c: 136: TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	137
;I2C.c: 137: _delay((unsigned long)((500/10/2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	41
movwf	(??_I2C_Read_Byte+0)+0,f
u77:
decfsz	(??_I2C_Read_Byte+0)+0,f
	goto	u77
	clrwdt
opt asmopt_on

	line	138
	
l1649:	
;I2C.c: 138: RxData = RxData|(RA4<<(7-i));
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	movlw	1
	movwf	(??_I2C_Read_Byte+0)+0
	movf	(I2C_Read_Byte@i),w
	sublw	07h
	addlw	1
	goto	u44
u45:
	clrc
	rlf	(??_I2C_Read_Byte+0)+0,f
u44:
	addlw	-1
	skipz
	goto	u45
	movf	0+(??_I2C_Read_Byte+0)+0,w
	iorwf	(I2C_Read_Byte@RxData),f
	line	139
	
l1651:	
;I2C.c: 139: _delay((unsigned long)((500/10/2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	41
movwf	(??_I2C_Read_Byte+0)+0,f
u87:
decfsz	(??_I2C_Read_Byte+0)+0,f
	goto	u87
	clrwdt
opt asmopt_on

	line	131
	
l1653:	
	incf	(I2C_Read_Byte@i),f
	movlw	(08h)
	subwf	(I2C_Read_Byte@i),w
	skipc
	goto	u51
	goto	u50
u51:
	goto	l404
u50:
	line	142
	
l1655:	
;I2C.c: 140: }
;I2C.c: 142: return RxData;
	movf	(I2C_Read_Byte@RxData),w
	line	143
	
l406:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Read_Byte
	__end_of_I2C_Read_Byte:
;; =============== function _I2C_Read_Byte ends ============

	signat	_I2C_Read_Byte,89
	global	_I2C_Write_Byte
psect	text82,local,class=CODE,delta=2
global __ptext82
__ptext82:

;; *************** function _I2C_Write_Byte *****************
;; Defined at:
;;		line 95 in file "C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    1[COMMON] unsigned char 
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text82
	file	"C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\I2C.c"
	line	95
	global	__size_of_I2C_Write_Byte
	__size_of_I2C_Write_Byte	equ	__end_of_I2C_Write_Byte-_I2C_Write_Byte
	
_I2C_Write_Byte:	
	opt	stack 7
; Regs used in _I2C_Write_Byte: [wreg+status,2+status,0]
;I2C_Write_Byte@Byte stored from wreg
	line	98
	movwf	(I2C_Write_Byte@Byte)
	
l1611:	
;I2C.c: 96: unsigned char i;
;I2C.c: 98: for(i=0;i<8;i++)
	clrf	(I2C_Write_Byte@i)
	line	99
	
l397:	
	line	100
;I2C.c: 99: {
;I2C.c: 100: TRISB0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1072/8)^080h,(1072)&7
	line	102
	
l1617:	
;I2C.c: 102: _delay((unsigned long)((500/10/2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	41
movwf	(??_I2C_Write_Byte+0)+0,f
u97:
decfsz	(??_I2C_Write_Byte+0)+0,f
	goto	u97
	clrwdt
opt asmopt_on

	line	105
	
l1619:	
;I2C.c: 105: if((Byte<<i)&0x80)
	movf	(I2C_Write_Byte@Byte),w
	movwf	(??_I2C_Write_Byte+0)+0
	incf	(I2C_Write_Byte@i),w
	goto	u14
u15:
	clrc
	rlf	(??_I2C_Write_Byte+0)+0,f
u14:
	addlw	-1
	skipz
	goto	u15
	btfss	0+(??_I2C_Write_Byte+0)+0,(7)&7
	goto	u21
	goto	u20
u21:
	goto	l399
u20:
	line	106
	
l1621:	
;I2C.c: 106: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1068/8)^080h,(1068)&7
	goto	l1623
	line	107
	
l399:	
	line	108
;I2C.c: 107: else
;I2C.c: 108: TRISA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1068/8)^080h,(1068)&7
	line	110
	
l1623:	
;I2C.c: 110: _delay((unsigned long)((500/10/2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	41
movwf	(??_I2C_Write_Byte+0)+0,f
u107:
decfsz	(??_I2C_Write_Byte+0)+0,f
	goto	u107
	clrwdt
opt asmopt_on

	line	111
	
l1625:	
;I2C.c: 111: TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	112
;I2C.c: 112: _delay((unsigned long)((500/10)*(20000000/4000000.0)));
	opt asmopt_off
movlw	83
movwf	(??_I2C_Write_Byte+0)+0,f
u117:
decfsz	(??_I2C_Write_Byte+0)+0,f
	goto	u117
opt asmopt_on

	line	98
	
l1627:	
	incf	(I2C_Write_Byte@i),f
	
l1629:	
	movlw	(08h)
	subwf	(I2C_Write_Byte@i),w
	skipc
	goto	u31
	goto	u30
u31:
	goto	l397
u30:
	
l398:	
	line	116
;I2C.c: 113: }
;I2C.c: 116: TRISB0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1072/8)^080h,(1072)&7
	line	117
;I2C.c: 117: TRISA4 = 1;
	bsf	(1068/8)^080h,(1068)&7
	line	118
	
l1631:	
;I2C.c: 118: _delay((unsigned long)((500/10)*(20000000/4000000.0)));
	opt asmopt_off
movlw	83
movwf	(??_I2C_Write_Byte+0)+0,f
u127:
decfsz	(??_I2C_Write_Byte+0)+0,f
	goto	u127
opt asmopt_on

	line	119
	
l1633:	
;I2C.c: 119: TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	120
;I2C.c: 120: _delay((unsigned long)((500/10)*(20000000/4000000.0)));
	opt asmopt_off
movlw	83
movwf	(??_I2C_Write_Byte+0)+0,f
u137:
decfsz	(??_I2C_Write_Byte+0)+0,f
	goto	u137
opt asmopt_on

	line	122
	
l1635:	
;I2C.c: 122: return RA4;
;	Return value of _I2C_Write_Byte is never used
	line	123
	
l401:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Write_Byte
	__end_of_I2C_Write_Byte:
;; =============== function _I2C_Write_Byte ends ============

	signat	_I2C_Write_Byte,4216
	global	_I2C_Send_ACK
psect	text83,local,class=CODE,delta=2
global __ptext83
__ptext83:

;; *************** function _I2C_Send_ACK *****************
;; Defined at:
;;		line 69 in file "C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text83
	file	"C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\I2C.c"
	line	69
	global	__size_of_I2C_Send_ACK
	__size_of_I2C_Send_ACK	equ	__end_of_I2C_Send_ACK-_I2C_Send_ACK
	
_I2C_Send_ACK:	
	opt	stack 7
; Regs used in _I2C_Send_ACK: [wreg]
	line	70
	
l1603:	
;I2C.c: 70: TRISB0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1072/8)^080h,(1072)&7
	line	71
	
l1605:	
;I2C.c: 71: _delay((unsigned long)((500/10/2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	41
movwf	(??_I2C_Send_ACK+0)+0,f
u147:
decfsz	(??_I2C_Send_ACK+0)+0,f
	goto	u147
	clrwdt
opt asmopt_on

	line	73
	
l1607:	
;I2C.c: 73: TRISA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1068/8)^080h,(1068)&7
	line	74
;I2C.c: 74: _delay((unsigned long)((500/10/2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	41
movwf	(??_I2C_Send_ACK+0)+0,f
u157:
decfsz	(??_I2C_Send_ACK+0)+0,f
	goto	u157
	clrwdt
opt asmopt_on

	line	75
	
l1609:	
;I2C.c: 75: TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	76
;I2C.c: 76: _delay((unsigned long)((500/10)*(20000000/4000000.0)));
	opt asmopt_off
movlw	83
movwf	(??_I2C_Send_ACK+0)+0,f
u167:
decfsz	(??_I2C_Send_ACK+0)+0,f
	goto	u167
opt asmopt_on

	line	77
	
l391:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send_ACK
	__end_of_I2C_Send_ACK:
;; =============== function _I2C_Send_ACK ends ============

	signat	_I2C_Send_ACK,88
	global	_I2C_Stop
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 51 in file "C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text84
	file	"C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\I2C.c"
	line	51
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
	opt	stack 7
; Regs used in _I2C_Stop: [wreg]
	line	52
	
l1593:	
;I2C.c: 52: TRISB0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1072/8)^080h,(1072)&7
	line	54
	
l1595:	
;I2C.c: 54: _delay((unsigned long)((500/10/2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	41
movwf	(??_I2C_Stop+0)+0,f
u177:
decfsz	(??_I2C_Stop+0)+0,f
	goto	u177
	clrwdt
opt asmopt_on

	line	56
	
l1597:	
;I2C.c: 56: TRISA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1068/8)^080h,(1068)&7
	line	58
;I2C.c: 58: _delay((unsigned long)((500/10/2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	41
movwf	(??_I2C_Stop+0)+0,f
u187:
decfsz	(??_I2C_Stop+0)+0,f
	goto	u187
	clrwdt
opt asmopt_on

	line	59
	
l1599:	
;I2C.c: 59: TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	60
;I2C.c: 60: _delay((unsigned long)((500/10/2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	41
movwf	(??_I2C_Stop+0)+0,f
u197:
decfsz	(??_I2C_Stop+0)+0,f
	goto	u197
	clrwdt
opt asmopt_on

	line	61
	
l1601:	
;I2C.c: 61: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	62
;I2C.c: 62: _delay((unsigned long)((500/10/2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	41
movwf	(??_I2C_Stop+0)+0,f
u207:
decfsz	(??_I2C_Stop+0)+0,f
	goto	u207
	clrwdt
opt asmopt_on

	line	63
	
l388:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
;; =============== function _I2C_Stop ends ============

	signat	_I2C_Stop,88
	global	_I2C_Start
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 20 in file "C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text85
	file	"C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\I2C.c"
	line	20
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
	opt	stack 7
; Regs used in _I2C_Start: [wreg]
	line	21
	
l1587:	
;I2C.c: 21: RA4 = 0;
	bcf	(44/8),(44)&7
	line	22
;I2C.c: 22: RB0 = 0;
	bcf	(48/8),(48)&7
	line	24
;I2C.c: 24: TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	25
;I2C.c: 25: TRISA4 = 1;
	bsf	(1068/8)^080h,(1068)&7
	line	26
	
l1589:	
;I2C.c: 26: _delay((unsigned long)((500/10)*(20000000/4000000.0)));
	opt asmopt_off
movlw	83
movwf	(??_I2C_Start+0)+0,f
u217:
decfsz	(??_I2C_Start+0)+0,f
	goto	u217
opt asmopt_on

	line	27
	
l1591:	
;I2C.c: 27: TRISA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1068/8)^080h,(1068)&7
	line	28
;I2C.c: 28: _delay((unsigned long)((500/10)*(20000000/4000000.0)));
	opt asmopt_off
movlw	83
movwf	(??_I2C_Start+0)+0,f
u227:
decfsz	(??_I2C_Start+0)+0,f
	goto	u227
opt asmopt_on

	line	29
	
l382:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
;; =============== function _I2C_Start ends ============

	signat	_I2C_Start,88
	global	_InitI2C
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function _InitI2C *****************
;; Defined at:
;;		line 7 in file "C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text86
	file	"C:\Users\macbookpro\Dropbox\Blog Posts\PIC16F628A I2C Code\Code\I2C.c"
	line	7
	global	__size_of_InitI2C
	__size_of_InitI2C	equ	__end_of_InitI2C-_InitI2C
	
_InitI2C:	
	opt	stack 7
; Regs used in _InitI2C: []
	line	9
	
l1585:	
;I2C.c: 9: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	10
;I2C.c: 10: TRISB0 = 1;
	bsf	(1072/8)^080h,(1072)&7
	line	13
;I2C.c: 13: RA4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(44/8),(44)&7
	line	14
;I2C.c: 14: RB0 = 0;
	bcf	(48/8),(48)&7
	line	15
	
l379:	
	return
	opt stack 0
GLOBAL	__end_of_InitI2C
	__end_of_InitI2C:
;; =============== function _InitI2C ends ============

	signat	_InitI2C,88
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
