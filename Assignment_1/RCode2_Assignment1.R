###########################
# R-File for Assignment 1 dealing with dataset 1 (Hair and Eye Color)
###########################

#Find a full list of pre-installed datasets here
#https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html

#Set working directory Christopher
setwd("C:/Users/Christopher/OneDrive/Dokumente/Studium/Hertie School of Governance/Courses/Fall 2015/Collaborative Data Analysis/Project 1")

#Load student hair and eyecolor data and pass it into a dataframe
data("HairEyeColor")
HairEyeColor_dataframe <- data.frame(HairEyeColor)
