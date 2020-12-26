test_that("output y", {
  out <- function2(9)
  expect_equal(out, "This is y: 9")
})
