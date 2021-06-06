# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![LinRegSummary](Resources/LinRegSummary.png)


For this analysis we performed a linear regression using R’s `lm()` and `summary` functions to see if fuel efficiency in miles per gallon (mpg) can be predicted using a linear model. Multiple vehicle variables (length, weight, spoiler angle, ground clearance and drivetrain) were compared to the mpg variable. 

•	When looking at the p-value, we see that the vehicle length and the ground clearance have non-random amount of variance to the mpg values due to their respective p-values of 2.6e-12 and 5.2e-09, which are well below 0.05 standard threshold and even below a more stringent threshold of 0.001. 

•	With p-value this low, we can have a high level of confidence the slope of the linear model is not equal to zero, therefore the null hypothesis is not true.

•	The r-squared value of 0.7149 tells us there are about 71.5% chance for extrapolated data to fit the model.


