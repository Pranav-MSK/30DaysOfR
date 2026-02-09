5+7+9
"kilos"
for (x in 1:10) {
  print(x)
}
name <- "John"
age <- 30
formatted_string <- sprintf("Hello, my name is %s and I am %d years old.", name, age)
print(formatted_string)

text <- "awesome"
paste("R is", text)

print("Arithmetic Operators")
5+3
5-3
5*6
6/4
6%%4
6%/%4

print("Relational Oprators")
5==5
5!=5
5>10
10<5
10>4
4<5
10>=5
10>=10
5<=6
5<=5

print("Logical Operators")
5& 6
TRUE & FALSE
c(1,2,3) & c(3,4,5)
c(1,0,3) & c(3,4,5)
c(1,0,3) | c(3,4,0)
!c(1,2,3) & c(3,4,5)
5 >3 && 7<9
5 && 7
1 && 0
1 || 0

class(7.8)
class('l')
class('jdghvf')
class("Hello")
class(c(1,2,3))
class(1L)
class(45L)
class(9+3i)

x <- 1L # integer
y <- 2 # numeric

# convert from integer to numeric:
a <- as.numeric(x)

# convert from numeric to integer:
b <- as.integer(y)

# print values of x and y
x
y

# print the class name of a and b
class(a)
class(b)

str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."

print(str)
cat(str)
nchar(str)
grepl('ipsum',str)
paste(str, str)
cat(paste(str,str))

str <- "We are the so-called \"Vikings\", from the north."

str
cat(str)

a <- matrix(1:12, nrow=3)
b <- matrix(12:23, nrow=3)
a * b
a
b
a %*% b
a %*% t(b)
sum(a)
sum(b)
min(b)

a <- 200
b <- 200

if (b > a) {
  print("b is greater than a")
}else if(a==b){
  print("a is equal to b")
}else{
  print("b is greater than a")
}

i<-1
while(i<10){
  print(i)
  i=i+1
}

for(i in 1:12){
  print(i)
}

i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  if (i == 4) {
    next
  }
  if(i == 7){
    break
  }
}

rep(5, times = 3)
class(matrix(1.5:12.5, nrow=3))
class(a)
class(c(1,2))

x <- c(1,2,3,4)
y <- c(5,6)
x+y
x^2
x^y

rev(x)
rev(a)
rev(a[1,])
rev(a[,2])
a[,2]
x <- c(x,5)
x
x <-x[-2]
x
