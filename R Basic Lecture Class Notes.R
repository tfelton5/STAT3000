install.packages("dslabs")

a <- 2
ls()
rm(a)
search()
library("dplyr")
search()
d <- as.Date("2026-02-02")
typeof(d)  # "double"
class(d)   # "Date"
unclass(d) # a number (days since 1970-01-01)
d <- as.Date("2026-02-02")
typeof(d)  # "double"
class(d)   # "Date"
unclass(d) # a number (days since 1970-01-01)
library(dslabs)
typeof(murders)
View(murders)
head(murders)
murders[["population"]] # access the column content
x <- c("s", "t", "a", "t",  " ", "3", "0", "0","0")
