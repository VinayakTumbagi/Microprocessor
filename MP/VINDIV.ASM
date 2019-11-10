Data Segment
divid dw 78h
divis dw 08h
quo dw 00h
rem dw 00h
Data Ends

Code Segment
Start:Assume Cs:code,DS:data
mov ax,data
mov ds,ax
mov ax,divid
mov bx,divis
div divis
mov quo,ax
mov rem,dx
mov ah,4ch
int 21h
Code Ends
End start
