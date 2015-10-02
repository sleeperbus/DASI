plot(present$year, present$girls)

present$year[which.max(present$boys + present$girls)]

plot(present$year, (present$boys/(present$boys + present$girls)), type = "l")

# 8
present$year[which.max(present$boys - present$girls)]



