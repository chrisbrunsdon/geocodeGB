osng <- "+proj=tmerc +lat_0=49 +lon_0=-2 +k=0.9996012717 +x_0=400000 +y_0=-100000 +ellps=airy +datum=OSGB36 +units=m +no_defs "

.onLoad <- function(libname,pkgname) {
  cat('Loading "postcoder" package:\n')
  cat("Contains Ordnance Survey Data (c) Crown Copyright and database right 2012\n")
  cat("Contains National Statistics Data (c) Crown Copyright and database right 2012\n")
}
