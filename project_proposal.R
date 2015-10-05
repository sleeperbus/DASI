load("korea_apartment.RData")

data.2014 = subset (trade_data, SALE_YEAR == 2014)
hist(data.2014$TRADE_AMT, breaks = 50)
