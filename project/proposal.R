load("korea_apartment.RData")
library(ggplot2)

data.2014 = subset (trade_data, SALE_YEAR == 2014)
data.2014$TYPE_FLOOR = ifelse(data.2014$FLOOR <= 3, "LOW", "HIGH")
data.2014$TYPE_FLOOR = as.factor(data.2014$TYPE_FLOOR)
town = subset(data.2014, DONG_CODE == "1168010300")

summary(subset(town, TYPE_FLOOR == "LOW")$TRADE_AMT)
summary(subset(town, TYPE_FLOOR == "HIGH")$TRADE_AMT)
ggplot(data = town, aes(x=TRADE_AMT)) + geom_histogram() + 
  facet_grid(. ~ TYPE_FLOOR)
