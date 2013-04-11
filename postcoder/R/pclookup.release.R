#'GB Postcode Lookup Table Version
#'
#'A function stating the year and month of release of this version of the GB postcode lookup table
#'
#'
#'@name pclookup.release
#'@docType function
#'@format A character variable stating year and month of release
#'@source
#'\url{http://www.ons.gov.uk/ons/guide-method/geography/products/postcode-directories/-nspp-/index.html}
#'@examples
#'
#'pclookup.release()
#'
pclookup.release <- function() pclookup:::release.date
