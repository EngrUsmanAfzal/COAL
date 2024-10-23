display macro var1, var2
    push ax
    push dx

    mov ah, 9
    lea dx, var1
    int 21h              ; Display the first string (Hello)
    
    call newline         ; Call the newline procedure to move to the next line
    
    mov ah, 9
    lea dx, var2
    int 21h              ; Display the second string (World)

    pop dx
    pop ax

endm

.model small
.stack 100h
.data
var1 db 'Hello$' 
var2 db 'World$'

.code
main proc
    mov ax,@data
    mov ds,ax

    display var1, var2    ; Display both strings with a newline in between

    mov ah, 4ch           ; Exit the program
    int 21h
    
main endp

newline proc
    mov ah, 2
    mov dl, 13            ; Carriage return
    int 21h
    mov dl, 10            ; Line feed
    int 21h
    
    ret
newline endp

end main