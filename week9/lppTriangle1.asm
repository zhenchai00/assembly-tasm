.model small
.stack 100h

.code
Main Proc
    mov ch, 0
    mov cl, 5
top:mov bl, 5
    
sec:mov ah, 02h
    mov dl, 42
    int 21h
    
    dec bl
    cmp bl, ch
    jne sec
    
    mov dl, 10
    int 21h
    
    add ch, 1
    dec cl
    cmp cl, 0
    jne top
Main endp
end Main