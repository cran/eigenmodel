\name{eigenmodel-package}
\alias{eigenmodel-package}
\alias{eigenmodel}
\docType{package}
\title{
Semiparametric factor and regression models for symmetric relational data
}
\description{
 This package estimates the parameters of a model for
   symmetric relational data (e.g.,  the above-diagonal part of a
   square matrix), using a model-based eigenvalue decomposition
   and regression. Missing data is accomodated, and a posterior
   mean for missing data is calculated under the assumption that the
   data are missing at random. The marginal distribution of the
   relational data can be arbitrary, and is fit with an ordered
   probit specification.
}
\details{
\tabular{ll}{
Package: \tab eigenmodel\cr
Type: \tab Package\cr
Version: \tab 1.01\cr
Date: \tab 2012-03-23\cr
License: \tab GPL Version 2 \cr
}
}
\author{
Peter Hoff <hoff@stat.washington.edu>
}
\references{
Hoff (2007) ``Modeling homophily and stochastic equivalence in symmetric 
relational data''
}
\keyword{ package }
\examples{

data(YX_Friend)

fit<-eigenmodel_mcmc(Y=YX_Friend$Y,X=YX_Friend$X,R=2,S=750,burn=250)

# in general you should run the Markov chain longer than 750 scans

plot(fit)


# people familiar with MCMC might want to implement 
# their own Markov chains: 

Y<-YX_Friend$Y
X<-YX_Friend$X

eigenmodel_setup(R=2)

for(s in 1:100) {   # you should run your chain longer than 100 scans

    Z<-rZ_fc() 
    UL<-rUL_fc()
    b<-rb_fc()  

                 }


#fit_Gen<-eigenmodel_mcmc(Y=Y_Gen,R=3,S=10000)

#fit_Pro<-eigenmodel_mcmc(Y=Y_Pro,R=3,S=10000)



}
