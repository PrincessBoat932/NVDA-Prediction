# NVDA Stock Price Forecasting with ETS Model

This repository contains an R script that forecasts the stock price of NVIDIA (NVDA) for the next 12 months using historical monthly stock data. The prediction is based on the Error, Trend, and Seasonality (ETS) model, which is good for cacluating data that follows an exponential trend.

---

## Purpose

The goal of this project is to:

1. Retrieve historical monthly stock price data for NVDA.
2. Visualize the stock price over time.
3. Apply the ETS model to forecast the next 12 months of stock prices.
4. Visualize the predicted stock prices for the upcoming months.

---

## Libraries

The following R libraries are required to run the script:

- `ggplot2` – for visualizing the data.
- `ggfortify` – for time series visualizations.
- `fpp2` – for forecasting.
- `quantmod` – for fetching stock data.

You can install these libraries by running the following commands in R:

```r
install.packages("ggplot2")
install.packages("ggfortify")
install.packages("fpp2")
install.packages("quantmod")
