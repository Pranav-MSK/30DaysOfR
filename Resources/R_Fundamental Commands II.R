#R FUNDAMENTAL COMMANDS-II



#how to import/read a .csv or .xlsx extension data file into the R environment

stocks<-read.csv("shares.csv") #to import a shares.csv file from the working directory and save it as an object named stocks in the environment. This command belongs to the 'utils' package.
debt<-read_csv("debentures.csv") #to import a debentures.csv file from the working directory and save it as an object named debt in the environment. This command belongs to the 'readr' package.
write.csv(stocks,"shares.csv") #to save an object called stocks as a shares.csv named file in the working directory. This command belongs to the 'utils' package.
abc<-read.csv("complete url") #to import a .csv extension file from the web. We have to write the complete url address of the file. This command belongs to the 'utils' package.
debt<-read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/00242/ENB2012_data.xlsx") #to import a .csv extension file from the web and save it as an object named debt in the environment.

stocks<-read.xlsx("shares.xlsx") #to import a shares.xlsx file from the working directory and save it as an object named stocks in the environment. This command belongs to the 'openxlsx' package.
debt<-read_excel("debentures.xlsx") #to import a debentures.xlsx file from the working directory and save it as an object names debt in the environment. This command belongs to the 'readxl' package.
write.xlsx(stocks,"shares.xlsx") #to save an object called stocks as a shares.xlsx named file in the working directory. This command belongs to the 'openxlsx' package.
abc<-read.xlsx("complete url") #to import a .xlsx extension file from the web. We have to write the complete url address of the file. This command belongs to the 'openxlsx' package,
debt<-read.xlsx("https://archive.ics.uci.edu/ml/machine-learning-databases/00242/ENB2012_data.xlsx") #to import a .xlsx extension file from the web and save it as an object named debt in the environment.

#CONDITIONAL EXTRACTION: to extract/access data as per certain conditions

#the most natural way to do conditional extraction is through indexing method. In indexing, we specify the row condition followed by column condition in the square brackets. Other commands like 'subset' and 'filter' are also used to do conditional extraction. They would be introduced after the indexing method.

#general conditions for extraction

iris[2,4] #to extract the 2nd row-4th column observation of the iris dataset
ghi<-iris[2,4] #to assign the value of the 2nd row-4th column observation of the iris dataset to an object named 'ghi'

iris[4,] #to extract 4th row of the iris dataset
abc<-iris[4,] #to assign the value of 4th row of the dataset to an object named abc

iris[,3] #to extract 3rd column of the iris dataset
xyz<-iris[,3] #to assign the value of 3rd column of the dataset to an object named xyz

iris[1:3,5:7] #to extract the data from the 1st, 2nd and 3rd row and 5th,6th and 7th column of the dataset

iris[c(1,3,5),c(2,4)] #to extract the data from the 1st, 3rd and 5th row and 2nd and 4th column of the dataset

#specific conditions for extraction

setosa1<-iris[iris$Species=="setosa",] #to extract those observations from the iris dataset whose species is 'setosa' and save it as an object named 'setosa1'. No condition is mentioned for the columns here, so it will show all the columns.

setosa2<-iris[iris$Species=="setosa",c(1,2,5)] #to extract those observations from the iris dataset whose species is 'setosa', and extracting only their 1st, 2nd and 5th column and saving it as an object named 'setosa2'. Here, we have both the row condition and the column condition.

versicolor1<-iris[iris$Species=="versicolor"&iris$Sepal.Length>4,] #here, we have more than one row condition. here, we are extracting those observations whose species is 'versicolor' and their sepal length is greater than 4, and then saving it as an object named 'versicolor1' in the environment.

versicolor2<-iris[iris$Species=="versicolor"|iris$Sepal.Length>4,c(1,5)] #here, again we have more than one row condition but the two conditions have a 'logical or' in between. Here, we are extracting those observations which belong to the 'versicolor' species or whose sepal length is greater than 4. Also, we have a column condition as well, where we are extracting only the 1st and the 5th column and saving all this extraction as an object named 'versicolor2' in the environment.

#'subset' command for conditional extraction. Subset command belongs to the 'base' package.

subset(dataset name,row conditions,column conditions) #syntax of 'subset' command

setosa1<-subset(iris,iris$Species=="setosa",c(1,2,5)) #to create a subset setosa1 from the parent set iris. Row condition is species equal to 'setosa' and column condition is to extract only 1st, 2nd and 5th column.

setosa2<-subset(iris,iris$Species=="setosa"&iris$Sepal.Length>4,) #to create a subset 'setosa2' out of the parent set iris. This subset contains all those observations whose species is 'setosa' and sepal length is greater than 4. Theres no column condition added here.

#'filter' command for conditional extraction. Filter command belongs to the 'dplyr' package, which belongs to the 'tidyverse' universe.

filter(dataset name,row conditions) #syntax of 'filter' command

setosa1<-filter(iris,iris$Species=="setosa"|iris$Sepal.Length>4) #to filter those observations from iris whose species is 'setosa' or whose sepal length is greater than 4, and saving it as an object named 'setosa1' in the environment.

#DATA MODIFICATION

iris[2,3]<-4.9 #to assign a new value 4.9 to the 2nd row 3rd column observation

iris[10,5]<-"virginica" #to assign new character value 'virginica' to the the 10th row 5th column observation

iris[9,]<-list(3,4,7,7,"versicolor") #to assign new values to the 9th row. New values to a row should be assigned using a list because a list can contain heterogenous data.

students[,3]<-c(22,24,21,22,20) #to assign new values to the 3rd column. New values to a column should be assigned using a vector because a vector contains homogenous data like a column.

iris[151,]<-list(3.4,4.0,5.2,6.1,"virginica") #to add a new 151st observation/row in the iris dataset

students$gender<-c("male","male","female","female","female") #to add a new column 'gender' in an existing database object 'students'.

iris<-iris[-10,-5] #to remove 10th observation/row and 5th column from the dataset iris

iris<-iris[c(-10,-19),c(-4,-5)] #to remove 10th and 19th observation and 4th and 5th column from the dataset iris

iris<-iris[-c(10,19),-c(4,5)] #substitute for the above command