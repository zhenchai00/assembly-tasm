.model small
.stack 100h

.code
main PROC
    mov al, 4
    mov bl, 2
    mul bl          ; multiply
                    ; 1 digit will use the following method 
                    ; 2 digit will use different implementation
                    ; mul bl => ax = al x bl

    ; when display the number, it should convert the value through ascii format
    add ax, 30h     ; ascii value is 0
    mov dx, ax

    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h
main ENDP
end main