#' List all functions exported when loading a package
#'
#' @param package.name characer string giving the name of the package
#'
#' @return character vector with names of functions exported
#' @export
#'

list_functions <- function(package.name)
{
  library(package.name)
  str = paste("package:", package.name, sep="")
  return(ls(str))
}

