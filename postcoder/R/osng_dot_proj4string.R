#'  The \code{proj4} string for OS National Grid coordinates
#'  
#'  The \code{proj4} string used to specify the Ordnance Survey National Grid 'proj4' string
#'  allowing the locations to be transformed to other projections and Longitude/Latitude 
#'  form via the \code{rgdal} package.
#'  
#'  
#'  @title \code{Proj4} string for postcode coordinates 
#'  @return The \code{proj4} string used to represent the OS National Grid coordinates
#'
#'  @examples
#'  osng.proj4string()
#'
osng.proj4string <- function() pclookup:::proj4.used
