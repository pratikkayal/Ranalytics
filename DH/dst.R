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
V8['ani':'shlo']





#dataframe----
df=data.frame(rollno=c(1,2,3),name=c('Bidyan','Lalit','Hitesh'),course=c('MBA','BBA','MCA'), dept=c('Dept1','Dept1','Dept2'), marks=floor(runif(3,50,100)))
df
df=fix(df)
str(df)
