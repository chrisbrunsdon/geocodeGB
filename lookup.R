osng <- "+proj=tmerc +lat_0=49 +lon_0=-2 +k=0.9996012717 +x_0=400000 +y_0=-100000 +ellps=airy +datum=OSGB36 +units=m +no_defs "

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

postcode.lookup.df <- function(pcode,pc.col,result='full') {
	pcodestr <- gsub(" +","",pcode[,pc.col])
	pc.index <- match(pcodestr,postcodes$postcode)
	if (result == 'index') return(pc.index)
	if (result == 'coords') {
		temp <- postcodes[pc.index,3:4]
		rownames(temp) <- 1 : length(pcode)
		return(temp) } 
	temp <-SpatialPointsDataFrame(postcodes[pc.index,3:4],postcodes[pc.index,-(3:4)])
	return(temp)
}
