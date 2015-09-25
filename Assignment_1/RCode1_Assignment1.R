###########################
# R-File for Assignment 1 dealing with dataset 1 (WWWusage)
###########################

# Copyright statement comes here
# Author comment
# File descritpion comment, including purpose of program, inputs and outputs


# Formatted accirding to google style guide
#Load libraries
library(ggplot2)
#Find a full list of pre-installed datasets here
#https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html

#Set working directory Christopher
setwd("C:/Users/Christopher/Google Drive/Collaborative Data Analysis/CollaborativeDataAnalysisChristopherAndLisa/Assignment_1")

#Load Internet Usage per Minute Data and pass it into a dataframe
data("WWWusage")  # Load data
?WWWusage  # Describe data
data <- data.frame(WWWusage)  # Putting it into a data frame can't hurt

#Adding time can't hurt either
data$time <- c(1:100)

#######################
#Descirptive statistics
#######################

#Plot Internet usage
p1 <- plot(type ="l", data$time, data$WWWusage, main="Number of users connected to the Internet 
  through a sever every minute", 
  lwd=2, col="blue", ylab="Number of users",xlab="Time in minutes")

#Look at specific parts of the time series which allows for rescaling
WWWusage.first10 <- data$WWWusage[1:10]
plot(WWWusage.first10, type="l", main="Difference in number of users connected to the Internet 
  through a sever every minute", 
  lwd=2, col="blue", ylab="Difference",xlab="Time in minutes")

#Plot difference in interet usage
WWWusage.diff <- diff(data$WWWusage) 
plot(type = "l", WWWusage.diff, main="Difference in number of users connected to the Internet 
  through a sever every minute", 
  lwd=2, col="blue", ylab="Difference",xlab="Time in minutes")

#Take logs of time series and plot
WWWusage.log <- log(data$WWWusage)
plot(WWWusage.log, main="Difference in number of users connected to the Internet 
  through a sever every minute", 
  lwd=2, col="blue", ylab="Difference",xlab="Time in minutes")

#calculate mean and plot together with WWWusage, also let's try ggplot2
WWWusage.mean <- NA  # Create vector to avoid mistakes
WWWusage.mean[1:100] <- mean(data$WWWusage)  # Put mean of internet usage in there 100 times
data <- cbind(data, WWWusage.mean)  # bind it to dataframe
#p <- ggplot() +
#  geom.line(data = data, aes(x = time, y = WWWusage)) +
#  geom.line(data = data, aes(x = time, y = WWWusage.mean))
  
#print(p1)