merge <- function(left, right) {
  merged <- numeric(length(left) + length(right))
  l <- 1; r <- 1;
  for (i in 1:length(merged)) {
    if ((l <= length(left) && left[l] < right[r]) || r > length(right)) {
      merged[i] <- left[l]
      l <- l + 1
    } else {
      merged[i] <- right[r]
      r <- r + 1
    }
  }
  return(merged)
}

mergeSort <- function(A) {
  if (length(A) > 1) {
    q <- ceiling(length(A) / 2)
    a <- mergeSort(A[1:q])
    b <- mergeSort(A[(q + 1):length(A)])
    return(merge(a, b))
  } else {
    return(A)
  }
}

mergeSort(c(0, 10, 5, 3, 20))
mergeSort(c(3, 1, 15, 7, 8, 2))