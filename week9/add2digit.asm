.model small
.stack 100h

.code
main proc
    mov al, 6
    mov bl, 7
    add al, bl

    aaa ; DOS service for addition for 2 digits
    add ax, 3030h ; split two digits as ASCII values for display use later
    ; 13 will split 1 = 31, 3 = 33 in ASCII code
    mov dh, al      ; temporary move to dh, for display second digit
    mov dl, ah      ; display first digit from the left to right

    mov ah, 02h
    int 21h

    mov dl, dh      ; display the right digi
    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main