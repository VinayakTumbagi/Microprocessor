Data segment
arr db 05h,02h,04h,06h
smallb db 00h

Data ends

Code Segment
Start:Assume cs:code,ds:data
mov ax,data
mov ds,ax
lea si,arr
mov cl,04h
mov al,[si]

UP :inc si
    cmp al,[si]
    jc next
    mov al,[si]

Next :dec cl
     jnz up

  mov smallb,al

 mov ah,4ch
 int 21h
Code Ends
End Start
