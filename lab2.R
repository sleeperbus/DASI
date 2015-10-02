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


outcomes = c("heads", "tails")
sample(outcomes, size = 1, replace = TRUE)
sim_fair_coin = sample(outcomes, size = 100, replace = TRUE)
table(sim_fair_coin)
sim_unfair_coin = sample()
