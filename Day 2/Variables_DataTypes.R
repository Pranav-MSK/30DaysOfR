# Day 2: R FUNDAMENTALS 

# Variables
# class()
var="hello"
print(class(var)) #determine the data type of the variable

#ls()
var2 <- 45
34.78 -> var3

print(ls()) #all the present variables

#rm() - to delete unwanted variables
rm(var2)
print(var2)

#Variable Scope - Global & Local

#Global
outside = 27

# global variable accessed from within a function
display = function(){
  print(outside)
}
display()

# changing value of global variable
outside = 10
display()

#Local
disp = function(){
  age=18
  print(age)
}

print("Age is: ")
disp()