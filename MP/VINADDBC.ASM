Data Segment
num1 db 12h
num2 db 13h
res_lsb db 00h
res_msb db 00h

Data Ends

Code Segment
Start:Assume cs:code,ds:data
mov ax,data
mov ds,ax
mov al,num1
add al,num2
daa
jnc l
inc res_msb
l:mov res_lsb,al

mov ah,4ch
int 21h
Code Ends
End start
