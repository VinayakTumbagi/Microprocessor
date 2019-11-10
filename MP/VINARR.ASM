Data Segment
arr db 01h,02h,03h,04h
sum db 00h
Data Ends

Code Segment
Start:Assume cs:code,ds:data
mov ax,data
mov ds,ax
mov ah,0000h
mov cl,04h
mov si,offset arr
mov al,00h
up: add al,[si]
   inc si
   dec cl
   jnz up
mov ah,4ch
int 21h
Code Ends
End Start
