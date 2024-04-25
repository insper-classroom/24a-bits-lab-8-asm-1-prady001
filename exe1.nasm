; Arquivo: exe1.nasm
; Salva 5 na RAM[10]

; Coloca o endereço de memória imediato contendo o valor 5 no registrador de endereço %A
leaw $5, %A

; Move o valor contido no registrador de endereço %A para o registrador de dados %D
movw %A, %D

; Coloca o endereço de memória imediato correspondente à posição de memória RAM 10 no registrador de endereço %A
leaw $10, %A

; Move o valor contido no registrador de dados %D para a posição de memória apontada pelo registrador de endereço %A, ou seja, para a posição de memória RAM 10
movw %D, (%A)
