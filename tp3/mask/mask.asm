.include "m103def.inc"


reset:
    ldi     r16, 0xff
    out     DDRB, r16 ; make PORTB as output

loop:
    in      r16, PIND
    ori     r16, 0b00000010
    andi    r16, 0b11110111
    out     PORTB, r16
    rjmp    loop
