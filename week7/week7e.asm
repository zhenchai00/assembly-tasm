.model small 
stack 100h
.code 
.data 
    msg1 db 'Hi, are you sleepy?$'
    msg2 db 'Menu', 0Ah, '1. Fried Mee', 0Ah, '2. Briyani Rice', 0Ah, '3. Char Kuey Teow', 0Ah, '4. Nasi Lemak', 0Ah, '5. Roti Canai', 0Ah, '6. Exit Menu$'
    msg3 db "MENU: "
        db 10, "1. Fried Mee"
        db 10, "2. Briyani Rice"
        db 10, "3. Char Kuey Teow"
        db 10, "4. Nasi Lemak"
        db 10, "5. Roti Canai"
        db 10, "6. Exit Menu"
        db 10, "Please Enter Your Choice: $"
    msg4 db 10, "You have entered: $"

.code 
Main proc 

    mov ax, @data   ; is to retrieving data from memory 
    mov ds, ax      ; then put the data segment register from the memery

    mov ah, 09h          ; display string
    mov dx, offset msg3  ; to display the all the offset value, offset = memeory value
    int 21h

    mov ah, 01h     ; input character from keyboard (DOS)
    mov dl, al      ; will assign the value to al register
    int 21h 

    mov ah, 09h
    lea dx, msg4    ; load the memory to display msg
    int 21h

    mov ah, 02h     ; display a character
    mov dl, al      ; display the user input character
    int 21h

    mov ah, 4ch
    int 21h

Main endp
end Main