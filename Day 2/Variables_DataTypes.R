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

# Variable Scope - Global & Local

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

#---------------------------------------------------

#Data Types

# Numeric - Both decimal and integer values are referred to as numeric
x=1
y=2.5

print(class(x))
print(typeof(x)) # typeof() - checks data type of value

a= as.integer(5)
print(class(a))
print(typeof(a))

b= 7L
print(class(b))
print(typeof(b))

# Logical - take either TRUE or FALSE as values
c = 4
d = 3
e = c > d
print(e)
print(class(e))
print(typeof(e))

# Complex - stores complex values of the format A+Bi
complex_var = 4 + 3i
print(class(complex_var))
print(typeof(complex_var))

# Character - supports character values and strings
char = "Hello World"
print(class(char))
print(typeof(char))

#----------------------

# Type Verification - is.data_type(object)
print(is.logical(TRUE))
print(is.integer(3L))
print(is.numeric(97.6543))
print(is.complex(78+223i))
print(is.character("26-01-2020"))
print(is.integer("x"))
print(is.numeric(2+3i))

# Type Conversion - as.data_type(object)
print(as.numeric(TRUE))
print(as.complex(3L))
print(as.logical(10.5))
print(as.character(1+2i))
print(as.numeric("12-04-2020"))

