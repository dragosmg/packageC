#' Add eight to numeric vector
#'
#' @inheritParams packageA::add_one
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' add_eight(2)
#' add_eight(3)
add_eight <- function(x) {

  if (!is.numeric(x)) {
    msg <- glue::glue(
      "`add_eight()` expects a numeric input. You have supplied a {class(x)}."
    )
    stop(msg, call. = FALSE)
  }

  packageB::add_six(x) + packageA::add_two(x) - x
}
