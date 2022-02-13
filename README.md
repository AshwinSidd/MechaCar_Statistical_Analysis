# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/92342751/153761216-3eca03c0-72eb-4b3a-96b3-c328490cd62c.png)

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
As per the analysis, the values on Pr(>|t|) show that the *vehicle length and ground clearance* are statistically unlikely to provide random amounts of variance. Which means that both these values will have a significant impact on the mpg values.

2. Is the slope of the linear model considered to be zero? Why or why not?
Considering that we assume our significance to be p-value is 0.05, we can see that the p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level. This means that we would be rejecting our null hypothessis and therefore we can say that the slope of our linear model is not zero.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Looking at the Multiple R-squared:  0.7149, we can safely say that 71% of our predictions/analysis can be satisfied using this model. Also the adjusted R-square of 0.6825 concludes that this linear model predicts the mpg of MechaCar prototypes relatively well.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

*Total Summary*

![image](https://user-images.githubusercontent.com/92342751/153762668-43b3ca71-f8ab-4ef2-b627-71cad238e016.png)

*Lot Summary*

![image](https://user-images.githubusercontent.com/92342751/153762697-3be78372-a564-4617-9a8d-e4d747079a8d.png)

As the variance of the suspension coils is 62.29 pounds per square inch which does not exceed 100 pounds per square inch, the current data meets the design specification. Having said that, when the individual lots are considered, only 2 of the lots meets the specifications. One of the lots out of the 3 seems ot have a much higher varoance, so it can be infered that 1/3rd of the lots may not meet the specifications. 

## T-Tests on Suspension Coils

*Summary of t-Test for all manufacturing lots*
Assuming that the significance level was 0.05, the p-value for all lots together is 0.06 which is above the set significance level. Therefore, we can say that there is no  sufficient evidence to reject the null hypothesis which would infer that the two means are statistically similar.

![image](https://user-images.githubusercontent.com/92342751/153765332-b34779e6-cc51-4467-88ac-125174a3fe51.png)

*Summary of t-Test for each manufacturing lot*

Lot 1: The p-value  is 1 which is above the set significance level. Hence we can say that we do not have sufficient evidence to reject the null hypothesis.

Lot 2: The p-value is 0.60 which is above the set significance level. Hence we can say that we do not have sufficient evidence to reject the null hypothesis. The confidence level too is relatively smaller.

Lot 3: The p-value is 0.04 which is lower than the significance level. Hence we can say that there is sufficeint evidence to reject the null hypothesis.

## Study Design: MechaCar vs Competition
MechaCar can look at a few other metrics and study how well they could perform w.r.t the competition. Metrics like safety features (ratings), fuel efficiancy, environment impact (zero emmission?) etc can be considered along with other parameters like horsepower, city or highway fuel efficiency, maintenance cost etc. Personally, the 2 metrics that woulld be interesting and important to look at would be the maintenance cost and safety rating.

1. What metric or metrics are you going to test?
Environemnt impact in terms of emission of CO2. Anything less than 100g/km can be considered low – or good – CO2 emissions.

2. What is the null hypothesis or alternative hypothesis?
Null Hypothesis: the average CO2 emission of the car is lesser than 100g/km of a car in the population
Alternative Hypothesis: the average CO2 emission of the car is equal to or greater than 100g/km of a car in the population

What statistical test would you use to test the hypothesis? And why?
One-Sample t-Test: since we are comparing against the population mean and want to infer that the Mechacar emits less CO2 than the population mean.

What data is needed to run the statistical test?
OBD / DSL test scores of cars along with the age of the car and KM run


