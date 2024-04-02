.model small
.stack
.code

; bios services
; only can use bios services to change the color
Main Proc
    ; mov ah, 09h ; function to display a char
    mov ah, 09h
    mov al, 65
    mov bh, 0
    mov bl, 17h  ; change text code
    mov cx, 7   ; display how many times
    int 10h

    mov ah, 4ch
    int 21h
Main endp
end main