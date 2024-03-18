library(usethis)

# Define the dataset
shark_data <- data.frame(
  region = c("Mexico", "Indonesia", "California"),
  initial_population = c(100, 150, 200),
  growth_rate = c(0.1, 0.15, 0.2)
)

library(purrr)

# Initialize an empty list to store simulation results for each region
simulation_results <- list()

# Loop through each region
for (i in seq_along(regions)) {
  region <- regions[i]
  # Simulate shark population for the given region over the specified years
  population_simulations <- map_dbl(1:years, ~simulate_shark_population(
    initial_population = initial_population[i],
    growth_rate = growth_rates[i],
    carrying_capacity = carrying_capacity,
    time_steps = years,
    threat_factor = threat_factor
  ))

  # Store the simulation results
  simulation_results[[region]] <- population_simulations
}

# Convert the list to a data frame for easier handling
df_simulation_results <- bind_rows(lapply(simulation_results, tibble::enframe), .id = "Region") %>%
  rename(Year = name, Population = value) %>%
  mutate(Year = as.integer(Year))

df_simulation_results
