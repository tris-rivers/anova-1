r.icecream <- c(t(as.matrix(IceCreamSales))) #response data

f.icecream <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday") #treatment levels
k.icecream <- 6 #num of treatment levels
n.icecream <- 9 #num of control blocks

tm.days <- gl(k.icecream, 1, n.icecream*k.icecream, factor(f.icecream)) #matching treatment

blk.hours <- gl(n.icecream, k.icecream, k.icecream*n.icecream) #blocking factor

av.icecreamsales <- aov(r.icecream ~ tm.days + blk.hours)

summary(av.icecreamsales)