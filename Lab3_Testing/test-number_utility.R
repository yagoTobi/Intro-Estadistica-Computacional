library(testthat)

source('number_utility.R')

context("number_utility Tests")

test_that("Test inverse_abs_difference: (1,11))",{
    expected <- 0.1
    actual <- inverse_abs_difference(1, 11)
    expect(expected, actual)
})