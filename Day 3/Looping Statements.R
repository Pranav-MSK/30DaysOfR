# Looping Statements
# Looping statements are used to execute a block of code multiple times until the 
# given condition is satisfied or a specific no. of times

# 1. for loop - used to iterate over a sequence

for( i in 1:10){
  print(i)
}

fruits <- c("apple", "banana", "cherry", "dates")
for( fruit in fruits){
  print(fruit)
}

# 2. while loop - used to execute statements until condition is satisfied

x <- 1
while ( x<5 ){
  cat("Number: ",x,"\n")
  x <- x+1 # increment without fail, or will lead to infinite execution
}


# break - used to terminate a loop

for(y in 1:10){
  if(y==4){
    break  #exits the loop when y=4
  }
  print(y)
}

y=10
while(y>4){
  print(y)
  y <- y-1
  if(y==6){
    break # exits the loop when y=6
  }
}

# next - used to skip the current iteration (similar to continue in python, c++)

for(y in fruits){
  if( y=="cherry"){
    next # skips cherry during execution
  }
  print(y)
}

n=0
while(n<5){
  n <- n+1
  if(n==3){
    next # skips 3 during execution
  }
  print(n)
}

# Nested for loop - used to execute loops inside another loop

adj <- list("fresh", "big", "tasty")

fruits <- list("apple", "banana", "cherry")
for (x in adj) {
  for (y in fruits) {
    print(paste(x, y))
  }
}