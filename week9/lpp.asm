.model small
.stack 100h

.code
main proc
    ; creating a loop
    mov cx, 5           ; cx = counter register


    mov ah, 02h         ; function display a character
a:  mov dl, 42          ; 42 = *
    int 21h

    mov dl, 9
    int 21h

    loop a              ; go to the a label to loop

    mov ah, 4ch
    int 21h
main endp
end main