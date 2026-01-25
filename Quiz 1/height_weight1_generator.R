set.seed(258)

n <- 350

# Height in meters (roughly 1.55–1.95)
height <- rnorm(n, mean = 1.72, sd = 0.07)

# Weight correlated with height
weight <- 22 * height^2 + rnorm(n, mean = 0, sd = 6)

# Keep values reasonable
height <- round(height, 2)
weight <- round(pmax(weight, 45), 1)

data <- data.frame(
  height = height,
  weight = weight
)

#write.csv(data, "height_weight1.csv", row.names = FALSE)
