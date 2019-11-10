Data Segment
sorc dw 01h,02h,03h,04h
dest dw 5 dup(0)
Data Ends

Code Segment
Start:Assume cs:code,ds:data
mov ax,data
mov ds,ax
mov cx,04h
mov si,offset sorc
mov di,offset dest
UP:mov ax,[si]
mov [di],ax
add si,02h
add di,02h
loop up
mov ah,4ch
int 21h
Code Ends
End Start
