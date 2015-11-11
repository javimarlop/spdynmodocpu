inlineleafmap <- function(year=2008){
  output <- plotr_leaflet(year=2008)
  #print(output)
 # a$height <- 400
#paste(capture.output(a))
require(htmltools)
require(jsonlite)
#dok <- tags$html(output)
##doc <- HTML(output)
  ##paste(capture.output(doc), collapse ='\n')
##paste(capture.output(output), collapse ='\n')
save_html(output,'tmp.html')
z<-includeText('tmp.html')
z2<-toJSON(z)
return(z)
}

