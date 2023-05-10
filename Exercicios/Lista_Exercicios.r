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

colnames(tabela1) = c('Identificação','Estado Civil', 'Grau de Instrução', 'No. de Filhos', 'Salário', 'IdadeA', 'IdadeM', 'Região de Procedência')

attach(tabela1)
Idade = c((IdadeA*12)+IdadeM)
detach(tabela1)

tabela1 = cbind(tabela1, Idade)

tabela1 = tabela1[, -c(6, 7)]

str(tabela1)

dim(tabela1)

ls()

write.csv(tabela1, file = "Tabela1Nova.csv")

rm(list = ls())

rm(list = ls())

tabela2 = read.table('dados/Tabela2.csv', header = TRUE, sep = ' ', dec = ',')
tabela2

subset(tabela2, rownames(tabela2) %in% c("12", "32"))

subset(tabela2, rownames(tabela2) %in% c("10", "15"), select = c('nr', 'nf', 'sa'))

subset(tabela2, subset = sa>16)

media = mean(tabela2$sa)
mediana = median(tabela2$sa)
minimo = min(tabela2$sa)
maximo = max(tabela2$sa)
variancia = var(tabela2$sa)
desvio_p = sd(tabela2$sa)
cv = desvio_p/media*100

cat("A média é", media, "\n")
cat("A mediana é", mediana, "\n")
cat("O mínimo é", minimo, "\n")
cat("O máximo é", maximo, "\n")
cat("A variância é", variancia, "\n")
cat("O desvio padrão é", desvio_p, "\n")
cat("O coeficiente de variação é", cv, "%\n")
boxplot(tabela2$sa, main='Boxplot de salário', col = 'blue')
hist(tabela2$sa, main = 'Hisograma do salário', xlab = 'Valores', ylab = 'Frequência', col="blue", border="black")

freq_nf = table(tabela2$nf, useNA = 'always')
freq_nf





res1 = subset(tabela2, subset = gi=='Ensino Medio')
res1

res2 = subset(tabela2, subset = ec=='Casado' & gi=='Superior')
res2

res3 = subset(tabela2, subset = sa>16, select = c('gi', 'sa', 'rp'))
res3

cem = subset(tabela2, subset = ec=='Casado' & gi=='Ensino Medio', select = 'sa')
mean(cem$sa)



solteiros = subset(tabela2, subset = ec=='Solteiro')
solteiros

nr_empregados = subset(tabela2, subset = sa<5, select = 'nr')
nr_empregados

aux = subset(tabela2, subset = sa>=8 & sa<=10)
nrow(aux)

names(tabela2)[names(tabela2) == "id"] = "idm"
