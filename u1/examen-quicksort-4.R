A <- c(16, 2, 19, 3, 6)
A[c(2, 5)] <- A[c(5, 2)]
print(A)

set.seed(123)
A <- sample(1:10, length(A), replace = TRUE)
print(A)
