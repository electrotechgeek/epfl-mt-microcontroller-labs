.include "m103def.inc"


reset:
    ldi r16, 0xff ; configure PORTB as output
    out DDRB, r16
    ldi r16, 0x00 ; configure PORTD as input
    out DDRD, r16

loop:
    in  r16, PIND   ; read input buttons
    out PORTB, r16  ; output result to LEDs
    rjmp loop 
