#.         #
#...........*
all: tw.gb

%.2bpp: %.png
	rgbgfx -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

tw.o: tw.asm bank_*.asm
	rgbasm  -o tw.o tw.asm

tw.gb: tw.o
	rgblink -n tw.sym -m tw.map -o $@ $<
	rgbfix -v -p 255 $@

	md5 $@

clean:
	rm -f tw.o tw.gb tw.sym tw.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +