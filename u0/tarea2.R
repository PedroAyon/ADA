git# 1. ARITHMETIC OPERATIONS
1 / sqrt(2 * pi) * exp(-2)


# 2. BUILD-IN FUNCTIONS

# 2.1 Displays the sequence (0.0 0.5 1.0 1.5 2.0 2.5 3.0) 
seq(0, 3, 0.5) #Display the sequence but not store it
x <- seq(0, 3, 0.5); x #Stores the sequence in x and display it


# 2.2 Floor and ceiling functions: ⌊x⌋, ⌈x⌉
floor(2.3)
ceiling(2.3)


# 3. VECTOR ACCESS
x <- c(3, 6, 8, 9); x

#Assign a sequence to a vector and see its content
x <- 5:20; x

#Concatenate vectors 
x <- c(1, 3, 8)
y <- c(5, 6, 9)
z <- c(x, y); z

#Extract elements from a vector, use [ ]
z[3]
z[3:6]


# 4. VECTOR OPERATIONS
#Multiplication of a vector by a number 
x
2 * x


#Multiplication of a vector by a number using loops
for (i in 1:3)
{ x[i] * 2 }

for (i in 1:3)
{ print(x[i] * 2) }


#Add and subtract a vector and a number
2 + x
2 - x

#vector addition
x
y <- c(6, 7, 8); y
x + y

#When the vectors have different dimensions, the one with the smallest dimension is extended 
# by repeating the values from the beginning, although it gives a warning message
x <- c(1, 2, 3, 4, 5)
y <- c(1, 2, 3, 4, 5, 6)
x + y


# 5. VECTOR FUNCTIONS
#The length() function returns the dimension of a vector
x
length(x)

#The max() and min() functions return the maximum and minimum value of the components of a vector
max(x)
min(x)

#The sort() function sorts the components of a vector in increasing order.
x <- c(2, 6, 3, 7, 9, 1, 4, 7)
sort(x)


# 6. USER FUNCTIONS
# 6.1 Roll a dice three times
sample(1:6, size = 3, replace = TRUE)

# 6.2 Declare a function that emulates a dice (dado)
sumdice <- function(n) {
  k <- sample(1:6, size = n, replace = TRUE)
  return(sum(k))
}

# 6.3 Call the function sumdice
sumdice(2)


##############
# EJERCICIOS
##############

# 1. Modidficar en el ejemplo 6 la función sumdice para que no usar la función sum de R
sumdice2 <- function(n) {
  k <- sample(1:6, size = n, replace = TRUE)
  suma <- 0
  for (i in k) { suma <- suma + i }
  return(suma)
}
sumdice2(2)


# 2. Crear una función que sume la serie de los números del 1 a n.
sumSerie <- function(n) {
  suma <- 0
  for (i in 1:n) { suma <- suma + i }
  return(suma)
}
sumSerie(100)

# Ejercicios en clase
5+3*2
10*(4+6)
x<-8*(6+2)-4; x
ceiling(5.8)
sqrt(10)

30:50
c(0:100)
a<-seq(1, 100, 5); a

# 1. Ciclo for para imprimir valores del 1 al 10
for (i in 1:10) {
  print(i)
}

#2. Ciclo for para imprimir valores del 1 al 20 de 3 en 3
for(i in seq(1, 20, by=3)) {
  print(i)
}

# Ejercicios Vectores
a <- c(5:1)
b <- seq(1,10,2)
a + b
d <- c(a,b); d

x <- c(1:10)
x[5] + x[4]
x[1:3] + x[4:6]
sum(x)