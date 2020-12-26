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
  c1 <- as.numeric(x$col1)
  c2 <- as.numeric(x$col2)
  data.frame(col1 = c1, col2 = c2) %>% stats::na.omit()
}
