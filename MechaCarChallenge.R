# load library dplyr
library(dplyr)

# import and read MechaCar_mpg.csv
mechacar_mpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# linear regression for all 6 variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg)

# summary of linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg))

