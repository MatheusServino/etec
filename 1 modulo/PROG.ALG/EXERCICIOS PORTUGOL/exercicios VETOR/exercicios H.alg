algoritmo "Exercicio E"

var
A: vetor[0..5] de INTEIRO
B: vetor[0..5] de INTEIRO
C: vetor[0..5] de INTEIRO
D: vetor[0..14] de INTEIRO
I,G: inteiro
inicio
G<-5
para I de 0 ate 4 faca
escreva("insira o numero do primeiro vetor:")
leia(A[I])
fimpara
para I de 0 ate 4 faca
escreva("insira o numero do segundo vetor:")
leia(B[I])
fimpara
para I de 0 ate 4 faca
escreva("insira o numero do terceiro vetor:")
leia(C[I])
fimpara
para I de 0 ate 4 faca
D[I]<-A[I]
fimpara
para I de 0 ate 4 faca
D[G]<-B[I]
G<-G+1
fimpara
para I de 0 ate 4 faca
D[G]<-C[I]
G<-G+1
fimpara
para I de 0 ate 14 faca
escreval(D[I])
fimpara

fimalgoritmo

