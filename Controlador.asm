stepper equ P1

parado: 
	mov stepper, #11111111b
	jnb p0.1, direita
	jnb p0.2, esquerda
	ljmp parado
 
direita:
	    mov stepper, #11111110b
	    jnb P0.0, parado
	    acall delay
	    mov stepper, #11111101b
	    jnb P0.0, parado
	    acall delay
	    mov stepper, #11111011b
	    jnb P0.0, parado
		  acall delay
	    mov stepper, #11110111b
	    jnb P0.0, parado
	    acall delay
	    jnb P0.0, parado
	    jmp direita
    
 esquerda:

    mov stepper,  #11110111b
    jnb P0.0, parado
    acall delay
    mov stepper,  #11111011b
    jnb P0.0, parado
    acall delay
    mov stepper, #11111101b
    jnb P0.0, parado
    acall delay
    mov stepper, #11111110b
    jnb P0.0, parado
    acall delay
    jnb P0.0, parado
    jmp esquerda
 
delay:
    mov r5,#40d
wait:
    djnz r5,wait
ret
 
    end