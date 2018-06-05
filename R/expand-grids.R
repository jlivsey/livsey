# expand.grid() function for increasing dimension d
expand.grids <- function(x,d) {
  expand.grid(replicate(d, x, simplify=FALSE))
}