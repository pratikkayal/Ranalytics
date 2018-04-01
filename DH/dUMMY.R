#dummty variables

df=mtcars
summary(df)
df$cyl=factor(df$cyl)#categorizes it

M1=lm(mpg~wt+cyl,data=df)
summary(M1)           #model krta hai, 
summary(df$cyl)
predict(M1, newdata = data.frame(wt=c(3,2), cyl=factor(c(4,6))))



#y4= 33.99 + -3.2 * wt + 0                 #When 4 cyl
#y6= 33.99 + -3.2 * wt + -4.2 * cyl6(=1) 
#y8= 33.99 + -3.2 * wt + -6.07 * cyl8(=1)

library(dplyr)
ndata<=