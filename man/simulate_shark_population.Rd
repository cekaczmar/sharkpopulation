% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate_shark_population.R
\name{simulate_shark_population}
\alias{simulate_shark_population}
\title{This function simulates the growth of a shark population over a specified
number of time steps using a logistic growth model. It includes a parameter
representing a potential threat or environmental factor affecting the shark
population dynamics.}
\usage{
simulate_shark_population(
  initial_population,
  growth_rate,
  carrying_capacity,
  time_steps,
  threat_factor = 1
)
}
\arguments{
\item{initial_population}{The initial population of sharks.}

\item{growth_rate}{The growth rate of the shark population.}

\item{carrying_capacity}{The carrying capacity of the environment for sharks.}

\item{time_steps}{The number of time steps to simulate.}

\item{threat_factor}{A parameter representing a potential threat or environmental factor.}
}
\value{
A numeric vector representing the shark population at each time step.
}
\description{
This function simulates the growth of a shark population over a specified
number of time steps using a logistic growth model. It includes a parameter
representing a potential threat or environmental factor affecting the shark
population dynamics.
}
\examples{
\dontrun{
shark_population <- simulate_shark_population(50, 0.1, 1000, 50, threat_factor = 0.8)
plot(shark_population, type = 'l', xlab = 'Time Steps', ylab = 'Population', main = 'Shark Population Growth')
}

}
