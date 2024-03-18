library(testthat)
library(sharkpopulation)

test_that("simulate_shark_population returns expected output", {
  result <- simulate_shark_population(100, 0.1, 1000, 10, 1)
  expect_true(is.numeric(result))
  expect_length(result, 10)
})

test_that("simulate_shark_population handles errors", {
  expect_error(simulate_shark_population(-100, 0.1, 1000, 10, 1))
})
