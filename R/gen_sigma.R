#' Random covariance matrix generation. This routine uses either the method
#' of diagonal dominance or an autoregressive time series structure. The
#' Diagnoal dominance does not produce large correlations but a wider variety
#' or struture.
#'
#' @param d The dimensionality of the desired Covariance matrix
#'
#' @param ar1 The method that should be used. If FALSE(default) then
#' diagnal dominance is used. If TRUE then an AR time series matrix used.
#'
#' @param phi The AR parameter. Only needed or used when ar1=TRUE
#'
#' @return Sigma A positive definate Covariance matrix.
#'
#' @export
#'
#' @examples gen_sigma(5)
#'
#'

gen_Sigma <- function(d, ar1=FALSE, phi=.5){
  if(ar1){
    Sigma = toeplitz(phi^{0:(d-1)})
    return(Sigma)
  }else{
  A = matrix( runif(d^2, -2, 2), d, d)
  Sigma = A + t(A)
  v = rep(1, d)
  diag(Sigma) = v
  while(eigen(Sigma)$values[d] <= 0){
    v = v + 2
    diag(Sigma) = v
  }

  return(Sigma)
  }
}
