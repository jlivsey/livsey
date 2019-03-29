
#' Check causality of VAR 
#'
#' @param phi "rbind" of Phi_1,...,Phi_p matricies
#'
#' @return TRUE if all roots of companion matrix are less than 1
#' @export
#'
causality_check <- function(phi){
  d <- dim(phi)[1]
  P <- dim(phi)[2]/d
  next.row <- cbind(diag(d*(P-1)), matrix(0, d*(P-1), d))
  comp.mat <- rbind(phi, next.row)
  e <- eigen(comp.mat)$values
  return(all(abs(e)<1))
}

