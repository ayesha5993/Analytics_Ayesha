a <- c(1, 2, 5, 3, 6, -2, 4)
class(a)
b <- c("one", "two", "three")
c <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)
y <- matrix(1:20, nrow=5, ncol=4)
y
class(y)
cells <- c(1,26,24,68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2")
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
                     dimnames=list(rnames, cnames))
mymatrix  #Asking the right question in R on Stack Overflow
#Data Structures in R
#Vectors
#Matrices
#Data Frames
#Factors
x= matrix(1:20, nrow=4, ncol=5, byrow=T)
x
x[,2]
