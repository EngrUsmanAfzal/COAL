.model small
.stack 100h
.data
    array db 10, 20, 30, 40 		; Array of 4 numbers
    sum dw 0 				; To store the sum
    msg db 'Sum = $' 			; Message for output

.code
   main proc
    mov ax, @data 	; Initialize data segment
    mov ds, ax

    xor cx, ax             
    xor cx, cx              
    mov cx, 4                 

    lea si, array            

sum_loop:
    mov al, [si]             
    add ax, ax                
    inc si                 
    loop sum_loop            

    mov sum, ax              

                    ; Display message 'Sum = '
    mov ah, 09h               
    lea dx, msg
    int 21h

   
    call display_number
         
                   ; Exit to DOS
    mov ah, 4ch
    int 21h

main endp


display_number proc
   
    xor cx, cx               
    mov bx, 10               

convert_loop:
    xor dx, dx               
    div bx                    
    push dx                   
    inc cx                    
    cmp ax, 0
    jne convert_loop          

display_loop:
    pop dx                 
    add dl, '0'               
    MOV AH, 02h            
    int 21h
    loop display_loop        

    ret
display_number endp

end main