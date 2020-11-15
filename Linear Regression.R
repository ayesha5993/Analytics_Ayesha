#topics ----
#factors, env, import/export. package install
#rep, recode, split, partition, subset, loops, cast & melt
#missing values. duplicates, apply
#graphs - bar, multiple line, pie, box, corrgram
# predict weight for certain height

women
head(women)
dim(women)
cov(women$height,women$weight)   #Positive relationship between height and weight
cor(women$height,women$weight) #strong and positive relationship between height and weight
plot(x=women$height,y=women$weight,type='b')
?lm #lm(y~x,data)
abline(lm(weight~height,data=women),col='red') #Line of best fit
names(women)
fit = lm(weight ~ height,data = women)
summary(fit)
#R2
#Coefficients
#Does linear model exist between Ys and X axis
#p-value exists if it is < 0.05
#R2 - Multiple(used when there is only one independent variable) and Adjusted(used when there is more than one independent variable)
#Good Model >0.6,0.7
#Coefficients
#y=mx+c, c=-87.5167, m=3.45
#height is a significant variable in calculating the weight
#Residuals =actual-predicted


range(women$height)
(ndata = data.frame(height = c(60.5, 70.5, 71.5)))
(predictedwt = predict(fit, newdata = ndata))
cbind(ndata, predictedwt)

resid(fit)
fitted(fit)
cbind(women, fitted(fit), resid(fit))
#assumptions
#linearity,autocollinearity, multicollinearity, normality, homosodescity(equal variance), outliers
#Linked with residuals
plot(fit)
#Predict: height=60.5
women
predict(fit,newdata=data.frame(height=60.5))
ndata = data.frame(height=c(60.5,70.5))
p1=predict(fit,newdata=ndata)
cbind(ndata,p1)

