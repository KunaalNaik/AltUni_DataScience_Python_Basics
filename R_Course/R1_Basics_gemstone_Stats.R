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

## Correlation
cor_mar = cor(data %>% select(-c(id, cut,color, clarity)), method = "pearson")








