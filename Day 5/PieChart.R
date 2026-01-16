# Day 5: R Graphics

# Pie chart - A pie chart is a circular graphical view of data.
# drawn using pie() function in anti-clockwise direction

shares <- c(10,20,30,40)

pie(shares)

# Note: The size of each pie is determined by comparing the value with all the other values, by using this formula:
# The value divided by the sum of all values: x/sum(x)

#init.angle - used to change the starting angle of the pie chart

pie(shares, init.angle = 90)

#Labeling the plots

# label - to assign labels to the parts
# main - title for the chart

pie(shares, label=c("Apple", "Banana", "Orange", "Grapes"), main="Fruits")

# col - to assign colors to different parts

colors <- c("red", "yellow", "orange", "green")
mylabel <- c("Apple", "Banana", "Orange", "Grapes")
pie(shares, label=mylabel, main="Fruits", col=colors)

# legend() - add a reference legend to the chart, can be only called after the plot has been called
# bottomright, bottom, bottomleft, left, topleft, top, topright, right, center
legend("bottomright",mylabel, fill=colors)

