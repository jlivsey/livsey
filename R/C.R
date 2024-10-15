#' Print vector in a column
#'
#' @param vector data you want to print
#'
#' @return nothing - just prints
#' @export
#' @examples C(1:10)

C <- function(vector){
  print.this = matrix(vector, ncol=1)
  print(print.this)
}
