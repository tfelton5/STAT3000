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
x <- murders$region
x <- redorder(murders$region, murders$population, sum) #reorder(x,by, FUN)
#order the regions by their total population by ascending (default)
# reorder(murders$region, murders$population, sum, decreasing =TRUE)
library(ggplot2)
ggplot(murders)
x[1]
z <- x[1]
z <- droplevels(z)
library(dslabs)
is.na.data.frame(1)
na.example[1:20]
x$name
x[[1]]
x[["John"]]
x$"John"


x <- list(name = "John", id = 112, grades = c(95, 87, 92))
x$name
x[[1]]
x[["name"]]
x$name == x[[1]]
class(x[[1]])
x[1]
class(x[1])
x[[1]] == x[1]
identical(x[1],x[[1]])
mat <- matrix(1:12, 4, 3)
mat
mat <- matrix(1:12, 4, 3)
mat
mat[2, 3]  # 10
mat[2,]
mat[,2:3]
mat[1:2,2:3]
f <- function(x, y, z = 0){
  ### do calculations with x, y, z to compute object
  return(object)
}
x <-10
s <- function(n){
  print(x)
  return(sum(1:n))
}
s(2)
f <- function(a, b, c) {
  c(a, b, c)
}

f(1, c = 3, 2)
mean(na.rm = TRUE, c(1, NA, 3))
f <- function(a, b, c) a + b + c
f(1, 2, c = 3, b = 4)
# Error in f(1, 2, c = 3, b = 4) : unused argument (2)f <- function(a, b, c) a + b + c
f(1, 2, c = 3, b = 4)
# Error in f(1, 2, c = 3, b = 4) : unused argument (2)
murder(murders)
help("for")
?"break"
?"&"
?"/"
z
a <- 0

if (a != 0) {
  print(1/a)
} else{
  print("No reciprocal for 0.")
}
a <- 0
ifelse(a > 0, 1/a, NA)
#> [1] NA
#> for (i in 1:3) {
print(i)
compute_s_n <- function(n) { 
  sum(1:n)
}
m <- 5
s_n <- vector(length = m) # create an empty vector
for (n in 1:m) {
  s_n[n] <- compute_s_n(n)
}
n <- 1:m
plot(n, s_n)
x <- c(TRUE, FALSE, TRUE)
y <- c(TRUE, TRUE, FALSE)

x & y
x | y
x[x > 0 & x < 10]
x <- c(TRUE, FALSE)
y <- c(FALSE, TRUE)

x && y  # wrong. Each side must return a single TRUE/FALSE

x || y #wrong
if (x > 0 & x < 10) { ... } # wrong
if (x > 0 && x < 10) { ... } # wrong if x is a vector of length >1
2^1+1
2^(1+1)
TRUE || TRUE && FALSE   # is the same as
TRUE || (TRUE && FALSE) # and different from
TRUE || (TRUE && FALSE) # and different from
(TRUE || TRUE) && FALSE
f <- function(x){
  cat("y is", y,"\n")
  y <- x
  cat("y is", y,"\n")
  return(y)
}
y <- 2
f(3)
x = rexp(100, rate = 4)

llExp = function(DATA) { #log-likelyhood
  n = length(DATA)
  sumx = sum(DATA)
  return(function(mu) {n * log(mu) - mu * sumx})
}

myLL = llExp(x)
myLL
##possible values for mu
y = seq(3,5,by = 0.1)

