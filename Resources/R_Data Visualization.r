#DATA VISUALIZATION

#1. base & graphics package- scatter plot, histogram, boxplot, barplot, abline
#2. ggplot2 package- (grammar of graphics)

#accessing the iris dataset from the datasets package
data(iris)

View(iris)

#understanding the data better
table(iris$Species)

#scatter plot
plot(iris$Petal.Length~iris$Sepal.Length)


#scatter plot with x axis and y axis labels, and also a good main name/title for the plot chart
plot(iris$Petal.Length~iris$Sepal.Length,ylab="Petal length",xlab="Sepal Length",main="Petal Length vs Sepal Length")

#for colored and bold scatters
plot(iris$Petal.Length~iris$Sepal.Length,ylab="Petal length",xlab="Sepal Length",main="Petal Length vs Sepal Length",col="blue",pch=16)

#histogram
hist(iris$Sepal.Width)

#adding more features to histogram
hist(iris$Sepal.Width,xlab="Sepal Width",main="Distribution of Sepal Width",col="aquamarine3")

#boxplot
boxplot(iris$Sepal.Length)

#creating boxplot categorywise
boxplot(iris$Sepal.Length~iris$Species)

#adding more features to boxplot
boxplot(iris$Sepal.Length~iris$Species, ylab="Species", xlab="Sepal Length", main="Boxplot Species-wise", col="burlywood")

#to create barplot
barplot(class$roll, col="blue")

#to create regression line using abline command
abline(lm(Petal.Length~Sepal.Length,data=iris),col="green")
#GGPLOT2: Grammar of graphics
#Syntax: Data, Aesthetics(x-axis,y-axis,fill,colour,shape,size), Geometry(boxplot,histogram,scatterplot), Facet(grouping)

#GGPLOT2

install.packages("ggplot2")
library(ggplot2)

data(iris)

ggplot(data=iris) #will give empty plot

ggplot(data=iris,aes(y=Sepal.Length,x=Petal.Length)) #will give empty plot because we still havent specified the geometry, that is whether we want a boxplot, histogram, scatterplot etc.

ggplot(data=iris,aes(y=Sepal.Length,x=Petal.Length))+geom_point() #geom_point for scatter plot, because scatter plot is also called point plot

ggplot(data=iris,aes(y=Sepal.Length,x=Petal.Length,col=Species))+geom_point() #this will create a scatter plot and will color them Species wise

ggplot(data=iris,aes(y=Sepal.Length,x=Petal.Length,col=Species,shape=Species))+geom_point()

ggplot(data=iris, aes(x=Sepal.Length))+geom_histogram() #basic histogram

ggplot(data=iris, aes(x=Sepal.Length))+geom_histogram(bins=50,fill="palegreen4",col="green") #better looking histogram

ggplot(data=iris, aes(x=Sepal.Length))+geom_freqpoly() #for frequency polygon curve

ggplot(data=iris, aes(x=Sepal.Length))+geom_boxplot() #for boxplot

ggplot(data=iris, aes(x=Sepal.Length))+geom_bar(bins=50,fill="palegreen4",col="green") #for barplot 
