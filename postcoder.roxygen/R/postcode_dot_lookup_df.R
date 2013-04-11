#'  Postcode geocoding for a column of postcodes in a data frame
#' 
#'  Look up postcodes supplied in a character column in a data frame,  returning geographical locations in matrix form or as a 
#'  SpatialPointsDataFrame
#'  
#'  @title Data frame postcode geocoding function 
#'  @param dframe The data frame
#'  @param pc.col Column number or name where the postcode is recorded
#'  @param result Format of result 
#'  @return Either a \code{c(length(pcode),2)} matrix of GB National Grid coordinates or 
#'  a \code{SpatialPointsDataFrame} object containing locations
#'
#'  @examples
#'  pcodes <- c("EN5 1NE","DH1 3BD","LE1 6JJ")
#'  postcode.lookup.vec(pcodes,result='coords')
#'
postcode.lookup.df <- function(dframe,pc.col,result='full') {
  pcodestr <- gsub(" +","",dframe[,pc.col])
  pc.index <- match(pcodestr,postcodes$postcode)
  if (result == 'index') return(pc.index)
  if (result == 'coords') {
    temp <- postcodes[pc.index,3:4]
    rownames(temp) <- 1 : length(dframe)
    return(temp) } 
  temp <-SpatialPointsDataFrame(postcodes[pc.index,3:4],postcodes[pc.index,-(3:4)])
  return(temp)
}
