#DESCRIPTIVE STATISTICS



#descriptive statistics has two elements- central tendency & measures of dispersion 
data(iris)
View(iris)

#central tendency
mean(iris$Petal.Length)
median(iris$Petal.Length)

#measures of dispersion
range(iris$Petal.Length) #range= Max-Min.
IQR(iris$Petal.Length) #inter-quartile range=3rd Quartile-1st Quartile
sd(iris$Petal.Length) #standard deviation
var(iris$Petal.Length) #variance

#summary command under base R package
summary(iris$Petal.Length) #Mean,Median,1stQuartile,3rdQuartile,Max.,Min.

#normality of data
hist(iris$Sepal.Length)
qqnorm(iris$Sepal.Length) #quantile-quantile plot
qqline(iris$Sepal.Length) #quantile-quantile plot with line
ks.test(iris$Sepal.Length,'pnorm') #kolmogorov-smirnov test #test is used to decide if a sample comes from a population with a specific distribution #stats package
shapiro.test(iris$Sepal.Length) #Shapiro-Wilk normality test #stats package

#example
rnorm(200) #command to create a random sample of 200 observations from a normally distributed data 
normal_data<-rnorm(200)
hist(normal_data)
qqnorm(normal_data)
qqline(normal_data)
ks.test(normal_data,'pnorm')
shapiro.test(normal_data)

#special 'tseries' package for checking normality
install.packages("tseries")
library(tseries)
jarque.bera.test(iris$Sepal.Length) #jarque-bera test #testing for normality through checking the skewness and kurtosis
adf.test(iris$Sepal.Length) #augmented dickey-fuller test #testing for normality
#special 'nortest' package for checking normality
install.packages("nortest")
library(nortest)
ad.test(iris$Sepal.Length) #anderson-darling test #testing for normality

#correlation
cor(iris$Sepal.Length,iris$Sepal.Width,use="everything",method="pearson")
cor(iris$Sepal.Length,iris$Petal.Length,method="pearson")


