\name{postcode.lookup.df}
\alias{postcode.lookup.df}
\title{Data frame postcode geocoding function}
\usage{postcode.lookup.df(dframe, pc.col, result="full")}
\description{Postcode geocoding for a column of postcodes in a data frame}
\details{Look up postcodes supplied in a character column in a data frame,  returning geographical locations in matrix form or as a 
SpatialPointsDataFrame}
\value{Either a \code{c(length(pcode),2)} matrix of GB National Grid coordinates or 
a \code{SpatialPointsDataFrame} object containing locations}
\arguments{\item{dframe}{The data frame}
\item{pc.col}{Column number or name where the postcode is recorded}
\item{result}{Format of result}}
\examples{pcodes <- c("EN5 1NE","DH1 3BD","LE1 6JJ")
postcode.lookup.vec(pcodes,result='coords')}
