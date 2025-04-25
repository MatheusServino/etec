algoritmo "exercicio K"

var
I,A,B: inteiro
inicio
A<-1
B<-1
PARA I DE 1 ATE 10 FACA
se(i mod 2=1) entao
repita
A<-A*B
B<-B+1
ate B>I
fimse
escreval("o resultado é:",A)
fimpara


fimalgoritmo
