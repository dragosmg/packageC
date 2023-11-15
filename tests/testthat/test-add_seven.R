test_that("add_seven() works", {
  expect_equal(add_seven(2), 9)
  expect_equal(add_seven(3), 10)

  expect_equal(add_seven(2L), 9L)
  expect_equal(add_seven(3L), 10L)
})

test_that("add_seven() complains with non-numeric inputs", {
  expect_error(
    add_seven("a"),
    "`add_seven()` expects a numeric input. You have supplied a character.",
    fixed = TRUE
  )
  expect_error(
    add_seven(TRUE),
    "`add_seven()` expects a numeric input. You have supplied a logical.",
    fixed = TRUE
  )
  expect_error(
    add_seven(c("2", "5")),
    "`add_seven()` expects a numeric input. You have supplied a character.",
    fixed = TRUE
  )

  expect_snapshot_error(add_seven("a"))
  expect_snapshot_error(add_seven(TRUE))
  expect_snapshot_error(add_seven(c("2", "5")))
})
