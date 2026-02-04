####################################################################################################
#######                                     Daniel Rivas                                     #######
####################################################################################################

vLogical <- TRUE
print(class(vLogical))

vNumeric <- 23.5
print(class(vNumeric))

vInteger <- 2L
print(class(vInteger))

vComplex <- 2+5i
print(class(vComplex))

vCharacter <- 'true'
print(class(vCharacter))

####################################################################################################

# create a vector
apple <- c('red', 'green', 'yellow')
print(apple)

# get the class of the vector
print(class(apple))

# create a list
list1 <- list(c(2, 5, 3), 21.3, sin)

# print the list
print(list1)

# create a matrix
m = matrix( c('a', 'a', 'b', 'c', 'b', 'a'), nrow = 2, ncol = 3, byrow = TRUE)
print(m)

# create an array
a <- array(c('green', 'yellow'), dim = c(3, 3, 2))
print(a)

# create a vector
apple_colors <- c('green', 'green', 'yellow', 'red', 'red', 'red', 'green')

# create a factor object
factor_apple <- factor(apple_colors)

# print the factor
print(factor_apple)
print(nlevels(factor_apple))

# create the data frame
bmi <- 	data.frame(
  gender = c('male', 'male', 'female'),
  height = c(152, 171.5, 165),
  weight = c(81, 93, 78),
  age = c(42, 38, 26)
)
print(bmi)

####################################################################################################

# create vector objects
city <- c('chihuahua', 'saltillo', 'villahermosa', 'merida')
state <- c('CH', 'CO', 'TA', 'YU')
zipcode <- c(33602, 98104, 06161, 80294)

# combine above three vectors into one data frame
addresses <- cbind(city, state, zipcode)

# print a header
cat('#######  the first data frame\n')

# print the data frame
print(addresses)

# create another data frame with similar columns
new_address <- data.frame(
  city = c('pachuca', 'tlaxcala'),
  state = c('HI', 'TL'),
  zipcode = '80230',
  stringsAsFactors = FALSE
)

# print a header
cat('#######  the second data frame\n')

# print the data frame
print(new_address)

# combine rows form both the data frames
all_addresses <- rbind(addresses, new_address)

# print a header
cat('#######  the combined data frame\n')

# print the result
print(all_addresses)

####################################################################################################
#######                                         END                                          #######
####################################################################################################
