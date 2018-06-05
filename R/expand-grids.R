#' expand.grid() function for increasing dimension d
#' mimics $d$ nested for loops with elements from $x$.
#' @param x vector of elements to be looped over
#' @param d number of nested for loops
#'
#' @return d x length(x) matrix with each row giving the next iteration of loop
#' @export
#'

expand.grids <- function(x,d) {
  expand.grid(replicate(d, x, simplify=FALSE))
}
