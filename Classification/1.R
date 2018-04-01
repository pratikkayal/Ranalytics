(rollno = paste('S',1:30,sep=''))

set.seed(3)
(gender = sample(x=c('Male','Female'), size=30, replace=T, prob=c(0.5,0.5) ))
table(gender)
set.seed(1)

play = sample(x=c('Play','NotPlay'), size=30, replace=T, prob=c(15/30,15/30) )
play
table(play)
prop.table(table(play))
(students1 = data.frame(gender, play))
(rownames(students1) = rollno)
table(students1)

library(rpart)
(fit1=rpart(play ~ gender, data=students1))
#(fit1=rpart(play ~ gender, data=students1, minsplit=4, minbucket=2))
library(rpart.plot)
rpart.plot(fit1, main='Classification Tree', nn=T)



set.seed(100)
gender=sample(c("male","female"),30,T,c(0.4,0.6))

set.seed(101)
mar=sample(c("Married","Single"),30,T,c(0.3,0.7))
table(mar)
set.seed(102)
play=sample(x=c('Play','NotPlay'), size=30, replace=T, prob=c(15/30,15/30) )
students2=data.frame(gender,mar,play)
rownames(students2)=rollno
head(students2)
str(students2)
prop.table((ftable(students2)))

fit2= rpart(play~gender+mar, data=students2, minsplit=5)
summary(fit2)
rpart.plot(fit2,nn=T)
prp(fit2)
prp(fit2, main="An Example", type=4, fallen=T, branch=.3, round=0, leaf.round = 9,
    clip.right.labs = F, under.cex=1,
    box.palette="GnYlRd",
    prefix="Student\n", branch.col="gray", branch.lwd=2,
    extra=101, under=T, lt=" < ", ge=" >= ", cex.main=1.5)

prp(fit2, branch.type=5)

labels(fit2)
new.tree <- prp(fit2, snip=TRUE)$obj # interactively trim the tree
prp(new.tree) # display the new tree



#predict for combination of male and married
(p=predict(fit2, newdata = data.frame(gender=c("male","female","male","female"),mar=c("Married","Single","Single","Married")            )))

(cbind(gender=c("male","female","male","female"),mar=c("Married","Single","Single","Married"),play=ifelse(p[2,]>=0.448,"Play","NotPlay")))

predict(fit2, newdata = data.frame(gender='Male', married='Married'))
?predict


testdata = data.frame(gender=c('Male','Male','Female','Female'), married=c('Married','Single','Married','Single'))
testdata

(p1 = predict(fit2, newdata = testdata, type='vector'))  #node/level 
#play=2, notplay=1
(p2 = predict(fit2, newdata = testdata, type='class')) #factor
(p3 = predict(fit2, newdata = testdata, type='prob')) # prob

cbind(testdata, p1, p2, p3)
#level number, class frequencies, probabilities
predict(fit2, newdata= testdata, type = "matrix")

head(students2)

#Parameters Setting : CP
printcp(fit2)
printcp(fit2, digits = getOption("digits") - 5)
plotcp(fit2)
names(fit2)
?
  fit2$where  #which row at which nodeno
?fit2$where
students2[1:5,]
cbind(students2, nodeno=rownames(fit2$frame) [ fit2$where])
pfit=  prune(fit2, cp=0.0765) # from cptable  
pfit
rpart.plot(pfit)

