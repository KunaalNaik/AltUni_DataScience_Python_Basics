library(dplyr)
library(tidyr)
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

## Correlation - with Price - Numerical and Numerical
cor_mar = cor(data %>% select(-c(id, cut,color, clarity)), method = "pearson")
cor_with_price <- cor_mar[,"price"]

print(cor_with_price)

## ANOVA- Categorical and Numerical

# cut & price
anova_result <- aov(price ~ cut, data = data)

summary(anova_result)


## T-Test - Numerical & Numerical
ideal <- data[data$cut == "Ideal", "price"]
premium <- data[data$cut == "Premium", "price"]

t.test(ideal,premium)

## Chi Sq Data - Categorical and Categorical
#Data Import
attrition_data <- read.csv("https://raw.githubusercontent.com/KunaalNaik/AltUni_DataScience_Python_Basics/main/R_Course/Employee_Attrition.csv")

# Create a Contingency Table
contingency_table <- table(attrition_data$Attrition, attrition_data$Department)

chi_sq_test <- chisq.test(contingency_table)

print(chi_sq_test)

#  Education Field and Attrition


