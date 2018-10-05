
#' View upper left head of a matrix.
#' Analog to base R head() function for matrix
#'
#' @param M matrix
#' @param n number of rows/cols to print (default is 10)
#'
#' @return prints M[1:n, 1:n]
#' @export
#'

matrix_head = function(M, n=10){
  print(M[1:10, 1:10])
}
