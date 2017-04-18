## Time series plot of the average number of steps taken

meanMed_per_day <- aggregate(steps ~ interval, activityData, mean)
plot(meanMed_per_day$interval, meanMed_per_day$steps,type = "l", main = "average numbe", xlab = "interval", ylab = "average")