#
#Manual variance calculation
#

ChickWeight

#Get initial weight data
initial_data <- subset(ChickWeight,ChickWeight$Time == 0)
initial_weights <- initial_data$weight
mean_initial_weight <- mean(initial_weights)
# Calculate the differences with respect to the mean
diff <- initial_data$weight-mean_initial_weight

# Calculate the squared differences
squared_diff <- diff*diff

# Combine all pieces of the puzzle in order to acquire the variance
variance <- sum(squared_diff)/(length(squared_diff)-1)
variance

# Compare your result to the correct solution. You can find the correct solution by calculating it with the `var()` function.
var(initial_data$weight)
