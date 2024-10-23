; display result on screen
.model small     ; 64kb for data and 64 kb for code
.stack 100h
.data
variable1 DB 2
variable2 DB 3
variable3 DB 4
result DB 0
.code
       main proc 
	    
		  mov ax, @data    ; get the reference of data segment
          mov ds, ax
		  
		  mov al,variable1
		  
		  mov bl,variable2
		  
		  mov cl,variable3
		  
		  add al,bl
		  add al,cl
	
          add ax,30h
          mov dl,al
		  
		  mov ah,2
		  int 21h
		  
		  mov result,al
		  
		  mov ah,4ch
		  int 21h
       main endp
end main    





; display result on screen
.model small     ; 64kb for data and 64 kb for code
.stack 100h
.data
.code
       main proc 
	     mov ax, @data    ; get the reference of data segment
         mov ds, ax
	      
        
          mov bl,'3'
          mov dl,bl        
          
          
          ; service routine for output
          mov ah, 2 ; for output
          int 21h   ; interrupt      
          
               
          
          mov bl,'+'
          mov dl,bl        
          
          
          
          mov ah, 2 
          int 21h        
          
          mov bl,'5'
          mov dl,bl        
          
          
          
          mov ah, 2 
          int 21h    
                                 
                                      
          mov bl,'-'
          mov dl,bl        
          
          
          
          mov ah, 2 
          int 21h      
          
          
          mov bl,'2'
          mov dl,bl        
          
          
          
          mov ah, 2 
          int 21h   
          
          mov bl,'-'
          mov dl,bl        
          
          
          
          mov ah, 2 
          int 21h      
          
          mov bl,'1'
          mov dl,bl        
          
          
          
          mov ah, 2 
          int 21h   
          
          mov bl,'+'
          mov dl,bl        
          
          
          
          mov ah, 2 
          int 21h    
          
          mov bl,'3'
          mov dl,bl        
          
          
          
          mov ah, 2 
          int 21h    
          
          mov bl,'='
          mov dl,bl        
          
          
          
          mov ah, 2 
          int 21h     
                                                   
       
          mov bl, 2
          mov dl,bl
          add dl,54   
          
          
          
          
          mov ah, 2 t
          int 21h   
         
        
       main endp
end main