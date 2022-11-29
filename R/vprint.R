vprint <- function(x){
  if(class(x) == "character"){
    out = cat(x, sep = "\n")
  }else if(class(x) == "numeric"){
    out = matrix(x, ncol = 1)
  }
  print(out)
}
