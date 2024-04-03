library("testthat");
context("Temperature function testing")
source("temp_conversion.R")

# YOUR TESTS GO HERE

# This test will fail
test_that(desc = "Fahrenheit to Celsius wrong", code = {
    temp_F <- F_to_C(50);
    expect_that( object = temp_F, condition = equals(2) );
})