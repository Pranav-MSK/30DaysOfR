# Load necessary package 
library(ggplot2)

# Create a sample dataset 
data <- data.frame( Score = c(78, 85, 92, 88, 76, 90, 95, 80, 82, 87) ) 

# 1. Basic Descriptive Statistics
print("Summary of Data:")
print(summary(data$Score))   # Provides min, max, median, mean, etc.

print("Mean of Score:")
print(mean(data$Score))      # Calculate mean

print("Median of Score:")
print(median(data$Score))    # Calculate median

print("Standard Deviation of Score:")
print(sd(data$Score))        # Calculate standard deviation

print("Variance of Score:")
print(var(data$Score))       # Calculate variance

print("Range of Score:")
print(range(data$Score))     # Find range

print("Quantiles of Score:")
print(quantile(data$Score))  # Get quartiles

# 2. Frequency Table
print("Frequency Table:")
print(table(cut(data$Score, breaks = 5)))  # Categorizing data into bins

# 3. Data Visualization

# Histogram
hist(data$Score,
     main = "Histogram of Scores",
     col = "blue",
     xlab = "Scores",
     ylab = "Frequency",
     border = "black")

# Boxplot
boxplot(data$Score,
        main = "Boxplot of scores",
        col = "green",
        horizontal = TRUE)

# Density Plot using ggplot2
ggplot(data, aes(x = Score)) +
  geom_density(fill = "lightblue", alpha = 0.5) +
  labs(title = "Density Plot of Scores",
       x = "Scores",
       y = "Density")
