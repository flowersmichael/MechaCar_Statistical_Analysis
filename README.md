# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

### Summary

In this analysis, we examine a dataset of miles per gallon (MPG) test results for 50 different MechaCar prototypes. This multiple linear regression model explores how well five independent variables predict MPG. The five independent variables are vehicle length, vehicle weight, spoiler angle, ground clearance, and whether or not the vehicle has all-wheel drive.

Our null hypothesis is that there is no relation between the independent variables and MPG.

### Key Questions

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Is the slope of the linear model considered to be zero? Why or why not?

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

![Linear Regression MPG](https://github.com/flowersmichael/MechaCar_Statistical_Analysis/blob/main/Screenshots/Linear%20Regression%20to%20Predict%20MPG.png)

### Conclusions

Overall, our multiple regression model is somewhat effective at predicting the miles per gallon of MechaCar prototypes. With an r-squared value of 0.7149, our model explains a little over 70% of MPG. However, our intercept value is very low at 5.08e-08, thus statistically significant at even extreme significance levels. This means there are other variables and factors that contribute to the variation in MPG that have not been included in our model. These variables may or may not be within our dataset and may still need to be collected or observed.

The p-value for the model is 5.35e-11, or 0.0000000000535. If we assume a confidence level of 95% and thus a significance level of 0.05, the model's p-value is well below that number. Thus there is sufficient evidence to reject the null hypothesis, and that the slope of our linear model is not zero.

According to our data, at any common significance level, vehicle length and ground clearance are statistically significant. This means that they are unlikely to provide random amounts of variance to the linear model, or said in a way that more closely resembles the way humans speak, that vehicle length and ground clearance have a significant impact on MPG. With a p-value of 0.0776, vehicle weight is only significant at 0.10. With respective p-values of 0.3069 and 0.1852, spoiler angle and AWD are not significant at any common significance level.


## Summary Statistics on Suspension Coils

### Key Question

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). Does the current manufacturing data meet this design specification for all manufacturing lots in total, and each lot individually? Why or why not?

Total Summary:

![Suspension Coil Total Summary](https://github.com/flowersmichael/MechaCar_Statistical_Analysis/blob/main/Screenshots/Suspension%20Coil%20Total%20Summary.png)

Individual Lot Summary:

![Suspension Coil Lot Summary](https://github.com/flowersmichael/MechaCar_Statistical_Analysis/blob/main/Screenshots/Suspension%20Coil%20Lot%20Summary.png)


### Conclusions

Total Summary:

In the Total Summary, the variance of the suspension coils is 62.294 which meets the requirements that it cannot exceed 100 pounds per square inch.

Individual Lot Summary:

In the Individual Lot Summary, Lots 1 and 2, with variances of 0.97959 and 7.46939, respectively, meet the requirement. Lot 3, however, with a variance of 170.28612, fails the requirement drastically. It is about 70% higher than the design specification's 100 PSI variance requirement.


## T-Tests on Suspension Coils

In this exercise, we use R to perform t-tests to determine if all manufacturing lots--and each lot individually--are statistically different from the population mean of 1,500 pounds per square inch.

The null hypothesis for each of these four tests is that the sample mean is not different from the population mean of 1,500 PSI. The alternative hypothesis is that 

For the T-test of all lots together against the mean PSI of the population, these are the results:

![All lots T-test Summary](https://github.com/flowersmichael/MechaCar_Statistical_Analysis/blob/main/Screenshots/All%20lot%20T-test.png)

With a p-value of 0.06028, at a 0.05 significance level, the mean of 1,498.78 is not statistically different from the population mean of 1500, and we (narrowly) cannot reject the null hypothesis. 


For the T-test of the first lot, here are the results:

![Lot 1 T-test Summary](https://github.com/flowersmichael/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot%201%20T-test.png)

With a p-value of exactly 1, the sample mean of 1,500 is exactly equal to the population mean, thus we clearly cannot reject the null hypothesis at any significance level.


For the T-test of the second lot, here are the results:

![Lot 2 T-test Summary](https://github.com/flowersmichael/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot%202%20T-test.png)

With a p-value of 0.6072, the sample mean of 1,500.2 is not statistically different from the population mean and we cannot reject the null hypothesis at any significance level.


For the T-test of the third lot, here are the results:

![Lot 3 T-test Summary](https://github.com/flowersmichael/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot%203%20T-test.png)

With a p-value of 0.04168, at a 0.05 significance level, the mean of 1,496.14 is indeed statistically different from the population mean and we can reject the null hypothesis at a 0.05 significance level.


## Study Design: MechaCar vs Competition

For our study of MechaCar versus competitors, we'd like to use a host of independent variables including fuel efficiency, safety rating, horsepower, and other metrics to see how they relate to resale value, or more specifically to the ratio between resale value and original purchase price.

We are interested in our prototypes' resale value as we regard it as a key input to owner satisfaction. We hypothesize that our MechaCar fleet will have a significantly higher resale value to purchase price ratio. 

We will not have the resale value data for MechaCar models since they are in the prototype phase. We will, however, have plenty of resale value data from our competitors. Using the independent variables discussed previously from our competitors, as well as our competitors' resale value, we can determine which variables significantly relate to resale value.

The null hypothesis is that the resale value to purchase price ratio of MechaCar is the same as our competitors.

Once we've determined the variables that relate to resale value, we can then use the existing MechaCar prototype data for these independent variables (such as fuel efficiency, safety rating, horsepower) to predict the resale value for the MechaCar prototypes. We can then find our ratio for MechaCar projected resale value to initial projected purchase price, and compare that to our competitors.

We may also use this projected resale value information to help narrow the list of prototypes that will ultimately go into production, and even potentially influence MechaCar design and pricing decisions.
