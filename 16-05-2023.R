dados = c(10500,10000,9000,8500); mean(dados);var(dados);sd(dados)
d1 = dados+500;mean(d1); var(d1); sd(d1)
d2 = dados-100;mean(d2); var(d2); sd(d2)
d3 = dados*2;mean(d3); var(d3); sd(d3)
d4 = dados/3;mean(d4); var(d4); sd(d4)


dados_n = c()
for (i in 1:4) {
  if(dados[i]<10000) dados_n[i] = dados[i]+1000 else dados_n[i]=dados[i]
}
mean(dados_n); var(dados_n); sd(dados_n)

#fazer para
g = c(2,3,7);mean(g); var(g); sd(g)
g1 = g+2;mean(g1); var(g1); sd(g1)
g2 = g-3;mean(g2); var(g2); sd(g2)
g3 = g*2;mean(g3); var(g3); sd(g3)
g4 = g/2;mean(g4); var(g4); sd(g4)


### LISTAS
# Propiedades: xbarra, s^2, s e somatórios
#Familia apply
set.seed(138)
x1 = rbinom(50,10,0.25) #gerar nº "aleatórios" binomiais
table(x1)
set.seed(140)
x2 = rbinom(50,10,0.25)
set.seed(150)
x3 = rbinom(50,10,0.25)

m = cbind(x1, x2, x3) # linhas: alunos e colunas: provas
m

rowMeans(m) # MÉDIA DAS LINHAS DA MATRIX
apply(m, 1, mean) # Média das linhas, opção 1
apply(m, 1, sd) # Sd nas linhas da matrxis n
apply(m, 2, sd) # sd em cada prova
