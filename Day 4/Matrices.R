# Day 4: R Data Structures

# Matrices - A 2D data structure that stores data in the form of rows and columns

mat <- matrix( c(1:6), nrow=3, ncol=2)
mat

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2, byrow=TRUE)
thismatrix

# byrow in matrix() can be used to arrange elements row-wise

# Matrix elements can be accessed using square brackets[]

thismatrix[1,2] # first row, second element
thismatrix[2,] # entire second row
thismatrix[,2] # entire first row

mat1 <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
mat1
mat1[,c(1,2)]

# rbind and cbind

mat
mat <-cbind(mat, c(7,8,9)) # used to add elements as a column
mat <-rbind(mat, c(10,11,12)) # used to add elements as a row

# condition : both added vectors should of the same length as that row or column

#removing rows and columns
mat1 <- mat1[-1,] # removed first row
mat1 <- mat1[-1,-1] # removed first row and column

# checking if elements exists

"pear" %in% mat1
"mango" %in% mat1

length(mat1)
dim(mat1)

# looping through matrices
for(i in 1:nrow(mat1)){
  for(j in 1:ncol(mat1)){
    print(mat1[i,j])
  }
}

# combing two matrices
Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)

# Adding it as a rows
Matrix_Combined_byrows<- rbind(Matrix1, Matrix2)
Matrix_Combined_byrows

# Adding it as a columns
Matrix_Combined_bycols <- cbind(Matrix1, Matrix2)
Matrix_Combined_bycols