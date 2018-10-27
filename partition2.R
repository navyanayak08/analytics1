#using caret
library(caret)
table(df$gender)
prop.table(table(df$gender))
(index3=createDataPartition(y=df$gender,p=0.7,list=F))
length(index3)
(train3=df[index3,])
(test3=df[-index3,])
(t3a=table(train3$gender))
prop.table(t3a)
(t3b=table(train3$gender))
prop.table(t3b)
#proportion of  am is almost same in both the sample
nrow(train2); nrow(test2)
(cb=cbind(table(train2$gender), table(test2$gender)))

