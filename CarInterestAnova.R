r <- c(t(as.matrix(carInterestRate))) #response data
f <- c("Atlanta", "Chicago", "Houston", "Memphis", "New York", "Philadelphia") #treatment levels
k <- 6 #number of treatment levels
n <- 9 #observations per treatmentv
tm <- gl(k, 1, n*k, factor(f)) #matching treatments
av <- aov(r ~ tm)

summary(av)