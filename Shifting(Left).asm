include 'emu8086.inc'
.model small
.stack 100h
.data

.code
main proc
    
    mov cl,0 
    
    print 'Take an input : '
    
    mov ah,1
    int 21h 
    mov bl,al
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h  
     
   print 'Output : '
    
   level1: 
   
   cmp cl,8
   je yes
   
       shl bl,1
       
       jnc zero
         
       mov ah,2
       mov dl,'1'
       int 21h 
       
       inc cl

       jmp level1
       
       zero: 
       
           cmp cl,8
           je yes
   
           mov ah,2
           mov dl,'0'
           int 21h 
           
           inc cl

           jmp level1   
       yes:
            mov ah,4ch
            int 21h
   
     main endp
end main
           
