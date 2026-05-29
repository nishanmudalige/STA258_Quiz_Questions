# set.seed(20260529)
# 
# generate_ads_data <- function(
#     filename,
#     n,
#     spend_min,
#     spend_max,
#     base_views,
#     views_per_dollar,
#     noise_sd
# ) {
#   # Generate ad spending values
#   ad_spend <- spend_min + (spend_max - spend_min) * runif(n)^1.25
#   ad_spend <- round(sort(ad_spend), 2)
# 
#   # Generate random noise
#   noise <- rnorm(n, mean = 0, sd = noise_sd)
# 
#   # Generate views
#   views <- base_views + views_per_dollar * ad_spend + noise
# 
#   # Round views and prevent unrealistically low values
#   views <- pmax(500, round(views))
# 
#   # Create data frame
#   ads <- data.frame(
#     ad_spend = ad_spend,
#     views = views
#   )
# 
#   # Save as CSV
#   write.csv(ads, filename, row.names = FALSE)
# 
#   return(ads)
# }
# 
# # Dataset A
# ads_A <- generate_ads_data(
#   filename = "ads_A.csv",
#   n = 36,
#   spend_min = 12,
#   spend_max = 240,
#   base_views = 900,
#   views_per_dollar = 285,
#   noise_sd = 5200
# )
# 
# # Dataset B
# ads_B <- generate_ads_data(
#   filename = "ads_B.csv",
#   n = 36,
#   spend_min = 15,
#   spend_max = 260,
#   base_views = 1200,
#   views_per_dollar = 260,
#   noise_sd = 3600
# )
# 
# # Preview the datasets
# head(ads_A)
# head(ads_B)