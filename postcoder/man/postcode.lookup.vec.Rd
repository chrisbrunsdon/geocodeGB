\name{postcode.lookup.vec}
\alias{postcode.lookup.vec}
\title{Character postcode geocoding function}
\usage{
  postcode.lookup.vec(pcode, result = "SPDF")
}
\arguments{
  \item{pcode}{A character vector of postcodes}

  \item{result}{Format of result}
}
\value{
  Either a \code{c(length(pcode),2)} matrix of GB National
  Grid coordinates or a \code{SpatialPointsDataFrame}
  object containing locations
}
\description{
  Postcode geocoding for single character vector
}
\details{
  Look up postcodes supplied in a character vector,
  returning geographical locations in matrix form or as a
  SpatialPointsDataFrame
}
\note{
  For the SPDF result, a non-matching postcode cannot
  appear in the returned object as every point must have a
  well defined reference.  Therefore only matching
  postcodes appear in the returned object.  To trace which
  input postcodes have been matched, the numbers of the
  matching input data rows are copied on to the output
  object, as row names.
}
\examples{
pcodes <- c("EN5 1NE","dud postcode","DH1 3BD","LE1 6JJ")
postcode.lookup.vec(pcodes,result='coords')
}

