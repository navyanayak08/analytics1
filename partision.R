#creat ventor of student names: divide into 2 group
studentname= paste('student',1:10000, sep='0')
group1 = 60%
group2 = 40%

#creat a large DF
sname = paste('s',1:1000,sep='-')
gender = samp(x=c('Male','Female'), size=1000, prob=c(.6,.4)replace=T)
marks = ceiling(rnorm(1000,60,10))
df = data.frame(sname,gender,marks)
head(df)
table(df$gender)
#split df into 2 parts 70% and 30%
train - 70% of Df
test - 30% of Df