### Ejercicios Examen Diagnostico
A <- 1:10
A1 <- A
A2 <- A
A3 <- A

# a) Modifique el vector inicial elevando al cuadrado cada uno de sus elementos
for (i in 1:n) {
  A1[i] <- A1[i]^2
}; A1

# b) Modifique el vector inicial sumando 2 unidades a cada uno de sus elementos
for (i in 1:n) {
  A2[i] <- A2[i] + 2
}; A2

# c) Modifique el vector inicial sumándole al contenido de cada celda lo que tiene la celda izquierda si existe.
for (i in 2:n) {
  A3[i] <- A3[i] + A3[i - 1]
}; A3

# d) Regrese la suma del contenido del vector inicial.
s <- function (a) {
  s <- 0
  for (i in a) { s <- s + i }
  return(s)
}; s(A)

### Determinar si una cadena es un palindromo
s1 <- c("r", "e", "c", "o", "n", "o", "c", "e", "r")
s2 <- c("o", "s", "o")
s3 <- c("a", "a", "a", "1", "b", "a", "a")

es_palindromo <- function(s) {
  N <- length(s)
  for (i in 1:N %/% 2 + 1) {
    if (s[i] != s[N - i + 1]) {
      return(FALSE)
    }
  }
  return(TRUE)
}

es_palindromo(s1)
es_palindromo(s2)
es_palindromo(s3)

### Suma del elemento siguiente
a <- c(1, 2, 3, 4, 5)

n <- length(a)
for (i in 1:(n - 1)) {
  a[i] <- a[i] + a[i + 1]
}
a
