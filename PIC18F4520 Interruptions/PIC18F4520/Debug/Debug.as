opt subtitle "Microchip Technology Omniscient Code Generator v1.35 (Free mode) build 201507080246"

opt pagewidth 120

	opt lm

	processor	18F4520
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 271 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 449 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 633 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1234 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1366 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1732 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1953 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1958 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2174 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2179 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2395 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2400 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2616 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2621 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2843 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2922 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3080 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3145 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3210 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3275 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3340 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3346 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3352 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3358 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3363 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3567 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3572 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3864 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3869 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3875 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3880 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3886 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3891 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3897 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3903 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 4016 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 4022 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 4028 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 4034 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4129 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4207 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4212 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4505 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4510 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4762 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4768 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4774 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4876 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4882 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4964 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 5054 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5176 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5182 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5188 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5194 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5357 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5608 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5705 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5710 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5814 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5820 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5924 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5930 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5936 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5942 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 6101 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 6106 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6370 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6452 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6534 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6540 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6552 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6636 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6648 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6654 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6660 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6666 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6672 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6678 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6684 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6690 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6696 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6702 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6708 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6714 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6720 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6726 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6732 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6743 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6749 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6755 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6761 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6767 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6773 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6779 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6785 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6791 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6882 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6951 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 7087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 7093 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 7099 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 7105 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 7113 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 7119 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 7125 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 7131 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 7139 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 7146 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 7152 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 7158 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 7164 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 7170 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7243 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7249 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7255 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7261 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 271 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 449 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 633 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1234 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1366 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1732 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1953 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1958 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2174 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2179 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2395 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2400 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2616 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2621 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2843 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2922 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3080 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3145 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3210 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3275 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3340 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3346 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3352 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3358 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3363 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3567 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3572 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3864 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3869 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3875 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3880 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3886 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3891 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3897 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3903 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 4016 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 4022 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 4028 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 4034 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4129 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4207 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4212 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4505 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4510 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4762 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4768 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4774 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4876 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4882 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4964 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 5054 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5176 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5182 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5188 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5194 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5357 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5608 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5705 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5710 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5814 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5820 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5924 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5930 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5936 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5942 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 6101 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 6106 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6370 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6452 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6534 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6540 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6552 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6636 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6648 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6654 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6660 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6666 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6672 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6678 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6684 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6690 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6696 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6702 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6708 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6714 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6720 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6726 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6732 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6743 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6749 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6755 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6761 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6767 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6773 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6779 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6785 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6791 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6882 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6951 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 7087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 7093 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 7099 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 7105 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 7113 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 7119 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 7125 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 7131 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 7139 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 7146 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 7152 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 7158 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 7164 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 7170 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7243 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7249 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7255 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7261 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 271 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 449 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 633 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1234 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1366 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1732 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1953 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1958 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2174 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2179 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2395 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2400 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2616 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2621 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2843 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2922 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3080 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3145 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3210 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3275 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3340 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3346 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3352 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3358 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3363 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3567 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3572 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3864 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3869 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3875 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3880 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3886 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3891 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3897 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3903 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 4016 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 4022 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 4028 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 4034 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4129 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4207 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4212 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4505 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4510 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4762 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4768 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4774 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4876 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4882 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4964 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 5054 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5176 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5182 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5188 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5194 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5357 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5608 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5705 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5710 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5814 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5820 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5924 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5930 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5936 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5942 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 6101 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 6106 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6370 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6452 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6534 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6540 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6552 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6636 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6648 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6654 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6660 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6666 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6672 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6678 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6684 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6690 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6696 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6702 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6708 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6714 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6720 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6726 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6732 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6743 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6749 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6755 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6761 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6767 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6773 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6779 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6785 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6791 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6882 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6951 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 7087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 7093 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 7099 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 7105 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 7113 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 7119 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 7125 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 7131 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 7139 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 7146 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 7152 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 7158 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 7164 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 7170 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7243 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7249 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7255 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7261 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 271 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 449 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 633 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1234 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1366 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1732 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1953 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1958 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2174 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2179 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2395 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2400 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2616 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2621 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2843 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2922 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3080 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3145 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3210 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3275 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3340 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3346 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3352 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3358 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3363 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3567 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3572 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3864 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3869 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3875 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3880 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3886 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3891 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3897 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3903 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 4016 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 4022 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 4028 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 4034 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4129 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4207 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4212 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4505 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4510 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4762 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4768 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4774 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4876 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4882 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4964 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 5054 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5176 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5182 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5188 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5194 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5357 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5608 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5705 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5710 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5814 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5820 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5924 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5930 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5936 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5942 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 6101 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 6106 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6370 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6452 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6534 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6540 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6552 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6636 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6648 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6654 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6660 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6666 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6672 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6678 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6684 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6690 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6696 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6702 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6708 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6714 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6720 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6726 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6732 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6743 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6749 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6755 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6761 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6767 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6773 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6779 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6785 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6791 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6882 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6951 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 7087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 7093 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 7099 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 7105 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 7113 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 7119 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 7125 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 7131 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 7139 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 7146 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 7152 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 7158 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 7164 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 7170 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7243 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7249 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7255 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7261 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_init
	FNROOT	_main
	FNCALL	intlevel2,_CheckSwitchPressed
	global	intlevel2
	FNROOT	intlevel2
	global	_INTCON2bits
