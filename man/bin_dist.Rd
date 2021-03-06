% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distances.r
\name{bin_dist}
\alias{bin_dist}
\title{Binned Distance}
\usage{
bin_dist(X, PX, lineup.dat = lineup.dat, X.bin = 5, Y.bin = 5)
}
\arguments{
\item{X}{a data.frame with two variables, the first two columns
are used}

\item{PX}{another data.frame with two variables, the first two columns
are used}

\item{lineup.dat}{lineup data so that the binning is done based on the lineup data and not
the individual plots, by default lineup.dat = lineup.dat ; if one wishes to calculate the
binned distance between two plots, one should use lineup.dat = NULL}

\item{X.bin}{number of bins on the x-direction, by default X.bin = 5}

\item{Y.bin}{number of bins on the y-direction, by default Y.bin = 5}
}
\value{
distance between X and PX
}
\description{
Data X is binned into X.bin bins in x-direction and Y.bins in y-direction. The number
of points in each cell is then counted. Same is done for data PX. An euclidean
distance is calculated between the number of points in each cell between X and PX.
}
\examples{
with(mtcars, bin_dist(data.frame(wt, mpg), data.frame(sample(wt), mpg),
lineup.dat = NULL))
}
