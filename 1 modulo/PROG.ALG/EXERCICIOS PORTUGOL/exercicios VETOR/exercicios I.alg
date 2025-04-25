algoritmo "Exercicio E"

var
A: vetor[0..14] de real
B: vetor[0..14] de real
I,G: inteiro
inicio
para I de 0 ate 14 faca
escreva("insira o numero do vetor:")
leia(A[I])
fimpara
para I de 0 ate 14 faca
se ( I  mod 2=0) entao
B[I]<-A[I]/2
senao
B[I]<-A[I]*1.5
fimse
fimpara
para I de 0 ate 14 faca
escreval(B[I])
fimpara

fimalgoritmo

