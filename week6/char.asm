.model small 
.stack
.code 

; this is for the dos services 

Main Proc
    ; mov ah, 02h ; function to display a char
    ; mov ah, 09h ; function to display a string

    mov ah, 02h ; can also write 02 ; call function to display
    mov dl, 65  ; display value ;a;
    int 21h

    ; mov dl, 80
    mov dl, 50h
    int 21h

    mov dl, 'U'
    int 21h

    message db 'Hello world', 0
    mov dx, offset message
    int 21h

    mov ah, 4ch ; function to exit dos
    int 21h     ; calling the interrupt to stop awhile
Main endp
end Main