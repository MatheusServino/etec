algoritmo "Exercicio G"

var
A: vetor[0..19] de INTEIRO
B: vetor[0..19] de INTEIRO
I,G: inteiro
inicio
G<-19
para I de 0 ate 19 faca
escreva("insira o numero vetor:")
leia(A[I])
fimpara
para I de 0 ate 19 faca
B[I]<-A[G]
G<-G-1
fimpara
para i de 0 ate 19 faca
escreval(B[I])
fimpara


fimalgoritmo


