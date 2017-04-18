## Mean and median number of steps taken each day
sumBySteps <- group_by(activityData,date)
head(sumBySteps)

meanMed <- summarize(sumBySteps, total = sum(steps))
summary(meanMed)