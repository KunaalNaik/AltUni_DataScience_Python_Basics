library(dplyr)
library(ggplot2)
library(DataExplorer)
library(summarytools)
library(reshape2)  
library(corrplot)


##### Import & Clean

#Data Import
data <- read.csv("https://raw.githubusercontent.com/KunaalNaik/AltUni_DataScience_Python_Basics/main/R_Course/Employee_Attrition.csv")

# Check First few rows
head(data)

# Summary Statistics
summary(data)

dfSummary(data)

# Frequency
freq(data$BusinessTravel)

# pandas = dplyr
# Highest Attrition by Department
# %>% - pipe operator
summary_department <- data %>%
  group_by(Department) %>%
  summarise(sum_attrition = sum(Attrition))

print(summary_department)

# Plot 
# matplotlib = ggplot2
ggplot(summary_department, aes( y = factor(Department), x = sum_attrition)) 
            + geom_bar(stat = "identity")


# Age - Normally Distributed?
ggplot(data, aes(Age)) + geom_histogram(bins = 10)

# Age - Does it have Outliers?
boxplot(data$Age)

# Treat Outliers
boxplot(data$PercentSalaryHike)














