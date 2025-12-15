# Conditional Statements
# Used to execute a certain block of code (set of statements) based on 
# specific conditions

# 1. if() - Used to check a single condition

a <- 10
b <- 20
if(b>a){
  print("b is greater than a")
}

# 2. else() - this block is executed if the if-condition is false

if(b>a+10){
  print("b is greater than a")
}else{
  print("b is less than a")
}

# 3. else if() - used when multiple conditions are to be checked for making decision making

b = a

if(b>a){
  print("b is greater than a")
}else if(b==a){
  print("b is equal to a")
}else{
  print("b is less than a")
}


# Conditionals statements are fundamental concepts in programming used widely 
# in decision making tasks which executes a certain set of statements based 
# on the evaluated condition

# When a course of action is decided based on a primary condition, nested if statements are used
# 4. Nested if statement

n = 10
if(n>0){
  if(n %% 2 == 0){
    print("Positive Even Number")
  }
}

# Inline if statements for vectors or Vectorized if
# 5. ifelse()

num =c(1,6,3,7,4,9)

result <- ifelse( num >5, "Greater", "Lesser")
print(result)