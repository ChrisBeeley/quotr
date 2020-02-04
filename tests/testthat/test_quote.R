context("Check quote functions")
library(quotr)

test_that("API returns valid category data", {
  expect_vector(get_categories(), ptype = character())
  expect_true(length(get_categories()) > 0)
})

test_that("API returns valid quotes", {
  expect_vector(get_categories(), ptype = character())
  expect_length(get_quote(), 1)
})
