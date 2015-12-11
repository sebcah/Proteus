###############################################################################
# Makefile for project 
###############################################################################

## General options
PROJECT = 
MCU = PIC18F4520
COMPILER = "MPLAB XC8"
TARGET = Debug
SHELL = C:\WINDOWS\system32\cmd.exe

## Tools general options
CCFLAGS=--pass1 --errformat="Error at file %%f line %%l column %%c: (%%n) %%s" --warnformat="Warning at file %%f line %%l column %%c: (%%n) %%s" --msgformat="Message at file %%f line %%l column %%c: (%%n) %%s" -G --chip=18F4520
LDFLAGS=--output=mcof -G --chip=18F4520

## Processing Tools
CC=xc8.exe
ASM=xc8.exe
LD=xc8.exe
LIB=xc8.exe
#  C:/MPlab_code/Proteus/PIC18F4520 Interruptions/PIC18F4520/Debug/Debug.cof: TOOL=LD
#     C:/MPlab_code/Proteus/PIC18F4520 Interruptions/PIC18F4520/Debug/main.p1: TOOL=CC
#        C:/MPlab_code/Proteus/PIC18F4520 Interruptions/PIC18F4520/main.c
#     C:/MPlab_code/Proteus/PIC18F4520 Interruptions/PIC18F4520/Debug/config.p1: TOOL=CC
#        C:/MPlab_code/Proteus/PIC18F4520 Interruptions/PIC18F4520/config.c
#     C:/MPlab_code/Proteus/PIC18F4520 Interruptions/PIC18F4520/Debug/init.p1: TOOL=CC
#        C:/MPlab_code/Proteus/PIC18F4520 Interruptions/PIC18F4520/init.c
#     C:/MPlab_code/Proteus/PIC18F4520 Interruptions/PIC18F4520/Debug/INTERR~1.p1: TOOL=CC
#        C:/MPlab_code/Proteus/PIC18F4520 Interruptions/PIC18F4520/interrupts.c

# Build tree:
all:	Debug

Debug:	Debug.cof

Debug.cof:	main.p1 config.p1 init.p1 INTERR~1.p1 
	$(LD) $(LDFLAGS)  -O"Debug.cof" "main.p1" "config.p1" "init.p1" "INTERR~1.p1"

main.p1:	../main.c 
	$(CC) $(CCFLAGS)  -O"main.p1" "../main.c"

config.p1:	../config.c 
	$(CC) $(CCFLAGS)  -O"config.p1" "../config.c"

init.p1:	../init.c 
	$(CC) $(CCFLAGS)  -O"init.p1" "../init.c"

INTERR~1.p1:	../INTERR~1.C 
	$(CC) $(CCFLAGS)  -O"INTERR~1.p1" "../interrupts.c"

# tidy - delete all temporary files which are not involved in the target generation
tidy:
	rm -rf Debug.hxl
	rm -rf Debug.lst
	rm -rf Debug.sym
	rm -rf Debug.obj
	rm -rf Debug.sdb
	rm -rf Debug.as
	rm -rf ./startup.obj
	rm -rf ./startup.rlf
	rm -rf ./startup.as
	rm -rf ./startup.lst
	rm -rf ./funclist.
	rm -rf Debug.hex
	rm -rf main.pre
	rm -rf main.lst
	rm -rf config.pre
	rm -rf config.lst
	rm -rf init.pre
	rm -rf init.lst
	rm -rf INTERR~1.pre
	rm -rf INTERR~1.lst

# cleanup - delete all generated files
clean:	tidy
	rm -rf Debug.cof
	rm -rf main.p1
	rm -rf config.p1
	rm -rf init.p1
	rm -rf INTERR~1.p1

