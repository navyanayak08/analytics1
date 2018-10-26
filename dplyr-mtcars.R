#analysis of dataset mtcars using dplyr
#file name :dplyr-mtcars.R

library(dplyr)
?mtcars

#structure of data set
str(mtcars)
dim(mtcars)
names(mtcars) ; colnames(mtcars) #column names
rownames(mtcars) #rownames
summary(mtcars)

#summary activites on mtcars
t1= table(mtcars$am) #transmission
pie(t1)
19/32*360
pie(t1,labels=c('Auto','Manual'))
t2= table(mtcars$gear)
pie(t2)
barplot(t2, col=1:3) #color
barplot(t2, col=1:3, horiz=T) #horizont
barplot(t2, col=c('green','blue','yellow'),xlab='gear',ylab='no of cars',ylim=c(0,20))
title(main='Distribution of gear of cars', sub='no of gears') #plot title name

#using dplyr %>% is chaining function
mtcars %>% select(mpg) %>% slice(c(1:5,10))
#select for columns, slice for rows
mtcars %>% arrange(mpg) #asscending order of mileage
mtcars %>% arrange(am, desc(mpg)) %>%select(am,mpg) #asscending order of am, descending order of mpg
mtcars%>% mutate(rn= rownames(mtcars)) %>% select(rn,mpg)

mtcars %>% slice(c(157))
mtcars %>% sample_n(3)
mtcars %>% sample_frac(.2)
mtcars %>% select(sample(x=c(1:11), size=2)) %>% head
?mutate

sample(x=1:11, size=2)

mtcars %>% mutate(newmpg = mpg * 1.1)
mutate(mtcars, newmpg = mpg *1.2)

mtcars %>% group_by(am) %>% summarise(MeanMPG = mean(mpg))
mtcars %>% group_by(am) %>% summarise(MeanMPG = mean(mpg), maxHP= max(hp), MinWT = min(wt))
mtcars %>% group_by(gear,cyl) %>% summarise(meanMPG= mean(mpg))
