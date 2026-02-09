# Day 7: File Handling in R

# 1. Creating a File
# file.create("file_name")

file.create("trial.txt")

# 2. Writing into a file
# write.table(x, file) -  allows us to write a table or matrix (x) into the "file"

write.table(x=iris[1:10,], file="trial.txt")

# 3. Renaming a file
# file.rename(from, to)

file.rename("trial.txt", "Trial.txt")

# 4. Check existence of file
# file.exists(file) 
# case insensitive

file.exists("Trial.txt")
file.exists("tRIAL.txt")
file.exists("demo.txt")

# 5. Reading a file
# read.table(file)

iris10 <- read.table("Trial.txt")
print(iris10)

# 6. List all files in directory
# list.files(path)

list.files()

