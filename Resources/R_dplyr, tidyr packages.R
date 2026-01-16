data(iris)

#dplyr package
#pipe operator
setosa1<-iris%>%filter(Species=="setosa")

versicolor1<-filter(iris,Species=="versicolor")

str(iris)

#factor #to convert a categorical variable into a factor so that categorical analysis/summarisation becomes easy
factor(iris$Species)

fct_count(iris$Species)

#groupby #summarise
iris%>%group_by(Species)%>%summarise(med<-median(Sepal.Length))

country<-c("nepal","srilanka","bangladesh")
decade1<-c(2107,2203,3210)
decade2<-c(2456,2239,3198)
data1<-data.frame(country,decade1,decade2)

#tidyr package
#pivotlonger #pivotwider
data2<-data1%>%pivot_longer(c('decade1','decade2'),names_to="period",values_to="accidents")

data3<-data2%>%pivot_wider(names_from=period,values_from=accidents)

factor(data2$country)

data2%>%group_by(country)%>%summarise(avg<-mean(accidents))
