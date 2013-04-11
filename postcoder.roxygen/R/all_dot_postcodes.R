#'  The postcode lookup table used
#'  
#'  A data frame containing all of the postcodes, and related data
#'  
#'  @title All of the postcode information used in the look up operation
#'  @return Data frame with postcode information (see note)
#'  @note The format of the postcode data frame is 
#'  \itemize{
#'    \item{\code{postcode}: }{The postcode, stripped of spaces}
#'    \item{\code{largeuser}: }{Is the postcode a designated 'large user'}
#'    \item{\code{easting}: }{OS Natioinal Grid northing}
#'    \item{\code{northing}: }{OS National Grid easting}
#'    \item{\code{quality}: }{Quality of location indicator, see ONS documentation}} 
all.postcodes <- function() postcoder:::postcodes
