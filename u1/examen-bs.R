busquedaBinaria <- function(A, primero, ultimo, x) {
    if(primero > ultimo) {
        return(-1)
    }
    m = floor((primero + ultimo) / 2)
    cat('Primero:', primero, " Mitad:", m, " Ultimo:", ultimo, "\n")
    if (A[m] == x) {
        return(m)
    }
    if (x < A[m]) {
        return(busquedaBinaria(A, primero, m - 1, x))
    } else {
        return(busquedaBinaria(A, m + 1, ultimo, x))
    }
}

A <- c(2, 4, 5, 6, 8, 11, 16)
x <- 11
pos <- busquedaBinaria(A, 1, length(A), x); pos