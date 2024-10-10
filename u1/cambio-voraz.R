vorazCambio <- function(monto, denominaciones) {
  n <- length(denominaciones)
  pos <- -1
  suma <- 0
  numBilletes <- integer(n)
  pasoAPaso <- list()

  while (suma < monto) {
    pos <- seleccionVoraz(monto - suma, n, denominaciones)

    if (pos > n) {
      return("No se encontró la solución")
    }

    numBilletes[pos] <- numBilletes[pos] + 1
    resta <- monto - suma - denominaciones[pos]

    pasoAPaso[[length(pasoAPaso) + 1]] <- list(moneda = denominaciones[pos], resta = resta)

    suma <- suma + denominaciones[pos]
  }

  list(billetes = numBilletes, pasoAPaso = pasoAPaso)
}

seleccionVoraz <- function(resto, n, denominaciones) {
  i <- 1
  while (i <= n && denominaciones[i] > resto) {
    i <- i + 1
  }
  return(i)
}

imprimirSalida <- function(resultado, denominaciones, monto) {
  cat("SALIDA COMPACTA:\n")
  billetes <- resultado$billetes
  pasoAPaso <- resultado$pasoAPaso

  listaBilletes <- unlist(lapply(1:length(denominaciones), function(i) rep(denominaciones[i], billetes[i])))
  cat("[", paste(listaBilletes, collapse = ", "), "]\n")

  cat("(")
  for (i in 1:length(pasoAPaso)) {
    if (i > 1) cat(", ")
    cat("(", pasoAPaso[[i]]$moneda, ", ", pasoAPaso[[i]]$resta, ")", sep = "")
  }
  cat(")\n\n")
  cat("SALIDA INTERPRETADA:\n")
  cat("Monedas utilizadas: ", paste(denominaciones[billetes > 0], collapse = ", "), "\n")

  cat("Ejecucion paso a paso:\n")
  for (i in 1:length(pasoAPaso)) {
    cat(i, ". Usas una moneda de ", pasoAPaso[[i]]$moneda, ", queda por devolver ", pasoAPaso[[i]]$resta, ".\n", sep = "")
  }
}

monto <- 93
denominaciones <- c(50, 20, 10, 5, 2, 1)

resultado <- vorazCambio(monto, denominaciones)

imprimirSalida(resultado, denominaciones, monto)
