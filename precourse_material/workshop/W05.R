####################################################################################################
#######                                     Daniel Rivas                                     #######
####################################################################################################

# mean
# mean(x, trim = 0, na.rm = FALSE, ...)

# create a vector
x <- c(12, 7, 3, 4.2, 18, 2, 54, -21, 8, -5)

# find mean
result_mean <- mean(x)
print(result_mean)

# create a vector
x <- c(12, 7, 3, 4.2, 18, 2, 54, -21, 8, -5)

# find mean
result_mean <- mean(x, trim = 0.3)
print(result_mean)

# create a vector
x <- c(12, 7, 3, 4.2, 18, 2, 54, -21, 8, -5, NA)

# find mean
result_mean <- mean(x)
print(result_mean)

# find mean dropping na values
result_mean <-  mean(x, na.rm = TRUE)
print(result_mean)

####################################################################################################

# median
# median(x, na.rm = FALSE)

# create the vector
x <- c(12, 7, 3, 4.2, 18, 2, 54, -21, 8, -5)

# find the median
median_result <- median(x)
print(median_result)

####################################################################################################

# linear regression
# y = ax + b
# lm(formula, data)

# the predictor vector
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

# the resposne vector
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# create relationship model
relation <- lm(y ~ x)

# get the coefficients
print(relation)

# get the summary of the relationship
print(summary(relation))

# predict the weight of new persons
# predict(object, newdata)

# find weight of a person with height 170
a <- data.frame(x = 170)
result <-  predict(relation, a)
print(result)

# visualize the regression graphically
plot(
  y, x, col = 'blue', main = 'height & weight regression',  xlab = 'weight in kg', ylab = 'height in cm',  cex = 1.3, pch = 16,
  abline(lm(x ~ y))
)

####################################################################################################

# multiple regression
# lm(y ~ x1 + x2 + x3..., data)

# select input data
input <- mtcars[, c('mpg', 'disp', 'hp', 'wt')]
print(head(input))

# create the relationship model
model <- lm(mpg ~ disp + hp + wt, data = input)

# show the model
print(model)

# get the intercept and coefficients
cat('# # # # the coefficient values # # # ', "\n")

# intercept
a <- coef(model)[1]
print(a)

# coefficients
xdisp <- coef(model)[2]
xhp <- coef(model)[3]
xwt <- coef(model)[4]

print(xdisp)
print(xhp)
print(xwt)

# predict
x1 <- 221
x2 <- 102
x3 <- 2.91
print(a + xdisp * x1 + xhp * x2 + xwt * x3)

####################################################################################################

# logistic regression
# glm(formula, data, family)

# select input data
input <- mtcars[, c('am', 'cyl', 'hp', 'wt')]
print(head(input))

# create regression model
am_data = glm(formula = am ~ cyl + hp + wt, data = input, family = binomial)

# show the model
print(summary(am_data))

# load library
library(ISLR)

# fit logistic regression model
model <- glm(default ~ student + balance + income, family = binomial, data = Default)

# disable scientific notation
options(scipen = 999)

# view model summary
summary(model)

# calculate odds ratio
exp(coef(model))

# calculate odds ratio & confidence intervals
exp(cbind(OddsRatio = coef(model), confint(model)))

####################################################################################################

# ancova analysis

# select input data
input <- mtcars[, c('am', 'mpg', 'hp')]
print(head(input))

# model with interaction between categorical variable and predictor variable
# get the dataset

# create the regression model
result <- aov(mpg ~ hp * am, data = input)
print(summary(result))

# model without interaction between categorical variable and predictor variable
# get the dataset
input <- mtcars

# comparing two models
# create the regression model
result <- aov(mpg ~ hp + am, data = input)
print(summary(result))

# get the dataset
input <- mtcars

# create the regression models
result1 <- aov(mpg ~ hp * am, data = input)
result2 <- aov(mpg ~ hp + am, data = input)

# compare the two models
print(anova(result1, result2))

####################################################################################################

# time series analysis

# install
install.packages('survival')

# calculate survival
surv(time, event)
survfit(formula)

# load the library
library('survival')

# print first few rows
print(head(pbc))

# create the survival object
survfit(surv(pbc$time, pbc$status == 2) ~ 1)

# plot the graph
plot(survfit(surv(pbc$time, pbc$status == 2) ~ 1))

####################################################################################################

# chi square

# chisq.test(data)

# load the library
library('mass')

# create a data frame from the main data set
car_data <- data.frame(cars93$airbags, cars93$type)

# create a table with the needed variables
car_data = table(cars93$airbags, cars93$type)
print(car_data)

# perform the chi-square test
print(chisq.test(car_data))

####################################################################################################
#######                                         END                                          #######
####################################################################################################
