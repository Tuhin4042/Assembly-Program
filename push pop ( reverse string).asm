include 'emu8086.inc'
.model small
.stack 100h
.code
.data
main proc
    
    print 'Take an Input :  '
    
    mov cx,0

    con1:
         mov ah,1  
         int 21h
         
         cmp al,0dh
         je con2
         
         push ax
         inc cx 
         
         jmp con1 

     con2: 
         cmp cx,0
         je exit
         
         mov ah,2
         mov dl,0ah
         int 21h
         mov dl,0dh
         int 21h
         
         print 'Reversed Output : ' 
 
     top:  
           mov ah,2 
           pop dx
           int 21h 
           
           loop top 
           
     exit:
          mov ah,4
          int 21h
       
      main endp
end main
          
          
          
    