org 100h
include "emu8086.inc"

lea bp, string
lea bx, nums
mov di, 0
mov si, 0

lup:
mov al, [bp+di] 

mov cx, 10 
lp:
mov ah, [bx+si]  
cmp ah, al        ; compares two register's data
je print          ; if equal then jumps to 'print'
inc si
loop lp

inc di
loop lup

PRINT "Raqam yo'q"
jmp stop

print:
PRINT "Raqam bor"
jmp stop

stop:
ret
string db "yut79"
nums db 1h, 2h, 3h, 4h, 5h, 6h, 7h, 8h, 9h, 0h 
end