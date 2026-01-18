# Day 6: R Statistics
# Basic statistical functions in R
# Mean, Median, Mode, Standard Deviation, Variance

# Create a sample dataset
data <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
print(data)
# Calculate mean
mean_value <- mean(data)
print(paste("Mean:", mean_value))

# Calculate median
median_value <- median(data)
print(paste("Median:", median_value))

# Calculate standard deviation
sd_value <- sd(data)
print(paste("Standard Deviation:", sd_value))

# Calculate variance
variance_value <- var(data)
print(paste("Variance:", variance_value))