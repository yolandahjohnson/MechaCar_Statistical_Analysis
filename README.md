# MechaCar_Statistical_Analysis

## Purpose

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

### Linear Regression to Predict MPG

#### RScript for a linear regression model performed on all six variables

![linear regression](https://user-images.githubusercontent.com/100816778/176944635-d46a229a-c026-4918-9b7d-412c52ecd0fe.png)

#### RScript for statistical summary of the linear regression model with the intended p-values

![summary of linear regression](https://user-images.githubusercontent.com/100816778/176944688-4e7a22c4-23ca-472a-bbed-14477fe5533c.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Is the slope of the linear model considered to be zero? Why or why not?
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The variables/coefficients that provided a non-random amount of variance to the mpg values ar the vehicle length and ground clearance. Their individual p-values, 2.60e-12 and 5.21e-08 respectively, fall well below the .05 significance level. This would indicate that they have significant impact on fuel efficiency. The slope of the linear model is not considered to be zero. At a p-value of 5.35e-11, it to falls well below the .05 significance level. This multiple linear model does predict mpg of MechaCar prototypes effectively in that it has a multiple R-squared value of 0.7149. This indicates that the model explains approximately 71% of the variability.

### Summanry Statistics on Suspension Coils

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

#### Total_Summary
![total_summary](https://user-images.githubusercontent.com/100816778/176962176-79fa3b3b-bfc6-41a8-8432-64d91d386597.png)
#### Lot_Summary
![lot_summary](https://user-images.githubusercontent.com/100816778/176962193-053b750e-db6e-4e5c-9dcc-9f4b76bca261.png)

Overall, the total summary shows that the variance is less than 100 PSI at 62 PSI. However, with the individual lots, Lot3 has a variance well over 100 PSI at 170 PSI.

