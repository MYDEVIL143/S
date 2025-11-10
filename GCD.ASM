ORG 0000H 
MOV 50H, #48      ; First number (initialize) 
MOV 51H, #18      ; Second number (initialize) 
MOV A, 50H 
MOV B, 51H 
LOOP: 
    MOV R1, B 
    DIV AB        ; A/B ? quotient in A, remainder in B 
    MOV A, B 
    JZ END_GCD    ; If remainder = 0, GCD is in R1 
    MOV B, A 
    MOV A, R1 
    SJMP LOOP 
END_GCD: 
    MOV A, R1 
    MOV 52H, A    ; Store GCD in 52H 

    SJMP $        ; infinite loop (stop)

END
