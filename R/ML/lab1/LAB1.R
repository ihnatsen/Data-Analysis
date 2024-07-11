# Laboratory work: conducting in R.

# create vector 
x <- c(1, 2, 3, 4)
y = c(2, 4, 9, 16)

# get length 
length(x)
length(y)

# add x to y
x + y

# name of var
ls()

# del var from memary
rm(x, y)

# del all var 
rm(list = ls())

# create a matrix
x <- matrix(data = c(1,2,3,4,5,6), nrow=2, ncol=3)

# create normal distribution vector
x <- rnorm(50)
y <- x + rnorm(50, mean=50, sd=.1)
cor(x, y)

set.seed(1)

# create plot

x <- (1:10)
y <- x^2
plot(x,y, xlab='This is the x-axis',
          ylab='This is the y-axis',
          main='Plot of X vs Y', 
          col='red')

# get sequence
seq(1, 10)
seq(-pi, pi, length=50)

# index

A = matrix(1:16, 4, 4)
# A[c(2, 3), c(2, 3)]
# A[1:2, 2:3]
# A[1, ]

# get size matrix
dim(A)

# read data 
install.packages('ISLR')
library(ISLR)
data("Auto")
# Auto <- read.table ("Auto.data", header=T, na.strings='?')

# del records with null
na.omit(Auto)
names(Auto)

plot(Auto$cylinders, Auto$mpg)

# return cylinders as сategorical variable
cylindres =as.factor(Auto$cylinders)
plot(cylindres, Auto$mpg)

# get hist
hist(Auto$mpg, col=2, breaks = 15)

plot(Auto$horsepower, Auto$mpg)
identify(Auto$horsepower, Auto$mpg, Auto$year)

summary(Auto)
q()         
