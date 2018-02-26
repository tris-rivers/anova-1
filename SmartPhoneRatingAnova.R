r.phone <- c(t(as.matrix(SmartPhoneRating))) #response data

f1.phone <- c("AT&T", "Sprint", "T-Mobile", "Verizon") #1st factor levels
f2.phone <- c(">= 150", "< 150") #2nd factor levels
k1.phone <- length(f1.phone)  
k2.phone <- length(f2.phone)
n.phone <- 3 #observations per treatment

tm.supplier <- gl(k1.phone, 1, n.phone*k1.phone*k2.phone, factor(f1.phone))

tm.cost <- gl(k2.phone, n.phone*k1.phone, n.phone*k1.phone*k2.phone, factor(f2.phone))

av.phone <- aov(r.phone ~ tm.supplier * tm.cost)

summary(av.phone)