_INTCON2bits	set	0xFF1
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_TRISB
_TRISB	set	0xF93
; #config settings
global __CFG_OSC$HS
__CFG_OSC$HS equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_BORV$3
__CFG_BORV$3 equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_CCP2MX$PORTC
__CFG_CCP2MX$PORTC equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_LPT1OSC$OFF
__CFG_LPT1OSC$OFF equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_LVP$ON
__CFG_LVP$ON equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CP2$OFF
__CFG_CP2$OFF equ 0x0
global __CFG_CP3$OFF
__CFG_CP3$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRT2$OFF
__CFG_WRT2$OFF equ 0x0
global __CFG_WRT3$OFF
__CFG_WRT3$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_WRTD$OFF
__CFG_WRTD$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTR2$OFF
__CFG_EBTR2$OFF equ 0x0
global __CFG_EBTR3$OFF
__CFG_EBTR3$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"Debug.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_init:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_CheckSwitchPressed:	; 0 bytes @ 0x0
??_CheckSwitchPressed:	; 0 bytes @ 0x0
	ds   15
	global	CheckSwitchPressed@flash_count
CheckSwitchPressed@flash_count:	; 2 bytes @ 0xF
	ds   2
	global	CheckSwitchPressed@count
CheckSwitchPressed@count:	; 2 bytes @ 0x11
	ds   2
	global	CheckSwitchPressed@count_353
CheckSwitchPressed@count_353:	; 2 bytes @ 0x13
	ds   2
??_init:	; 0 bytes @ 0x15
??_main:	; 0 bytes @ 0x15
	ds   1
	global	main@count
main@count:	; 2 bytes @ 0x16
	ds   2
	global	main@count_112
