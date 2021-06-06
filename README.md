# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![LinRegSummary](Resources/LinRegSummary.png)


For this analysis we performed a linear regression using R’s `lm()` and `summary` functions to see if fuel efficiency in miles per gallon (mpg) can be predicted using a linear model. Multiple vehicle variables (length, weight, spoiler angle, ground clearance and drivetrain) were compared to the mpg variable. 

•	When looking at the p-value, we see that the vehicle length and the ground clearance have non-random amount of variance to the mpg values due to their respective p-values of 2.6e-12 and 5.2e-09, which are well below 0.05 standard threshold and even below a more stringent threshold of 0.001. 

•	With p-value this low, we can have a high level of confidence the slope of the linear model is not equal to zero, therefore the null hypothesis is not true.

•	The r-squared value of 0.7149 tells us there are about 71.5% chance for extrapolated data to fit the model.


## Summary Statistics on Suspension Coils

![total_summary](Resources/total_summary.png)

![lot_summary](Resources/lot_summary.png)

For the suspension coil analysis, we created a statistic summary using the `summarize` function, where we obtain the mean, median, variance and standard deviation. To obtain statistics by lot, we first grouped by manufacturing lot, then use the same summarize function.

•	According to manufacturing standard for the suspension coils, the variance must not exceed 100 pounds per square inch (PSI). When we look at the total summary, the variance is equal to 62.29, so we could say the suspension coils are manufactured to standard.

•	When we look at the variance for each lot, we notice a value of 170.29 for lot #3, which is above specification and should be rejected. Although, if we dig a little deeper, we see the minimum value for lot # 3 is 1452 and the maximum value is 1542. Since the variance is the average of the squared differences from the mean, a few outliers and low sample number can have great effects.



