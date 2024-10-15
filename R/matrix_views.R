#' Print topleft of matrix
#'
#' @param M matrix to view
#' @param nView Number of rows/cols to view
#'
#' @return print matrix
#' @export
#'
#' @examples
#' M <- diag(1:12)
#' topleft(M)
#' topleft(M, 3)
topleft <- function(M, nView = 5){
  print(M[1:nView, 1:nView])
}

#' Print topright of matrix
#'
#' @param M matrix to view
#' @param nView Number of rows/cols to view
#'
#' @return print matrix
#' @export
#'
#' @examples
#' M <- diag(1:12)
#' topright(M)
#' topright(M, 3)
topright <- function(M, nView = 5){
  n <- nrow(M)
  m <- ncol(M)
  print(M[1:nView, (m+1-nView):m])
}

#' Print bottomleft of matrix
#'
#' @param M matrix to view
#' @param nView Number of rows/cols to view
#'
#' @return print matrix
#' @export
#'
#' @examples
#' M <- diag(1:12)
#' bottomleft(M)
#' bottomleft(M, 3)
bottomright <- function(M, nView = 5){
  n <- nrow(M)
  m <- ncol(M)
  print(M[(n+1-nView):n, (m+1-nView):m])
}

#' Print bottom-right of matrix
#'
#' @param M matrix to view
#' @param nView Number of rows/cols to view
#'
#' @return print matrix
#' @export
#'
#' @examples
#' M <- diag(1:12)
#' bottomright(M)
#' bottomright(M, 3)
bottomleft <- function(M, nView = 5){
  n <- nrow(M)
  m <- ncol(M)
  print(M[(n+1-nView):n, (m+1-nView):m])
}
