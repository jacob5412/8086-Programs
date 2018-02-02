.DATA ; Data segment starts
    A DW 5678H, 1234H, 5 DUP(0)         ;A is 32bit number A=1234 5678
    B DW 1111H, 1111H, 5 DUP(0)         ;B is 32bit number B=1111 1111
    C DW 4 DUP(?)                       ;Reserve 4 words

.CODE
    START:
        MOV AX,@data
        MOV DS,AX
        LEA SI,A
        lea bx,b
        lea di,c                        ;point to first word
        
        MOV AX,WORD PTR [SI]            ;Take lower 16bits (5678) of A into AX
        MUL WORD PTR [BX+0]             ;Multiply AX with lower 16bits of B(1111) and store in AX
        MOV [DI],AX                     ;Move the contents of AX to C[DI]
        MOV CX,DX                       ;Move the value of DX to CX

        MOV AX,WORD PTR [SI+2]          ;Take higher 16bits (1234) of A into AX
        MUL WORD PTR [BX+0]             ;Multiply AX with lower 16bits of B(1111)and store in AX
        ADD CX,AX                       ;CX=CX+AX
        MOV [DI+2],CX                   ;Move the contents of CX to C[DI+2]
        MOV CX,DX                       ;Move contents of DX to CX

        MOV AX,WORD PTR [SI]            ;Take lower 16bits(5678) of A in AX
        MUL WORD PTR [BX+2]             ;Multiply contents of AX with higher 16bits of B(1111)
        ADD WORD PTR [DI+2],AX          ;C[DI+2]=C[DI+2]+AX
        ADC CX,DX                       ;CX=CX+DX+CF
        MOV [DI+4],AX                   ;Move contents of AX to C[DI+4]

        MOV AX,WORD PTR [SI+2]          ;Take higher 16bits of A(1234) into AX
        MUL WORD PTR [BX+2]             ;Multiply AX with higher 16bits of B(1111) and store in AX
        ADD CX,AX                       ;CX=CX+AX
        MOV WORD PTR [DI+4],CX          ;Move contents of CX to C[DI+4]
        ADC DX,0000                     ;DX=DX+0000+CF
        MOV [DI+6],DX                   ;Move the contents of DX to C[DI+6]

        INT 03H                         ;Halt

    END START 