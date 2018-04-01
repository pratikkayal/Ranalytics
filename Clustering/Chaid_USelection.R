USvote
install.packages("CHAID", repos="http://R-Forge.R-project.org")
library(CHAID)

set.seed(290875)
data(USvote)
?USvote
head(USvote)
str(USvote)
names(USvote)
summary(USvote)
dim(USvote)
USvoteS = USvote[sample(1:nrow(USvote), 1000),]

ctrl <- chaid_control(minsplit = 20, minbucket = 5, minprob = 0)

chaidUS <- chaid(vote3 ~ ., data = USvoteS, control = ctrl)

?chaid
summary(chaidUS)
print(chaidUS)
plot(chaidUS)

chaidUS2 <- chaid(vote3 ~ ., data = USvoteS, control = ctrl)

summary(chaidUS2)
print(chaidUS2)
plot(chaidUS2)