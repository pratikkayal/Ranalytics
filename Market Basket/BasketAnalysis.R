#Basket Analysis
library(arules)
library(arulesViz)
library(datasets)
data("Groceries")
Groceries
class(Groceries)
myDataFrame= Groceries
transDat<- as(myDataFrame,"transactions")
class(transDat)

head(Groceries)
inspect(Groceries[1:5])
LIST(Groceries[4:7])
frequentItems <- eclat (Groceries, parameter = list(supp=0.005, minlen=1, maxlen=4))    #Returns the combination of all the #supp means the min count to be
inspect(sort(frequentItems,by="support", decreasing = T)[1:4])

frequentItems
inspect(frequentItems[1:5])
inspect(frequentItems)
itemFrequencyPlot(Groceries, topN=15, type="absolute")
itemFrequencyPlot(Groceries, topN=15, type="relative")

abline(h=0.2)
rules<- arules::apriori(Groceries, parameter = list(supp=0.005, conf=0.5))
rules
inspect(rules[1:5])
head(quality(rules))
options(digits=2)

inspect(sort(rules,by="confidence",decreasing = T)[1:5])  #having bought A, what is the confidence level I will buy B too
#confidence from A to B is not equal to B to A
#lift is same for both the sides   --  when lift>1 implies that the relationship between X and Y is more significant
#CAN LOOKUP FORMULA IN NET IF WANT
inspect(sort(rules,by="lift",decreasing = T)[1:5])

#How to Remove Redundant Rules ?
sum(is.redundant(rules))
(redundant=which(is.redundant(rules)))
rulesNR<-rules[-redundant]


#to find which events influenced a given event

rules <- apriori (data=Groceries, parameter=list (supp=0.001,conf = 0.08), appearance = list (default="lhs",rhs="whole milk"), control = list (verbose=F))
inspect(rules[1:15])


rules <- apriori (data=Groceries, parameter=list (supp=0.001,conf = 0.05,minlen=2), appearance = list (default="rhs",lhs="whole milk"), control = list (verbose=F)) 
inspect(rules[1:5])
#Visualizing The Rules -----


plot(rules, measure=c("support", "lift"), shading="confidence")

