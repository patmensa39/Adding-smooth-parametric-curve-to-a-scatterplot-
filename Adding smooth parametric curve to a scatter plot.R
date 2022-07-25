### ADDING SMOOTH PARAMETRIC CURVES TO A PLOT ###

xv <- 0:100

# Next, we calculate the vector which contains the values cof yA and yB at each of these values

yA <- 482 * xv * exp(-0.04 *xv)
yB <- 518 * xv * exp(-0.55 * xv)

plot(c(xv, xv), c(yA, yB), xlab = "stock" , ylab = "recruits", type = "n", main = "Smooth Parametric curve")


lines(xv, yA, lty = 2, col = "green") #lty = 2 for dashed lines
lines(xv, yB, lty = 1, col = "blue") #lty = 1 for thick lines

data <- read.table("plotfit.txt" , header = TRUE)
attach(data)

names(data)

points(x, y , pch = 20)
