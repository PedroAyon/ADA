x <- vector()
for (i in 1:10) {
  x[i] <- i
}
x

for (i in seq(1, 20, 3)) {
  print(i)
}

x <- 1:10
x[5] + x[4]
x[1:3] + x[4:6]
x + x

plot(1, 3)
plot(c(1, 8), c(3, 10))
plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12), type = "l")

x <- sample(1:100, 100, replace = FALSE)
y <- sample(1:100, 100, replace = FALSE)
plot(x, y, main="My Graph", xlab="The x-axis", ylab="The y axis", col = "red", lwd=4)


plot(1:10, cex=2)

plot(1:10, pch=8, cex=2)

plot(1:10, type="l", lwd=5, lty=3)

line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)

plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")


y <- NULL
x <- 1:10
for (i in 1:3) {
  y[i] <- x[i] + x[i+3]
}
y
