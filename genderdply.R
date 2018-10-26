#data analysis using package dplyr

df1
library(dplyr)

#install.packages(dplyr)

df1 %>% group_by(gender) %>% summerise(mean(marks), mean(marks2))
df1 %>% group_by(gender) %>% summerise(max(marks), min(marks2))
df1 %>% group_by( course, gender) %>% summerise(mean(marks), mean(marks2))
df1 %>% group_by( course, gender) %>% count
df1 %>% group_by(course,gender) %>% summarise(mean(marks))
df1 %>% group_by(course) %>% count
df1
df1 %>% group_by(gender) %>% count
