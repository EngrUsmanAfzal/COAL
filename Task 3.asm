; Swap two values
.model small     ; 64kb for data and 64 kb for code
.stack 100h
.data
var1 DB 35
var2 DB 45
.code
       main proc 
	     mov ax,@data
		 mov ds,ax
		 
		 mov al, var1
		 mov bl, var2
		 
		 ;swap the values of variable1 and variable2
		 mov var1,bl
		 mov var2,al
		 
		 mov ah,4ch
		 int 21h
      
       main endp
end main