r.car <- c(t(as.matrix(carInterestRate))) #response data
f.car <- c("Atlanta", "Chicago", "Houston", "Memphis", "New York", "Philadelphia") #treatment levels
k.car <- 6 #number of treatment levels
n.car <- 9 #observations per treatmentv
tm.car <- gl(k.car, 1, n.car*k.car, factor(f.car)) #matching treatments
av.car <- aov(r.car ~ tm.car)

summary(av.car)

tukey.carinterest <- TukeyHSD(av.car, conf.level = 0.99)
plot(tukey.carinterest, col="#F1C40F")
