.model small
.stack
.code

Main Proc
    ; Function to display 'I'
    mov ah, 02h
    mov dl, 73
    int 21h

    ; Function to display ' '
    mov ah, 02h
    mov dl, ' '
    int 21h

    ; Function to display text color red by using BIOS services
    mov ah, 09h
    mov bl, 4
    mov cx, 1
    int 10h

    ; Function to display '♥'
    mov ah, 02h
    mov dl, 3 
    int 21h

    ; Function to display ' '
    mov ah, 02h
    mov dl, ' '
    int 21h

    ; Function to display 'U'
    mov ah, 02h
    mov dl, 85
    int 21h

    mov ah, 4ch
    int 21h
Main endp
end Main