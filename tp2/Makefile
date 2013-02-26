ASM=avra

target=ex1


all: hex

hex: $(target).asm
	avra $(target).asm

flash:
	avrdude -p m168 -P /dev/ttyUSB0 -c stk500v1 -b 19200 -F -u -U flash:w:$(target).hex
