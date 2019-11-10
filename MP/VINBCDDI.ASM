Data Segment
num1 db 09h
num2 db 02h
quo db 00h
rem db 00h
Data ends

Code Segment
Start:Assume cs:code,ds:data
mov ax,data
mov ds,ax
mov al,num1
up: sub al,num2
   das
   inc quo
 cmp al,num2
 jnc up
 mov rem,al
 mov ah,4ch
 int 21h
Code Ends
End Start
