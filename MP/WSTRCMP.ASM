Data Segment
str_s db 'vinu$'
str_d db 'vinu$'
count_s db 00h
count_d db 00h
msg1 db 'Strings are same$'
msg2 db 'strings are not same$'
Data Ends

Code Segment
Start:Assume cs:code,ds:data
mov ax,data
mov ds,ax
mov es,ax

mov si,offset str_s
up:mov al,[si]
   cmp al,'$'
   je exit
   inc count_s
   inc si
   jmp up

Exit:mov si,offset str_d

up1:mov al,[si]
    cmp al,'$'
    je exit1
    inc count_d
    inc si
    jmp up1
  
exit1:mov al,count_s
      cmp al,count_d
      jne exit2
      cld
      mov ch,0
      mov cl,count_s
      mov si,offset str_s
      mov di,offset str_d
 up2:cmpsb
     jnz exit2
     dec cl
     jnz up2

     mov ah,09h
     lea dx,msg1
     int 21h
     jmp exit3

exit2:mov ah,09h
      lea dx,msg2
      int 21h

exit3:mov ah,4ch
int 21h
Code Ends
End Start
      
