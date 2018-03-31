attach(women)
women
par(mfrow=c(3,2))
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

counts<- table(Arthritis$Improved,Arthritis$Treatment)
counts
barplot(counts,col=c("red","yellow","green"),legend=rownames(counts),beside=T)


#pie----
par(mfrow=c(2,3))
slices<- c(10,12,4,16,8)
dat<-c("Bangladesh","US","Sri lanka", "India", "Germany")
pie(slices,labels=dat,main="Pie")

pct<- round(slices/sum(slices)*100)
lbls2<-paste(dat," ",pct, "%", sep="")

library(plotrix)
pie3D(slices,labels=dat,explode=0.01,main="3D")

(mytable<- table(state.region))

#hist----
hist(mtcars$mpg)
hist(mtcars$mpg,breaks = 10,freq=F)
