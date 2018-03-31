#Multiple linear variables with more than one variables----
dim(mtcars)
names(mtcars)
(model1=lm(mpg ~ disp + cyl + hp + drat + wt + qsec + carb,data=mtcars))
summary(model1)
(model2=lm(mpg ~ disp + cyl + wt, data=mtcars))
summary(model2)

#compare----
anova(model1,model2) #the variables in 1st argument should be present in 2nd
##
anova(model2,model1)
m1=model1;m2=model2

#m3----
m3=lm(mpg~cyl+wt,data=mtcars)
summary(m3)

anova(m3,m2)# here the null hypothesis is if P<0.05 then 2nd is better otherwise 1st is better

#To find the best combination of variables----
library(MASS)
step=stepAIC(model1,direction = 'both')#When AIC IN min, best model is chosen
# second method
library(olsrr)
modl<- lm(mpg~ disp+hp+wt+qsec, data=mtcars)
k<-ols_step_all_possible(modl)
plot(k)
k
