;Hemayet Hossain Tuhin
;211-15-4042
;PC-C
;set a

include 'emu8086.inc'
.model small
.stack 100h
.data
    val db 'Take an input : $'
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea bx,val
    
    mov ah,9
    mov dx,bx
    int 21h 
    
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,"0"
    jl yes
    cmp bl,"9"
    jg yes

          mov ah,2
          mov dl,0ah
          int 21h
          mov dl,0dh
          int 21h     
       
     print 'It is a digit'
        
      
    cmp bl,"0"
    je even
    
    cmp bl,"2"
    je even
    
    
    cmp bl,"4"
    je even
    
    cmp bl,"6"
    je even
    
    cmp bl,"8"
    je even
    
         mov ah,2
         mov dl,0ah
         int 21h
         mov dl,0dh
         int 21h 
    
     print 'Not even Digit'
     mov ah,4
     int 21h
      
    
    yes:
         print 'Its not a digit'  
         
         mov ah,4
         int 21h  
                   
    
          even:
          
          mov ah,2
          mov dl,0ah
          int 21h
          mov dl,0dh
          int 21h
          
          print 'Its an even digit'  
          
          mov ah,4
          int 21h
    
    
    main endp
end main
   
