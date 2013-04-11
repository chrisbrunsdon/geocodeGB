pkgname <- "postcoder"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('postcoder')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("all.postcodes")
### * all.postcodes

flush(stderr()); flush(stdout())

### Name: all.postcodes
### Title: All of the postcode information used in the look up operation
### Aliases: all.postcodes postcodes

### ** Examples

head(all.postcodes())



cleanEx()
nameEx("osng.proj4string")
### * osng.proj4string

flush(stderr()); flush(stdout())

### Name: osng.proj4string
### Title: 'Proj4' string for postcode coordinates
### Aliases: osng.proj4string

### ** Examples

osng.proj4string()



cleanEx()
nameEx("postcode.lookup.df")
### * postcode.lookup.df

flush(stderr()); flush(stdout())

### Name: postcode.lookup.df
### Title: Data frame postcode geocoding function
### Aliases: postcode.lookup.df

### ** Examples

dframe <- data.frame(place=c("Barnet","Durham","Nowhere","Leicester"),
   postcode=c("EN5 1NE","DH1 3BD","GR8 8TN","LE1 6JJ"))
postcode.lookup.df(dframe,"postcode",result='SPDF')



cleanEx()
nameEx("postcode.lookup.vec")
### * postcode.lookup.vec

flush(stderr()); flush(stdout())

### Name: postcode.lookup.vec
### Title: Character postcode geocoding function
### Aliases: postcode.lookup.vec

### ** Examples

pcodes <- c("EN5 1NE","dud postcode","DH1 3BD","LE1 6JJ")
postcode.lookup.vec(pcodes,result='coords')



cleanEx()
nameEx("postcoder-package")
### * postcoder-package

flush(stderr()); flush(stdout())

### Name: postcoder-package
### Title: Geocoding Data With GB Post Codes
### Aliases: postcoder-package
### Keywords: package

### ** Examples

pcodes <- c("EN5 1NE","DH1 3BD","LE1 6JJ")
 postcode.lookup.vec(pcodes,result='coords')



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
