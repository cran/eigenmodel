\name{rUL_fc}
\alias{rUL_fc}

\title{Sample UL from its full conditional distribution }
\description{
Samples the components of a reduced rank approximating matrix 
from their full conditional distributions
}
\usage{
rUL_fc(E = Z - XB(X, b))
}

\arguments{
  \item{E}{an n x n  symmetric matrix to be modeled with a reduced rank matrix }
}
\value{
 A list with the following components:  
\item{U}{an  n x r matrix of eigenvectors }
  \item{L}{an r x r diagonal matrix of eigenvalues}
}
\author{ Peter Hoff}
\keyword{ multivariate }
\keyword{ models }

