% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getnuis.R
\name{getnuis}
\alias{getnuis}
\title{Estimate the nuisance functions using user provided set of models.}
\usage{
getnuis(
  List_matrix,
  i = 1,
  j = 2,
  K = 2,
  filterrows = FALSE,
  funcname = c("rangerlogit"),
  nfolds = 5,
  eps = 0.005,
  Nmin = 500,
  ...
)
}
\arguments{
\item{List_matrix}{The data frame in capture-recapture format with two lists for which total population is to be estimated.
The first K columns are the capture history indicators for the K lists. The remaining columns are covariates in numeric format.}

\item{filterrows}{A logical value denoting whether to remove all rows with only zeroes.}

\item{funcname}{The vector of estimation function names to obtain the population size.}

\item{nfolds}{The number of folds to be used for cross fitting.}

\item{eps}{The minimum value the estimates can attain to bound them away from zero.}

\item{Nmin}{The cutoff for minimum sample size to perform doubly robust estimation. Otherwise, Petersen estimator is returned.}
}
\value{
A list of estimates containing the following components:
\item{q1mat}{  A matrix of the estimated capture probabilities for list1 for each model.}
\item{q2mat}{  A matrix of the estimated capture probabilities for list 2.}
\item{q12mat}{  A matrix of the estimated capture probabilities for list1 and 2 simultaneously.}
}
\description{
Estimate the nuisance functions using user provided set of models.
}
\examples{
data = simuldata(1000, 1)$List_matrix
qhat_estimate = getnuis(List_matrix = data, funcname = c("logit", "gam"), nfolds = 2, eps = 0.005)
}
\references{
Gruber, S., & Van der Laan, M. J. (2011). tmle: An R package for targeted maximum likelihood estimation.

van der Laan, M. J., Polley, E. C. and Hubbard, A. E. (2008) Super Learner, Statistical Applications of Genetics and Molecular Biology, 6, article 25.
}
