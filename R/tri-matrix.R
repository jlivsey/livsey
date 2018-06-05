# fill the upper triangle of a (d x d) matrix with the vector v
fill_upper_tri = function(v, d){
  if(length(v) != choose(d,2)) stop("dimension error: length(v) != choose(d,2)")
   b = matrix(0, d, d)
  b[lower.tri(b, diag=FALSE)] <- v
  b <- t(b)
  return(b)
}

# returm upper triangluar elements of matrix
upTri = function(A){ A[upper.tri(A)] }
