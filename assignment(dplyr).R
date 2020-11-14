library(dplyr)
str(mtcars) #Structure of mtcars
glimpse(mtcars) #Glimpse of mtcars
summary(mtcars)  #Summary of mtcars
head(mtcars) #First 6 rows of mtcars
tail(mtcars)  #Last 6 rows of mtcars
nrow(mtcars)  #Number of rows of mtcars
dim(mtcars)   #Number of rows and columns of mtcars
names(mtcars) #Column names of mtcars
?mtcars #Dataset information
View(mtcars) #view of the dataset in excel
filter(mtcars,cyl==8)   #Filter out cars with cylinder=8
filter(mtcars,mpg<=27) #Cars with mileage<=27
filter(mtcars,row_number()==1) #Print first row
filter(mtcars,row_number()==n()) #Print last row
filter(mtcars,between(row_number(),5,n()-2)) #Print rows between 5th and 3rd last
filter(mtcars,mpg>23|wt<2)
distinct(mtcars)
#Multiple Criteria
filter(mtcars,cyl<6 & vs==1)
filter(mtcars,cyl<6,vs==1)
filter(mtcars,cyl<6|vs==1)
#Create new columns
mutate(mtcars,displ_l= disp/61) #Keeps other columns and divide displacement by 61
transmute(mtcars,mpg_l=mpg*1.5) #Removes other columns and multiplies mpg by 1.5

