        org 1000h
tabla1  db 1,2,3,4
tabla2  db 1,2,3,4
tabla3  db ?

        org 2000h
        mov ax,OFFSET tabla1
        mov cl,OFFSET tabla2 - OFFSET tabla1
        mov ch,cl
repetir:mov bx,ax
        mov dl,[bx]  ;dl:num1
        add bl,cl  
        mov dh,[bx]  ;dh:num2
        add bl,cl
        jnc seguir
        add bh,1
seguir: add dl,dh
        mov [bx],dl
        add ax,1
        dec ch
        jnz repetir
        hlt
        end
