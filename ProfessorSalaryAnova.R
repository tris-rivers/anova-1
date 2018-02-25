r.salary <- c(t(as.matrix(ProfessorSalary)))

f1.salary <- c("Assistant Professor", "Associate Professor", "Full Professor")
f2.salary <- c("Male", "Female")
k1.salary <- length(f1.salary)
k2.salary <- length(f2.salary)
n <- 10

tm1.salary <- gl(k1.salary, 1, n*k1.salary*k2.salary, factor(f1.salary))

tm2.salary <- gl(k2.salary, n*k1.salary, n*k1.salary*k2.salary, factor(f2.salary))

av.salary <- aov(r.salary ~ tm1.salary * tm2.salary)

summary(av.salary)