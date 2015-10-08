load(url("http://www.openintro.org/stat/data/ames.RData"))
str(ames)
str(cdc)

# 1
area <- ames$Gr.Liv.Area
price <- ames$SalePrice
summary(area)
hist(area)
boxplot(area)

# 2
samp0 <- sample(area, 50)
samp1 <- sample(area, 50)
summary(samp0)
summary(samp1)
hist(samp0)
hist(samp1)

# 3, 4
sample_means50 <- rep(NA, 5000)
for (i in 1:5000) {
  samp <- sample(area, 50)
  sample_means50[i] <- mean(samp)
}
hist(sample_means50, breaks = 25)
summary(sample_means50)

# 5
sample_means10 = rep(NA, 5000)
sample_means100 = rep(NA, 5000)
for (i in 1:5000) {
  samp <- sample(area, 10)
  sample_means10[i] <- mean(samp)
  samp <- sample(area, 100)
  sample_means100[i] <- mean(samp) 
}
summary(sample_means10)
summary(sample_means100)

par(mfrow = c(3, 1))
xlimits = range(sample_means10)
hist(sample_means10, breaks = 20, xlim = xlimits)
hist(sample_means50, breaks = 20, xlim = xlimits)
hist(sample_means100, breaks = 20, xlim = xlimits)

par(mfrow = c(1, 1))

summary(price)
samp50 <- sample(price, 50)
summary(samp50)

sample_means50 <- rep(NA, 5000)
for (i in 1:5000) {
  samp <- sample(price, 50)
  sample_means50[i] <- mean(samp)
}
hist(sample_means50)
summary(sample_means50)

# 1
population <- ames$Gr.Liv.Area
samp <- sample(population, 60)
hist(samp)
boxplot(samp)

# 2, 3
sample_mean <- mean(samp)
se <- sd(samp) / sqrt(60)
lower <- sample_mean - 1.96 * se
upper <- sample_mean + 1.96 * se
c(lower, upper)

# 4
mean(population)

# 5
samp_mean <- rep(NA, 50)
samp_sd <- rep(NA, 50)
n <- 60
for (i in 1:50) {
  samp <- sample(population, n)
  samp_mean[i] <- mean(samp)
  samp_sd[i] <- sd(samp)
}

lower <- samp_mean - 1.96 * samp_sd
upper <- samp_mean + 1.96 * samp_sd
c(lower[1], upper[1])
plot_ci(lower, upper, mean(population))
