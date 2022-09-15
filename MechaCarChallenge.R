#Deliverable 1: Linear Regression to Predict MP
#save working directory for R Challenge
setwd("C:/Users/acega/asu/hw/Mod_15_R/MechaCar_Statistical_Analysis")

library(dplyr)
MechaCar_mpg <-read.csv('./data/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
