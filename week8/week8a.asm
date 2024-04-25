.model small 
stack 100h
.data 
    msg db 'CSLLT'
    
.code 

Main PROC
    mov ax, @data
    mov es, ax  ; ds is for bios services 

    mov ah, 13h
    mov al, 0
    mov bh, 0
    mov bl, 04
    mov cx, 5
    mov dh, 13 ; dh stand more coordiate
    mov dl, 35 ; dh stand more coordiate
    mov bp, OFFSET msg
    int 10h

    mov ah, 4ch
    int 21h

Main ENDP
end Main