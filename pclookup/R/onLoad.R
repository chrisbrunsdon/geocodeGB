.onLoad <- function(libname,pkgname) {
  msg <- 'Loading "postcoder" package:
Contains Ordnance Survey Data (c) Crown Copyright and database right 2012
Contains National Statistics Data (c) Crown Copyright and database right 2012
'
  packageStartupMessage(msg)
}
