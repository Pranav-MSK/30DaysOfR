# Day 6: R Statistics

# Introduction and Working with Data sets

#dim() - find dimensions of the data set
#names() - to view the names of the variables

cars <- mtcars
dim(cars)
names(cars)

#accessing columns can be done by
cars$cyl #using the col name with $ operator
cars["cyl"] #calling the col name in square brackets
cars[,2] #calling the column index

sort(cars$cyl)

# statistical summary of a data set

summary(cars)

# these summary statistics given us a general idea of the data set

min(cars$hp) # returns the least hp 
max(cars$hp) # returns the highest hp

# to find the record in the data set, we can use such a code segment
for(i in seq(1:32)){
  if(cars[i,"hp"]==min(cars$hp)){
    print(cars[i,])
  }
}

#or, we can use the
# which.max() and # which.min() functions along with rownames() to return the name/index of the particular row

rownames(cars)[which.max(cars$hp)] # returns the name of the car with highest hp
rownames(cars)[which.min(cars$hp)] # returns the name of the car with lowest hp

mean(cars$disp)
median(cars$disp)

# R doesn't provide a 'mode' function for statistical purposes, but it can be worked around

names(sort(-table(cars$cyl)))[1] 

y=c("Mazda RX4","Honda Civic", "Maserati Bora")
cars[y,]


# calculating percentiles of a data set

quantile(cars$wt, c(0.75, 0.25)) # this function provides the flexibility of calculating the percentile we want , not just the standard ones
quantile(cars$wt, c(0.25, 0.50, 0.80))

#but, if we run the function without specifying the c() function, then the standard quartiles are returned
quantile(cars$wt)
