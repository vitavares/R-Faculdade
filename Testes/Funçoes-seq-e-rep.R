# A função seq() em R é usada para criar uma sequência de números em uma determinada ordem e com um intervalo específico entre eles.
seq(1, 10, by = 1)
seq(1, 10)
seq(1, 9.9) # Não chega no 10 por conta do incremento (1).
seq(1.1, 9.9)
seq(10, -10)

# A função rep() em R é usada para repetir valores ou vetores específicos um determinado número de vezes.
rep(3, times = 5)
x = rep(c('A', 'B', 'C'), 3)
x