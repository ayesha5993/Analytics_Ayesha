#Title: Data Structures in R

#vectors----
cv = c('a','b','c','d','e')
nv = c(2,3,4,5,6)
lv = c(TRUE,FALSE,T,F,T)

(x=1:100000)
set.seed(100) #to generate the same set of values
(x= trunc(rnorm(100000,mean=60,sd=10)))
x
plot(x)
x1= sort(x)

x1
x
#Values between 50 and 60
x[x<=60 & x>=50]
length(x)
#Number of values between 60 and 70
length(x[x>=60 & x<=70])
x2=rnorm(1000,mean=10,sd=2)
plot(density(x2))
abline(v=10, h=0.1)
#sequence of numbers
x3=seq(1,100,4) #use brackets to directly print the values
x3
mean(x3)
median(x3)
xt = table(x)
sort(xt,decreasing=T)[1:2]
summary(x)
quantile(x)
quantile(x, c(0.1,.5,.9))
quantile(x,seq(0,1,0.01))

#boxplot
boxplot(x,notch=T)
text(55,65,labels=c('q1','q2','q3'))

(x3=rnorm(50, mean=20, sd=2))
stem(x3)
hist(x3,breaks=12,col=1:5)
hist(x3,freq=F)
lines(density(x3))
#matrix
mat=matrix(c(1:24),nrow=6,ncol=4,byrow=T)
mat
m2=mat[10:14]
cbind(mat,m2)
rbind(mat,m2)
colSums(mat)
rowSums(mat)
colMeans(mat)
rowMeans(mat)
mat[1:2,3:4]
mat[c(1,3),c(2,3)]
mat[mat>10 & mat<15]
mat>10 & mat<15
t(mat)
#Sweep Function
?sweep
sweep(mat,MARGIN=1,STATS=c(2,3,4,5,6,7),FUN="*")  

#Data Frame
#Every column has a different data type
n=30
(rollno=paste('A',1:n,sep=''))
(name=paste('Student',1:n,sep='$'))
class(name)
set.seed(101)
(gender=sample(c('M','F'),size=n,replace = T,prob = c(0.3,0.7)))
table(gender)
set.seed(101)
(marks1= round(rnorm(n=n,mean=70,sd=7),2))
set.seed(102)
(marks2=round(rnorm(n=n,mean=80,sd=5),2))
(grade = sample(c('A','B','C','D'),size=n,replace=T,prob=c(0.25,0.25,0.25,0.25)))
table(grade)
 df=data.frame(rollno,name,gender,marks1,marks2,grade,stringsAsFactors = F)
df
summary(df)
str(df)
df$rollno
df$gender=factor(df$gender)
df$gender

str(df)
#queries?
#filter
m1
mat
df[1:5,1:2]
df[df$marks1>70 & gender=='F',c('rollno','name','marks1')]
(df$course=sample(c('MBA','BBA'),size=n,replace=T,prob=c(0.7,0.3)))
head(df)
tail(df)
str(df)
df$course=factor(df$course)
df$grade=factor(df$grade,ordered=T,levels=c('B','D','C','A'))
df$grade
str(df)
boxplot(marks2~(grade+gender),data=df)
?boxplot 
aggregate(marks2~course,data=df,FUN=mean)
aggregate(marks2~(course+gender),data=df,FUN=mean)

#dplyr
install.packages('dplyr')
library(dplyr)
df %>% count()
count(df)
