#' Parse directory of R scripts for errors
#' Check which file in a directory throws and error
#'
#' @param path.to.directory character string giving path to directory to be
#'     checked
#'
#' @return output
#' @export
#'

parse_for_error <- function(path.to.directory)
{
  for (f in list.files(path.to.directory, full.names=TRUE)){
    print(f)
    parse(f)
  }
}
