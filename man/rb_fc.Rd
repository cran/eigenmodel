\name{rb_fc}
\alias{rb_fc}
\title{ Sample from the full conditional distribution of the regression coefficients}
\description{
 Sample from the full conditional distribution of the regression coefficients
 in an eigenmodel 
}
\usage{
rb_fc(E = Z - ULU(UL))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{E}{a symmetric matrix  }
}
\value{
a p x 1 vector
}
\author{Peter Hoff}
\keyword{ multivariate }
\keyword{ models }

