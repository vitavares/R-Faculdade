##### PARTE 1

#1. Remova todos os objetos da seção de trabalho do R.

rm(list = ls())

#2. Crie vetores para armazenar os dados de cada uma das colunas.

N = c(1:36)
Estado_civil = c("solteiro", "casado", "casado", "solteiro", "solteiro", "casado", "solteiro", "solteiro", "casado", "solteiro", "casado", "solteiro", "solteiro", "casado", "casado", "solteiro", "casado", "casado", "solteiro", "solteiro", "casado", "solteiro", "solteiro", "casado", "casado", "casado", "solteiro", "casado", "casado", "casado", "solteiro", "casado", "casado", "solteiro", "casado", "casado")
Grau_de_instrução = c("ensino fundamental", "ensino fundamental", "ensino fundamental", "ensino médio", "ensino fundamental", "ensino fundamental", "ensino fundamental", "ensino fundamental", "ensino médio", "ensino médio", "ensino médio", "ensino fundamental", "ensino médio", "ensino fundamental", "ensino médio", "ensino médio", "ensino médio", "ensino fundamental", "superior", "ensino médio", "ensino médio", "ensino médio", "ensino fundamental", "superior", "ensino médio", "ensino médio", "ensino fundamental", "ensino médio", "ensino médio", "ensino médio", "superior", "ensino fundamental", "superior", "superior", "ensino médio", "superior")
N_de_filhos = c(NA, 1, 2, NA, NA, 0, NA, NA, 1, NA, 2, NA, NA, 3, 0, NA, 1, 2, NA, NA, 1, NA, NA, 0, 2, 2, NA, 0, 5, 2, NA, 1, 3, NA, 2, 3)
Salario = c(400, 456, 525, 573, 626, 666, 686, 739, 759, 744, 812, 846, 874, 895, 913, 935, 977, 980, 1053, 1076, 1106, 1159, 1200, 1279, 1323, 1360, 1385, 1469, 1471, 1599, 1622, 1661, 1726, 1875, 1940, 2330)/100
Idade_Anos = c(26, 32, 36, 20, 40, 28, 41, 43, 34, 23, 33, 27, 37, 44, 30, 38, 31, 39, 25, 37, 30, 34, 41, 26, 32, 35, 46, 29, 40, 35, 31, 36, 43, 33, 48, 42)
Idade_meses = c(03, 10, 05, 10, 07, 00, 00, 04, 10, 06, 06, 11, 05, 02, 05, 08, 07, 07, 08, 04, 09, 02, 00, 01, 05, 00,07, 08, 06, 10, 05, 04, 07, 07, 11, 02)
Regiao = c("interior", "capital", "capital", "outra", "outra", "interior", "interior", "capital", "capital", "outra", "interior", "capital", "outra", "capital", "capital", "interior", "outra", "capital", "outra", "interior", "interior", "outra", "capital", "outra", "outra", "interior", "outra", "outra", "interior", "interior", "capital", "outra", "capital", "capital", "capital", "interior")

#3. Crie o data frame TEB formado por todos os vetores da questão 2.

TEB = data.frame(N, Estado_civil, Grau_de_instrução, N_de_filhos, Salario, Idade_Anos, Idade_meses, Regiao)

#4. Verifique a estrutuda do data frame TEB.

str(TEB)

#5. Qual a dimensão (número de linhas e de colunas) do data frame TEB.

dim(TEB)

#6. Renomeie as variáveis (cabeçalho) para: “Identificação”,“Estado Civil”, “Grau de Instrução”, “No. de Filhos”, “Salário”, “IdadeA”, “IdadeM”, “Região de Procedência”.

colnames(TEB) = c('Identificação', 'Estado Civil', 'Grau de Instrução', 'No. de Filhos', 'Salário', 'IdadeA', 'IdadeM', 'Região de Procedência')

#7. Obtenha a tabela de frequência para a variável No. de Filhos.

freq_filhos = table(TEB[, 4], useNA = "ifany")
freq_filhos

#8. Calcule média, mediana, desvio padrão e variância do salário.

mean(Salario)
median(Salario)
sd(Salario)
var(Salario)

#9. Crie o vetor salario1, dado pelo salário acrescido de 20%.

Salario1 = c(TEB$Salário * 1.2)

#10. Crie o vetor salario2, dado pelo salário adicionado de 1,5.

Salario2 = c(TEB$Salário + 1.5)

#11. Crie o vetor salario3, dado pelo salário subtraído de 0,8.

Salario3 = c(TEB$Salário - 0.8)

#12. Crie o vetor salario4, dado pelo salário multiplicado por 2.

Salario4 = c(TEB$Salário * 2)

#13. Crie o vetor salario5, dado pelo salário dividido por 3.

Salario5 = c(TEB$Salário / 3)

#14. Calcule média, mediana, desvio padrão e variância para salario1, salario2, salario3, salario4 e salario5.

#15. Os resultados da questão anterior estão de acordo com as propriedades das estatísticas?

#16. Salve o data frame dados com o nome “DadosTEB.csv”.



##### PARTE 2

#17. Remova todos os objetos da seção de trabalho do R.

