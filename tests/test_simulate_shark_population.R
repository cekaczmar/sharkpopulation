library(testthat)
library(sharkpopulation)

###The first test checks that the function returns a numeric vector of the expected length.
###This is essential for verifying that the function not only completes without error but
###also produces output in the correct format and of the expected size given the input
###parameters. If your function's logic has remained consistent, this test remains valid
###and useful.

test_that("simulate_shark_population returns expected output", {
  result <- simulate_shark_population(100, 0.1, 1000, 10, 1)
  expect_true(is.numeric(result))
  expect_length(result, 10)
})


###The second test checks that your function properly handles invalid input (in this case,
###a negative initial population size) by returning an error. This is an excellent practice,
###as robust functions should validate their inputs and fail gracefully with informative
###messages when the inputs are invalid. If your function includes checks for other invalid
###inputs (such as non-numeric inputs, carrying capacity less than or equal to zero, negative
###growth rates, etc.), consider adding additional tests to cover these cases as well.
test_that("simulate_shark_population handles errors", {
  expect_error(simulate_shark_population(-100, 0.1, 1000, 10, 1))
})
