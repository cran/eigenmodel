\name{rmvnorm}
\alias{rmvnorm}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Sample from the multivariate normal distribution}
\description{
Sample from the multivariate normal distribution
}
\usage{
rmvnorm(mu, Sig2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mu}{ a p x 1 vector }
  \item{Sig2}{ a p x p positive definite matrix}
}
\value{ a p x 1 vector
}
\author{ Peter Hoff }
\examples{rmvnorm( c(0,0,0),diag(rep(3,1)) )   }

\keyword{distribution}% at least one, from doc/KEYWORDS
\keyword{ multivariate }
\keyword{ models }

