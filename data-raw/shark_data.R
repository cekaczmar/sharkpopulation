### Shark Data Set

shark_data <- data.frame(
  initial_population = c(100, 200, 300),
  growth_rate = c(0.1, 0.2, 0.15),
  carrying_capacity = c(1000, 800, 1200),
  time_steps = c(50, 100, 75),
  threat_factor = c(1, 0.8, 0.9)
)

# Save the dataset
usethis::use_data(shark_data, overwrite = TRUE)
