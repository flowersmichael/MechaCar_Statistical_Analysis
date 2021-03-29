library(dplyr)

# Deliverable 1
milespergal <- read.csv(file='./Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # loading mpg dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=milespergal ) # create linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=milespergal)) # summarize linear regression

# Deliverable 2
Suspension_Coil_table <- read.csv(file='./Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F) # read suspension coil
total_summary <- Suspension_Coil_table %>%  summarize(Mean_PDI=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI),.groups = 'keep')  
lot_summary  <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PDI=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI),.groups = 'keep') #create summary table by Lot
# view(total_summary)
# view(lot_summary)

# Deliverable 3 - T-Tests on Suspension Coils

# Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots
# is statistically different from the population mean of 1,500 pounds per square inch.
t.test(x=Suspension_Coil_table$PSI, mu=1500) # t-test for all cars against 1,500 PSI

# An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population (10 pt)
# create a subset for each manufacturing lot_summary
Lot1test <- subset(Suspension_Coil_table, Manufacturing_Lot=='Lot1')  # Lot1 cars
t.test(x=Lot1test$PSI, mu=1500) # t-test on lot 1 cars' vs PSI with a mean of 1500

Lot2test <- subset(Suspension_Coil_table, Manufacturing_Lot=='Lot2')  # Lot2 cars
t.test(x=Lot2test$PSI, mu=1500) # t-test on lot 2 cars' vs PSI with a mean of 1500

Lot3test <- subset(Suspension_Coil_table, Manufacturing_Lot=='Lot3')  # Lot3 cars
t.test(x=Lot3test$PSI, mu=1500) # t-test on lot 3 cars' vs PSI with a mean of 1500

