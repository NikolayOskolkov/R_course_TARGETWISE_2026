####################################################################################################
#######                                     Daniel Rivas                                     #######
####################################################################################################

# Creating objects

# create an object
# give it a name followed by the assignment operator
# followed by the value
# assignment operator `<-`
x <- 3

# value of `x` is 3
# also read as 3 goes into `x`

# can also use `=` but not recommended
# shortcut: “Alt + -” on PC, “Option + -” on Mac
x = 3

####################################################################################################

# object names

# can be given any name
# should be explicit, but not too long
this_is_my_favorite_variable <- 0
my_tiny_little_variable <- 0.1

# cannot start with a number
# R is case sensitive
y <- 10
Y <- 20

print(paste0('the value of y is ', y))
print(paste0('and the value of Y is ', Y))

# try to avoid function names as object names
# avoid dots “.” in object names
# be consistent in code styling—style guides available online
# objects are known as variables in many other programming languages

####################################################################################################

# once you have assigned a variable
# you can use as you please
# for example, you can perform basic operations
print(paste0('the values of x is ', x))
print(paste0('and the values of y is ', y))

print(paste0('therefore, the addition is ', x + y))
print(paste0('therefore, the product is ', x * y))

####################################################################################################

# you can do the same to complex data structures
# for example, a vector or a unidimensional array
v <- 1:100

print(paste0('this is a vector:\n', v))
print(paste0('this is a vector minus a variable:\n', v - x))

####################################################################################################

# R is function-oriented
# compute the length of the vector
length(v)

# comes with many mathematical functions
# sample mean
mean(v)

# natural log
log(x)

####################################################################################################

# R makes building graphics easy!
plot(v ^ 2)

####################################################################################################
#######                                         END                                          #######
####################################################################################################
