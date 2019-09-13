#' Not in
#'
#' The converse of %in%
#'
#' @param x value to be checked
#' @param y values to check over
#'
#' @return TRUE/FALSE opposite of %in%
#' @export
#'
#' @examples 12 %!in% 1:10
#'
'%!in%' <- function(x,y){
  !('%in%'(x,y))
}
