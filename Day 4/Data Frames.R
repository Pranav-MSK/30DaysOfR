# Day 4: R Data Structures

# Data Frames - Used to store data in the form of a table. 
# Stores same type of data in a column but can store different data types in a data frame
# Created using data.frame()

Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame

Data_Frame[, 3]

summary(Data_Frame)

summary(c(1,2,3,4,5,6,7,8,9))

#Access  elements
Data_Frame[1]
Data_Frame[["Training"]]
Data_Frame$Training

Data_Frame[c(1,2)]

#Adding rows to Data Frame

new_row <- c("Agility", 120, 20)
Data_Frame <- rbind(Data_Frame, new_row)
Data_Frame

# Adding new columns to Data Frame
Data_Frame <- cbind(Data_Frame, Steps=c(1200,2000,5200,200))
Data_Frame

# Removing cols and rows from Data Frame
Data_Frame <- Data_Frame[, -4]
Data_Frame <- Data_Frame[-4,]

# Dimensions and Length
dim(Data_Frame)
length(Data_Frame)
nrow(Data_Frame)
ncol(Data_Frame)
colnames(Data_Frame)
rownames(Data_Frame)
