# load library dplyr
library(dplyr)

# import and read MechaCar_mpg.csv
mechacar_mpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# linear regression for all 6 variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg)

# summary of linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg))


#-----------------------------------------


# import and read Suspension_Coil.csv
Suspension_Coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# summary table of PSI column
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# summary table grouped by lot
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


#-------------------------------
# T-Tests on Suspension Coils

#t-test for all manufacturing lots
t.test(Suspension_Coil$PSI, mu=1500)

#t-test for lot 1
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot1"), mu=1500)
#t-test for lot 2
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot2"), mu=1500)
#t-test for lot 3
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot3"), mu=1500)