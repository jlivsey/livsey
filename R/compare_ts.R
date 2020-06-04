#' Compare 2 time series
#' Plot standardized time series together along with their difference
#'
#' @param x1 first time series
#' @param x2 second time series
#' @param legend.titles (optional) vector of legend titles
#'
#' @return a plot
#' @export
#'
compare_ts <- function(x1, x2, legend.titles = NULL){
    x1 <- as.numeric(standardize(x1))
    x2 <- as.numeric(standardize(x2))
    d <- x1 - x2
    ylim.initial <- range(x1, x2)
    vertical.shift <- max(d) + abs(ylim.initial[1])
    x1 <- x1 + vertical.shift
    x2 <- x2 + vertical.shift
    ylim <- range(x1, x2, d)
    xlim <- c(1, length(x1))
    plot(xlim, ylim, type = "n", xlab = "time", ylab = "value")
    lines(x1, lwd = 2, col = "black")
    lines(x2, lwd = 2, col = "red")
    lines(d, type = "h")
    if(!is.null(legend.titles)){
      legend("topleft", legend=legend.titles,
             col=c("black", "red"), lty=1, cex=0.8,
             box.lty=0)
    }
}
