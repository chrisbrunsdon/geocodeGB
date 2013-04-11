#'  Postcode geocoding for single character vector
#' 
#'  Look up postcodes supplied in a character vector,  returning geographical locations in matrix form or as a 
#'  SpatialPointsDataFrame
#'  
#'  @title Character postcode geocoding function 
#'  @param pcode A character vector of postcodes
#'  @param result Format of result 
#'  @return Either a \code{c(length(pcode),2)} matrix of GB National Grid coordinates or 
#'  a \code{SpatialPointsDataFrame} object containing locations
#'
#'  @examples
#'  pcodes <- c("EN5 1NE","DH1 3BD","LE1 6JJ")
#'  postcode.lookup.vec(pcodes,result='coords')
#'
postcode.lookup.vec <- function(pcode,result='SPDF') {
  pcodestr <- gsub(" +","",pcode)
  pc.index <- match(pcodestr,postcodes$postcode)
  if (result == 'index') return(pc.index)
  if (result == 'coords') {
    temp <- postcodes[pc.index,3:4]
    rownames(temp) <- 1 : length(pcode)
    return(temp) } 
  if (result == 'SPDF') {
    keep <- which(!is.na(pc.index))
    pc.index <- pc.index[keep]
    temp <- postcodes[pc.index,-(3:4)]
    rownames(temp) <- keep
    spdf <- SpatialPointsDataFrame(postcodes[pc.index,3:4],temp)
    proj4string(spdf) <- osng
    return(spdf) }
}
