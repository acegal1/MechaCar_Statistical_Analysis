# MechaCar_Statistical_Analysis

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. The data analytics team is tasked to review the production data for insights that may help the manufacturing team.

# Overview of Project
The data analytics team has been tasked to do the following:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings

# Resources
R Programming Language, RStudio and Statiscs
Data sources: MechaCar_mpg.csv, Suspension_Coil.csv

# Linear Regression to Predict MPG
The MechaCar dataset contains a sample size of 50 prototypes measuring the miles per gallon across multiple variables. The linear regression was calculated using R in RStudio.

![lm_mpg](https://github.com/acegal1/MechaCar_Statistical_Analysis/blob/main/images/lm_mpg.jpg)


# Summary of Linear Regression model
A summary of the linear regression can be displayed to determine the quality of the dataset. In this distribution of the residuals, the dataset fits in with the normal parameters, where the absolute value of the min and max are comparable |-19.47|~|18.58| and the median -.07 is close to zero.

![mpg_summary](https://github.com/acegal1/MechaCar_Statistical_Analysis/blob/main/images/mpg_summary.jpg)

A 95% level of confidence was predetermined, meaning the p-value should be compared to alpha = .05 level of significance to verify if statistically significant. Coefficients:

In summary, vehicle length and ground clearance variables represent non-random amounts of variance as applied to the mpg values.

The multiple linear regression formula for mpg = -.01 + 6.267(vehicle length)+.001(vehicle weight)+.069(spoiler angle)+3.546(ground clearance)-3.411(AWD), which results in a non-zero slope.

R-squared is .7149, which is a strong correlation for the dataset and shows the dataset is an effective dataset. However, r-squared is not the only consideration for effectiveness. There may be other variables not included in the dataset contributing to the variation in the mpg.


# Summary statistics on the pounds per square inch (PSI) of Suspension Coils 

Below is the total_summary or combined statistics on all the manufacturing lots. The mean is 1498.78 for this sample and the population mean was determined to be 1500.

![2_total_sumstats](https://github.com/acegal1/MechaCar_Statistical_Analysis/blob/main/images/2_total_sumstats.jpg)

Below is the summary by manufacturing lots.  The means of the lot numbers are similar to the population mean and sample mean. 

![2total_lot_sum](https://github.com/acegal1/MechaCar_Statistical_Analysis/blob/main/images/2total_lot_sum.jpg)

In the total_summary, the variance of all three lots fall under the maximum variance of 100 PSI with a variance of 62 PSI.

Notice that lot 3 creates a variance. The variance for lot 3 is 170 PSI and the other two lots having variances below 8 PSI. Note that the manufacturing data meets the maximum variance in PSI requirement, but there is a problem with lot 3 with a variance of 170 PSI. Lot 3 does not meet the maximum variance requirement

# Suspension Coils T-Tests
Conducted t-test on all manufacturing lots to determine if they are statistically different from the mean population. The mean falls within the 95% confidence interval. All manufacturing lots p-value = .6028, alpha = .05 and .60 > .05, which means the total manufacturing lot is not statistically significant from the normal distribution and normality can be assumed.  

![3_t-test_all](https://github.com/acegal1/MechaCar_Statistical_Analysis/blob/main/images/3_t-test_all.jpg)

Subsequent conducted three t-test on each of the lots. All three lots means fall within the 95% confidence level. 

Lot 1: p-value = 1, alpha = .05 1 > .05, which means Lot 1 is not statistically significant from the normal distribution and normality can be assumed. 

![3_t-test_lot1](https://github.com/acegal1/MechaCar_Statistical_Analysis/blob/main/images/3_t-test_lot1.jpg)

Lot 2: p-value = .6072, alpha = .05 .60 > .05, which means Lot 2 is not statistically significant from the normal distribution and normality can be assumed. 

![3_t-test_lot2](https://github.com/acegal1/MechaCar_Statistical_Analysis/blob/main/images/3_t-test_lot2.jpg)


Lot 3: p-value = .04168, alpha = .05 .04 < .05, which means it is statistically significant from the normal distribution and normality cannot be assumed. 

![3_t-test_lot3](https://github.com/acegal1/MechaCar_Statistical_Analysis/blob/main/images/3_t-test_lot3.jpg)

There is not sufficient evidence to reject the null hypothesis. Both manufacturing Lot 1 and Lot 2 show a normal distribution and both means are statistically similar.

# Study Design: MechaCar vs Competition.
A statistical study that can quantify how the MechaCar performs against the competition can be done by doing an analysis on the following variables; cost, city and highway fuel efficiency, horsepower, safety rating, and carbon waste output.

The four key questions to answer:

1. What metric or metrics are you going to test?
The next metrics to test should be the safety rating, horsepower, and highway fuel efficiency, which address some safety concerns for consumers.

2. What is the null hypothesis or alternative hypothesis?
A null hypothesis states that it is not different from the competition and our "Alternative" would be the opposite.  The alternative hypothesis is that the mean of the safety rating is not zero.

3. What statistical test would you use to test the hypothesis? And why?
The statistical test to perform would be an one-tailed t-tests in order to determine if the MechaCar has higher or lower observed values in these variables than the competition according to which direction the consumer would prefer.

4. What data is needed to run the statistical test?
The data required to conduct valid statistical tests, the cost, fuel efficiency, horsepower, safety rating, and carbon waste output data from the MechaCar as well as the MechaCar's competitors.

