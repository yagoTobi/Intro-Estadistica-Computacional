library("testthat");
context("My Awesome Function testing")
source("my_awesome_function.R")

# Tests
test_that("Function correctly handles 'Negative' operation", {
  expect_equal(my_awesome_function(5, "Negative", 3), 2)
  expect_equal(my_awesome_function(-5, "Negative", -3), -2)
})

test_that("Function correctly handles 'Positive' operation", {
  expect_equal(my_awesome_function(5, "Positive", 3), 8)
  expect_equal(my_awesome_function(-5, "Positive", -3), -8)
})

test_that("Function returns NULL for incorrect 'b' value", {
  expect_null(my_awesome_function(5, "Neither", 3))
})
