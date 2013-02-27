.include "m103def.inc"

reset:
    ldi r16, 0xff ; configure POTRTB as output
    out DDRB, r16
    ldi r16, 0x00 ; configure PORTD as input
    out DDRD, r16


loop:
    sbic    PIND, 0  ; wait for button 0 press 
    rjmp    PC-1
    sbis    PIND, 0 ; wait for button 0 release
    rjmp    PC-1

    dec     r16
    out     PORTB, r16
    rjmp loop
