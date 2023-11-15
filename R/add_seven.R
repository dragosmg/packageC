#' Add seven to numeric vector
#'
#' @inheritParams packageA::add_one
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' add_seven(2)
#' add_seven(3)
add_seven <- function(x) {

  if (!is.numeric(x)) {
    msg <- glue::glue(
      "`add_seven()` expects a numeric input. You have supplied a {class(x)}."
    )
    stop(msg, call. = FALSE)
  }


  packageB::add_five(x) + packageA::add_two(x) - x
}
