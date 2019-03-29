#' fill the upper triangle of a (d x d) matrix with the vector v
#'
#' @param v vector with choose(d,2) elements to fill upper triangle
#' @param d dimensionality of (dxd) matrix output
#'
#' @return a (dxd) upper triangluar matrix filled with v
#' @export
#'

fill_upper_tri = function(v, d){
  if(length(v) != choose(d,2)) stop("dimension error: length(v) != choose(d,2)")
   b = matrix(0, d, d)
  b[lower.tri(b, diag=FALSE)] <- v
  b <- t(b)
  return(b)
}



#' Upper triangluar elements of matrix
#'
#' @param A square matrix
#' @param byrow boolean (default=FALSE) if returned vector should be by row.
#'
#' @return ector of upper triangluar elements of input matrix
#' @export
#'

upTri = function(A, byrow=FALSE){
   if(byrow){
      t(A)[lower.tri(A)]
   }else{
      A[upper.tri(A)]
   }
}

