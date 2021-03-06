% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cor2cov.R
\name{cor2cov}
\alias{cor2cov}
\title{Correlation Matrix to Covariance Matrix
convert a correlation matrix and variance vector into the corresponding
   covariance matrix. A warning is given if the covariance matrix is not
   positive definite.}
\usage{
cor2cov(corMat, varVec)
}
\arguments{
\item{corMat}{is a square matrix with 1's on the diagonal}

\item{varVec}{is a valid variance vector, with length}
}
\value{
Covariance matrix
}
\description{
Correlation Matrix to Covariance Matrix
convert a correlation matrix and variance vector into the corresponding
   covariance matrix. A warning is given if the covariance matrix is not
   positive definite.
}
