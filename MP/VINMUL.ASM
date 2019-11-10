Data segment
 num1 db -02h
 num2 db 04h
 res db 00h
 Data ends

 Code Segment
 Start:Assume CS:Code,DS:Data
 mov ax,data
 mov ds,ax
 mov al,num1
 mov bl,num2
 imul bl
 mov res,al
 mov ah,4ch
 int 21h
 Code ends
 End Start

