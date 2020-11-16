
#' Source all files in a subdirector of current working directory
#' Useful for IRE submission.
#'
#' @param subDir_with_slash subdirectory name
#'
#' @export
#'
#' @examples sourceAll_from_subdirectory("Rfiles/")

sourceAll_from_subdirectory <- function(subDir_with_slash){
  subDir <- subDir_with_slash
  files <- list.files(subDir)
  for(i in 1:length(files)){
    path <- file.path(subDir, files[i])
    source(path)
  }
}

# getwd()
# sourceAll_from_subdirectory('Rsource/')
