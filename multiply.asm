; R3=R1*R2
.ORIG x3000
        LD R1, X
        LD R2, Y

MULT    AND R3, R3, #0 ; empty R3
MULL	ADD R3, R3, R1 ; R3=R3+R1
	    ADD R2, R2, #-1 ; R2=R2-1
	    BRp MULL

HALT

X	   .FILL #6
Y	   .FILL #5

.END

; ; this is the 4 lines that calculates R3=R1*R1
; 0101011011100000
; 0001011011000001
; 0001010010111111
; 0000001111111101
; ; and this is the whole code (the .bin file)
; 0011000000000000
; 0010001000000110
; 0010010000000110
; 0101011011100000
; 0001011011000001
; 0001010010111111
; 0000001111111101
; 1111000000100101
; 0000000000000110
; 0000000000000101