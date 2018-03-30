#Data structures in R

#Vectors----
(v1=c('A','B','C'))   #c means concatinate, make a vector
(v2=c(1,2,3))
(v3=c(TRUE,FALSE,TRUE))
v3a=c(T,F,T)
v1
class(v1)
class(v2)
class(v3)
class(v3a)
v4=100:200
class(v4)
v4
v5=seq(1,10,2)
v5
v4;v5
v4[c(1,3,4)]
v4[-c(1,3,4)]
v4[v4>=150]
v1[2]
v1[2:3]
v7=c('A','C')
v1[v1 %in% v7]


(v8=10:15)

names(v8)=c('ani','shlo','jasmin','bhavya','niha')
v8
v8['ani']
v8[2]
v8[2:4]
#----

?runif

#dataframe----
df=data.frame(rollno=c(1,2,3),name=c('Bidyan','Lalit','Hitesh'),course=c('MBA','BBA','MCA'), dept=c('Dept1','Dept1','Dept2'), marks=floor(runif(3,50,100)))
df
df=fix(df)
str(df)
summary(df)
?ls
ls()
rm(v1)
rm(v8)
(mylist=list(1,df,v4))

(mymatrix=matrix(1:24,ncol=4))
(mymatrix=matrix(1:24,ncol=4, byrow=TRUE))
(myarray=array(1:24, dim=c(4,3,2)))
is.array(myarray)
mymatrix[,1]
mymatrix[1,]
mymatrix[3,1:3]
dimnames(mymatrix)=list(c('R1','R2','R3','R4','R5','R6'),c(paste('C',1:4,sep='')))
mymatrix
?array
(myarray=array(1:24, dim=c(4,3,2), dimnames=list(c('s1','s2','s3','s4'),c('Sub1','Sub2','Sub3'),c('Dept1','Dept2'))))

(mym=matrix(c('a','b',2,'d'), ncol=2))
df[3:4,'name']
df$name
df$gender=c('M','F','M','M')
df
df$gender=factor(df$gender)
df
str(df)
df$grades=c('C','B','A','D')
df$grades=factor(df$grades,ordered = T)#, levels=c('D','C','B','A'))
table(df$course,df$gender)

apply(myarray, 1, sum)
apply(myarray, 2, sd)
?tapply

tapply(df$marks, df$gender,mean)
df$gender = NULL
df
df[df$dept == 'Dept1',]
stack(df)
mtcars
