.model small
.stack 100h
.data 
	mesaj db 13,10,'Introduceti cifra: $'
	
.code
start:
	mov ax, @data
	mov ds, ax
	
	mov dx, offset mesaj
	mov ah, 09h
	int 21h
	
	
	mov ah, 01h
	int 21h

	sub ax, 130h
	mov cx, ax
	mov dx, cx
	cmp dl, 0
	je sfarsit0
	cmp dl, 1
	je sfarsit1
	cmp dl, 2
	je sfarsit2
	mov ax, 0
	mov bx, 1
	sub cx, 2
repeta:
	add ax, bx
	mov dx, ax
	mov ax, bx
	mov bx, dx
	loop repeta

	add dx, ax

	mov ax, 4Ch
	int 21h

sfarsit0:
	mov ax, 4Ch
	int 21h

sfarsit1:

	mov ax, 4Ch
	int 21h

sfarsit2: 
	dec dx
	mov ax, 4Ch
	int 21h

 
end start