% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rb_fc.R
\name{rb_fc}
\alias{rb_fc}
\title{Sample from the full conditional distribution of the regression coefficients}
\usage{
rb_fc(E = Z - ULU(UL))
}
\arguments{
\item{E}{a symmetric matrix}
}
\value{
a p x 1 vector
}
\description{
Sample from the full conditional distribution of the regression coefficients
in an eigenmodel
}
\author{
Peter Hoff
}
\keyword{models}
\keyword{multivariate}
