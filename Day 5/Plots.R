# Day 5: R Graphics

# plot() - a function to plot points 
# syntax - plot(x-axis, y-axis)

plot(1,3) # single point plot

#double point plot
plot(c(1,2),c(1,4))

plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))

x_coor <- c(1,2,3,4,5,6,7,8)
y_coor <- c(1,4,9,16,25,36,49,64)
plot(x_coor, y_coor, type="b")

# ranges can be used to plot a sequence of points
plot(1:10)
plot(1:10:2)

# plot labels
# main - gives title to the plot
# xlab - to label the x-axis
# ylab - to label the y-axis

plot(1:10, main="Fun Plots", xlab="X axis", ylab="Y axis")
plot(1:25, col="blue", type="l")

# Plot sizes
# Use cex=number to change the size of the points (1 is default, while 0.5 means 50% smaller, and 2 means 100% larger)

plot(1:25, cex=6, type="b")

# pch - plot points shape can be changed
#1 - hollow circle 
#2 - hollow triangle , upright
#3 - plus (+)
#4 - cross (X)
#5 - hollow diamond
#6 - hollow triangle, downward
#7 - square with X
#15 & 22- filled square
#16 & 19 - filled circle
#25 - downward filled triangle

plot(1:10, pch=7, cex=2)
