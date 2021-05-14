; z80_first.asm
; just for fun :D

org &8000	; starts from this static adress
ld a, 4		; loads 4 to register 'a'
ld b, 6		; loads 6 to register 'b'
add b		; adds a + b
ld b, 0		; cleans b
ld (&7000), a   ; loads the result to this adress
ret		; return
