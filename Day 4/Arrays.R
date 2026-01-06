# Day 4: R Data Structures

# Arrays - used to store data in two or more dimensions. Takes only one datatype

thisarray <- c(1:24)
thisarray

multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray
multiarray[1,3,2]


arr <- array(1:12, dim=c(3,2,2))
arr

multiarray[c(1),,1] # first row of first layer
multiarray[,c(1),1] # first column of first layer
multiarray[c(1),1,] # first element from first column from both layers

# Check if an item exists
2 %in% arr
14 %in% arr

# view dimensions and length
dim(multiarray)
dim(arr)
dim(thisarray)

length(multiarray)

# looping through the arrays

for (x in arr){
  print(x)
}

for( x in 1:nrow(arr)){
  for (y in 1:ncol(arr)){
    print( arr[x,y,])
  }
}
