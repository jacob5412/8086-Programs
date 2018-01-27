;ALP for conversion BCD number 7-Segment


DATA SEGMENT
    TABLE DB 7EH, 30H, 60H, 79H, 33H, 5BH, 5FH, 70H, 7FH, 73H
    A DB 09H,01H,06H
    B DB ?
DATA ENDS

CODE SEGMENT

ASSUME CS:CODE,DS:DATA
    START: MOV AX,DATA
           MOV DS,AX
           MOV ES,AX
           LEA BX,TABLE
           LEA SI,A
           LEA DI,B
           MOV CX,03H
           CLD

       X1: LODS A
           CMP AL,09H
           JA X2
           
           XLAT TABLE
           STOS B
           LOOP X1
       
       X2: MOV AH,4CH
           INT 21H
CODE ENDS
END START