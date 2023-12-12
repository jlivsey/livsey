#' Nice printing of histogram bins along with counts
#'
#' @import utils
#'
#' @param x vector of values
#' @param breaks optional arguement to pass to hist()
#'
#' @return data.frame with two columns, ranges and counts.
#' @export
#'
#' @examples
#' x <- rnorm(100)
#' hist_print(x)
#' hist_print(x, breaks = c(-Inf, -4, -2, 0, 2, 4, Inf))

hist_print <- function(x, breaks = "Sturges"){
  # histogram object
  h <- hist(x, plot = FALSE, breaks = breaks)
  # pretty printing of breaks ranges
  b <- h$breaks
  ranges <- paste(head(b,-1), b[-1], sep=" - ")
  # return data.frame with ranges and counts
  df <- data.frame(range = ranges, count = h$counts)
  return(df)
}


