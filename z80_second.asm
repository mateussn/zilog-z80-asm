
org &8000
ld a, 10
ld b, 0
init:
	inc b
	dec a
	jp nz, init
ld (&7000), a
ret