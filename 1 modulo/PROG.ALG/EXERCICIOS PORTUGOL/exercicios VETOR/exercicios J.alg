algoritmo "Exercicio E"

var
A: vetor[0..5] de real
B: vetor[0..5] de real
C: vetor[0..11] de real
I,G,T,P,Y: inteiro
inicio
T<-0
Y<-0
P<-6
para I de 0 ate 11 faca
escreva("insira o vetor :")
leia(G)
se(G mod 2=0)entao
A[T]<-G
T<-T+1
senao
B[Y]<-G
Y<-Y+1
fimse
fimpara
para I de 0 ate 5 faca
C[I]<-A[I]
fimpara
para I de 0 ate 5 faca
C[P]<-B[I]
P<-P+1
fimpara
para I de 0 ate 11 faca
escreval(C[I])
fimpara
fimalgoritmo

