Org 0x0100


;to calculate running time, I have hooked timer interrupt so that within a function call, each time timer is called, seconds tick is incremented and thus
;time can be calculated
;the timer interuppt has been made faster for accuracy

jmp start

message db 'Alizeh Asim'
length dw 11
oldtimer dw 0
flag db 0
seconds dw 0

clearscreen:
push bp
mov bp,sp
pusha
mov ax,0xb800
mov es,ax
mov si,0

nextchar:
mov word[es:si],0x720
add si,2
cmp si,4000
jne nextchar

popa
pop bp
ret 

; takes the row no, column no, and number to be printed as parameters
printnum: push bp
mov bp, sp
push es
push ax
push bx
push cx

push dx
push di
mov di, 80 ; load di with columns per row
mov ax, [bp+8] ; load ax with row number
mul di ; multiply with columns per row
mov di, ax ; save result in di
add di, [bp+6] ; add column number
shl di, 1 ; turn into byte count
add di, 8 ; to end of number location
mov ax, 0xb800
mov es, ax ; point es to video base
mov ax, [bp+4] ; load number in ax
mov bx, 10 ; use base 16 for division
mov cx, 4 ; initialize count of digits
nextdigit: mov dx, 0 ; zero upper half of dividend
div bx ; divide by 10
add dl, 0x30 ; convert digit into ascii value
cmp dl, 0x39 ; is the digit an alphabet
jbe skipalpha ; no, skip addition
add dl, 7 ; yes, make in alphabet code
skipalpha: mov dh, 0x07 ; attach normal attribute
mov [es:di], dx ; print char on screen
sub di, 2 ; to previous screen location
loop nextdigit ; if no divide it again
pop di
pop dx
pop cx
pop bx
pop ax
pop es
pop bp
ret 6


;takes two parameters 
printstring:
push bp
mov bp,sp
pusha
mov ax,0xb800
mov es,ax
mov di,0
mov si,[bp+6]
mov cx,[bp+4]
mov ah,0x07

nextcharacter:
mov al,[si]
mov [es:di],ax
add di,2
add si,1
loop nextcharacter

popa
pop bp
ret 4


crtime:
push bp
mov bp,sp
pusha

mov ax,word[bp+10]
push ax
mov ax,word[bp+8]
push ax
mov byte[flag],1
call printstring
mov byte[flag],0

mov ax,[bp+4]
add ax,1
mov bx,2
mul bx

pop bp
popa
mov cx,word[cs:seconds]
;add sp,8
ret 8

timer:
push ax

cmp byte[cs:flag],1
jne skip

add word[cs:seconds],1


skip:
mov al, 0x20
out 0x20, al ; send EOI to PIC
pop ax
iret


start:

;changin speed of timer
;now timer interrupt will be called more rapidly
mov ax, 1
out 0x40, al
mov al, ah
out 0x40, al

xor ax, ax
mov es, ax ; point es to IVT base
mov ax, [es:8*4]
mov [oldtimer], ax ; save offset of old routine
mov ax, [es:8*4+2]
mov [oldtimer+2], ax ; save segment of old routine

cli ; disable interrupts
mov word [es:8*4], timer ; store offset at n*4
mov [es:8*4+2], cs ; store segment at n*4+2
sti ; enable interrupts

mov ax,word[length]
mov bx,message
call clearscreen
push bx
push ax
push printstring
push 3
call crtime


mov ax,4c00h
int 21h