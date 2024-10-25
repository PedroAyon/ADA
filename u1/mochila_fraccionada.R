ordenar <- function(objetos, heuristica) {
    if (heuristica == "menor_peso") {
        return(objetos[order(objetos$peso), ])
    }
    if (heuristica == "mayor_valor") {
        return(objetos[order(-objetos$valor), ])
    }
    if (heuristica == "valor_peso") {
        objetos$relacionValorPeso <- objetos$valor / objetos$peso
        return(objetos[order(-objetos$relacionValorPeso), ])
    }
    return(objetos)
}

mochilaFraccionada <- function(N, pesos, valores, W, heuristica) {
    objetos = data.frame(peso = as.numeric(pesos), valor = as.numeric(valores))
    objetos = ordenar(objetos, heuristica)
    sumaPeso <- 0
    valorTotal <- 0
    faltante <- W
    cantidades = numeric(N)

    for (i in 1:N) {
        o = objetos[i, ]
        if (o$peso <= faltante) {
            cantidades[i] = 1
            sumaPeso = sumaPeso + o$peso
            valorTotal = valorTotal + o$valor
            faltante = W - sumaPeso
        } else {
            cantidades[i] = faltante / o$peso
            sumaPeso = sumaPeso + o$peso * cantidades[i]
            valorTotal = valorTotal + o$valor * cantidades[i]
            break
        }

    }

    return(list(valorTotal = valorTotal, pesoTotal = sumaPeso, cantidades = cantidades))
}

n = 5
w = 150
pesos = c(10, 20, 30, 40, 50)
valores = c(30, 33, 66, 40, 70)

print("MENOR PESO")
resultado1 <- mochilaFraccionada(n, pesos, valores, w, "menor_peso")
print(resultado1)

print("MAYOR VALOR")
resultado2 <- mochilaFraccionada(n, pesos, valores, w, "mayor_valor")
print(resultado2)

print("RELACION VALOR / PESO")
resultado3 <- mochilaFraccionada(n, pesos, valores, w, "valor_peso")
print(resultado3)

conteo <- 0
for (n in resultado3$cantidades) {
    if(n == 1) {conteo <- conteo + 1}
}
cat("Objetos completos:", conteo, ", Objetos incompletos:", length(resultado3$cantidades) - conteo)