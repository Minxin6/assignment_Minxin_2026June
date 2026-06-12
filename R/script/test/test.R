
# Unit tests for the feature functions in R/features.R
# Run from the project root:


 source("C:\Users\2402319\repos\assignment_Minxin_2026June\R\features.R")



test_that("label_bmi assigns the correct WHO category", {
  expect_equal(
    label_bmi(c(17, 22, 27, 35)),
    c("0_underweight", "1_normal", "2_overweight", "3_obese")
  )
})

test_that("label_bmi rejects non-numeric input", {
  expect_error(label_bmi("not a number"))
})
