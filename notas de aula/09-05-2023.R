#https://bookdown.org/matheusogonzaga/apostila_r2/analises-descritivas.html#tabelas-de-frequ%C3%AAncia

rm(list = ls())

N = c(1:36)
Estado_civil = c("solteiro", "casado", "casado", "solteiro", "solteiro", "casado", "solteiro", "solteiro", "casado", "solteiro", "casado", "solteiro", "solteiro", "casado", "casado", "solteiro", "casado", "casado", "solteiro", "solteiro", "casado", "solteiro", "solteiro", "casado", "casado", "casado", "solteiro", "casado", "casado", "casado", "solteiro", "casado", "casado", "solteiro", "casado", "casado")
Grau_de_instrução = c("ensino fundamental", "ensino fundamental", "ensino fundamental", "ensino médio", "ensino fundamental", "ensino fundamental", "ensino fundamental", "ensino fundamental", "ensino médio", "ensino médio", "ensino médio", "ensino fundamental", "ensino médio", "ensino fundamental", "ensino médio", "ensino médio", "ensino médio", "ensino fundamental", "superior", "ensino médio", "ensino médio", "ensino médio", "ensino fundamental", "superior", "ensino médio", "ensino médio", "ensino fundamental", "ensino médio", "ensino médio", "ensino médio", "superior", "ensino fundamental", "superior", "superior", "ensino médio", "superior")
N_de_filhos = c(NA, 1, 2, NA, NA, 0, NA, NA, 1, NA, 2, NA, NA, 3, 0, NA, 1, 2, NA, NA, 1, NA, NA, 0, 2, 2, NA, 0, 5, 2, NA, 1, 3, NA, 2, 3)
Salario = c(400, 456, 525, 573, 626, 666, 686, 739, 759, 744, 812, 846, 874, 895, 913, 935, 977, 980, 1053, 1076, 1106, 1159, 1200, 1279, 1323, 1360, 1385, 1469, 1471, 1599, 1622, 1661, 1726, 1875, 1940, 2330)/100
Idade_Anos = c(26, 32, 36, 20, 40, 28, 41, 43, 34, 23, 33, 27, 37, 44, 30, 38, 31, 39, 25, 37, 30, 34, 41, 26, 32, 35, 46, 29, 40, 35, 31, 36, 43, 33, 48, 42)
Idade_meses = c(03, 10, 05, 10, 07, 00, 00, 04, 10, 06, 06, 11, 05, 02, 05, 08, 07, 07, 08, 04, 09, 02, 00, 01, 05, 00,07, 08, 06, 10, 05, 04, 07, 07, 11, 02)
Regiao = c("interior", "capital", "capital", "outra", "outra", "interior", "interior", "capital", "capital", "outra", "interior", "capital", "outra", "capital", "capital", "interior", "outra", "capital", "outra", "interior", "interior", "outra", "capital", "outra", "outra", "interior", "outra", "outra", "interior", "interior", "capital", "outra", "capital", "capital", "capital", "interior")

TEB = data.frame(N, Estado_civil, Grau_de_instrução, N_de_filhos, Salario, Idade_Anos, Idade_meses, Regiao)

str(TEB)

dim(TEB)

colunas = c('Identificação','Estado Civil', 'Grau de Instrução', 'No. de Filhos', 'Salário', 'IdadeA', 'IdadeM', 'Região de Procedência')
colnames(TEB) = colunas

tabf = table(TEB$`No. de Filhos`, useNA = "always")
tabf

mean(TEB$Salário)
median(TEB$Salário)
sd(TEB$Salário)
var(TEB$Salário)

#9. Crie o vetor salario1, dado pelo salário acrescido de 20%.
#Salario1 = c(TEB$Salário + ((TEB$Salário * 1320) *20/100))
#Salario1

#10. Crie o vetor salario2, dado pelo salário adicionado de 1,5.
Salario2 = c(TEB$Salário + 1.5)

#11. Crie o vetor salario3, dado pelo salário subtraído de 0,8.
Salario3 = c(TEB$Salário - 0.8)

#12. Crie o vetor salario4, dado pelo salário multiplicado por 2.
Salario4 = c(TEB$Salário * 2)

#13. Crie o vetor salario5, dado pelo salário dividido por 3.
Salario5 = c(TEB$Salário / 3)

#14. Calcule média, mediana, desvio padrão e variância para salario1, salario2, salario3, salario4 e salario5.
mean(Salario2)
mean(Salario3)
mean(Salario4)
mean(Salario5)
median(Salario2)
median(Salario3)
median(Salario4)
median(Salario5)
sd(Salario2)
sd(Salario3)
sd(Salario4)
sd(Salario5)
var(Salario2)
var(Salario3)
var(Salario4)
var(Salario5)