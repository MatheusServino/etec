algoritmo "Exercicio E"

var
A: vetor[0..19] de INTEIRO
B: vetor[0..29] de INTEIRO
C: vetor[0..49] de INTEIRO
I,G: inteiro
inicio
G<-20
para I de 0 ate 19 faca
escreva("insira o numero do primeiro vetor:")
leia(A[I])
fimpara
para I de 0 ate 29 faca
escreva("insira o numero do segundo vetor:")
leia(B[I])
fimpara
para I de 0 ate 19 faca
C[I]<-A[I]
fimpara
para I de 0 ate 29 faca
C[G]<-B[I]
G<-G+1
fimpara
para I de 0 ate 49 faca
escreval(C[I])
fimpara
fimalgoritmo


