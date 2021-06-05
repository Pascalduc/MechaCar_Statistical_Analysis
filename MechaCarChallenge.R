# load library dplyr
library(dplyr)

# import and read MechaCar_mpg.csv
mechacar_mpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# linear regression for all 6 variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg)

# summary of linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg))



# confirm linear regression with visualization
# check vehicle_length ***
#create linear model
plt <- ggplot(mechacar_mpg,aes(x=mpg,y=vehicle_length))
plt + geom_point() 
# check vehicle_length p-value 0.078
plt <- ggplot(mechacar_mpg,aes(x=mpg,y=vehicle_weight))
plt + geom_point()
# check spoiler_angle p-value 0.3
plt <- ggplot(mechacar_mpg,aes(x=mpg,y=spoiler_angle))
plt + geom_point()
# check ground_clearance p-value ***
plt <- ggplot(mechacar_mpg,aes(x=mpg,y=ground_clearance))
plt + geom_point()
# check AWD p-value 0.19
plt <- ggplot(mechacar_mpg,aes(x=mpg,y=AWD))
plt + geom_point()