;REPASO 2, EJERCICIO A;
ORG 1000h
a db 2
b db 4

ORG 3000h
SUBRUTINA: mov dl,1
mov bx,cx
VOLVER: add dl,dl
inc al
cmp al,[bx]
jnz VOLVER
mov [bx],dl
ret

ORG 2000h
mov al,a
mov cx,OFFSET b
call SUBRUTINA
hlt
end
