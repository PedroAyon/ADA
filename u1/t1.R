factorial <- function (n) {
  if (n <= 2) return (n)
  return(n * factorial(n - 1))
}

factorial(3)
factorial(5)
factorial(10)


binaryToDecimal <- function(n, base = 1) {
  if (n == 0) {
    return(0)
  }
  last_digit <- n %% 10
  return(last_digit * base + binaryToDecimal(n %/% 10, base * 2))
}

# Driver code to test the function
binaryToDecimal(11)
binaryToDecimal(1101)
binaryToDecimal(10101001)


is_palindrome <- function (str) {
  n <- nchar(str)
  if (n <= 1) return(TRUE)
  if (substr(str, 1, 1) != substr(str, n, n)) return(FALSE)
  return(is_palindrome(substr(str, 2, n - 1)))
}

is_palindrome('oso')
is_palindrome('1234')
is_palindrome('12344321')

pow <- function(a, n) {
  if (n == 0) return(1)
  if (n < 0) return(1 / pow(a, -n))
  if (n == 1) return(a)
  return(a * pow(a, n - 1))
}

pow(2, 10)  # Should return 1024
pow(2, -3)  # Should return 0.125
pow(-10, 3) # Should return -1000

