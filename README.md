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
```
---
## Images

NVDA stock over time:

![13051985-fc7f-4e2a-a927-bf9e50c44c97](https://github.com/user-attachments/assets/177788c8-a120-408c-a6d0-159deaa220d6)

NVDA stock with 12 month forcast:

![b1e920c5-c7a8-46b3-b481-210e069fac31](https://github.com/user-attachments/assets/2eafb794-f842-4f4e-b2cc-cc11a5e77653)
