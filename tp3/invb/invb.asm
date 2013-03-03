.include "m103def.inc"

; inverse a bit (invb reg, bit)
.macro  INVB
    ldi     r16, (1 << @1)
    eor     @0, r16
.endmacro


reset:
    ldi     r16, 0xff
    out     DDRB, r16

loop:
    in      r0, PIND
    INVB    r0, 1
    INVB    r0, 1
    out     PORTB, r0
    rjmp    loop
