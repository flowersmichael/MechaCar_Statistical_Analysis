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

Lot Summary:

![Suspension Coil Lot Summary](https://github.com/flowersmichael/MechaCar_Statistical_Analysis/blob/main/Screenshots/Suspension%20Coil%20Lot%20Summary.png)






### Conclusions
In the Total Lot Summary, the variance of the suspension coils is
62.294 which meets the requirements that it cannot exceed 100
pounds per square inch.

Individual Lot Summary:
However, in the Individual lot summary, Lot 1 and lot 2, with
variances of 0.97959 and 7.46939 respectively, meet the
requirement. However Lot 3 with variance of 170.28612 fails the
requirement drastically. It is about 70% higher than the
requirement.

------------------------------------------------------------------------------------------
Total Lot Summary:

________________________________________________________
Individual Lot Summary:
