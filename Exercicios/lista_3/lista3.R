# Lista 3
rm(list = ls())

# Questão 1
x = c(2,3,5)
y = c(4,9,16)

a1 = sum(x)
a2 = sum(x^2)
a3 = sum(x)^2
b1 = prod(x)
b2 = prod(y/x)
b3 = prod(sqrt(y))

# Questão 2
f = function(x){
  n = length(x)
  if(n>1){
    c(sqrt((sum(x^2) - (sum(x)^2)/n)/(n-1)),
      sqrt((sum((x-mean(x))^2))/(n-1)),
      sqrt((sum(x^2) - n*(mean(x)^2))/(n-1)))
  } 
}

# Questão 3
f = function(x){
  n = length(x)
  if(n>1){
    c('média' = mean(x), 'dp' = sd(x), 'cv' = sd(x)/mean(x)*100)
  }
}

# Questão 4
f = function(x){
  n = length(x)
  if(n > 1 & n <= 20 & all(x < 10) & all(x >= -10)){
    sqrt((sum(x^2) - n*(mean(x)^2))/(n-1))
  } else{
    print('Vetor de dados não adequado')}
}

# Questão 5
f = function(x){
  n = length(x)
  if(n > 4 & n < 21 & all(x >= -10) & all(x < 10)){
  (sum(abs(x)^3) - (prod(x)^2)/sqrt(n))/(log10(n) + gamma(n))
    } else{print('Vetor de dados não adequado')}
}

# Questão 6
f = function(x, y, type){
  n = length(x)
  if(n > 1){
    switch (type, 'diag_dispercao' = plot(x, y, main = 'Diagrama de disperção', pch = 19),
            'expresao' = c('->Fórmula dada' = (sum(x*y) - n*mean(x)*mean(y))/sqrt((sum(x^2) - n*(mean(x)^2))*(sum(y^2) - n*(mean(y)^2))),
            '->Coeficiente de correlação' = cor(x, y, method = 'pearson')))
  }
}
# 6a
X = c(60, 65, 71, 69, 76, 71, 79, 90, 94, 92); Y = c(61, 62, 64, 68, 70, 67, 75, 76, 81, 82)
f(X, Y, type = 'diag_dispercao')
f(X, Y, type = 'expresao')
# 6b
X = c(60, 65, 71, 64, 76, 71, 79, 86, 94, 92); Y = c(79, 77, 76, 78, 75, 76, 75, 76, 78, 79)
f(X, Y, type = 'diag_dispercao')
f(X, Y, type = 'expresao')
# 6c
X = c(75, 79, 69, 64, 76, 71, 81, 86, 91, 85); Y = c(79, 77, 76, 78, 75, 76, 75, 76, 78, 79)
f(X, Y, type = 'diag_dispercao')
f(X, Y, type = 'expresao')

# Questão 7
rm(list = ls())

# Dados extraídos do livro Estatística básica / Pedro A. Morettin, 
# Wilton O. Bussab. – 9. ed. – São Paulo: Saraiva, 2017

# Exemplo de associação linear direta entre as variáveis X: anos de serviço e
# Y: número de clientes de agentes de uma companhia de seguros
anos_servico = c(2,3,4,5,4,6,7,8,8,10)
numero_clientes = c(48,50,56,52,43,60,62,58,64,72)
plot(anos_servico, numero_clientes, pch = 19, main = 'Diagrama de disperção para
     as variáveis X: anos de serviço e Y: número de clientes', 
     xlab = 'anos de serviço', ylab = 'núimero de clientes')
cor(anos_servico, numero_clientes, method = 'pearson')

# Exemplo de associação linear inversa entre as variáveis X: renda bruta e
# Y: gasto com saúde dada em porcentagem em relação a renda bruta
renda_bruta = c(12,16,18,20,28,30,40,48,50,54)
gasto_saude = c(7.2,7.4,7.0,6.5,6.6,6.7,6.0,5.6,6.0,5.5)
plot(renda_bruta, gasto_saude, pch = 19, main = 'Diagrama de disperção para
     as variáveis X: renda bruta e Y: % gasto com saúde', 
     xlab = 'renda bruta', ylab = '% gasto com saúde')
cor(renda_bruta, gasto_saude, method = 'pearson')

# Exemplo de não associação linear entre as variáveis X: resultado em um teste
# de conhecimento de língua estrangeira e Y: tempo gasto para cada indivíduo
# aprender a operar a máquina
resultado_teste = c(45,52,61,70,74,76,80,90)
tempo_operacao = c(343,368,355,334,337,381,345,375)
plot(resultado_teste, tempo_operacao, pch = 19, main = 'Diagrama de disperção para
     as variáveis X: resultado de um teste e Y: tempo de operação de máquina', 
     xlab = 'resultado do teste', ylab = 'tempo')
cor(resultado_teste, tempo_operacao, method = 'pearson')

# Questão 8
rm(list = ls())

f1 = function(x) dnorm(x, 500, 100)
f2 = function(x) dnorm(x, 500, 50)

plot(f2, main = 'Figura 1 - Curvas da densidade normal',
     ylab = 'densidade', xlab = '', xlim = c(100, 900),
     lwd = 2,xaxp = c(100,900,8))
axis(side = 1, xaxp = c(200,800,3), lwd = 2)
curve(f1, col = 'blue', add = TRUE, lwd = 2)
points(500, f1(500), col = 'red', pch = 19, lwd = 3)
points(500, f2(500), col = 'red', pch = 19, lwd = 3)
lines(c(500,500), c(0, f2(500)), lty = 2)
lines(c(0,500), c(f2(500), f2(500)), lty = 2)       
lines(c(0,500), c(f1(500), f1(500)), lty = 2)      
legend(600, 0.008, legend = c(expression(N(500,50^2)),expression(N(500,100^2))),
       fill = c('black', 'blue'), cex = 0.8, bty = 'n')

# Questão 9
rm(list = ls())

set.seed(256)
amostra = rnorm(1000, 500, 50)
f = function(x)dnorm(x, 500, 50)

hist(amostra, main = 'Figura 2 - Distribuição Normal: histograma e densidade',
     ylab = 'densidade', xaxp = c(300, 700, 4),xlab = '', border = 'blue',
     col = 'lightblue', freq = FALSE, ylim = c(0, 0.008))
curve(f, add = TRUE)

# Questão 10
rm(list = ls())

library(dslabs)
data(murders)
attach(murders)

xtabs(total/sum(total)*100~state)
Gb = boxplot(total, horizontal = TRUE, xlab = 'Quantidade de assassinatos', 
        main = 'Figura 3 - Boxplot para a variável assassinatos por arma de fogo',
        col = 'lightgreen', lwd = 1.8)  
abline(v = Gb$stats, lty = 2)

detach(murders)

# Questão 11
