#Deliverable 1: Linear Regression to Predict MP
#Using your knowledge of R, you’ll design a linear model that predicts the mpg of MechaCar prototypes
#using several variables from the MechaCar_mpg.csv file.

#save working directory for R Challenge
setwd("C:/Users/acega/asu/hw/Mod_15_R/MechaCar_Statistical_Analysis")

library(dplyr)
library(tidyverse)
#import and read as dataframe
MechaCar_mpg <-read.csv('./data/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
view(MechaCar_mpg)

#•	Generate Multiple linear regression model with independent variables
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

#Generate statistical metrics using the summary()function
summary(lm(mpg~vehicle_length + vehicle_weight +
             spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

#Deliverable 2
#import and read as table 
Suspension_Coil <- read.csv('./data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#stat summary with summarize()
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# stat summary wtih group_by()
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% ?summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep')

#Deliverable 3: T-Tests on Suspension Coils 
# t-test for all the lots, population mu = 1500 psi
t.test(Suspension_Coil$PSI,mu=mean(Suspension_Coil$PSI))

# t-test for lot 1
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot1"),mu=mean(Suspension_Coil$PSI))

# t-test for lot 3
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot3"),mu=mean(Suspension_Coil$PSI))



# t-test for lot 2
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot2"),mu=mean(Suspension_Coil$PSI))

