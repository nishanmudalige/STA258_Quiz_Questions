# set.seed(123)
# 
# n <- 30
# 
# ad_spend <- round(runif(n, 1000, 10000) / 100) * 100
# 
# sales <- 4000 + 2.8 * ad_spend + rnorm(n, 0, 2500)
# 
# data <- data.frame(
#   ad_spend = ad_spend,
#   sales = round(sales, 0)
# )
# 
# write.csv(data, "marketing_A.csv", row.names = FALSE)