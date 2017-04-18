# Loading Data for the project
#packadge 

install.packages("dplyr")
library(dplyr)

getwd()
 setwd("E:/DScience/Reproducible_Research/Week2/Project-Assignment")
dir()


activityData <- read.table("./activity.csv", sep = ",",header = TRUE)
activityData <- activityData[with (activityData, { !(is.na(steps))}),]


head(activityData)