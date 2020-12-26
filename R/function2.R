#' Show output for y
#'
#' @param y input y
#'
#' @export
#'
#' @examples
#' function2(data.frame(col1 = c(1,2), col2 = c(3,4)))
function2 <- function(y) {
  c1 <- as.numeric(y$col1)
  c2 <- as.numeric(y$col2)
  stats::na.omit(data.frame(col1 = c1, col2 = c2))
}
