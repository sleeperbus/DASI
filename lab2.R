load(url("http://www.openintro.org/stat/data/kobe.RData"))
str(kobe)
head(kobe)

# 3
kobe_streak = calc_streak(kobe$basket)
barplot(table(kobe_streak))
median(kobe_streak)
summary(kobe_streak)

# 4
prop.table(table(kobe$basket))

# 6
outcomes = c("heads", "tails")
sample(outcomes, size = 1, replace = TRUE)
sim_fair_coin = sample(outcomes, size = 100, replace = TRUE)
table(sim_fair_coin)
sim_unfair_coin = sample(outcomes, size = 100, replace = TRUE, prob = c(0.2, 0.8))
table(sim_unfair_coin)

# 7
outcomes = c("H", "M")
sim_basket = sample(outcomes, size = 133, replace = TRUE, prob = c(0.45, 0.55))
sim_streak = calc_streak(sim_basket)
table(sim_streak)
barplot(table(sim_streak))
