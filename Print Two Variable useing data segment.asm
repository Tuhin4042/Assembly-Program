.model small
.stack 100h
.data
  val db "Hemayet Hossain Tuhin$"
  val2 db "Abdul Kayum$"
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea cx,val
    lea bx,val2
    
    mov ah,9
    mov dx,cx
    int 21h   
    
    
    mov ah,9
    mov dx,bx
    int 21h
    
    main endp
end main