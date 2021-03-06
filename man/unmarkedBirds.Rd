% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unmarkedBirds.R
\name{unmarkedBirds}
\alias{unmarkedBirds}
\title{unmarkedBirds}
\usage{
unmarkedBirds(object, formula = NULL, ...)
}
\arguments{
\item{object}{An unamked frame object such as those created by \code{makeUMF} or a \code{list} of such frames.}

\item{formula}{A formula for the the model. Formula indicates covariates for observation and detection in that order. i.e. ~Day ~Forest_Type  Note that 
this is NOT in quotes.}

\item{...}{Additonal arguments passed to the relevant unmarked model fitting method.}
}
\value{
A fitted unmaked model. Currently fits occupancy and n-mixture models.
}
\description{
Analyzes an unmarkedFrame object using methods from the unmarked package.
}
\details{
This function simplifies the process unmarked models (Royal 2004, Kery et al. 2005) to data in an NCRNbirds object or a list of such objects.
The data is preppared by first using the \code{\link{makeUMF}} function to make the proper type of \code{unmarkedFrame}. The fraame can then be fed into
\code{unmarkedBirds} for analysis. This function will automatically detect the frame type and do the corresponding analysis. If a formula is not supplied, 
then all visit covariates in the unmarkedFrame will be used as detection covariates, and all site covaritates will be used as state (abundance or occupancy) 
by defaults.
}
\references{
Kery, M. Royle, J.A. and Schmid. 2005. Modeling avian abundance from replicated counts using binomial mixture models. Ecological Applications. 15: 1450-1461.

Royle, J. A.  2004. N-Mixture models for estimating population size from spatially replicated counts. Biometrics 60: 108-115.
}
