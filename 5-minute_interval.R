 ## The 5-minute interval that, on average, contains the maximum number of steps
subset_Max_steps <- which.max(meanMed_per_day$steps)
meanMed_per_day[subset_Max_steps, ]