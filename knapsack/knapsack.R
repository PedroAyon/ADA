knapSack <- function(W, wt, val, n) {
  K <- matrix(0, nrow = n + 1, ncol = W + 1)

  for (i in 1:(n + 1)) {
    for (w in 1:(W + 1)) {
      if (i == 1 || w == 1) {
        K[i, w] <- 0
      } else if (wt[i - 1] <= (w - 1)) {
        K[i, w] <- max(val[i - 1] + K[i - 1, w - wt[i - 1]], K[i - 1, w])
      } else {
        K[i, w] <- K[i - 1, w]
      }
    }
  }

  objetos_seleccionados <- c()
  w <- W
  for (i in n:1) {
    if (K[i + 1, w + 1] != K[i, w + 1]) {  # Comparar valores de la matriz
      objetos_seleccionados <- c(objetos_seleccionados, i)
      w <- w - wt[i]
    }
  }

  return(list(max_profit = K[n + 1, W + 1], matrix = K, objetos = objetos_seleccionados))
}

cat("Prueba 1\n")
profit <- c(60, 100, 120)
weight <- c(10, 20, 30)
W <- 11
n <- length(profit)
print(knapSack(W, weight, profit, n))

cat("Prueba 2\n")
profit <- c(1, 6, 18, 22, 28)
weight <- c(1, 2, 5, 6, 7)
W <- 11
n <- length(profit)
print(knapSack(W, weight, profit, n))