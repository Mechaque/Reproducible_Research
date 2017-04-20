## Histogram of the total number of steps taken each day

totalsInDay <- activityData %>%
   filter(!is.na(steps)) %>%
   group_by(date) %>%
  summarise(steps =sum(steps, na.rm=TRUE))
 hist(totalsInDay$steps, breaks = 25, col = "blue", main = "Total steps", xlab = "total Steps")
 