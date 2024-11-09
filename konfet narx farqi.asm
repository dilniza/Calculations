org 100h

; calculates first candy's cost  
mov ax, narxX
mov bl, konfetA
mul bl             ; multiplies narxX in reg ax to konfetA in bl reg
mov resultA, ax    ; writes ax data to resultA

; calculates second candy's cost
mov ax, narxY
mov bl, konfetB
mul bl             ; multiplies narxX in reg ax to konfetA in bl reg
mov resultB, ax    ; writes ax data to resultA

; calculates the difference between the costs
mov bp, resultA
mov bx, resultB
sub bx, bp
mov farq, bx       ; writes the result to 'farq' var  

ret     
narxX dw 200
narxY dw 250
konfetA db 2
konfetB db 3
resultA dw ?
resultB dw ?
farq dw ?           

end