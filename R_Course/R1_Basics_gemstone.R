library(dplyr)
library(ggplot2)
library(DataExplorer)
library(summarytools)
library(reshape2)  
library(corrplot)


##### Import & Clean

#Data Import
data <- read.csv("C:\\Users\\USER\\Documents\\AltUni\\AltUni_DataScience_Python_Basics\\R_Course\\gemstone.csv")

# Check First few rows
head(data)

# Summary Statistics
summary(data)

dfSummary(data)

# Treat Outliers
boxplot(data$carat)

# Using IQR
# Calculate the IQR (Interquartile Range)
q1 <- quantile(data$carat, 0.25)
q3 <- quantile(data$carat, 0.75)
iqr <- q3 - q1

# Define the lower and upper bounds for outliers
lower_bound <- q1 - 1.5 * iqr
upper_bound <- q3 + 1.5 * iqr

# Cap outliers to the lower/upper bound
data[data$carat < lower_bound, "carat"] <- lower_bound
data[data$carat > upper_bound, "carat"] <- upper_bound

boxplot(data$carat)


# Regression Equation Using R


























