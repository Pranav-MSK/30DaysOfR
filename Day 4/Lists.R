# Day 4: R Data Structures

# List
# created using list() method

l1 = list(1,2,3,4)
l1
newList <- list("apple", "banana", "cherry")
newList

newList[1] # accessing list elements can be done using index values

# modifying the list 

newList[2] <- "mango"
newList

# length() - gives length of list ( same as vectors)
length(l1)
length(newList)

# checking for items in list 

"apple" %in% newList
5 %in% l1

# adding elements to list

l1=append(l1,6)

# To add an item to the right of a specified index, 
# add "after=index number" in the append() function:

l1 = append(l1, 5, after=4)

# calling an append function just like that, would not be reflected on the original list

# removing an element from the list

l1 <- l1[-4]
l1

# Slicing
thislist <- list("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")
thislist[2:5] # both limits are inclusive

# looping through a list
for (x in thislist){
  print(x)
}

# Joining 2 lists
list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)
list3[1]
