rm(list = ls())
set.seed(123)  
B = 1000      
n1 = 6
n2 = 15
n3 = 30
n4 = 100
n5 = 500

m1 = numeric(B)
dp1 = numeric(B)
m2 = numeric(B)
dp2 = numeric(B)
m3 = numeric(B)
dp3 = numeric(B)
m4 = numeric(B)
dp4 = numeric(B)
m5 = numeric(B)
dp5 = numeric(B)



# Gerar amostras

#n1
for (i in 1:B) {
  amostra = rnorm(n1, mean = 10, sd = 2)
  
  m1[i] = mean(amostra)
  dp1[i] = sd(amostra)
}

media_das_medias1 = mean(m1)
variancia_das_medias1 = var(m1)

#n2
for (i in 1:B) {
  amostra = rnorm(n2, mean = 10, sd = 2)
  
  m2[i] = mean(amostra)
  dp2[i] = sd(amostra)
}

media_das_medias2 = mean(m2)
variancia_das_medias2 = var(m2)

#n3
for (i in 1:B) {
  amostra = rnorm(n3, mean = 10, sd = 2)
  
  m3[i] = mean(amostra)
  dp3[i] = sd(amostra)
}

media_das_medias3 = mean(m3)
variancia_das_medias3 = var(m3)

#n4
for (i in 1:B) {
  amostra = rnorm(n4, mean = 10, sd = 2)
  
  m4[i] = mean(amostra)
  dp4[i] = sd(amostra)
}

media_das_medias4 = mean(m4)
variancia_das_medias4 = var(m4)

#n5
for (i in 1:B) {
  amostra = rnorm(n5, mean = 10, sd = 2)
  
  m5[i] = mean(amostra)
  dp5[i] = sd(amostra)
}

media_das_medias5 = mean(m5)
variancia_das_medias5 = var(m5)

Mm = matrix(c(m1, m2, m3, m4, m5), nrow = 5, byrow = T)
Mm

# Histogramas das médias
hist(m1, main = paste("6 Unidades"), xlab = "Média")
hist(m2, main = paste("15 Unidades)"), xlab = "Média")
hist(m3, main = paste("30 Unidades"), xlab = "Média")
hist(m4, main = paste("100 Unidades"), xlab = "Média")
hist(m5, main = paste("500 Unidades"), xlab = "Média")

# Histogramas das variância
hist(variancia_das_medias1, main = paste("6 Unidades"), xlab = "Variância")
hist(variancia_das_medias2, main = paste("15 Unidades"), xlab = "Variância")
hist(variancia_das_medias3, main = paste("30 Unidades"), xlab = "Variância")
hist(variancia_das_medias4, main = paste("100 Unidades"), xlab = "Variância")
hist(variancia_das_medias5, main = paste("500 Unidades"), xlab = "Variância")
