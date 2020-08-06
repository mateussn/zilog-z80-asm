; Fibonacci Sequence 
; By Mateus Novaes
; 06.08.2020

org &8000

main: 
	ld (#7000), #0 ; x = 0
	ld (&7001), #1 ; y = 1
	ld b, (&7000)  
	ld a, (&7000)  ; acumulator = 0
	add (&7001)    ; acumulator = 0+1
	ld (&7002), a  ; z = acumulator
	  		