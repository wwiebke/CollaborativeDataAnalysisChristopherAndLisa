###########################
# R-File for Assignment 1 dealing with dataset 1 (WWWusage)
###########################

#Find a full list of pre-installed datasets here
#https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html

#Set working directory Christopher
setwd("C:/Users/Christopher/OneDrive/Dokumente/Studium/Hertie School of Governance/Courses/Fall 2015/Collaborative Data Analysis/Project 1")

#Load Internet Usage per Minute Data and pass it into a dataframe
data("WWWusage")
WWWusage <- WWWusage #No need to load it into a dataset, only one varibale
?WWWusage

#######################
#Descirptive statistics
#######################

#Plot Internet usage
plot(WWWusage, main="Number of users connected to the Internet 
     through a sever every minute", 
     lwd=2, col="blue", ylab="Number of users",xlab="Time in minutes")

#Look at specific parts of the time series which allows for rescaling
WWWusage_first10 <- WWWusage[1:10]
plot(WWWusage_first10, type="l", main="Difference in number of users connected to the Internet 
     through a sever every minute", 
     lwd=2, col="blue", ylab="Difference",xlab="Time in minutes")

#Plot difference in interet usage
WWWusage_diff <- diff(WWWusage) 
plot(WWWusage_diff, main="Difference in number of users connected to the Internet 
     through a sever every minute", 
     lwd=2, col="blue", ylab="Difference",xlab="Time in minutes")

#Take logs of time series and plot together with diff
WWWusage_log <- log(WWWusage)
plot(WWWusage_log, main="Difference in number of users connected to the Internet 
     through a sever every minute", 
     lwd=2, col="blue", ylab="Difference",xlab="Time in minutes")

