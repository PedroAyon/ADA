it s# 1. Obtener el área de un triangulo dada la base y la altura del mismo
triangle_area <- function(base, height) {
  return(0.5 * base * height)
}

triangle_area(10, 5)

# 2. Obtener el área de un círculo, dado el radio.
circle_area <- function(radius) {
  return(pi * radius^2)
}

circle_area(10)

# 3. Identificar si un número es primo o no lo es.


is_primeU <- function(n) {
  if (n < 2) {
    return(FALSE)
  }
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) {
      print(i)
      return(FALSE)
    }
  }
  return(TRUE)
}


is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  if (n <= 3) {
    return(TRUE)
  }

  # In most cases, a number can be divided by 2 or 3
  if (n %% 2 == 0 || n %% 3 == 0) {
    return(FALSE)
  }

  i <- 5
  while (i * i <= n) {
    if (n %% i == 0 || n %% (i + 2) == 0) {
      return(FALSE)
    }
    i <- i + 6
  }
  return(TRUE)
}

start <- proc.time()
is_primeU(100000000943)
is_primeU(100000001489)
is_primeU(100000008931)
is_primeU(100000008037)
proc.time() - start

start <- proc.time()
is_prime(100000000943)
is_prime(100000001489)
is_prime(100000008931)
is_prime(100000008037)
proc.time() - start
