
	; Microchip MPLAB XC8 C Compiler V2.32
	; Copyright (C) 2021 Microchip Technology Inc.

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --chip=10F200 -m --opt=all -g
	;


	processor	10F200

	global	_main,start,reset_vec
	fnroot	_main
	psect	code,class=CODE,delta=2
	psect	powerup,class=CODE,delta=2
	psect	reset_vec,class=CODE,delta=2
	psect	maintext,class=CODE,delta=2
	C	set	0
	Z	set	2
	PCL	set	2
	INDF	set	0

	STATUS	equ	3
	FSR	equ	4
OSCCAL	equ	0x5

	psect	reset_wrap,class=ENTRY,delta=2
	psect	text,class=CODE,delta=2
	psect	functab,class=ENTRY,delta=2
	psect	init,class=ENTRY,delta=2
	psect	cinit,class=ENTRY,delta=2
	psect	end_init,class=ENTRY,delta=2
	psect	clrtext,class=ENTRY,delta=2
	psect	jmp_tab,class=ENTRY,delta=2
	psect	strings,class=STRING,delta=2

	global ___stacklo, ___stackhi
	___stacklo	equ	0
	___stackhi	equ	0


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___int_sp
	___sp:
	___int_sp:
	psect	reset_vec,class=CODE,delta=2
reset_vec:
	ds 1	;oscillator constant would be pre-programmed here
	psect	reset_wrap
reset_wrap:
	clrf	FSR		;select bank 0
	movwf	5		;calibrate oscillator
	; No powerup routine


	psect	init
start:
	psect	end_init
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

psect bank0,class=BANK0,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect common,class=COMMON,space=1
psect sfr0,class=SFR0,space=1


	end	start
