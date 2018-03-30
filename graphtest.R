attach(women)
women
barplot(height)
hist(weight,freq=F)
library(vcd)
counts<-table(Arthritis$Improved)
counts
barplot(counts,main="Simple Bar Plot",xlab="Improvement",ylab="Frequency")
barplot(counts,main="Simple Bar Plot",xlab="Improvement",ylab="Frequency",horiz=TRUE)

plot(Arthritis$Improved,main="With plot")
class(Arthritis$Improved)
table(Arthritis)

