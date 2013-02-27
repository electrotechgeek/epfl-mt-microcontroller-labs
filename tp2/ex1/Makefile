ASM=avra

target=ex1


all: hex

hex: $(target).asm
	avra $(target).asm --includepath ../..

flash: hex
	# TODO finc the right programmer for my usb thingie. 
	avrdude -p m103 -P /dev/ttyUSB0 -c stk500v1 -b 19200 -F -u -U flash:w:$(target).hex

clean:
	rm -rf *.cof
	rm -rf *.hex
	rm -rf *.obj
