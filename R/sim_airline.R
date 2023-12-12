
#' Simulate from SARIMA(0 1 1)(0 1 1) model with integer periodicity
#'
#' @param n length of simulated series
#' @param s frequency of series (eg 12 for monthly or 4 for quarterly)
#' @param theta non-seasonal moving average parameter
#' @param seasonal_theta seasonal moving average parameter
#' @param sigma standard deviation of the innovations
#' @param burn length of burn in to begin series
#' @param demean boolean, should the series be demeaned? (default TRUE)
#' @param first_obs_zero boolean, should the series be scaled so the first
#' observation is at zero? Overides demean value.
#' @param start_date input to ts() argument start
#'
#' @return simulated series as a ts object
#' @export
#'
#' @examples y = sim_airline(theta = .9, seasonal_theta = .9)

sim_airline <- function(n = 120,
                        s = 12,
                        theta = .75,
                        seasonal_theta = .75,
                        sigma = 1,
                        burn = 10^4,
                        demean = TRUE,
                        first_obs_zero = TRUE,
                        start_date = c(2000, 1)) {
  delta = c(1, -1, rep(0, 10), -1, 1)
  rhs_delta = -1 * delta[-1]
  ma_filter = c(1, theta, rep(0, 10), seasonal_theta, theta * seasonal_theta)
  w = rnorm(n + burn, sd = sigma)
  x = rep(NA, n + burn)

  d = max(length(rhs_delta), length(ma_filter))
  x[1:d] = w[1:d]
  for (t in (d + 1):(n + burn)) {
    x_filter <- x[(t - 1):(t - length(rhs_delta))] * rhs_delta
    w_filter <- w[t:(t - length(ma_filter)+1)] * ma_filter
    x[t] <- sum(x_filter, w_filter)
  }

  x_out = x[1:n + burn]

  if(demean){
    x_out = x_out - mean(x_out)
  }

  if(first_obs_zero){
    x_out = x_out - x_out[1]
  }

  x_out = ts(data = x_out, start = start_date, frequency = s)

  return(x_out)
}

