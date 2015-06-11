
	; HI-TECH C COMPILER (Cypress PSOC) V9.61
	; Copyright (C) 1984-2008 HI-TECH Software
	;Serial no. HCPSOC-679591

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --asmlist --errformat --chip=CY8C22345 --WARN=0 --OPT=asm,9 \
	; -OLED_display -Moutput/LED_display.mp --OUTDIR=./output \
	; ./obj/boot.obj ./obj/boardcommunication.p1 ./obj/led.p1 ./obj/main.p1 \
	; ./obj/particlesensor.p1 ./obj/si7020.p1 ./obj/software_iic.p1 \
	; ./obj/t74hc595.p1 lib/libpsoc.lib lib/libpsoc.lpp \
	; D:/Cypress/PSOCDE~1/5.4/Common/CY110F~1/tools/lib/CY8C22045/cms.lib
	;


	processor	CY8C22345
	macro	M8C_ClearWDT
	mov reg[0xE3],0x38
	endm

	psect	PD_startup,class=CODE
	psect	init,class=CODE
	psect	end_init,class=CODE
	psect	powerup,class=CODE
	psect	vectors,ovrld,class=CODE
	psect	text,class=CODE
	psect	maintext,class=CODE
	psect	intrtext,class=CODE
	psect	fnauto,class=RAM,space=1
	psect	bss,class=RAM,space=1
	psect	InterruptRAM,class=RAM,space=1
	psect	cdata,class=ROM,space=0,reloc=256
	psect	psoc_config,class=ROM
	psect	UserModules,class=ROM
	psect	strings,class=ROM
	psect	SSCParmBlk,abs,ovrld,class=RAM,space=1
	org	0xF8
	blk	8

	psect	stackps,class=RAM
	global	__Lstackps, __stack_start__
__stack_start__:
	psect	bss0,class=RAM,space=1
	psect	nvram0,class=RAM,space=1
	psect	rbit0,bit,class=RAM,space=1
	psect	nvbit0,bit,class=RAM,space=1
	psect	ramdata0,class=RAM,space=1
	psect	romdata0,class=BANKROM,space=0
	psect	bss1,class=RAM,space=1
	psect	nvram1,class=RAM,space=1
	psect	rbit1,bit,class=RAM,space=1
	psect	nvbit1,bit,class=RAM,space=1
	psect	ramdata1,class=RAM,space=1
	psect	romdata1,class=BANKROM,space=0
	psect	bss2,class=RAM,space=1
	psect	nvram2,class=RAM,space=1
	psect	rbit2,bit,class=RAM,space=1
	psect	nvbit2,bit,class=RAM,space=1
	psect	ramdata2,class=RAM,space=1
	psect	romdata2,class=BANKROM,space=0
	psect	bss3,class=RAM,space=1
	psect	nvram3,class=RAM,space=1
	psect	rbit3,bit,class=RAM,space=1
	psect	nvbit3,bit,class=RAM,space=1
	psect	ramdata3,class=RAM,space=1
	psect	romdata3,class=BANKROM,space=0

	global	start,startup,_main
	global	reset_vec,intlevel0,intlevel1,intlevel2
intlevel0:
intlevel1:
intlevel2:		; for C funcs called from assembler

	fnconf	fnauto,??,?
	fnroot	_main
TMP_DR0	equ	108
TMP_DR1	equ	109
TMP_DR2	equ	110
TMP_DR3	equ	111
CUR_PP	equ	208
STK_PP	equ	209
IDX_PP	equ	211
MVR_PP	equ	212
MVW_PP	equ	213
CPU_F	equ	247
	psect	vectors
reset_vec:
start:
	global	__Start
	ljmp	__Start

	psect	init
startup:
	M8C_ClearWDT
	or	f, 0x80	;select multiple RAM page mode
	and	f, 0xBF

;	Clear uninitialized variables in bank 0
	global	__Lbss0
	mov	reg[STK_PP],0
	mov	a,low __Lbss0
	swap	a,sp
	mov	a,0
	mov	x,84
bssloop0:
	push	a
	dec	x
	jnz	bssloop0

;	Copy initialized data into bank 0
	global	__Lromdata0,__Lramdata0
	mov	x,low __Lromdata0
	mov	a,low __Lramdata0
	swap	a,sp
dataloop0:
	mov	a,high __Lromdata0
	romx
	push	a
	inc	x
		mov	a,x
cmp	a,low (__Lromdata0+5)
	jnz	dataloop0
	mov	reg[CUR_PP],0
	mov	reg[STK_PP],3
	mov	a,low __Lstackps
	swap	a,sp

	ljmp	_main

	end	start
