inlineleafmap <- function(year=2008){
###  output <- plotr_leaflet(year=2008)
  #print(output)
 # a$height <- 400
#paste(capture.output(a))
require(htmltools)
require(jsonlite)
#dok <- tags$html(output)
##doc <- HTML(output)
  ##paste(capture.output(doc), collapse ='\n')
##paste(capture.output(output), collapse ='\n')
#save_html(output,'tmp.html')
z<-includeHTML('https://www.dropbox.com/s/i44zv3knsgquh71/ll.html?dl=1')
#doc<-includeHTML('https://www.dropbox.com/s/8xs500ho1yzly0u/doc.html?dl=1')
z2<-paste(capture.output(z), collapse ='\n')#toJSON(z)
z2
}