main@count_112:	; 2 bytes @ 0x18
	ds   2
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
;!    COMRAM          126     26      26
;!    BANK0           128      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _CheckSwitchPressed in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _CheckSwitchPressed in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _CheckSwitchPressed in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _CheckSwitchPressed in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _CheckSwitchPressed in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _CheckSwitchPressed in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _CheckSwitchPressed in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0      60
;!                                             21 COMRAM     5     5      0
;!                               _init
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _CheckSwitchPressed                                  21    21      0      90
;!                                              0 COMRAM    21    21      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _init
;!
;! _CheckSwitchPressed (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMRAM           7E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMRAM              7E     1A      1A       1       20.6%
;!STACK                0      0       0       2        0.0%
;!DATA                 0      0       0       3        0.0%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80      0       0       5        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BANK5              100      0       0      14        0.0%
;!ABS                  0      0       0      15        0.0%
;!BITBANK5           100      0       0      16        0.0%
;!BIGRAM             5FF      0       0      17        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 5 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   24[COMRAM] int 
;;  count           2   22[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"../main.c"
	line	5
global __ptext0
__ptext0:
psect	text0
	file	"../main.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 29
	line	6
	
l649:
	call	_init	;wreg free
	goto	l651
	line	7
	
l9:
	line	10
	
l651:
	bsf	((c:3969)),c,4	;volatile
	line	11
	
l653:
	movlw	high(0)
	movwf	((c:main@count+1)),c
	movlw	low(0)
	movwf	((c:main@count)),c
	
l655:
	btfsc	((c:main@count+1)),c,7
	goto	u11
	movf	((c:main@count+1)),c,w
	bnz	u10
	movlw	20
	subwf	 ((c:main@count)),c,w
	btfss	status,0
	goto	u11
	goto	u10

u11:
	goto	l659
u10:
	goto	l11
	
l657:
	goto	l11
	line	12
	
l10:
	
l659:
	movlw	130
movwf	(??_main+0+0)&0ffh,c,f
	movlw	222
u127:
decfsz	wreg,f
	goto	u127
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u127

	line	11
	
l661:
	infsnz	((c:main@count)),c
	incf	((c:main@count+1)),c
	btfsc	((c:main@count+1)),c,7
	goto	u21
	movf	((c:main@count+1)),c,w
	bnz	u20
	movlw	20
	subwf	 ((c:main@count)),c,w
	btfss	status,0
	goto	u21
	goto	u20

u21:
	goto	l659
u20:
	
l11:
	line	13
	bcf	((c:3969)),c,4	;volatile
	line	14
	
l663:
	movlw	high(0)
	movwf	((c:main@count_112+1)),c
	movlw	low(0)
	movwf	((c:main@count_112)),c
	
l665:
	btfsc	((c:main@count_112+1)),c,7
	goto	u31
	movf	((c:main@count_112+1)),c,w
	bnz	u30
	movlw	20
	subwf	 ((c:main@count_112)),c,w
	btfss	status,0
	goto	u31
	goto	u30

u31:
	goto	l669
u30:
	goto	l651
	
l667:
	goto	l651
	line	15
	
l12:
	
l669:
	movlw	130
movwf	(??_main+0+0)&0ffh,c,f
	movlw	222
u137:
decfsz	wreg,f
	goto	u137
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u137

	line	14
	
l671:
	infsnz	((c:main@count_112)),c
	incf	((c:main@count_112+1)),c
	btfsc	((c:main@count_112+1)),c,7
	goto	u41
	movf	((c:main@count_112+1)),c,w
	bnz	u40
	movlw	20
	subwf	 ((c:main@count_112)),c,w
	btfss	status,0
	goto	u41
	goto	u40

u41:
	goto	l669
u40:
	goto	l651
	
l13:
	goto	l651
	line	16
	
l14:
	line	7
	goto	l651
	
l15:
	line	17
	
l16:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 3 in file "../init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"../init.c"
	line	3
global __ptext1
__ptext1:
psect	text1
	file	"../init.c"
	line	3
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:
;incstack = 0
	opt	stack 29
	line	5
	
l639:
	movlw	low(0Fh)
	movwf	((c:3987)),c	;volatile
	line	9
	
l641:
	bcf	((c:4082)),c,1	;volatile
	line	10
	
l643:
	bsf	((c:4082)),c,7	;volatile
	line	11
	
l645:
	bsf	((c:4082)),c,4	;volatile
	line	12
	
l647:
	bsf	((c:4081)),c,6	;volatile
	line	14
	
l25:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_CheckSwitchPressed

;; *************** function _CheckSwitchPressed *****************
;; Defined at:
;;		line 5 in file "../interrupts.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   19[COMRAM] int 
;;  count           2   17[COMRAM] int 
;;  flash_count     2   15[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:         15       0       0       0       0       0       0
;;      Totals:        21       0       0       0       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"../interrupts.c"
	line	5
	global	__size_of_CheckSwitchPressed
	__size_of_CheckSwitchPressed	equ	__end_of_CheckSwitchPressed-_CheckSwitchPressed
	
_CheckSwitchPressed:
;incstack = 0
	opt	stack 29
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	movff	pclat+0,??_CheckSwitchPressed+1
	movff	pclat+1,??_CheckSwitchPressed+2
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr0l+0,??_CheckSwitchPressed+3
	movff	fsr0h+0,??_CheckSwitchPressed+4
	movff	fsr1l+0,??_CheckSwitchPressed+5
	movff	fsr1h+0,??_CheckSwitchPressed+6
	movff	fsr2l+0,??_CheckSwitchPressed+7
	movff	fsr2h+0,??_CheckSwitchPressed+8
	movff	prodl+0,??_CheckSwitchPressed+9
	movff	prodh+0,??_CheckSwitchPressed+10
	movff	tblptrl+0,??_CheckSwitchPressed+11
	movff	tblptrh+0,??_CheckSwitchPressed+12
	movff	tblptru+0,??_CheckSwitchPressed+13
	movff	tablat+0,??_CheckSwitchPressed+14
	line	7
	
i2l673:
	btfss	((c:4082)),c,1	;volatile
	goto	i2u5_41
	goto	i2u5_40
i2u5_41:
	goto	i2l41
i2u5_40:
	line	10
	
i2l675:
	movlw	high(0)
	movwf	((c:CheckSwitchPressed@flash_count+1)),c
	movlw	low(0)
	movwf	((c:CheckSwitchPressed@flash_count)),c
	
i2l677:
	btfsc	((c:CheckSwitchPressed@flash_count+1)),c,7
	goto	i2u6_41
	movf	((c:CheckSwitchPressed@flash_count+1)),c,w
	bnz	i2u6_40
	movlw	5
	subwf	 ((c:CheckSwitchPressed@flash_count)),c,w
	btfss	status,0
	goto	i2u6_41
	goto	i2u6_40

i2u6_41:
	goto	i2l35
i2u6_40:
	goto	i2l36
	
i2l679:
	goto	i2l36
	
i2l35:
	line	11
	bsf	((c:3969)),c,5	;volatile
	line	12
	
i2l681:
	movlw	high(0)
	movwf	((c:CheckSwitchPressed@count+1)),c
	movlw	low(0)
	movwf	((c:CheckSwitchPressed@count)),c
	
i2l683:
	btfsc	((c:CheckSwitchPressed@count+1)),c,7
	goto	i2u7_41
	movf	((c:CheckSwitchPressed@count+1)),c,w
	bnz	i2u7_40
	movlw	20
	subwf	 ((c:CheckSwitchPressed@count)),c,w
	btfss	status,0
	goto	i2u7_41
	goto	i2u7_40

i2u7_41:
	goto	i2l687
i2u7_40:
	goto	i2l38
	
i2l685:
	goto	i2l38
	
i2l37:
	
i2l687:
	movlw	39
movwf	(??_CheckSwitchPressed+0+0)&0ffh,c,f
	movlw	245
i2u14_47:
decfsz	wreg,f
	goto	i2u14_47
	decfsz	(??_CheckSwitchPressed+0+0)&0ffh,c,f
	goto	i2u14_47
	nop

	
i2l689:
	infsnz	((c:CheckSwitchPressed@count)),c
	incf	((c:CheckSwitchPressed@count+1)),c
	btfsc	((c:CheckSwitchPressed@count+1)),c,7
	goto	i2u8_41
	movf	((c:CheckSwitchPressed@count+1)),c,w
	bnz	i2u8_40
	movlw	20
	subwf	 ((c:CheckSwitchPressed@count)),c,w
	btfss	status,0
	goto	i2u8_41
	goto	i2u8_40

i2u8_41:
	goto	i2l687
i2u8_40:
	
i2l38:
	line	13
	bcf	((c:3969)),c,5	;volatile
	line	14
	
i2l691:
	movlw	high(0)
	movwf	((c:CheckSwitchPressed@count_353+1)),c
	movlw	low(0)
	movwf	((c:CheckSwitchPressed@count_353)),c
	
i2l693:
	btfsc	((c:CheckSwitchPressed@count_353+1)),c,7
	goto	i2u9_41
	movf	((c:CheckSwitchPressed@count_353+1)),c,w
	bnz	i2u9_40
	movlw	20
	subwf	 ((c:CheckSwitchPressed@count_353)),c,w
	btfss	status,0
	goto	i2u9_41
	goto	i2u9_40

i2u9_41:
	goto	i2l697
i2u9_40:
	goto	i2l701
	
i2l695:
	goto	i2l701
	
i2l39:
	
i2l697:
	movlw	39
movwf	(??_CheckSwitchPressed+0+0)&0ffh,c,f
	movlw	245
i2u15_47:
decfsz	wreg,f
	goto	i2u15_47
	decfsz	(??_CheckSwitchPressed+0+0)&0ffh,c,f
	goto	i2u15_47
	nop

	
i2l699:
	infsnz	((c:CheckSwitchPressed@count_353)),c
	incf	((c:CheckSwitchPressed@count_353+1)),c
	btfsc	((c:CheckSwitchPressed@count_353+1)),c,7
	goto	i2u10_41
	movf	((c:CheckSwitchPressed@count_353+1)),c,w
	bnz	i2u10_40
	movlw	20
	subwf	 ((c:CheckSwitchPressed@count_353)),c,w
	btfss	status,0
	goto	i2u10_41
	goto	i2u10_40

i2u10_41:
	goto	i2l697
i2u10_40:
	goto	i2l701
	
i2l40:
	line	10
	
i2l701:
	infsnz	((c:CheckSwitchPressed@flash_count)),c
	incf	((c:CheckSwitchPressed@flash_count+1)),c
	
i2l703:
	btfsc	((c:CheckSwitchPressed@flash_count+1)),c,7
	goto	i2u11_41
	movf	((c:CheckSwitchPressed@flash_count+1)),c,w
	bnz	i2u11_40
	movlw	5
	subwf	 ((c:CheckSwitchPressed@flash_count)),c,w
	btfss	status,0
	goto	i2u11_41
	goto	i2u11_40

i2u11_41:
	goto	i2l35
i2u11_40:
	
i2l36:
	line	16
	bcf	((c:4082)),c,1	;volatile
	goto	i2l41
	line	17
	
i2l34:
	line	18
	
i2l41:
	movff	??_CheckSwitchPressed+14,tablat+0
	movff	??_CheckSwitchPressed+13,tblptru+0
	movff	??_CheckSwitchPressed+12,tblptrh+0
	movff	??_CheckSwitchPressed+11,tblptrl+0
	movff	??_CheckSwitchPressed+10,prodh+0
	movff	??_CheckSwitchPressed+9,prodl+0
	movff	??_CheckSwitchPressed+8,fsr2h+0
	movff	??_CheckSwitchPressed+7,fsr2l+0
	movff	??_CheckSwitchPressed+6,fsr1h+0
	movff	??_CheckSwitchPressed+5,fsr1l+0
	movff	??_CheckSwitchPressed+4,fsr0h+0
	movff	??_CheckSwitchPressed+3,fsr0l+0
	movff	??_CheckSwitchPressed+2,pclat+1
	movff	??_CheckSwitchPressed+1,pclat+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	opt stack 0
GLOBAL	__end_of_CheckSwitchPressed
	__end_of_CheckSwitchPressed:
	signat	_CheckSwitchPressed,88
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	end
