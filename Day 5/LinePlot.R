#Day 5: R Graphics

#Line Plot - a line graph has a line that connects all points in a diagram

# simple line plot
plot(1:10, type="l")
plot(1:10, type="l", col="green")

#lwd - line width
# (1 is default, while 0.5 means 50% smaller, and 2 means 100% larger)

plot(1:10, type="l", col="yellow", lwd=1)


# lty - line styles
#lty parameter with a value from 0 to 6 to specify the line format.
#0 removes the line
#1 displays a solid line
#2 displays a dashed line
#3 displays a dotted line
#4 displays a "dot dashed" line
#5 displays a "long dashed" line
#6 displays a "two dashed" line

plot(1:10, type="l", lwd=5, lty=3)
plot(1:10, type="l", lwd=5, lty=)

# multiple lines
# to display multiple lines, use lines() function
#lines() function adds another line to the existing plot

plot(c(1,2,3,4,5,10), type="l", col="red")
lines(c(1,3,6,7,8,10), type="l", col="blue")

