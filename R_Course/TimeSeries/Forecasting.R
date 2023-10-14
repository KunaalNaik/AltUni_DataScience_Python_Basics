# Load necessary libraries

library(ggplot2)
library(forecast)


#Data Import
data <- read.csv("C:\\Users\\USER\\Documents\\AltUni\\AltUni_DataScience_Python_Basics\\R_Course\\TimeSeries\\sales.csv")

# Convert Sales from character to numeric
data$Sales <- as.numeric(gsub(",", "", data$Sales))

# 1/ Prepare Time Series Data
data_ts <- ts(data$Sales, frequency = 4, start = c(2015,1))

# Plot Sales
ggplot(data, aes(x = Yr_Qtr, y = Sales)) + geom_line(group = 1) + geom_point()

## Decomposition
decomposed <- stl(data_ts, s.window = "periodic")

plot(decomposed)

# Extract the individual components
seasonal <- decomposed$time.series[, "seasonal"]
trend <- decomposed$time.series[, "trend"]
remainder <- decomposed$time.series[, "remainder"]

# 2/ Forecast - Multiplicative Model

ets_fit <- ets(data_ts, model = "MAM")

est_forecast <- forecast(ets_fit, h = 4)

# Plot the forecast
plot(est_forecast)




