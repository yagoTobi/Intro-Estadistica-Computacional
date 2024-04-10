library(testthat)
source('number_utility.R')
context("number_utility Tests")

library(testthat)

# Test for get_abs_difference function
test_that("get_abs_difference returns correct absolute differences", {
  expect_equal(get_abs_difference(1, 11), 10)
  expect_equal(get_abs_difference(-1, -11), 10)
  expect_equal(get_abs_difference(5, 5), 0)
})

test_that("get_abs_difference handles non-numeric inputs", {
  expect_error(get_abs_difference("a", 11))
  expect_error(get_abs_difference(1, "b"))
})

# Test for inverse_abs_difference function
test_that("inverse_abs_difference returns correct inverse of absolute differences", {
  expect_equal(inverse_abs_difference(1, 11), 1/10)
  expect_equal(inverse_abs_difference(1, 2), 1)
})

test_that("inverse_abs_difference handles division by zero and non-numeric inputs", {
  expect_error(inverse_abs_difference(1, 1)) # Division by zero
  expect_error(inverse_abs_difference("a", 11))
  expect_error(inverse_abs_difference(1, "b"))
})

# Test for get_abs_product function
test_that("get_abs_product returns correct absolute products", {
  expect_equal(get_abs_product(1, 11), 11)
  expect_equal(get_abs_product(-1, 11), 11)
  expect_equal(get_abs_product(-1, -11), 11)
})

test_that("get_abs_product handles non-numeric inputs", {
  expect_error(get_abs_product("a", 11))
  expect_error(get_abs_product(1, "b"))
})
