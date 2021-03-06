### Module 15 Challenge: MechaCar_Statistical_Analysis

## Deliverable 1

# 1. Download the MechaCar_mpg.csv file, and place it in the active directory. 

# 2. Create a new RScript in your R source pane, name it 
#MechaCarChallenge.RScript, and save it to your active directory.

# 3. Use the library() function to load the dplyr package.
library(dplyr)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_MPG <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# 5. Perform linear regresson using the lm() function In the lm() function, pass in all six variables (i.e., columns), 
#and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
   data = MechaCar_MPG)

# 6. Using the summary() function, determine the p-value and the r-squared value
# for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
           data = MechaCar_MPG))

## Deliverable 2

# 1. Download the Suspension_Coil.csv, and replace it in the active directory.

# 2. Import and read in the Suspension_Coil.csv file as a table.
Suspension_Coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

# 3. Write an RScript that creates a total_summary dataframe using the summarize()
# function to get the mean, mean, variance, and standard deviation of the suspension coil's PSI column.
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), 
  Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# 4. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median,
# variance, and standard deviation of suspension coil's PSI column.
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# 5. Save your MechaCarChallenge.RScript file to your GitHub repository.

## Deliverable 3

# 1. In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different
# from the population mean of 1,500 pouds per square inch.
t.test(Suspension_Coil$PSI, mu = 1500) 

# 2. Write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing 
# lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
# 3. Save your MechaCarChallenge.RScript file to your GitHub repository.