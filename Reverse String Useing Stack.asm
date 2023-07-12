include 'emu8086.inc'
.model small
.stack 100h
.code
.data
main proc
    
    print 'Take an Input :  ' 
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov cx,0
    
    mov ah,1 
    
    con1:  
         int 21h
         
         cmp al,0dh
         je yes1
         
         push ax
         inc cx
         jmp con1
         
         
         
         
     yes1:
          
          
    