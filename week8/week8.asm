.model small 
stack 100h
.code 
.data 
    msg1 db "MENU: "
        db 10, "1. Fried Mee"
        db 10, "2. Briyani Rice"
        db 10, "3. Char Kuey Teow"
        db 10, "4. Nasi Lemak"
        db 10, "5. Roti Canai"
        db 10, "6. Exit Menu"
        db 10, "Your choise entered: $"
    msg2 db 10, "You have entered: $"
    name1 db 'What is your name?$'
    nameinp db "My name is $"

.code 
ShowMess MACRO Mess
    mov ah, 09h
    lea dx, Mess
    int 21h

ENDM ShowMess

Main proc 

    mov ax, @data   ; is to retrieving data from memory 
    mov ds, ax      ; then put the data segment register from the memery

    ShowMess msg1

    mov ah, 01h     ; calling function to accept input char
    int 21h

    ShowMess msg2

    call ShowP

    ShowMess name1

    ShowMess nameinp

    mov ah, 0Ah
    int 21h

    mov ah, 4ch
    int 21h

Main endp

ShowP PROC
    mov ah, 02h
    mov dl, al
    int 21h
    ret
ShowP ENDP

end Main