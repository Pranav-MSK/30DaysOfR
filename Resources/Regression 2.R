trees
x=lm(log(trees$Volume)~log(trees$Height))
summary(x)
x=lm(iris$Sepal.Length~iris$Petal.Length)
install.packages("lmtest")
library(lmtest)
y=lm(iris$Sepal.Length~iris$Petal.Length)
bptest(y)
