;Emulate a fire monitoring system on emu8086 for the following specifications:
;Define the threshold for the temperature of two rooms
;Generate the temperature value in 8b resolution
;Switch on the alarm and display an alarm message when the threshold of either of the room is reached
;Remove the alarm and bring the temperature below the threshold

DATA SEGMENT
    msg1 db 10,13,"Define threshold for room 1: $"
    msg2 db 10,13,"Define threshold for room 2: $"
    msg3 db 10,13,"Alarm switched on. $"
    msg4 db 10,13,"Alarm! Threshold reached! $"
    msg5 db 10,13,"1 = Restart, 0 = Exit $"
DATA ENDS

CODE SEGMENT
    ASSUME DS:DATA,CS:CODE
    
START: mov AX,@data ;intialize data segment
       mov DS,AX
       
       lea dx,msg1
       mov ah,9h
       int 21h
       
         