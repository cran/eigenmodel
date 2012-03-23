\name{eigenmodel_mcmc}
\alias{eigenmodel_mcmc}

\title{Approximate the posterior distribution of parameters in an eigenmodel}

\description{
Construct approximate samples from the posterior distribution of 
the parameters and latent variables in an eigenmodel for 
symmetric relational data. 
}

\usage{
eigenmodel_mcmc(Y, X = NULL, R = 2, S = 1000, seed = 1, Nss = min(S-burn, 1000), burn = 0)
}

\arguments{
  \item{Y}{an n x n symmetric matrix with missing  diagonal entries. Off-diagonal missing values are allowed.  }
  \item{X}{an n x n x p array of regressors }
  \item{R}{the rank of the approximating factor matrix  }
  \item{S}{number of samples from the Markov chain}
  \item{seed}{a random seed}
  \item{Nss}{number of samples to be saved }
  \item{burn}{number of initial scans  of the Markov chain to be dropped}
}


\value{
 a list with  the following components: 
\item{Z_postmean}{posterior mean of the latent variable in the probit 
specification}
  \item{ULU_postmean}{posterior mean of the reduced-rank approximating matrix}
\item{Y_postmean}{the original data matrix with missing values replaced 
by posterior means}
\item{L_postsamp}{samples of the  eigenvalues}
\item{b_postsamp}{samples of the regression coefficients}
\item{Y}{original data matrix}
\item{X}{original regressor array}
\item{S}{number of scans of the Markov chain}
}

\author{Peter Hoff}
\examples{

data(YX_Friend)

fit<-eigenmodel_mcmc(Y=YX_Friend$Y,X=YX_Friend$X,R=2,S=750,burn=250)

# in general you  should run the Markov chain longer than 750 scans

plot(fit)

#fit<-eigenmodel_mcmc(Y=Y_Gen,R=3,S=10000)

#fit<-eigenmodel_mcmc(Y=Y_Pro,R=3,S=10000)

}



\keyword{ multivariate }
\keyword{ models }

