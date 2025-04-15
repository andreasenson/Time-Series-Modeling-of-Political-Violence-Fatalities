# PRELIMINARIES
# Importing of Libraries
library(TSA)
library(tseries)

# Loading the data
# violence= read.csv("violence truncated.csv")
violence = violence.truncated
head(violence)
X = violence$Fatalities
X = ts(X)

# DATA EXPLORATION
# Transformation
plot(X) # Values extremely high. Need to log transform
X.prime = log(X)
plot(X.prime)

# Autocorrelation
Box.test(X.prime, type="Ljung") # Has serial correlation
adf.test(X.prime) # Is stationary

# MODELING
# Acf
acf(X.prime) # Indicates possibility of seasonality
Y = diff(X.prime) # Differencing to address seasonality
plot(Y)
boxplot.stats(Y)
acf(Y) ##MA(1) or MA(6)

# Pacf
pacf(Y) #AR(1), AR(6) or AR(8)

# Creating the Models
# AR
arima(Y, order=c(1,0,0)) #AR(1) aic= 46.27
arima(Y, order=c(6,0,0)) #AR(6) aic= 42.24
arima(Y, order=c(8,0,0)) #AR(8) aic= 36.39
# MA
arima(Y, order=c(0,0,1)) #MA(1) aic=44.95
arima(Y, order=c(0,0,6)) #MA(6) aic=38.02
# ARMA
arima(Y, order=c(1,0,1)) #aic=39.36
arima(Y, order=c(1,0,6)) #aic=38.47
arima(Y, order=c(6,0,1)) #aic=35.16
arima(Y, order=c(6,0,6)) #aic=36.92
arima(Y, order=c(8,0,1)) #aic=36.79
arima(Y, order=c(8,0,6)) #aic=39.67

# FINAL MODEL IS ARMA(6,1)