plot(y, myLL(y), type="l", xlab="mu", ylab="log likelihood") 
# "l"-line; "p"-points(default), "b"-both; "h"-vertical lines
abline(v = y[which.max(myL(y))], col = "red")
search()
filter     #stats::filter()->time-series filtering
library(dplyr)
search()
filter # dplyr::filter(): ->row filtering
stats::filter
dplyr::filter
library(dslabs) #attach dsplabs to the search path
exists("murders")  # `murders` exists in `dslabs`
murders <- murders # create a copy `murders` in .GlobalEnv
murders2 <- murders # 2nd copy
rm(murders) # removes `murders` from .GlobalEnv
exists("murders") #R finds it in `dslabs`
detach("package:dslabs") #remove from the search path
exists("murders") # does not exist on the search path
exists("murders2")
class(co2) # ts object
plot(co2) # R calls plot.ts(co2)->x-axis: year
hist(x)
plot(x,y) # open a new figure (canvas)
lines(x,y) #adds connected line to an existing plot. It does not create a new figure(canvas)
'double'
library(dslabs)
with(murders, plot(population, total))
x <- with(murders, total / population * 100000)
hist(x)
murders$rate <- with(murders, total / population * 100000)
boxplot(rate~region, data = murders) #y:rate x:region
class(co2) # ts object
plot(co2) # R calls plot.ts(co2)->x-axis: year
x <- with(murders, total / population * 100000)
hist(x)
x <- with(murders, total / population * 100000)
hist(100000)
x <- c("b", "s", "t", " ", "2", "6", "0")
seq_along(x)
for (i in seq_along(x)) {
  cat(toupper(x[i])) #concatenate and print
}
w = x[x=="W"]
print(w) # w=charactor(0): a char vector of length 0. 
1:length(w) # a sequence [1 0]
rate <- with(murders, total/population)
with(murders, {
  rate <- total/population
  rate <- round(rate*10^5)
  print(rate[1:5])
})
length(murders$population)
typeof(murders$population)
x <- c("s", "t", "a", "t",  " ", "3", "0", "0","0")
x[5]
typeof(x[5])
x[12]
typeof(1:10 + 0.1)
typeof(TRUE+1) # 1 is double by default in R; integer must be `1L`
as.character(TRUE)
as.character(TRUE)
as.numeric(TRUE)
as.logical(1)
x <- c("b", "s", "t", " ", "2", "6", "0")
seq_along(x)
for (i in seq_along(x)) {
  cat(toupper(x[i])) #concatenate and print
}
w = x[x=="W"]
print(w) # w=charactor(0): a char vector of length 0. 
w = x[x=="W"]
print(w) # w=charactor(0): a char vector of length 0. 
1:length(w) # a sequence [1 0]
1:length(w) # a sequence [1 0]
seq_along(w) # an integer vector of legnth 0]]
a <- 0

if (a != 0) {
  print(1/a)
} else{
  print("No reciprocal for 0.")
}
Inf
a <- 1
for (i in 1:3) {
  print(i)
}
compute_s_n <- function(n) { 
  sum(1:n) bb
}
m <- 5
s_n <- vector(length = m) # create an empty vector
for (n in 1:m) {
  s_n[n] <- compute_s_n(n)
}
n <- 1:m
plot(n, s_n)
heights <- c(69, 62, 66, 70, 70, 73, 67, 73, 67, 70)
heights*2.54/100
avg <- mean(heights)
heights - avg 
s <- sd(heights)
(heights - avg)/s
heights <- c(69, 62, 66, 70, 70, 73, 67, 73, 67, 70)
error <- rnorm(length(heights), 0, 0.1)
heights + error
heights <- c(69, 62, 66, 70, 70, 73, 67, 73, 67, 70)
heights*2.54/100
avg <- mean(heights)
heights -avg
x <- 1:10
sqrt(x)
log(x)
2^x
scale(heights)
(heights - mean(heights))/sd(heights)
class(scale(heights))
v <- c(3, 7, 10, -2)
any(v < 0) # TRUE   (there is a negative)
all(v > 0) # FALSE  (not all are positive)
x <- c(1, 3, 5)
if (all(x %% 2 == 1)) {
  print("All numbers are odd")
}
if (!is.null(x) && length(x) > 0 && all(x > 0)) {
  print("x is a non-empty positive vector")
}
a <- c(0, 1, 2, -4, 5)
ifelse(a > 0, 1/a, NA) # ifelse: vectorized function
library(dslabs)
ind <- murders$population < 10^6
murders$state[ind]
ind <- murders$population < 10^6 & murders$region == "West"
murders$state[ind]
inds <- with(murders, split(seq_along(region), region))
str(inds) # a list of row indices, one per region
murders$state[inds$West] # states where region=="West"
x <- c(10, 5, 8, 5)

