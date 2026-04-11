# set.seed(456)
# 
# n <- 30
# 
# ad_spend <- round(runif(n, 1000, 10000) / 100) * 100
# 
# sales <- 5000 + 3.5 * ad_spend + rnorm(n, 0, 14000)
# 
# data <- data.frame(
#   ad_spend = ad_spend,
#   sales = round(sales, 0)
# )
# 
# write.csv(data, "marketing_B.csv", row.names = FALSE)