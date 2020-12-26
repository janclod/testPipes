#' Function1
#'
#' Clean data frame
#'
#' @param x input data frame
#'
#' @export
#'
#' @examples
#' function1(data.frame(col1 = c(1,2), col2 = c(3,4)))
function1 <- function(x) {
  na.omit(data.frame(col1 = as.numeric(x$col1), col2 = as.numeric(x$col2)))
}
