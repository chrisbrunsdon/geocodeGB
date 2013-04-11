\name{postcode.lookup.vec}
\alias{postcode.lookup.vec}
\title{Character postcode geocoding function}
\usage{postcode.lookup.vec(pcode, result="SPDF")}
\description{Postcode geocoding for single character vector}
\details{Look up postcodes supplied in a character vector,  returning geographical locations in matrix form or as a 
SpatialPointsDataFrame}
\value{Either a \code{c(length(pcode),2)} matrix of GB National Grid coordinates or 
a \code{SpatialPointsDataFrame} object containing locations}
\arguments{\item{pcode}{A character vector of postcodes}
\item{result}{Format of result}}
\examples{pcodes <- c("EN5 1NE","DH1 3BD","LE1 6JJ")
postcode.lookup.vec(pcodes,result='coords')}
