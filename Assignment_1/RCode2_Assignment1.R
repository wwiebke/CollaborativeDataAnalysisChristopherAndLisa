############
# R-File 1 for Assignment 1 analyzing dataset 2 (HairEyeColor)
# Christopher Cosler and Lisa Schmid
# Updated September 30, 2015
# The results are used and described in the presentation slides of Assignment 1
# Formatted according to Google style guide
###########

#Load student hair and eyecolor data and pass it into a dataframe
data("HairEyeColor")
HairEyeColorData <- data.frame(HairEyeColor)

###########
# Descriptive statistics
###########
x <- apply(HairEyeColor, c(1, 2), sum)
x
sum(x)

# Mosaique Plot
fill_colors <- colors()[c(56,130,146,230)]
mosaicplot(x, main = "Relationship between hair and eye color", 
           color=fill_colors)



#############################################
# Citation of Software:

# R Core Team (2015). R: A language and environment for
# statistical computing. R Foundation for Statistical Computing,
# Vienna, Austria. URL https://www.R-project.org/.
