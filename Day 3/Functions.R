# Day 3 : R Functions

# A function is a block of code which only runs when it is called.

myfun <- function(a,b){
  return (a+b)
}

myfun(5,7)
myfun(7,8)

greet <- function(name){
  paste("Greetings, ",name,"!!")
}

greet("Mr. Wolowitz")

# default arguments are declared last in the argument list in the function header

add <- function(a,b=10){
  print(a+b)
}

add(3,7)
add(4)
add(3,5)

# Nested Functions

nest <- function(x,y){
  a <- x+y
  return (a)
}

nest(nest(4,5), nest(7,8))
nest(5,nest(5,5))
#---------------------------

outer <- function(x){
  inner <-function(y){
    b <-x+y
    return(b)
  }
  return(inner(6))
}
print(outer(5))
#---------------------------

Outer_func <- function(x) {
  Inner_func <- function(y) {
    a <- x + y
    return(a)
  }
  return (Inner_func)
}
output <- Outer_func(3) # To call the Outer_func
output(5)

# Recursion - a function can call itself during its execution
tri_recursion <- function(k) {
  if (k > 0) {
    result <- k + tri_recursion(k - 1)
    print(result)
  } else {
    result = 0
    return(result)
  }
}
tri_recursion(6)

factorial <- function(n){ # Factorial using recursion
  if(n<=1){
    return(1)
  }else{
    return(n*factorial(n-1))
  }
}

print(factorial(5))


# Global and Local Variables with Functions

txt <- "aws" #global
fun <- function(a){
  paste("i use", txt) # if no local variable, then global variable is taken
}
fun()

fun <- function(a){
  txt<-"gcp" # local variable overwrites global variable inside the program block
  paste("i use", txt)
}
fun()
print(txt)


# <<- : Global assignment operator

my_function <- function() {
  txt <<- "fantastic"
  paste("R is", txt)
}

my_function()

print(txt) # overwrites the global variable throughout the program

txt <- "awesome"
my_function <- function() {
  txt <<- "fantastic"
  paste("R is", txt)
}
paste("R is", txt) # txt = awesome

my_function() # txt = fantastic

paste("R is", txt)















