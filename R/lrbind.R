#' list row bind
#'
#' @param List list where each object is a data.frame
#'
#' @return single data.frame where each object is row bound
#' @export
#'

lrbind <- function(List){
  return(do.call("rbind", List))
}
