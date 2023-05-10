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

colnames(TEB) = c('Identificação', 'Estado Civil', 'Grau de Instrução', 'No. de Filhos', 'Salário', 'IdadeA', 'IdadeM', 'Região de Procedência')

freq_filhos = table(TEB[, 4], useNA = "ifany")
freq_filhos

mean(Salario)
median(Salario)
sd(Salario)
var(Salario)

Salario1 = c(TEB$Salário * 1.2)

Salario2 = c(TEB$Salário + 1.5)

Salario3 = c(TEB$Salário - 0.8)

Salario4 = c(TEB$Salário * 2)

Salario5 = c(TEB$Salário / 3)



rm(list = ls())

tabela1 = read.csv('dados/Tabela1.csv', header = TRUE, sep = ';')
