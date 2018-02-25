r <- c(t(as.matrix(icecreamSales))) #response data
f <- c("Day", "Hour", "Temperature", "Sales")
k <- 4
n <- 54
tm <- gl(k, 1, n*k, factor(f)) #matching treatment
av <- aov(r ~ tm)

