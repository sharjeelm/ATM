;clear screen with sring instructions

Org 0x100

clrscr:
pusha
mov ax,0xb800
mov es,ax
xor di,di
mov ax,0x0720
mov cx,2000
cld
rep stosw
popa
ret

start:
call clrscr

mov ax,4c00h
int 21h