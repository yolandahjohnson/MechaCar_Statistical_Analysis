# MechaCar_Statistical_Analysis

## Purpose

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

### RScript for a linear regression model performed on all six variables

![linear regression](https://user-images.githubusercontent.com/100816778/176944635-d46a229a-c026-4918-9b7d-412c52ecd0fe.png)

### RScript for statistical summary of the linear regression model with the intended p-values

![summary of linear regression](https://user-images.githubusercontent.com/100816778/176944688-4e7a22c4-23ca-472a-bbed-14477fe5533c.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Is the slope of the linear model considered to be zero? Why or why not?
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The variables/coefficients that provided a non-random amount of variance to the mpg values ar the vehicle length and ground clearance. Their individual p-values, 2.60e-12 and 5.21e-08 respectively, fall well below the .05 significance level. This would indicate that they have significant impact on fuel efficiency. The slope of the linear model is not considered to be zero. At a p-value of 5.35e-11, it to falls well below the .05 significance level. This multiple linear model does predict mpg of MechaCar prototypes effectively in that it has a multiple R-squared value of 0.7149. This indicates that the model explains approximately 71% of the variability.

## Summary Statistics on Suspension Coils

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

### Total_Summary
![total_summary](https://user-images.githubusercontent.com/100816778/176962176-79fa3b3b-bfc6-41a8-8432-64d91d386597.png)
### Lot_Summary
![lot_summary](https://user-images.githubusercontent.com/100816778/176962193-053b750e-db6e-4e5c-9dcc-9f4b76bca261.png)

Overall, the total summary shows that the variance is less than 100 PSI at 62 PSI. However, with the individual lots, Lot3 has a variance well over 100 PSI at 170 PSI.

## T-Tests on Suspension Coils

### Supsension Coils T-test for all Manufacturing Lots
![t-test suspension coils](https://user-images.githubusercontent.com/100816778/176976030-b7b1e032-f8e8-4419-bfdd-2f032c0d701f.png)

With a p-value of 0.06 there is not enough evidence to support rejecting the null hypothesis. The mean of all manufacturing lots is statistically similar to the population mean of 1,500 PSI.

### T-test Suspension Coils Lot1
![t-test suspension coils Lot1](https://user-images.githubusercontent.com/100816778/176976046-ff5d073a-29e0-48c5-9238-93a74a96bde7.png)

With a p-value of 1, there is no evidence to support rejecting the null hypothesis. The mean of all manufacturing lots is statistically similar to the population mean of 1,500 PSI.

### T-test Suspension Coils Lot2
![t-test suspension coils Lot2](https://user-images.githubusercontent.com/100816778/176976060-67801cbe-9a49-4950-9831-a7a1f53f9c80.png)

With a p-value of 0.61 , there is no evidence to support rejecting the null hypothesis. The mean of manufacturing lot2 is statistically similar to the population mean of 1,500 PSI.

### T-test Suspension Coils Lot3
![t-test suspension coils Lot3](https://user-images.githubusercontent.com/100816778/176976070-83d92bff-c69e-44cb-bd80-0113800789a1.png)

With a p-value of 0.04 and a sample mean value of 1496.14, both are slightly lower than the significance level of 0.05 and the population mean of 1,500. There is evidence to reject the null hypothesis.

## Study Design: MechaCar vs Competition

### How does MechaCar perform against the competition?
To determine this, metrics that would be of interest to a consumer are , cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

#### What metric or metrics are you going to test?
With the rise in fuel cost, I would test city fuel efficiency and highway fuel efficiency, as well as cost.

#### What is the null hypothesis or alternative hypothesis?
Comparing MechaCar cost and city and highway fuel efficiency with the competition, the null hypothesis will be that the comparisons don't vary significantly. The alternative hypothese will be that there is significant difference in comparison between MechaCAr and the competition.

#### What statistical test would you use to test the hypothesis? And why?
I would use the multiple



