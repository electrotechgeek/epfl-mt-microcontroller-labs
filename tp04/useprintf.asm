; file  useprintf.asm			; display formatted string
.include "m103def.inc"		
.include "macros.asm"	
.include "definitions.asm"

reset:
	LDSP	RAMEND		; load stack pointer
	OUTI	DDRB,0xff	; make portB output
	rcall	LCD_init	; initialize LCD
	rjmp	main
.include "lcd.asm"
.include "printf.asm"

main:	
	in	a0,PIND		; read switches
	out	PORTB,a0	; write to LED
	com	a0		; invert a0
	
	rcall	LCD_home
	PRINTF	LCD
	; REPLACE THIS COMMENT WITH YOUR TEST CODE
	WAIT_MS	100
	rjmp 	main