rm(list = ls())

#18. Leia o arquivo Tabela1.csv e atribua-o a um objeto (data frame) denominado tabela1.

tabela1 = read.csv('dados/Tabela1.csv', header = TRUE, sep = ';')

#19. Renomeie o cabeçalho para: “Identificação”,“Estado Civil”, “Grau de Instrução”, “No. de Filhos”, “Salário”, “IdadeA”, “IdadeM”, “Região de Procedência”.

colnames(tabela1) = c('Identificação','Estado Civil', 'Grau de Instrução', 'No. de Filhos', 'Salário', 'IdadeA', 'IdadeM', 'Região de Procedência')

#20. Crie a variável Idade (em meses) a partir das variáveis IdadeA e IdadeM.

attach(tabela1)
Idade = c((IdadeA*12)+IdadeM)
detach(tabela1)

#21. Adicione a variável Idade ao data frame tabela1.

tabela1 = cbind(tabela1, Idade)

#22. Elimine as colunas IdadeA e IdadeM do data frame tabela1

tabela1 = tabela1[, -c(6, 7)]

#23. Verifique a estrutura do data frame tabela1.

str(tabela1)

#24. Obtenha a dimensão do data frame tabela1.

dim(tabela1)

#25. Obtenha a lista de objetos ativos na seção de trabalho do R.

ls()

#26. Salve o data frame tabela1 com o nome “Tabela1Nova.csv”.

write.csv(tabela1, file = "Tabela1Nova.csv")

#27. Elimine todos os objetos da seção de trabalho do R.

rm(list = ls())

##### PARTE 3

#28. Remova todos os objetos da seção de trabalho do R.

rm(list = ls())

#29. Leia o arquivo Tabela2.csv e atribua-o ao objeto (data frame) tabela2. Não altere os nomes das variáveis,a menos que seja solicitado em alguma questão.

tabela2 = read.table('dados/Tabela2.csv', header = TRUE, sep = ' ', dec = ',')
tabela2

##30. Apresente

#a) os registros dos empregados de identificação 12 e 32 (ver função subset).

subset(tabela2, rownames(tabela2) %in% c("12", "32"))

#b) apenas os registros das variáveis nr, nf e sa dos empregados de identificação 10 a 15.

subset(tabela2, rownames(tabela2) %in% c("10", "15"), select = c('nr', 'nf', 'sa'))

#c) todos os registros dos funcionários com salário superior a 16 sm.

subset(tabela2, subset = sa>16)

#d) média, mediana, mínimo, máximo, variância, desvio padrão, coeficiente de variação, boxplot e histograma para a variável salário.

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

#e) a tabela de frequência da variável número de filhos.

freq_nf = table(tabela2$nf, useNA = 'always')
freq_nf

#f) ordene a base de dados tabela2 pelas variáveis ec, gi e rp, sequencialmente e em ordem crescente.



#g) ordene a base de dados tabela2 pelas variáveis ec, gi e rp, sequencialmente nas ordens crescente,
decrescente e crescente.



#31. Crie um novo data frame contendo apenas os registros dos empregados com ensino médio. Nomeie o data frame de res1.

res1 = subset(tabela2, subset = gi=='Ensino Medio')
res1

#32. Crie o data frame res2 contendo apenas os registros de empregados casados com ensino superior.

res2 = subset(tabela2, subset = ec=='Casado' & gi=='Superior')
res2

#33. Crie o data frame res3 contendo apenas as variáveis grau de instrução, salário e região de procedência para os empregados com salário acima de 16 sm.

res3 = subset(tabela2, subset = sa>16, select = c('gi', 'sa', 'rp'))
res3

#34. Qual o salário médio dos empregados que são casados e tem ensino médio?

cem = subset(tabela2, subset = ec=='Casado' & gi=='Ensino Medio', select = 'sa')
mean(cem$sa)

#35. Quais os salários médios para todas as combinações possíveis das variáveis ec, gi e rp?



#36. Quais empregados são solteiros?

solteiros = subset(tabela2, subset = ec=='Solteiro')
solteiros

#37. Apresente apenas os registros dos empregados que ganham menos de 5 sm?

nr_empregados = subset(tabela2, subset = sa<5, select = 'nr')
nr_empregados

#38. Quantos empregados ganham de 8 a 10 sm?

aux = subset(tabela2, subset = sa>=8 & sa<=10)
nrow(aux)

#39. Renomear a variável id para idm (idade em meses).

names(tabela2)[names(tabela2) == "id"] = "idm"

#40. Crie o vetor ida (idade em anos) a partir da variável idm. Adicione-o a base de dados tabela2.

#41. Obtenha a tabela de contingência para as variáveis região de procedência e grau de instrução (ver função xtabs).

#42. Obtenha a tabela de frequência para a variável estado civil.

#43. Obtenha a média, o desvio padrão e o coeficiente de variação para a variável número de filhos.

#44. Ordene o data frame tabela2 em ordem decrescente pela variável salário.

#45. Construa os seguintes histogramas (use a função text e os argumentos breaks, yaxt, xaxp, right na função hist; veja também a função par)
