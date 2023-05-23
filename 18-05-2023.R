# Quais as diferenças de cat e print
#
sample(c('casada', 'solteiro'), 50, replace = TRUE, prob = c(0.4,0.6))
args(sample) #Mostra os argumentos da função

#### Contrução de funções ####

# Função sem argumentos
f1 = function(){
  
}
f1 = function(){
  print('Primeira função!') # Quebra linha auto
  cat('Primeira função!') # Não quebra linha; tira aspas; e não mostra a identificação
  print('Primeira função!') #Quebra linha auto
}
f1() #chama a função; como não tem argumentos o parenteses fica vazio

# Função com um argumento
f2 = function(x){
  sqrt(x)
}
f3 = function(x){
  #sqrt(x)
  cat('A raiz de ',x,' é ',sqrt(x),'.\n', sep = '')
  cat('A raiz de',x,'é',sqrt(x),'.', sep = '-')
}
f3(16)

# Função com um argumento (padrão)
f4 = function(x, y=5){
  x+y
}
f4(5, 3)

# Função para imprimir a sequência: aluno1, aluno2, ..., aluno10.
f5 = function(n){
  for (i in 1:n) {
    cat('Aluno.',i,'\n', sep = '')
  }
}
f5(10)

# Retornando mais de um resultado
f8 = function(x){
  x^2; x^3; x^4
}
f8(2) #Retorna apenas o último

f9 = function(x){
  return(c(x^2, x^3, x^4))
}
f9(2)

f = function(x, y){
  (2*x + x^3) / (2^y + abs(x))
}
f(1, 2)

g = function(y){
  (y^2 + 3*y)/2
}
g(2)

h = function(x, y){
  x^3 + 2^x + g(y)
}
h(1, 2)

## Exercicios
#1
vetorx = c(2,8,9,1)
resumo = function(x){
  cat('A média de ',x,' é: ',mean(x),'.\n', sep='')
}
resumo(vetorx)

