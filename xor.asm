; R3=XOR(R1,R2)
;    XOR(R1,R2) = OR(AND(NOT(R1),R2),AND(R1,NOT(R2))) 
; = NOT(AND(NOT(AND(NOT(R1),R2)),NOT(AND(R1,NOT(R2)))))
.ORIG   x3000

    NOT     R1,R1 ; NOT(R1)
    AND     R3,R1,R2 ; AND(NOT(R1),R2)
    NOT     R1,R1 ; NOT(NOT(R1))=R1
    NOT     R2,R2 ; NOT(R2)
    AND     R4,R1,R2 ; AND(R1,NOT(R2))
    NOT     R2,R2 ; NOT(NOT(R2))=R2
    NOT     R3,R3 ; NOT(AND(NOT(R1),R2))
    NOT     R4,R4 ; NOT(AND(R1,NOT(R2)))
    AND     R3,R3,R4 ; AND(NOT(AND(NOT(R1),R2)),NOT(AND(R1,NOT(R2))))
    NOT     R3,R3 ; NOT(AND(NOT(AND(NOT(R1),R2)),NOT(AND(R1,NOT(R2)))))

HALT

.END