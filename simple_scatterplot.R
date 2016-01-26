#
#Simple scatterplot of initial weight in the ChickWeight dataset
#

# Explore the data 
describe(ChickWeight)

#subset the initial data
initial_data <- subset(ChickWeight,ChickWeight$Time == 0)

initial_weights <- initial_data$weight
# Make a scatterplot of the data on which a horizontal line with height equal to the mean is drawn.
mean_initial_weight <- mean(initial_weights)

plot(initial_weights, main="1st NBA season of Michael Jordan", xlab="Game", ylab="Points")

#Add dotted line for mean
abline(h=mean_initial_weight,lty=2)