which(x == 5) # [1] 2 4 return all indices where the condtion is true
x==5 
ind <- which(murders$state == "California")
ind
murders[ind,]
x <- c("b", "a", "c")
y <- c("a", "b", "d")

match(x, y) # [1] 2 1 NA.  returns one index per element of x, gives the first match only. 
v <- c("a", "b", "a", "c")
which(v == "a") # [1] 1 3
match("a", v) # [1] 1 first postion only
ind <- match(c("New York", "Florida", "Texas"), murders$state)
ind
murders[ind,]
x <- c(1, NA, 3)

which(is.na(x)) # [1] 2
match(NA, x) # [1] 2    
ind <- which(murders$state %in% c("New York", "Florida", "Texas"))
ind
murders[ind,]
c("Boston", "Dakota", "Washington") %in% murders$state
match(c("Boston", "Dakota", "Washington"), murders$state)
match(murders$state, c("Boston", "Dakota", "Washington"))
x <- 1:10
sapply(x, sqrt) #>  [1] 1.00 1.41 1.73 2.00 2.24 2.45 2.65 2.83 3.00 3.16
x <- list(a = 1:3, b = 4:5)
lapply(x, sum)
sapply(x, sum)
mm = matrix(1:10, nc=2, byrow=T) # rows are filled first
mm
apply(mm, 1, sum) # operate on row. rowSums(mm) is faster
apply(mm, 2, \(x) x^2) #> operate on column; `\(x) x^2: anonymous function
# mm^2  # is faster
sp1 = split(murders$population, murders$region) # split(x,f): split vector x into groups by f.
# sp1 is a list
lapply(sp1, sum) #apply sum to each list element; obtain a list
with(murders, tapply(population, region, sum)) #result is an array
v <- c(5, 7, 4, 9, 6)
g <- factor(c("A","A","B","B","B"))
tapply(v, g, mean)
g2 <- factor(c("M","F","M","F","M"))
tapply(v, list(g, g2), mean)
mapply(rep, 1:3, 1:3) # rep(x,times)
# equivilent to
lapply(1:3, function(i) rep(i, i))
mapply(function(a, b) a + b^2, 1:4, 1:4) # 2 6 12 20
# apply the function to(a,b)= (1,1), (2,2), (3,3),(4,4)
library(tidyverse)
library(dslabs)
tidy_data <- gapminder |> 
  filter(country %in% c("South Korea", "Germany") & !is.na(fertility)) |>
  select(country, year, fertility)
head(tidy_data, 6)
library(tidyverse)
library(dslabs)
tidy_data <- gapminder |> 
  filter(country %in% c("South Korea", "Germany") & !is.na(fertility)) |>
  select(country, year, fertility)
head(tidy_data, 6)
path <- system.file("extdata", package = "dslabs") #return the full path of the directory "extdata" in "dslabs"
filename <- file.path(path, "fertility-two-countries-example.csv") 
# return the path with the system-specific seprator (Win: \; Mac/Linux: /)
wide_data <- read_csv(filename)
select(wide_data, country, `1960`:`1970`) |> as.data.frame()
colnames(murders)
murders <- mutate(murders, rate = total/population*100000)
colnames(murders)
filter(murders, rate <= 0.71)
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)
mutate(murders, population = log10(population)) |> head()
mutate(murders, across(c(population, total), log10)) |> head()
mutate(murders, across(where(is.numeric), log10)) |>head(2)
mutate(murders, across(where(is.character), tolower)) |> head(2)
murders |> select(state, region, rate) |> filter(rate <= 0.71)
16 |> sqrt() |> log(base = 2)
murders |> summarize(avg = mean(rate))
murders |> summarize(rate = sum(total)/sum(population)*100000)
murders |> summarize(median = median(population), min = min(population), max = max(population))
murders |> summarize(quantiles = quantile(population, c(0.5, 0, 1)))
murders |> reframe(quantiles = quantile(population, c(0.5, 0, 1)))
median_min_max <- function(x){
  qs <- quantile(x, c(0.5, 0, 1))
  data.frame(median = qs[1], min = qs[2], max = qs[3])
}
murders |> summarize(median_min_max(population))
median_min_max(murders$population) 
#data.frame will use the first string `median` as the row name, but changed it to `50%`
murders |> group_by(region) |> head(4)
murders |> 
  group_by(region) |> 
  summarize(rate = sum(total) / sum(population) * 100000)
