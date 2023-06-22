numeros <- c(19.8, 20.0, 21.0, 21.1, 21.2, 21.5, 21.6, 21.7, 21.8, 21.8,
             21.9, 22.0, 22.1, 22.1, 22.1, 22.2, 22.3, 22.3, 22.3, 22.3,
             22.4, 22.4, 22.4, 22.5, 22.6, 22.6, 22.8, 23.0, 23.0, 23.1,
             23.2, 23.3, 23.5, 23.7, 23.7, 23.7, 23.8, 23.9, 23.9, 23.9,
             24.0, 24.1, 24.2, 24.2, 24.4, 24.9, 25.0, 25.2, 25.3, 25.3,
             25.6, 26.0, 27.9, 27.3, 28.6)
intervalos <- c(19.8, 21, 22, 23, 24, 25, 26, 27, 28, 29)
grupos <- cut(numeros, breaks = intervalos, right = FALSE, include.lowest = TRUE)
tabela_frequencia <- table(grupos)
tabela_porcentagem <- round(prop.table(tabela_frequencia) * 100)
tabela_porcentagem
hist(tabela_frequencia)

# Questão 2
FAT <- c(420, 215, 127, 15, 5)
FDT <- c(95, 152, 373, 137, 25)
limites <- c(0, 2, 4, 6, 8, 10)
intervalos <- paste(limites[-length(limites)], limites[-1], sep = "-")
barplot(FAT, names.arg = intervalos, main = "Histograma - Antes do Treinamento", xlab = "Pontuação", ylab = "Frequência", col = "blue")
barplot(FDT, names.arg = intervalos, main = "Histograma - Depois do Treinamento", xlab = "Pontuação", ylab = "Frequência", col = "red")
