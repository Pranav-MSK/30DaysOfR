#LINEAR REGRESSION



#Linear regression is a data analysis technique that predicts the value of one dependent variable with the help of other related independent variables. It mathematically models the unknown or dependent variable and the known or independent variable/s as a linear equation.
#By linearity, we mean linearity in parameters and not in variables. That is the parameters have power 1, variables not necessarily.

#1 bivariate regression (simple regression)
#two variable regression, that is one dependent and one independent/explanatory variable
#Y=beta0+beta1*X, where Y is dependent variable and X is explanatory variable, beta0 is intercept coefficient estimator and beta1 is slope coefficient estimator
#estimators of beta0 and beta1 are called the OLS estimators, OLS stands for ordinary least squares
#to calculate the ols estimators, the following linear model regression command is there:
>lm(datasetname$Y~datasetname$X) #linear model regression
#the output will give the intercept and the slope coefficient estimators, that is beta0 and beta1 OLS estimators
#to get a summary of this linear model regression result
>name<-lm(datasetname$Y~datasetname$X)
>summary(name)
#1 hypothesis testing
#to test the null hypothesis that explanatory variable X has no linear effect on dependent variable Y, that is beta1 is 'zero' we use the test statistic from the summary
#if the p-value(probability value) lies between 0 and 0.05, we reject the null hypothesis that beta1 is 'zero', otherwise we do not reject the null hypothesis
#if we reject the null hypothesis, we say with 95% confidence that the null hypothesis that beta1 being equal to 'zero' does not stand, that we say with 95% confidence that explanatory variable X does have some linear relationship with dependent variable Y
#similarly, to test the null hypothesis that intercept coefficient beta0 is equal to 'zero', we could use it's p-value and do the similar analysis we did with the previous null hypotheses
#to measure the 'goodness of fit', to see how good our model fits the data that is to see how well the explanatory variables explain the variation in the dependent variable we use the 'Adjusted-R Square' statistic given in the summary. 
#It's value ranges between 0 and 1. The closer it is to 1, the better is our model in explaining the variation in dependent variable. The closer it is to 0, we need to re-look into our model. 

#2 multivariate regression (multiple regression)
#when there is one dependent variable and more than one explanatory variables
#example, Y=beta0+beta1*X1+beta2*X2 (total three variables in this case, we could have more explanatory variables as well)
#estimators of beta0(intercept parameter), beta1(partial slope parameter for X1) and beta2(partial slope parameter for X2) are called the OLS estimators
#partial slope coefficients mean the change in dependent variable when there is a unit change in one independent variable given the other independent variables are kept constant
#to calculate these OLS estimators in multiple regression, the following linear model regression command is there:
>name<-lm(datasetname$Y~datasetname$X1+datasetname$X2)
>summary(name)
#2 hypothesis testing
#just like we did in simple regresion, the null hypothesis that beta0 is 'zero', or beta1 is 'zero' that is partial slope coefficient of variable X1 is 'zero', or beta2 is 'zero' could be tested here as well
#using their corresponding p-values, we could test these different null hypothesis
#Similarly, Adjusted-R Square could be used to measure the 'goodness of fit'

#3 dummy variables
#dummy variables are introduced when we have qualitative independent variables. A dummy variable can only take binary values 0 & 1. 
#If we have a qualitative variable which has n categories/qualities, then we have to introduce n-1 dummy variables to represent the same.
#for example, 'iris' dataset has a qualitative variable called 'Species' which has three types/qualities- 'setosa','versicolor' & 'virginica'. To represent these three qualities, we have to introduce 2 dummy variables D1 and D2. Lets say D1 takes value 1 when species is versicolor and 0 otherwise, and D2 takes value 1 when species is virginica and 0 otherwise. Then if we regress dependent variable Sepal.Length(Y) on species that is, Y = beta0 + beta1*D1 + beta2*D2, then intercept coefficient beta0 gives the average Sepal.Length of species setosa, beta0+beta1 gives the average Sepal.Length of species versicolor, and beta0+beta2 gives the average Sepal.Length of species virginica.
#beta1 in dummy variables gives the differential and not the slope/partial slope.
#Y = beta0 + beta1*D1 + beta2*D2
#3 hypothesis testing
#hypothesis testing in dummy variables is done pretty much the same way as in the case of a normal regression
#its just, here in dummy variables we test whether the differential beta1 is zero or not. Differential 'beta1 is zero' means, that the average Sepal.Length of setosa species and versicolor species is the same. This is the null hypothesis that we are testing here, that is whether the average Sepal.Length differential between setosa and versicolor is zero or not.
#same goes for beta2 differential.
