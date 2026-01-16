#R FUNDAMENTAL COMMANDS-I



#how to clear console
ctrl+L

#how to remove a variable x
rm(x)

#how to remove two variables x and y
rm(x,y)

#fundamental date and time commands
date()
Sys.Date()
Sys.time()
Sys.timezone()

#how to set a folder as your working directory
setwd("C:/Users/OneDrive/Desktop/RFolder")
#to get your working diretory
getwd()

#to see all the present objects in the environment
ls()

#to remove all the objects from the environment
rm(list=ls())

#R has more than 9000 packages. To access a particular package you need to install and unpack the package.

#how to install a pckage
install.packages("name of the package")

#once installed, here's how to unpack/access the package
library(name of the package)

#for example, to install and unpack a package called 'datasets', we need to give the following commands
install.packages("datasets")
library(datasets)

#lets start with the first package called 'datasets'. datasets is a package that is home to some in-built databases in R. For example, 'iris' is one of the in-built databases that we generally access to and work upon.

#to see the list of all the in-built databases in datasets package
data()

#to view a particular in-built database, say iris
View(iris)

#to save a particular in-built database as an object in environment
data(iris)

#to save a particular in-built database as an object in environment, but with a different name say 'flower'
flower<-data(iris)

#OUTPUT COMMANDS: to output the value of a particular object in the environment

#1. just write the name of the object and run the command
#for example
iris

#2. use the 'print' command
print(iris) #prints the value of object iris
print(x) #prints the value of object x
print(x,y) #would print/output only the value of object x, since print command can only deal with one object at a time
#lets say x has value 2 and y has value 3
print("sum of x and y is",x+y) #would just print the character/string text "sum of x+y is", and would not perform the sum function x+y because print only deals with one object/command at a time

#3. use the 'cat' command. cat stands for concatenate
#cat is an upgrade over print command, in the sense that it can deal with more than one object/command at a time
cat(iris) #outputs the value of object iris
cat(x) #outputs the value of object x
cat(x,y) #outputs the value of both x and y
cat("sum of x and y is",x+y) #would give the output "sum of x and y is 5", because it can deal with more than one output/command 

#4. use the 'paste' command
#paste command pretty much works like the cat command. just like cat, paste is also considered an upgrade over the print command

#Types of data operators

#1. assignment operators
#assignment operators are used to assign values to objects
#'<-' and '=' are the assignment operators
#for example
x<-2, command to assign value 2 to onject x
y=3, command to assign va;ue 3 to object y
flower<-data(iris), to assign database iris to object flower

#2. mathematical/arithmetic operators
#'+' addition operator
#'-' subtraction operator
#'*' multiplication operator
#'/' division operator
#'^' multiplication operator
#'%%' modulus/remainder operator
#'%/%' integer division operator

#3. logical operators
#they give the result in binary form, that is only in true or false
#'==' equal to operator #to check if lhs is equal to rhs
#'!=' not equal to operator #to check if lhs is not equal to rhs
#'<' less than operator #to check if lhs is less than rhs
#'>' greater than operator #to check if lhs is greater than rhs
#'<=' less than equal to operator
#'>=' greater than equal to operator
#'&' element wise logical and operator #if both the conditions are satisfied, then true otherwise false. it checks this condition for each element of the vector element-wise
#'|' element wise logical or operator #if any one of the two conditions is satisfied, then true otherwise false. it checks the condition for each of the element of vector element-wise
#'&&' logical and operator #checks the and condition but only for the first element of the vector
#'||' logical or operator #checks the or condition but only for the first element of the vector

#for example
x<-(T,T,F)
y<-(F,T,F)
x&y #result is false,true,false
x|y #result is true,true,false
X&&y #result is false
x||y #result is true

#Types of data variables

#1.logical variables
#they only take binary values, that is only true or false
a=TRUE or a=T
b=FALSE or b=F

#2.numeric variables
#they take only numeric values
a=4
b=5.83

#3. integer variables
#they take only integer values
a=3L (L has to be put in the command, but value assigned is integer 3 only)
b=-3L

#4. complex variables
#they take only complex values,that is, in the form a+bi
a=3+4i
b=6-32i

#5.character or string variables
#they can take all the values. to assign a value to a character variable, value has to be put in double quotes
x="delhi"
y="table"
z="3"

#as per vector coercion, character or string variable is the largest set, followed by its subset complex, followed by its subset numeric, followed by its subset integer, followed by its subset logical.

#to know the class to which a variable belongs, the command is
class(nameofvariable) #types of classes: character,complex,numeric,integer and logical

#Types of data structures

#1. vector
#a vector is one dimensional and homogenous
#one-dimensional means it is a data structure with only one row or one column. homogenous means all the values in the vector is of the same data type. that is, if one value in a vector is numeric, all values will have to be numeric. if one value is string, all the values would have to be string. if a vector contains values belonging to different data types, the data type of the entire vector would be decided through vector coercion.
x=c(1,2,3) #to create a three-value numeric vector
y=c(3L,2L) #to create a two-value integer vector
z=c("delhi","mumbai","chennai") #to create a three-value character vector

#2. list
#a list is one dimensional and heterogenous
#it has only one row or column, but can contain values belonging to different data types
x=list(1,TRUE,3L) #first value is numeric, second is logical and third is integer
y=list("hello",4+2i) #first value is character and second is complex

#3. matrix
#a matrix is multi-dimensional and homogenous
#it has multiple rows and columns, but contains homogenous values, that is belonging to the same data type
m1=matrix(data=c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=FALSE,dimnames=list(rownamesvector,columnnamesvector))
#in the above command, data has to be entered through a vector command, nrow represents the number of rows in the matrix, ncol represents the number of columns, byrow is by default set at FALSE that is by default the data will be entered columnwise and not rowwise, dimnames is used to give names to dimensions that is rows and columns. in dimnames put the vector that has been created for the row names, followed by the vector that has been created for the column names.

#4. data frame
#a data frame is multi-dimensional and heterogenous
#for each column of a data frame, create a vector. and then put these vectors in the data frame command.
#example
SNO<-c(1,2,3,4,5)
StudentName<-c("dave","ria","rock","john","stacy")
Marks<-c(81,84,90,78,91)
students<-data.frame(SNO,StudentName,Marks) #this would create a data frame in the environment by the name Students, having three column heads names SNO, StudentName and Marks

#to know the structure of a particular data object
str(students) 

#some fundamental database summary commands
dim(iris) #gives the dimensions of a database, that is number of observations and number of column heads
head(iris) #gives the glimpse of the head of a database, that is the first six rows
head(iris,3) #gives the glimpse of the first three rows
tail(iris) #gives the glimpse of the tail of a database, that is the last six rows
tail(iris,2) #gives the glimpse of the last two rows
summary(iris) #gives the summary of the column heads in a database
colnames(iris) #gives the names of all the column heads in a database
plot(iris$Sepal.Length,iris$Petal.Length) #to make a scatter plot of two column heads in a database
hist(iris$Sepal.Length) #to make a histogram of a column head in a database

