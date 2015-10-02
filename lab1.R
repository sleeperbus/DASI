source("http://www.openintro.org/stat/data/cdc.R")

# look at inside
str(cdc)
summary(cdc)
boxplot(cdc$height ~ cdc$gender)
boxplot(cdc$weight ~ cdc$gender)
hist(cdc$weight)

str(present)
# 5
table(cdc$gender)

# 6
prop.table(table(cdc$genhlth))

# 7
mosaicplot(cdc$gender ~ cdc$smoke100)

# 8
under_23_and_smoke = subset(cdc, age <23 & smoke100 == 1)

# 9
# BMI = (weight/height^2)*703
cdc$BMI = (cdc$weight/cdc$height^2)*703
boxplot(cdc$BMI ~ cdc$genhlth)

hist(cdc$age)
hist(cdc$BMI)
hist(cdc$BMI, breaks=50)

# 10
plot(cdc$weight, cdc$wtdesire)
