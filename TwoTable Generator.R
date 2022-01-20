rm(list = ls())
#install.packages("vcd")
library(vcd)
mydata <- read.csv("BtheB.csv")
#Read the bdi.pre from BtheB.csv
data1 <- mydata$bdi.pre
summary(data1)
print(sd(data1))

#Frequency table
ggplot(mydata, aes(x=bdi.pre)) + 
  geom_histogram(fill = "cornflowerblue",color = "white" ,binwidth = 1)+labs(x = "Pre Beck Depression Inventory Score", y = "Frequency") + ggtitle("Beck Depression Inventory")





