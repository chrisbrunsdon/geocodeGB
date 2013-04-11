#'  Provides a postcode to map coordinates lookup facility
#' 
#'  \tabular{ll}{
#'  Package: \tab postcoder \cr
#'  Title: \tab Geocoding Data With UK Post Codes \cr
#'  Description: \tab Look up grid references for UK postcodes \cr
#'  Version: \tab 0.9 \cr
#'  License: \tab GPL-3 \cr
#'  Author: \tab Chris Brunsdon <brunsdon@@liverpool.ac.uk> \cr
#'  Maintainer: \tab Chris Brunsdon <brunsdon@@liverpool.ac.uk> \cr
#'  LazyData: \tab TRUE \cr
#'  Depends: sp \cr
#'  } 
#'  
#'  Based on the UK Office for National Statistics Postcode Directory (ONSPD) which is released under Open Government Licence terms,
#'  this package provides functions that return Ordnance Survey National Grid references given the postcode in character format.
#'  It is capable of returning either matrices of coordinates or SpatialPointsDataFrames,  the latter via the \code{\link{sp}} package.
#'  
#'  @name postcoder-package
#'  @docType package
#'  @title Geocoding Data With GB Post Codes
#'  @author Chris Brunsdon <brunsdon@@liverpool.ac.uk>
#'  @references 
#'  \url{http://www.ons.gov.uk/ons/guide-method/geography/products/postcode-directories/-nspp-/index.html}
#'  @keywords package
#'  @examples
#'  pcodes <- c("EN5 1NE","DH1 3BD","LE1 6JJ")
#'  postcode.lookup.vec(pcodes,result='coords')
#'  @export postcode.lookup.vec postcode.lookup.df osng.proj4string all.postcodes
roxygen()
