.model small
.stack
.code

; bios services
Main Proc

    mov ah, 02h ; can also write 02 ; call function to display
    mov dl, 73  ; display value ;a;
    int 21h

    mov ah, 02h
    mov al, 3 
    ; mov bh, 0
    ; mov bl, 12  ; change text code
    int 21h

    mov ah, 02h ; can also write 02 ; call function to display
    mov dl, 85  ; display value ;a;
    int 21h

    ; mov al, 65h
    ; mov bh, 0
    ; mov bl, 10  ; change text code
    ; int 10h

    ; mov al, 85
    ; mov bh, 0
    ; mov bl, 10  ; change text code
    ; int 10h

    mov ah, 4ch
    int 21h
Main endp
end main