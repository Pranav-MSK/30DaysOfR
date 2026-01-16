# Day 5 : R Graphics

# Bar charts are rectangular bars used to visualize data.
#  created using barplot() function
# names.arg parameter - defines the names of each observation in the x-axis
# Syntax - barplot(H,xlab,ylab,main, names.arg,col)

x<- c("Sci", "Math","Eng", "Lang", "SST")
y <- c(3,4,7,6,8)
barplot(y, names.arg=x)

# col parameter - to change the color of the bars
barplot(y, names.arg=x, col="lightgreen")

#density parameter - to change the bar texture
barplot(y, names.arg=x, density=10,col="powderblue")

#width parameter - to change the bar width
barplot(y, names.arg=x, width=y/sum(y))

#horiz paramter = TRUE - for horizontal bars
barplot(y, names.arg= x, horiz=TRUE)

barplot(y, xlab="Subjects", ylab="Grade Points", main="Grade Points per Subject", names.arg=x, col="green", density=10)

#border paramter - to change color of the bar's border
barplot(y, xlab="Subjects", ylab="Grade Points", main="Grade Points per Subject", names.arg=x, col="green", density=10, border="red")


# Group Bar Chart and Stacked Bar Chart
# can be done using matrix as input values

# Create the input vectors.
colors = c("green","orange","red")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")

# Create the matrix of the values.
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3, ncol = 5, byrow = TRUE)

# Create the bar chart
barplot(Values, main = "total revenue", names.arg = months, xlab = "month", ylab = "revenue", col = colors)

# Add the legend to the chart
legend("topleft", regions, cex = 1, fill = colors)
