#' Print vector in a column
#'
#' @param vector data you want to print
#'
#' @return nothing - just prints
#' @export
#'

C <- function(vector){
  print.this = matrix(vector, ncol=1)
  print(print.this)
}
