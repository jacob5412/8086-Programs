DATA SEGMENT
    A DB 1,2,3,4,5,6,7,8,9,10
DATA ENDS                    

CODE SEGMENT
    ASSUME DS:DATA,CS:CODE
    
    START:
        MOV AX,DATA
        MOV DS,AX
        MOV CL,10
        LEA BX,A 
        MOV AH,00
        MOV AL,00  
        
    L1:
        ADD AL,BYTE PTR[BX]
        INC BX
        DEC CL
        CMP CL,00
        JNZ L1
        MOV AH,4CH
        INT 21H
        
CODE ENDS 

END START