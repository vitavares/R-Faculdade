#https://r-charts.com/

#gráficos
f = function(x) x^2+3
x = (-4:4)
y = f(x)
cbind(x,y)
#limite dos eixos> xlim, ylim
plot(f, xlim = c(-4,4), ylim = c(0,10))
#largura da linhas: lwd
plot(f, xlim = c(-4,4), ylim = c(0,10),lwd = 3)
#cor da limha: col
plot(f, xlim = c(-4,4), ylim = c(0,10),lwd = 3, col = "#00C5CD")
#estilo da linha: lty
plot(f, xlim = c(-4,4), ylim = c(0,10),lwd = 3, col = "#00C5CD", lty = 4)


#títulos e rótulos dos eixos:main, xlab, ylabs 
plot(f, xlim = c(-4,4), ylim = c(0,10),lwd = 3, col = "#00C5CD", lty = 4,
     main = 'Gráfico da função f', xlab = 'x', ylab = 'f(x)')

#janela gráfica
temp = par(mfrow = c(1,2))
plot(f, xlim = c(-4,4), ylim = c(0,10),lwd = 3, col = "#00C5CD", lty = 4, main = 'Gráfico da função f', sub = 'a', xlab = 'x', ylab = 'f(x)') 
plot(f, xlim = c(-4,4), ylim = c(0,10),lwd = 3, col = "red", lty = 6, main = 'Gráfico da função f',sub = 'b', xlab = 'x', ylab = 'f(x)')
par(temp)

four = par(mfrow = c(2,2))
plot(function(x) tan(x), xlim = c(-4,4), col='black')
plot(function(x) x^3, xlim = c(-4,4), col='blue')
plot(function(x) sin(x), xlim = c(-4,4), col='red')
plot(function(x) cos(x), xlim = c(-4,4), col='green')
par(four)

#função densidade de problabilidade de uma variável exponenciallambda = c(1,2,5,30)
f = function(x, l=1)(1/l)*exp(-x/l)
plot(f, xlim = c(0,20), main = 'Gráfico de uma função densidade de problabilidade deuma variável exponencial')
curve(f(x,l=2), add = TRUE, col='red')
curve(f(x,l=5), add = TRUE, col='blue')
curve(f(x,l=10), add = TRUE, col='green')

