r.prof <- c(t(as.matrix(ProfessorSalary)))

f1.prof <- c("Assistant Professor", "Associate Professor", "Full Professor")
f2.prof <- c("Male", "Female")
k1.prof <- length(f1.prof)
k2.prof <- length(f2.prof)
n <- 10

tm1.rank <- gl(k1.prof, 1, n*k1.prof*k2.prof, factor(f1.prof))

tm2.gender <- gl(k2.prof, n*k1.prof, n*k1.prof*k2.prof, factor(f2.prof))

av.prof <- aov(r.prof ~ tm1.rank * tm2.gender)

summary(av.prof)

interaction.plot(tm1.rank, tm2.gender, r.prof)