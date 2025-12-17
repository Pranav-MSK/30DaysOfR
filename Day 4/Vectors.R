# Day 4: R Data Structures

# Vector - stores homogeneous data. declared using c() function

fruits <- c("apple", "banana", "pineapple")
num <- c(1L,2L,3L,4L,5L)
deci <- c(1.2, 4.5, 7.6, 9.8)

fruits
num
deci
typeof(fruits)
typeof(num)
typeof(deci)

numbers1 <- 1.5:6.5
numbers1

# Functions
fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

# length() - to find the no. of elements in the vector
length(fruits)
length(numbers)

# sort() - to arrange elements in ascending order
sort(numbers)

# Accessing vectors using square brackets []. Indexing in R usually starts with 1. 
fruits[1]
fruits[4]
numbers[6]

#it also supports negative indexing and splicing.
fruits[c(1,3)]
fruits[-1]

#adding elements
fruits[1] <- "pear"
fruits

repeat_each <- rep(c(1,2,3), each = 3)
repeat_each

sequences <- seq(from = 0, to = 100, by = 20)
sequences
