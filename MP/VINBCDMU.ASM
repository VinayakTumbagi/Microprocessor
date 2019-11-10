Data Segment
num1 db 12h
num2 db 04h
res_lsb db 00h
res_msb db 00h
Data Ends

Code Segment
Start:Assume cs:code,ds:data
mov ax,data
mov ds,ax
mov cl,num2
mov al,0h
up:add al,num1
   daa
  jnc next
  inc res_msb
Next:dec cl
     jnz up

     mov res_lsb,al

     mov ah,4ch
     int 21h
Code Ends
End STart
