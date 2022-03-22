## DATA VISUALIZATION. Data visualization is a must have skill 
# of a data scientist/analyst as it gives insights to dataset.


####Using the diverse functionalities provided by R, one 
#can create visually appealing
#data visualizations with only a few lines of code.
#Data visualization is an 
#efficient technique of gaining insights about data 
#through a visual medium.

#With the help of visualization techniques, 
#we can easily gain insights about the 
#hidden patterns in a data which might otherwise be neglected. 
#Using data visualization, one can work with 
#large data sets to efficiently obtain key 
##insights about it.


###### Tips for selecting the right chart type
###1. Comparism
###2. Composition
###3. Distribution
###4. Relationship

## The following are the most used charts in 
#data visualization and when to use them

##1. Scatterplot: To see the relationship between
#two continuous variables

##2. Histogram: A histogram is used to plot a
#continuous variable. Also, it
##helps to break the data into bins and shows 
#the frequency distribution of 
#the bins. Thus, we can always change the bin size 
#and see the effect it has on visualization.

##3. Box plot: Box plots are used to plot an 
#aggregation of categorical and continuous variables. 
#It is also used for visualizing the spread of the data
#and detect the outliers. Moreover, 
#it shows five statistically significant numbers, viz: 
# Minimum, 
#25th Percentile, 
# median(50th percentile), 
#75th percentile
##and maximum.


###4.Area Charts: we use it to show continuity across 
# a variable or dataset. It is almost same 
#as line chart. Also we can use it for time series plots. 
#We can use it alternatively
##to plot continuous variables and analyse the underlying trends


##5. Heat Map: We use it for the intensity of colours. 
#It is also used to display
#the relationship between two or more variables 
#in a two-dimensional image.


##6. Bar Charts: we use bar charts to plot
# categorical and continuous variables


###ScatterPlot####



library(ggplot2)

?iris

data(iris)

data(diamonds)



head(iris) ##head gives you the first 6 rows



unique(iris$Species)



head(diamonds)


unique(diamonds$cut)



unique(diamonds$clarity)



unique(diamonds$color)


str(iris)



str(diamonds)

### Using base Scatterplots-this is the visualization 
# of correlation



plot(Sepal.Length~Sepal.Width, data = iris)



cor(iris$Sepal.Length, iris$Sepal.Width)


###Using ggplot scatterplot


ggplot(data=iris)+geom_point(mapping=aes(Sepal.Length, 
                                         Sepal.Width))


ggplot(data=iris)+geom_point(mapping=aes(Sepal.Length, 
                    Sepal.Width, color = Species))


####Histogram

##base histogram

hist(diamonds$carat, main = "Carat Histogram", 
     xlab = "Carat")


##ggplot histogram

ggplot(data = diamonds) + geom_histogram(aes(x = carat))



ggplot(iris, aes(Sepal.Width))+geom_histogram()


###adjust binwidth
##change the width of the histogram bins


ggplot(iris, aes(Sepal.Width))+ 
  geom_histogram(binwidth = 0.01)


###Color by species##


ggplot(iris, aes(Sepal.Width, fill=Species,  
                 color=Species))+geom_histogram()



##A similar display is the density plot, 
#which is done by changing 
##geom_histogram to geom_density.

```{r}
ggplot(data = diamonds)+geom_density(aes(x = carat))
```

####Bar Charts###

###Base bar charts


barplot(table(iris$Species), main = "Iris Species",
        xlab = "Samples/species", horiz=T)





barplot(table(iris$Species), main = "Iris Species",
        xlab = "Samples/species")

###ggplot bar chart###


ggplot(data=diamonds)+geom_bar(mapping = aes(x=color))


###fill with colors

ggplot(data=diamonds)+geom_bar(mapping=aes(x=clarity, 
                              fill=clarity))


###color on the basis of two quantitative variables


ggplot(data=diamonds)+geom_bar(mapping=aes(x=cut, fill=color))
##stacked bar


###Boxplot

boxplot(diamonds$carat)


###ggplot box plot

ggplot(diamonds, aes(y=carat, x=cut))+geom_boxplot()
##to see the distribution of the cut


###violin plot
##they are similar to boxplots except that the box are curved, giving a sense
#of the density of the data. This provides more information than the sides of 
#of the ordinary data


ggplot(diamonds, aes(y=carat, x=cut))+geom_violin()


###Line graph

?economics



data("economics")



head(economics)




ggplot(economics, aes(x=date, y=pop))+geom_line()



ggplot(iris, aes(x=Sepal.Length, y=Petal.Length))+geom_line()