murders |> group_by(region) |> summarize(median_min_max(population))
murders |> group_by(region) |> 
  mutate(region_pop = sum(population), n = n()) |> head(2)
murders |> group_by(region) |> 
  mutate(region_pop = sum(population), n = n()) |>
  ungroup() |> head(2)
murders |> 
  summarize(rate = sum(total)/sum(population)*100000) |>
  class()
murders |> 
  summarize(rate = sum(total)/sum(population)*100000) |>
  pull(rate) 
murders |> arrange(rate) |> head()
murders |> arrange(desc(rate)) |> head()
murders |> arrange(region, desc(rate)) |> head(11)
murders |> arrange(region, desc(rate)) |> head(11)
murders |> arrange(desc(rate)) |> head()
median_min_max <- function(x){
  qs <- quantile(x, c(0.5, 0, 1))
  data.frame(median = qs[1], min = qs[2], max = qs[3])
}
murders |> summarize(median_min_max(population))
median_min_max(murders$population) 
#data.frame will use the first string `median` as the row name, but changed it to `50%`
murders |> group_by(region) |> head(4)
murders |> 
  group_by(region) |> 
  summarize(rate = sum(total) / sum(population) * 100000)
murders |> group_by(region) |> summarize(median_min_max(population))
murders |> group_by(region) |> 
  mutate(region_pop = sum(population), n = n()) |> head(2)
murders |> group_by(region) |> 
  mutate(region_pop = sum(population), n = n()) |>
  ungroup() |> head(2)
murders |> 
  summarize(rate = sum(total)/sum(population)*100000) |>
  class()
murders |> 
  summarize(rate = sum(total)/sum(population)*100000) |>
  pull(rate) 
murders |> arrange(rate) |> head()
murders |> arrange(desc(rate)) |> head()
murders |> arrange(region, desc(rate)) |> head(11)
murders |> arrange(region, desc(rate)) |> head(11)
library(dplyr)
library(ggplot2)
library(dslabs)
library(lattice)
ggplot(data = murders)
murders |> ggplot()
p <- ggplot(data = murders)
class(p)
print(p) 
DATA |> ggplot() + LAYER 1 + LAYER 2 + ... + LAYER N
murders |> ggplot() + geom_point(aes(x = population/10^6, y = total))
p + geom_point(aes(population/10^6, total))
p + geom_point(aes(population/10^6, total)) +
  geom_text(aes(population/10^6, total, label = abb))
p_test <- p + geom_text(aes(population/10^6, total, label = abb))
p_test <- p + geom_text(aes(population/10^6, total), label = abb) 
pl <- xyplot(total ~ population/10^6 | region, data = murders, #group by region
             type = c("p", "g"), xlab = "Population/10^6", ylab = "Total", # points +grid
             strip = strip.custom(strip.names = TRUE, var.name = "region"), layout=c(2,2))
# strip: title bar in each panel. strip.names=TRUE: show the var.name "region"
print(pl)
pg <- ggplot(murders, aes(population/10^6, total)) + geom_point(shape = 1) +
  facet_wrap(~region) + theme(aspect.ratio = 1) #square panels
print(pg)
# shape =1: open circles; shape=16: filled circles
p + geom_point(aes(population/10^6, total), size = 3) +
  geom_text(aes(population/10^6, total, label = abb))
p + geom_point(aes(population/10^6, total), size = 3) +
  geom_text(aes(population/10^6, total, label = abb), nudge_x = 1.5) #shift x right
args(ggplot)
p <- murders |> ggplot(aes(population/10^6, total, label = abb))
p + geom_point(size = 3) + geom_text(nudge_x = 1.5)
p + geom_point(size = 3) +  # global mapping
  geom_text(aes(x = 10, y = 800, label = "Hello there!")) #local mapping
p + geom_point(size = 3) +  
  geom_text(nudge_x = 0.05) + 
  scale_x_continuous(trans = "log10") +
  scale_y_continuous(trans = "log10") 
