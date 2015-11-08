inlineleafmap <- function(year=2008){
  output <- plotr_leaflet(year=2008)
  #print(output)
 # a$height <- 400
#paste(capture.output(a))
require(htmltools)
doc <- tags$html(output)
#doc <- HTML(output)
  #paste(capture.output(doc), collapse ='\n')
#paste(capture.output(doc), collapse ='\n')
return(doc)
}
