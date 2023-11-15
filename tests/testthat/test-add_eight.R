test_that("add_eight() works", {
  expect_equal(add_eight(2), 10)
  expect_equal(add_eight(3), 11)

  expect_equal(add_eight(2L), 10L)
  expect_equal(add_eight(3L), 11L)
})

test_that("add_eight() complains with non-numeric inputs", {
  expect_error(
    add_eight("a"),
    "`add_eight()` expects a numeric input. You have supplied a character.",
    fixed = TRUE
  )
  expect_error(
    add_eight(TRUE),
    "`add_eight()` expects a numeric input. You have supplied a logical.",
    fixed = TRUE
  )
  expect_error(
    add_eight(c("2", "5")),
    "`add_eight()` expects a numeric input. You have supplied a character.",
    fixed = TRUE
  )

  expect_snapshot_error(add_eight("a"))
  expect_snapshot_error(add_eight(TRUE))
  expect_snapshot_error(add_eight(c("2", "5")))
})
