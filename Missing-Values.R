
## Code to describe and show a strategy for imputing missing data
activityDataSource <- read.table("./activity.csv", sep = ",",header = TRUE)
head(activityDataSource)
sum(is.na(activityDataSource))
mean(is.na(activityDataSource))
activityDataclean <- activityData[with (activityData, { !(is.na(steps))}),]

hist(activityDataclean$steps, main = "Histogram # steps cleaned", xlab = "Total")