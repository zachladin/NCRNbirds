% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/birdRichness.R
\name{birdRichness}
\alias{birdRichness}
\title{birdRichness}
\usage{
birdRichness(
  object,
  points = NA,
  AOU = NA,
  years = NA,
  visits = NA,
  byYear = FALSE,
  byPoint = FALSE,
  output = "total",
  ...
)
}
\arguments{
\item{object}{An NCRNbirds object or a list of such objects or a \code{data.frame} like that created by \code{\link{getBirds}}.}

\item{points}{A character vector passed to \code{\link{getBirds}}. The names of one or more points where the data was collected.
\code{NA}(the default) measures richness from all points.}

\item{AOU}{A character vector passed to \code{\link{getBirds}}. One or more AOU (American Ornothological Union) codes of bird species. 
\code{NA} (the default) measures richness based on all species, otherwise only species listed in \code{AOU} will be counted.}

\item{years}{A vector of numbers passed to \code{\link{getBirds}}. \code{NA} (the default) will count species regardless of the year
they were monitored, otherwise only data from years listed in \code{years} will be used. See details below for 
how years where no visits took place are handeled.}

\item{visits}{A length 1 numeric vector, defaults to \code{NA}. Returns data only from the indicated visits.}

\item{byYear}{Logical. If \code{FALSE} (the default) the total species richness across all years will be returned a single numeric value,
if \code{TRUE} a data.frame will be returned with each row a different year and its correspoding species richness.}

\item{byPoint}{Locgcial ,f \code{FALSE} (the default) the total species richness across all points will be returned a single numeric value,
if \code{TRUE} a data.frame will be returned with each row a different plot and its correspoding species richness.}

\item{output}{Either "total" (the default) or "list". Note that this must be in quotes. Determines the type of output from the function, 
when \code{object} is a \code{list}. "total" will give the number of distinct species found across all parks. 
"list" will return a list, with each entry to the list corresponding to the species richness of one of the \code{NCRNbirds} objects in the input list.}

\item{...}{additional arguments passed to \code{\link{getBirds}}. Any argument which is a valid argument for \code{\link{getBirds}} can be used here.}
}
\description{
Returns the number of bird species found in a park, at a point or a collection of points.
}
\details{
This function calculates the species richness for a park, group of parks, group of monitoring points etc. 
Species richness is the number of different species found, regardless of their abundance. The function works by first getting the monitoring data by 
using the \code{\link{getBirds}} function and then counting the number of unique birds found. All of the options for combining or subsetting 
data in \code{\link{getBirds}} will work for \code{birdRichness} including subsetting by year and monitoring point. If there is no data, due to 
no sampling occuring at hte specified time and place, \code{NA} will be returned. 

How years with no visits are handled depends on wth is supplied in \code{object}. If the \code{object} is a \code{data.frame} and 
 \code{years} are specified, it is assumed that result is wanted for all of those years. Therefore if some years are not present in the data, 
 they will be assigned a richness of zero. If the \code{object} is a \code{NCRNbirds} object or a list of such objects, then 
\code{\link{getVisits}} will be called to determine which years samplign took place in. Only years with vistis will be returned, and 
years where no birds were observed will be given a richenss of zero.
}
