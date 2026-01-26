set.seed(123)

months <- c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
means  <- c(2.5, 2.7, 3.0, 3.3, 3.6, 3.9, 4.1, 4.3, 4.6, 4.8, 5.0, 5.2)

study_data <- data.frame(
  month = rep(months, each = 30),
  study_hours = unlist(
    mapply(
      FUN = function(mu) rnorm(30, mean = mu, sd = 0.6),
      means,
      SIMPLIFY = FALSE
    )
  )
)

# Optional: clamp at 0 (no negative study hours)
study_data$study_hours <- pmax(study_data$study_hours, 0)

# write.csv(study_data, "study_hours_by_month.csv", row.names = FALSE)