p + geom_point(size = 3) +  
  geom_text(nudge_x = 0.05) + 
  scale_x_log10() +
  scale_y_log10() 
p + geom_point(size = 3) +  
  geom_text(nudge_x = 0.05) + 
  scale_x_log10() +
  scale_y_log10() +
  xlab("Populations in millions (log scale)") + 
  ylab("Total number of murders (log scale)") +
  ggtitle("US Gun Murders in 2010")
p + geom_point(size = 3) +  
  geom_text(nudge_x = 0.05) + 
  scale_x_log10() +
  scale_y_log10() +
  labs(x = "Populations in millions (log scale)", 
       y = "Total number of murders (log scale)", 
       title = "US Gun Murders in 2010")
murders |> ggplot(aes(population/10^6, total, label = abb)) +   
  geom_text(nudge_x = 0.05) + 
  scale_x_log10() +
  scale_y_log10() +
  labs(x = "Populations in millions (log scale)", 
       y = "Total number of murders (log scale)", 
       title = "US Gun Murders in 2010") +
  geom_point(size = 3, color = "blue")
murders |> ggplot(aes(population/10^6, total, label = abb)) +   
  geom_text(nudge_x = 0.05) + 
  scale_x_log10() +
  scale_y_log10() +
  labs(x = "Populations in millions (log scale)", 
       y = "Total number of murders (log scale)", 
       title = "US Gun Murders in 2010") +
  geom_point(aes(col = region), size = 3)
murders |> ggplot(aes(population/10^6, total, label = abb)) +   
  geom_text(nudge_x = 0.05) + 
  scale_x_log10() +
  scale_y_log10() +
  labs(x = "Populations in millions (log scale)", 
       y = "Total number of murders (log scale)", 
       title = "US Gun Murders in 2010",
       color = "Region") + # Lgend name comes from inside labs()
  geom_point(aes(col = region), size = 3)
r <- murders |> 
  summarize(rate = sum(total) /  sum(population) * 10^6) |> 
  pull(rate)
r <- murders |> 
  summarize(rate = sum(total) /  sum(population) * 10^6) |> 
  pull(rate)
murders |> ggplot(aes(population/10^6, total, label = abb)) +   
  geom_text(nudge_x = 0.05) + 
  scale_x_log10() +
  scale_y_log10() +
  labs(x = "Populations in millions (log scale)", 
       y = "Total number of murders (log scale)", 
       title = "US Gun Murders in 2010",
       color = "Region") +
  geom_point(aes(col = region), size = 3) +
  geom_abline(intercept = log10(r), lty = 2, color = "darkgrey") 
p <- murders |> ggplot(aes(population/10^6, total, label = abb)) +   
  geom_text(nudge_x = 0.05) + 
  scale_x_log10() +
  scale_y_log10() +
  labs(x = "Populations in millions (log scale)", 
       y = "Total number of murders (log scale)", 
       title = "US Gun Murders in 2010",
       color = "Region") +
  geom_point(aes(col = region), size = 3) +
  geom_abline(intercept = log10(r), lty = 2, color = "darkgrey")
ds_theme_set()
library(ggthemes)
p + theme_economist()
p + theme_fivethirtyeight()
p + theme_excel()
library(ThemePark)
p + theme_starwars()
p + theme_barbie()
library(ggthemes)
library(ggrepel)

r <- murders |> 
  summarize(rate = sum(total) /  sum(population) * 10^6) |>
  pull(rate)

murders |> ggplot(aes(population/10^6, total, label = abb)) +   
  geom_abline(intercept = log10(r), lty = 2, color = "darkgrey") +
  geom_point(aes(col = region), size = 3) +
  geom_text_repel() + 
  scale_x_log10() +
  scale_y_log10() +
  labs(x = "Populations in millions (log scale)", 
       y = "Total number of murders (log scale)", 
       title = "US Gun Murders in 2010",
       color = "Region") +
  theme_economist()
library(gridExtra)
p1 <- murders |> 
  ggplot(aes(log10(population))) + 
  geom_histogram()
p2 <- murders |> 
  ggplot(aes(log10(population), log10(total))) + 
  geom_point()
