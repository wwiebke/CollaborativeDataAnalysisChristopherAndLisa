############
# R-File 1 for Assignment 1 dealing with dataset 1 (WWWusage)
# Christopher Cosler and Lisa Schmit
# Updated 29. September 2014
# The results are used and described in the presentation slides of Assignment 1
# Formatted according to Google style guide
###########

#Load libraries
library(ggplot2)

#Load Internet Usage per Minute Data and pass it into a dataframe
data("WWWusage")
data <- data.frame(WWWusage)

#Adding time as a vector to the dataframe
data$time <- c(1:100)

###########
# Descriptive statistics
###########

# Plot Internet usage, give titel and label axis appropriatly
plot(type ="l", data$time, data$WWWusage, main="Number of users connected to the Internet 
  through a server every minute", 
  lwd=2, col="blue", ylab="Number of users",xlab="Time in minutes")

# Plot specific parts of the time series which allows for rescaling, 
# in this case the first 10 observations
plot(WWWusage[1:10], type="l", main="Difference in number of users connected to the Internet 
  through a server every minute", 
  lwd=2, col="blue", ylab="Difference",xlab="Time in minutes")

# Take logs of time series and plot
WWWusage.log <- log(data$WWWusage)
plot(WWWusage.log, main="Difference in number of users connected to the Internet 
  through a sever every minute", 
  lwd=2, col="blue", ylab="Difference",xlab="Time in minutes")

# Plot difference in Interet usage
WWWusage.log.diff <- diff(WWWusage.log) 
plot(type = "l", WWWusage.log.diff, main="Difference in number of users connected to the Internet 
     through a server every minute", 
     lwd=2, col="blue", ylab="Difference",xlab="Time in minutes")

# calculate mean and plot together with WWWusage 
WWWusage.mean <- NA  # Create vector
WWWusage.mean[1:100] <- mean(data$WWWusage)  # Put mean of Internet usage in there 100 times
data <- cbind(data, WWWusage.mean)  # bind it to dataframe

plot(type ="l", WWWusage.mean, main="Number of users connected to the Internet 
  through a sever every minute and mean of time series", 
     lwd=2, col="blue", ylab="Number of users",xlab="Time in minutes")
lines(data$time, data$WWWusage, col="green")

# Lowest and highest value
WWWusage.min <- min(data)
WWWusage.max <- max(data)
