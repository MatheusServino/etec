
algoritmo "Exercicio  B"
var
S,CONT,NP : INTEIRO

inicio
cont<-1
NP<-1
S<-0
repita
se(NP mod 2=0)entao
S<-S+NP
fimse
cont<-cont+1
NP<-NP+1
ate cont>500
escreva(S)
fimalgoritmo

