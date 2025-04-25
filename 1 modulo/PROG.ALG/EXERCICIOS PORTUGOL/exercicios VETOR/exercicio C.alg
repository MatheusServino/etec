algoritmo "Exercicio C"

var
a : vetor[0..19] de inteiro
b : vetor[0..19] de inteiro
c : vetor[0..19] de inteiro
i: inteiro
inicio
para i de 0 ate 19  faca
escreva("insira um numero:")
leia(a[i])
fimpara
para i de 0 ate 19 faca
escreva("insira um numero para o segundo vetor:")
leia(b[i])
fimpara
para i de 0 ate 19 faca
c[i] <- a[i] - b[i]
fimpara
para i de 0 ate 19 faca
escreval(c[i])
fimpara

fimalgoritmo





