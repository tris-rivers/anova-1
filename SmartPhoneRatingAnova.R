r <- c(t(as.matrix(SmartPhoneRating))) #response data

f1 <- c("AT&T", "Sprint", "T-Mobile", "Verizon") #1st factor levels
f2 <- c(">= 150", "< 150") #2nd factor levels
k1 <- length(f1)  
k2 <- length(f2)
n <- 3 #observations per treatment

tm1 <- gl(k1, 1, n*k1*k2, factor(f1))

tm2 <- gl(k2, n*k1, n*k1*k2, factor(f2))

av.smartphone <- aov(r ~ tm1 * tm2) #include interaction

summary(av.smartphone)
