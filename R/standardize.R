#' Subtract the mean and divide by the standard deviation
#'
#' @param x vector to be standardized
#'
#' @return vector of same length of x with mean subtracted and divided
#'             through by the variance
#' @export
#'
standardize <- function(x){

  if(!is.numeric(x)) stop('input is not of type numeric')

  (x - mean(x)) / sd(x)
}
