.model small
.code
.stack 100
Main PROC
    ; set background and foreground color 
    ; 3eh
    ; left = background color
    ; right = fore ground color
    mov ah, 09h
    mov bl, 3eh
    mov cx, 1
    int 10h

    mov ah, 02h
    mov cl, 41h
    mov dl, cl
    int 21h

Main endp
end Main