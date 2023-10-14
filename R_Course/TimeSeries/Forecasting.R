# Load necessary libraries

library(ggplot2)
library(forecast)


#Data Import
data <- read.csv("C:\\Users\\USER\\Documents\\AltUni\\AltUni_DataScience_Python_Basics\\R_Course\\TimeSeries\\sales.csv")

# 1/ Prepare Time Series Data
data_ts <- ts(data$Sales, frequency = 4, start = c(2015,1))