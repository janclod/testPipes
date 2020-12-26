#' Show output for y
#'
#' @param y input y
#'
#' @export
#'
#' @examples
#' function2(df)
function2 <- function(y) {
  na.omit(data.frame(col1 = as.numeric(y$col1), col2 = as.numeric(y$col2)))
}
