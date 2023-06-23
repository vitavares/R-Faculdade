##### LISTA 1 #####

## Questão 1 
rm(list = ls())
n = 1000

# Item A:
set.seed(100)
valor = sample(seq(from = 500,to = 4000, by =100), size = n, replace = T)

set.seed(150)
produto = sample(c('tv','notebook','impressora','smartphone'), size = n, replace = T, prob = c(0.3,0.2,0.1,0.4))

set.seed(200)
quantidade = sample(c(10:4000), size = n, replace = T)

set.seed(250)
mes = sample(c(1:12), size = n, replace = T)

set.seed(300)
margem = round(runif(n, min = 1.0, max = 35.0), 1)

set.seed(350)
ano = sample(c(2017,2018,2019), size = n, replace = T, prob = c(0.50,0.30,0.20))

# Item B:
vendas = data.frame(ano, mes, produto, quantidade, valor, margem)
rm(list = ano, mes, produto, valor, margem, n, quantidade)
ls()

# Item C:
attach(vendas)
lucro = round((quantidade * valor * margem), 2)
detach(vendas)

# Item D:
vendas = cbind(vendas, lucro)
rm(lucro)

# Item E:
f = function(){
  attach(vendas)
  min = round(tapply(lucro, ano, min),2)
  media = tapply(lucro, ano, mean)
  mediana = tapply(lucro, ano, median)
  maximo = tapply(lucro, ano, max)
  desvio = tapply(lucro, ano, sd)
  geral = c(min,media,mediana,maximo,desvio)
  detach(vendas)
  return(geral)
}
aux = f()

# Item F:
lucro_anual = matrix(data = aux, nrow = 5, ncol = 3, byrow = T, dimnames = list(c('Mínimo','Média','Mediana','Máximo','Desvio Padrão'), c('2017','2018','2019')))
lucro_anual

# Item E
par(mfrow = c(2, 3))
hist(vendas$lucro[vendas$ano == 2017], main = "Ano 2017", xlab = "Lucro", col = "blue")
hist(vendas$lucro[vendas$ano == 2018], main = "Ano 2018", xlab = "Lucro", col = "green")
hist(vendas$lucro[vendas$ano == 2019], main = "Ano 2019", xlab = "Lucro", col = "red")
boxplot(vendas$lucro[vendas$ano == 2017], main = "Ano 2017", ylab = "Lucro", col = "blue")
boxplot(vendas$lucro[vendas$ano == 2018], main = "Ano 2018", ylab = "Lucro", col = "green")
boxplot(vendas$lucro[vendas$ano == 2019], main = "Ano 2019", ylab = "Lucro", col = "red")

