grid.arrange(p1, p2, ncol = 2)
beads <- rep( c("red", "blue"), times = c(2,3)) 
#rep(x, times=...):repeat each element of x the number of times gieven in times
beads
set.seed(1996)
beads <- rep( c("red", "blue"), times = c(2,3))
x <- sample(beads, 5) 
x[2:5] 
library(VennDiagram) 
rafalib::mypar() # sets some base plotting parameters, relevant to base R plots
grid.newpage() # clears the curetn grid graphics page
tmp <- draw.pairwise.venn(22, 20, 11, category = c("A", "B"),  #(areaA=22, areaB=20, coss.area=11)
                          lty = rep("blank", 2), # remove the circle borders 
                          fill = c("light blue", "pink"),  
                          alpha = rep(0.5, 2),   
                          cat.dist = rep(0.025, 2), # distance of category lables from the circles
                          cex = 0, # tex size fore region counts. 0 hides the numbers
                          cat.cex = rep(2.5,2)) # text size for the category labels
beads <- rep( c("red", "blue"), times = c(2,3))
x <- ifelse(sample(beads, 1) == "blue", 1, 0)
beads <- rep(c("red", "blue"), times = c(2,3))
sample(beads, 1)
n <- 10^7
x <- sample(beads, n, replace = TRUE)
table(x)/n
set.seed(2026-02-14)  
library(gtools) 
permutations(3, 2) 
hands <- permutations(52, 2, v = deck) 
combinations(3,2) 
library(tidyverse) 
library(dslabs) 
x <- heights %>% filter(sex == "Male") %>% pull(height) 
F <- function(a) mean(x <= a) 
1 - F(70.5) 
cont <- data.frame(x = seq(0, 5, len = 300), y = dgamma(seq(0, 5, len = 300), 2, 2)) #Gamma(shape=2, rate=2): f(a, b)=b^a/Gamma(a) x^{a-1}e^{-bx}
disc <- data.frame(x = seq(0, 5, 0.075), y = dgamma(seq(0, 5, 0.075), 2, 2)) 
ggplot(mapping = aes(x, y)) + 
  geom_col(data =  disc) + 
  geom_line(data = cont) + 
  ylab("f(x)") 
F(a) = pnorm(a, m, s) 
m <- mean(x) 
s <- sd(x) 
1 - pnorm(70.5, m, s) 
rafalib::mypar() 
plot(prop.table(table(x)), xlab = "a = Height in inches", ylab = "Pr(X = a)") 
prop.table(table(a, b), margin = 1)  # rows sum to 1
prop.table(table(a, b), margin = 2)  # cols sum to 1
mean(x <= 68.5) - mean(x <= 67.5) 
mean(x <= 69.5) - mean(x <= 68.5) 
mean(x <= 70.5) - mean(x <= 69.5) 
pnorm(68.5, m, s) - pnorm(67.5, m, s)  
pnorm(69.5, m, s) - pnorm(68.5, m, s)  
pnorm(70.5, m, s) - pnorm(69.5, m, s)  
mean(x <= 70.9) - mean(x <= 70.1) 
pnorm(70.9, m, s) - pnorm(70.1, m, s) 
1 - pnorm(76, m, s) 
dat <- tibble(x = seq(-4, 4, length = 100)*s + m, # x\in [m-4s, m+4s]
              y = dnorm(x, m, s)) 
dat_ribbon <- filter(dat, x >= 2*s + m) # the right tail at least 2 sd from the mean
ggplot(dat, aes(x, y)) + 
  geom_line() + 
  geom_ribbon(aes(ymin = 0, ymax = y), data = dat_ribbon)
n <- length(x) 
m <- mean(x) 
s <- sd(x) 
simulated_heights <- rnorm(n, m, s) 
B <- 10000 
tallest <- replicate(B, { 
  simulated_data <- rnorm(800, m, s) 
  max(simulated_data) 
}) 
mean(tallest >= 7*12) 
x <- seq(-4, 4, length.out = 100) 
qplot(x, f, geom = "line", data = data.frame(x, f = dnorm(x))) 
1. Packages
2. Data loading
3. Data exploration
4. Data manipulation
5. Visualization
6. Simulation / statistics
