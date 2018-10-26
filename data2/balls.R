(balls = c('Red','Blue','Red','Blue','Green'))
sample(balls, size=1)

(x=rnorm(100, mean=60, sd=10))
summary(x)
quantile(x)
quantile(x, seq(0,1,.1)) #decline
quantile(x, seq(0,1,.01)) #percentile
fivenum(x)
abline(H=fivenum(x))
stem(x)
hist(x)

plot(density(x))
abline(v=60, col='red')
floor(3,4)
floor(x)
floor(3,7)
ceiling(3,4)
ceiling(x)
ceiling(3,7)
trunc(3,4)
round(3,456, 2)
signif(3,567334, 3)

(gender= c('M','F','F','M'))

(gender)= sample(c('M','F'),size=30,replace=T,prob=c(.7,.3))
table(gender)
prop.table(table(gender))

