.include "m103def.inc"

.equ clock=4000000 ; clock speed 4 mhz
.def w=r16      ; used in macro, because we are too noobish to push pop


.macro  WAIT_C
    ldi     w, low(@0/3)
    a:
    dec w
    brne a
.endmacro
