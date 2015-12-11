opt subtitle "Microchip Technology Omniscient Code Generator v1.35 (Free mode) build 201507080246"

opt pagewidth 120

	opt lm

	processor	16F877A
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
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
INDF equ 00h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 63 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PCL equ 02h ;# 
# 69 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
STATUS equ 03h ;# 
# 156 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
FSR equ 04h ;# 
# 162 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PORTA equ 05h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PORTB equ 06h ;# 
# 272 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PORTC equ 07h ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PORTD equ 08h ;# 
# 394 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PORTE equ 09h ;# 
# 425 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 444 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 521 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 582 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 621 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 627 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 633 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 639 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
T1CON equ 010h ;# 
# 713 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
T2CON equ 012h ;# 
# 789 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 795 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 864 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 870 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 876 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 882 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 939 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1033 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1039 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1045 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1051 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1057 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1063 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1120 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1126 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1221 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1290 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1339 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1400 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1461 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1522 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1578 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1639 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1678 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1711 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1772 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1778 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1784 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1952 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2038 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2107 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2171 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2177 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2235 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2241 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2247 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2253 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2259 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2303 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNROOT	_main
	global	_RB0
_RB0	set	0x30
	global	_RB1
_RB1	set	0x31
	global	_TRISB0
_TRISB0	set	0x430
	global	_TRISB1
_TRISB1	set	0x431
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
	file	"Debug.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
??_main:	; 0 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      3       3
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0       0
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      3       3       1       21.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 27 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   12[None  ] int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"../main.c"
	line	27
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../main.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [wreg]
	line	29
	
l477:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1072/8)^080h,(1072)&7	;volatile
	line	30
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	32
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	34
	
l13:	
	line	36
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l13
u10:
	line	38
	
l479:	
	bsf	(48/8),(48)&7	;volatile
	line	39
	
l481:	
	opt asmopt_off
movlw  11
movwf	((??_main+0)+0+2),f
movlw	38
movwf	((??_main+0)+0+1),f
	movlw	102
movwf	((??_main+0)+0),f
u27:
	decfsz	((??_main+0)+0),f
	goto	u27
	decfsz	((??_main+0)+0+1),f
	goto	u27
	decfsz	((??_main+0)+0+2),f
	goto	u27
	nop2
opt asmopt_on

	line	40
	
l483:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	41
	opt asmopt_off
movlw  11
movwf	((??_main+0)+0+2),f
movlw	38
movwf	((??_main+0)+0+1),f
	movlw	102
movwf	((??_main+0)+0),f
u37:
	decfsz	((??_main+0)+0),f
	goto	u37
	decfsz	((??_main+0)+0+1),f
	goto	u37
	decfsz	((??_main+0)+0+2),f
	goto	u37
	nop2
opt asmopt_on

	goto	l13
	line	42
	
l14:	
	goto	l13
	line	43
	
l15:	
	line	34
	goto	l13
	
l16:	
	line	45
;	Return value of _main is never used
	
l17:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
