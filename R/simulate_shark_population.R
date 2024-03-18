
### This is a function to simulate shark population size which is depending
## upon initial population, carrying capacity, time steps, and threat factor

simulate_shark_population <- function(initial_population, growth_rate, carrying_capacity, time_steps, threat_factor = 1) {
  # Error checking
  if (!is.numeric(initial_population) || !is.numeric(growth_rate) ||
      !is.numeric(carrying_capacity) || !is.numeric(time_steps) ||
      !is.numeric(threat_factor) ||
      any(c(initial_population, growth_rate, carrying_capacity, time_steps, threat_factor) <= 0)) {
    stop("Invalid input. All parameters must be positive numbers.")
  }

  # Initialize a vector to store the shark population at each time step
  shark_population <- numeric(time_steps)

  # Simulate population growth using logistic growth model with a threat factor
  shark_population[1] <- initial_population
  for (t in 2:time_steps) {
    growth <- growth_rate * shark_population[t - 1] * (1 - shark_population[t - 1] / carrying_capacity) * threat_factor
    shark_population[t] <- shark_population[t - 1] + growth
  }

  # Return the simulated shark population vector
  return(shark_population)
}

######## Inputs, Parameters, and Outputs

#INPUTS
##initial_population: This is the starting number of individuals in the shark
###population at the beginning of the simulation. It sets the baseline from
###which population growth is calculated.

##growth_rate: The intrinsic rate at which the shark population grows.
###This rate influences how quickly the population increases before any
###limiting factors, like carrying capacity or threats, are considered.

##carrying_capacity: This represents the maximum population size that the
###environment can sustain indefinitely. When the population reaches this size,
###growth slows down as resources become limited.

##time_steps: The number of time intervals over which to simulate the population
###growth. This essentially determines how long the simulation will run and how
###many data points will be generated.

#PARAMETERS
##threat_factor (default = 1): A coefficient that represents the impact of
###external threats or environmental factors on the shark population. A value
###of 1 implies no impact, values less than 1 represent detrimental effects that
###reduce population growth, and values greater than 1 could indicate beneficial
##factors that increase growth (though typically this factor is used to model
###threats).

#OUTPUTS
##A numeric vector (shark_population): This vector contains the simulated shark
###population size at each time step throughout the simulation period. The first
###element of the vector is the initial population, and subsequent elements show
###the population size at each time step, adjusted for growth rate, carrying
### capacity, and the threat factor.
