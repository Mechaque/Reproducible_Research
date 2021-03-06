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

## Histogram of the total number of steps taken each day

totalsInDay <- activityData %>%
   filter(!is.na(steps)) %>%
   group_by(date) %>%
  summarise(steps =sum(steps, na.rm=TRUE))
 hist(totalsInDay$steps, breaks = 25, col = "blue", main = "Total steps", xlab = "total Steps")
 ## Mean and median number of steps taken each day
sumBySteps <- group_by(activityData,date)
head(sumBySteps)

meanMed <- summarize(sumBySteps, total = sum(steps))
summary(meanMed)
 
## Time series plot of the average number of steps taken

meanMed_per_day <- aggregate(steps ~ interval, activityData, mean)
plot(meanMed_per_day$interval, meanMed_per_day$steps,type = "l", main = "average numbe", xlab = "interval", ylab = "average")

 ## The 5-minute interval that, on average, contains the maximum number of steps
subset_Max_steps <- which.max(meanMed_per_day$steps)
meanMed_per_day[subset_Max_steps, ]

## Code to describe and show a strategy for imputing missing data
activityDataSource <- read.table("./activity.csv", sep = ",",header = TRUE)
head(activityDataSource)
sum(is.na(activityDataSource))
mean(is.na(activityDataSource))
activityDataclean <- activityData[with (activityData, { !(is.na(steps))}),]

hist(activityDataclean$steps, main = "Histogram # steps cleaned", xlab = "Total")




