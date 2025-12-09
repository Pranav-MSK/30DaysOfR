# Day 2 : R FUNDAMENTALS

# Input - readline() , scan()

# readline() - takes input in string format.
var = readline()
print(var)

user_input = readline("Enter a number: ");
user_input = as.integer(user_input);
print(user_input+11)

# taking multiple inputs
{
  var1 = readline("Enter 1st number : ");
  var2 = readline("Enter 2nd number : ");
  var3 = readline("Enter 3rd number : ");
  var4 = readline("Enter 4th number : ");
}

var1 = as.integer(var1);
var2 = as.integer(var2);
var3 = as.integer(var3);
var4 = as.integer(var4);
print(var1 + var2 + var3 + var4)

# String input
var1 = readline(prompt = "Enter your name : "); 

# character input
var2 = readline(prompt = "Enter any character : ");
# convert to character
var2 = as.character(var2)

# printing values
print(var1)
print(var2)

# scan() - takes input from the console
x = scan()
print(x)