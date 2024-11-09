org 100h
mov al, a
mov bl, b
mov bh, 2

; perimetr P=2(a+b)
add al, bl         ; adds two reg data
mul bh             ; multiplies to two
mov perimetr, al   ; writes data in al to memory 'perimetr'

mov al, a          ; moves a variable to al again as it was changed
; yuza S=a*b
mul bl             ; multiplies al data to bl data
mov yuza, al       ; writes fata in al to memory 'yuza'

ret
a db 4
b db 5 
perimetr db ?
yuza db ?
end