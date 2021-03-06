#Deliverable 1 - Technical Analysis
#Use the library() function to load the dplyr package
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

#Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= mecha_car_mpg)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= mecha_car_mpg))

#Deliverable 2
#import and read in the Suspension_Coil.csv file as a table
suspension_coil <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

#Write an RScript that creates a total_summary dataframe using the summarize() function
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))

#Deliverable 3: T-Tests on Suspension Coils
#write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil$PSI, mu = 1500)

#write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == "Lot1"), mu = 1500)
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == "Lot2"), mu = 1500)
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == "Lot3"), mu = 1500)
