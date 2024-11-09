org 100h
include "emu8086.inc"
lea bp, num
mov al, [bp]

mov bl, 15
div bl
cmp ah, 0
je equal 
jne fizz

equal:
PRINT "FizzBuzz"
jmp stop

fizz: 
lea bp, num
mov al, [bp]
mov ah, 0
mov bl, 3
div bl
cmp ah, 0
je equal1
jne buzz

buzz:
lea bp, num
mov al, [bp]
mov ah, 0
mov bl, 5
div bl
cmp ah, 0
je equal2 
jnz no

equal1:
PRINT "Fizz"
jmp stop

equal2:
PRINT "Buzz"
jmp stop

no:
PRINT "Ikkalasiga ham bo'linmaydi"

stop:
ret
num db 41
end