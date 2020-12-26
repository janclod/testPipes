test_that("print input", {
  x <- function1("Yes")
  expect_equal(x, "This is x: Yes")
})
