#package install----
install.packages("CHAID",repos="http://R-Forge.R-project.org")
#maptree,tree,rpart.plot,amap,forecast,CHAID,party,partykit

#library islr
library(ISLR)
attach(Default)
str(Default)
summary(Default)
Default

#GOAL: To predict someone will default based on variables student, balance and income
#Goal-------------------------------------------------------------------------------------------------------
