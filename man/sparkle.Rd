% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fireworks.R
\name{sparkle}
\alias{sparkle}
\title{Sparkle}
\usage{
sparkle(x)
}
\arguments{
\item{x}{an object.}
}
\value{
Invisibly, the supplied object with the \sQuote{S4} bit set (modified
    in place).
}
\description{
Sets the S4 bit on the R object so that \code{isS4()} returns TRUE on it.
}
\examples{
x <- fountain()
isS4(x)
sparkle(x)
isS4(x)

}
