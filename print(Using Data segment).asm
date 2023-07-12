.model small
.stack 100h
.data
  val db "Hemayet Hossain Tuhin$"
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea bx,val
    
    mov ah,9
    mov dx,bx
    int 21h
    
    main endp
end main