.model small
.stack 100h
.data
    msg1 db "Please enter your name: $"
    msg db 13, 10, "Hello $"
    buffer db 100 dup(0)

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset msg1
    int 21h

    mov buffer[0], 21           ; how many bytes can enter the character
    mov ah, 0Ah                 ; get input string from the user
    lea dx, buffer
    int 21h

    mov ah, 09h
    lea dx, msg
    int 21h

    xor bx, bx                  ; to reset the bx register value
    mov bl, buffer[1]           ; to get actual lenght of the character
    mov buffer[bx + 2], '$'     ; to include the end notation of the string at the last element of the array, this is beecause the first element is the buffer register, second element is the string array then the last element which is the thrid element is to add the '$'

    mov ah, 09h
    lea dx, buffer[2]
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main
