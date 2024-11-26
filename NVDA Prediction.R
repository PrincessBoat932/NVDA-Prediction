################################################################
# This file contains the monthly price of the NVDA stock.
# We will do a forecast for the next 12 months
# of stock prices.
# NOTE: this is based on Error, Trend, and Seasonality (ETS model) 
# and not any other external data
# Ratnesh Rajesh
################################################################
#clear previous enviornment
rm(list=ls())
library(ggplot2)
#Time Series
library(ggfortify)
#Forecasting Lib
library(fpp2)
#library for Stock data
library(quantmod) 
#Fetching Data
getSymbols("NVDA", src = "yahoo", from = "2014-01-01", to = "2024-11-24", periodicity="monthly")
#NVDA data of Open, High, Low, Close, Volume, Adj, 
#over time interval
View(NVDA[,6])
#Time Series obj of monthly NVDA data
ts_NVDA <- ts(NVDA[,6], start=c(2014, 1), frequency = 12)
###############################################################

#autoplot of NVDA stock (prior to prediction)
autoplot(ts_NVDA) + 
ggtitle("PLOT: NVDA Stock over time")+ 
ylab("Stock Price: $") + xlab("TIME")

###############################################################

#USED ETS model (is beter for exponential trend and based on recent fluctuations)
#NOTE: Could also use the ARIMA model

#Fits data into the ets model
ets_NVDA <- ets(ts_NVDA)

#forecast using yhe ets model to predict 12 months(12 periods, 1 period is a month)
forecast_NVDA <- forecast(ets_NVDA, 12)
autoplot(forecast_NVDA) + 
  ggtitle("PLOT: NVDA Stock over time (ETS PREDICTION)") +
  ylab("Stock Price: $") + xlab("TIME")
##############################################################
#POSSIBLE MODIFICATIONS
#You can chnage the stock data, calculations for metric of month, week, etc,
#the overall time of the interval (I set it to 2014 to 2024 Nov on monthly basis)
#you can also add more months to predict for the model
###############################################################

