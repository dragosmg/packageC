test_that("add_eight() works", {
  expect_equal(add_eight(2), 10)
  expect_equal(add_eight(3), 11)

  expect_equal(add_eight(2L), 10L)
  expect_equal(add_eight(3L), 11L)
})
