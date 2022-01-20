rm(list = ls())
# I assumed that you have installed the following R packages. If not, please install 
# them using the R function: install.packages('package_name')
library(olsrr)
library(ggfortify)
library(ggplot2)
library(tidyverse)
library(car)
library(Rcpp)
library(GGally)
library(leaps)
library(matlib)


data1 = read.csv("BtheB.csv")
data2 = read.csv("mtcars.csv")
names(data1)
head(data1)
str(data1)
summary(data1)

#Categorical GraphsBefore
ggplot(data1, aes(x=drug)) + 
  geom_bar(fill = "Blue",width = 0.5)+labs(x = "Drug Use", y = "Frequency") + ggtitle("Patients Taking Anti-Depressants")
ggplot(data1, aes(x=treatment)) + 
  geom_bar(fill = "Red",width = 0.5)+labs(x = "Treatment", y = "Frequency") + ggtitle("Type of Treament")
#Numerical Graph
ggplot(data1, aes(x=bdi.pre)) + 
  geom_histogram(fill = "cornflowerblue",color = "white" ,binwidth = 1)+labs(x = "Pre Beck Depression Inventory Score", y = "Frequency") + ggtitle("Beck Depression Inventory")
#Scatter Plot
ggplot(data1, aes(x=bdi.pre, y = bdi.8m)) + 
  geom_point(color = "steelblue")+labs(x = "Before - bdi.pre ", y = "After- bdi.8m") + ggtitle("Before and After Treatment")



