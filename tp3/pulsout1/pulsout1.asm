.include "m103def.inc"

reset:
    ldi     r16, 0xff
    out     DDRB, r16

main: ; total loop time = 10 cycles = 2500 ns @ 4mhz
    sbi     PORTE, 7 ; set bit 7 in i/o port E, 2 cycles, 500 ns
    cbi     PORTE, 7 ; clear bit 7 in i/o port E, 2 cycles, 500 ns

    nop  ; do nothing 1 cycle, 250 ns
    nop 
    nop
    nop

    rjmp    main ; jump back to main 2 cycles 500 ns
  
