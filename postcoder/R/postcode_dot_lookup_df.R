#'  Postcode geocoding for a column of postcodes in a data frame
#' 
#'  Look up postcodes supplied in a character column in a data frame,  returning geographical locations in matrix form or as a 
#'  SpatialPointsDataFrame
#'  
#'  @title Data frame postcode geocoding function 
#'  @param dframe The data frame
#'  @param pc.col Column number or name where the postcode is recorded
#'  @param result Format of result \tabular{ll}{\code{'SPDF'}
#'     \tab \code{SpatialPointsDataFrame} \cr
#'      \code{'coords'} \tab Matrix of coordinates \cr } 
#'  @param append A logical variable requesting whether postcode data should be appended to input data frame (\code{TRUE})
#'  or returned on its own (\code{FALSE}).
#'  @return Either a \code{c(length(pcode),2)} matrix of GB National Grid coordinates or 
#'  a \code{SpatialPointsDataFrame} object containing locations depending on \code{result} parameter.
#'  @note For the SPDF result,  a non-matching postcode cannot appear in the returned object 
#'  as every point must have a well defined reference.  Therefore only matching postcodes appear in the returned
#'  object.  To trace which input postcodes have been matched,  the row names of the matching input data rows are
#'  copied on to the output object.  If there are no row names in the put data,  the output row names are the 
#'  matching input row numbers.
#'  @examples
#'  dframe <- data.frame(place=c("Barnet","Durham","Nowhere","Leicester"),
#'    postcode=c("EN5 1NE","DH1 3BD","GR8 8TN","LE1 6JJ"))
#'postcode.lookup.df(dframe,"postcode",result='SPDF')
#'
postcode.lookup.df <- function(dframe,pc.col,result='SPDF',append=TRUE) {
  pcodestr <- gsub(" +","",dframe[,pc.col])
  pc.index <- match(pcodestr,pclookup:::postcodes$postcode)
  if (result == 'coords') {
    temp <- pclookup:::postcodes[pc.index,3:4]
    rownames(temp) <- 1 : nrow(dframe)
    return(temp) } 
  if (result != 'SPDF') stop('Requested result format not recognised - see help')
  valid <- ! is.na(pc.index)
  dframe <- dframe[valid,]
  pc.index <- pc.index[valid]
  if (!append) {
    codes.to.add <- pclookup:::postcodes[pc.index,-(3:4)]
    rownames(codes.to.add) <- rownames(dframe)
    temp <-SpatialPointsDataFrame(pclookup:::postcodes[pc.index,3:4],codes.to.add)}
  else {
    temp <-SpatialPointsDataFrame(pclookup:::postcodes[pc.index,3:4],cbind(dframe,pclookup:::postcodes[pc.index,-c(1,3,4)]))
  }
  return(temp)
}
