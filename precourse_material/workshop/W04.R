####################################################################################################
#######                                     Daniel Rivas                                     #######
####################################################################################################

# # control flow
# if (condition) {
#   statement
# } else {
#   statement
# }

####################################################################################################

# # repeat loop
# repeat {
#    commands
#    if(condition) {
#       break
#    }
# }

v <- c("hello","loop")
cnt <- 2

repeat {
   print(v)
   cnt <- cnt+1

   if(cnt > 5) {
      break
   }
}

# # while loop
# while (test_expression) {
#    statement
# }

v <- c("Hello","while loop")
cnt <- 2

while (cnt < 7) {
   print(v)
   cnt = cnt + 1
}

# # for loop
# for (value in vector) {
#    statements
# }

print(LETTERS)
for (l in LETTERS) {
  print(l)
}


for (i in seq_along(LETTERS)) {
   print(i)
}

####################################################################################################
#######                                         END                                          #######
####################################################################################################
