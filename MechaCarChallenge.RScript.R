library(dplyr)

# Deliverable 1
milespergal <- read.csv(file='./Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # loading mpg dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=milespergal ) # create linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=milespergal)) # summarize linear regression

# Deliverable 2
Suspension_Coil_table <- read.csv(file='./Suspension_Coil.csv',check.names=F,stringsAsFactors = F) # read suspension coil
total_summary <- Suspension_Coil_table %>%  summarize(Mean_PDI=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI),.groups = 'keep')  
lot_summary  <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PDI=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI),.groups = 'keep') #create summary table by Lot
# view(total_summary)
# view(lot_summary)