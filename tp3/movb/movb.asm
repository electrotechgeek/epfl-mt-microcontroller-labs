.include "m103def.inc"


; reg0, b0 <- reg1, b1
.macro  MOVB
    bst @2, @3
    bld @0, @1
.endmacro


reset:
    ldi     r16, 0xff
    out     DDRB, r16 ; portb is out

loop:
    in      r0, PIND
    MOVB    r0, 1, r0, 4
    out     PORTB, r0
    rjmp loop
