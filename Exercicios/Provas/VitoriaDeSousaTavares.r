#1a
rm(list = ls())

#1b
DADOS = read.csv('funcionarios1.txt', header = TRUE, sep = ';', dec = ',')

#1c
colnames(DADOS) = c('var1', 'var2', 'var3', 'var4', 'var5', 'var6')

#1d
vm_var1 = mean(DADOS$var1)
cat('O valor médio da coluna var 1 é ',vm_var1, '\n')

#1e
dp_var3 = sd(DADOS$var3)
cat('O desvio padrão da coluna 3 é',dp_var3, '\n')

#1f
DADOS[c(100,1000,1500), c(1,4)]

#1g
RES = DADOS[, 1] + 1000
  
#1h
dim(DADOS)


#2
M2 = matrix(data = c(11, 12, 15, 17, 18, 19), nrow = 3, ncol = 2, byrow = TRUE)

#3
M3 = c((1:1000), seq(from = 1002, to = 2000, by = 2))
M3

#4
rep(1:4, each=10)

#5
M5 = matrix(data = c(11:130), nrow = 10, ncol = 12, byrow = TRUE)
M5

#6
M6 = M5[c(1:5, 10), c(1,3,4)]
M6

#7
M7 = M5[ ,1] + 100
M7 

