library(dplyr)
library(ggplot2)
library(DataExplorer)
library(summarytools)
library(reshape2)  
library(corrplot)


##### Import & Clean

#Data Import
data <- read.csv("https://raw.githubusercontent.com/KunaalNaik/AltUni_DataScience_Python_Basics/main/R_Course/Employee_Attrition.csv")
