run_plot3<-function(rnd=rnd,pgr_rb=pgr_rb,pgr_sm=pgr_sm){
run_model(rnd=rnd,pgr_rb=pgr_rb,pgr_sm=pgr_sm)
#ant(rnd=rnd,pgr_rb=pgr_rb,pgr_sm=pgr_sm)
###aa0<-inlineleafmap(year=2008)
output <- plotr_leaflet(year=2008)
#a1a<-gsub('<html>','<html><body>', aa, fixed=TRUE)
#a2a<-gsub('</html>','</body></html>', a1a, fixed=TRUE)
#a0<-paste(capture.output(aa), collapse ='\n')
#a3<-tags$html(a)
#
#as<-HTML(aa0)
#aa<-paste(capture.output(as), collapse ='\n')
#a2<-gsub("\"", "'", aa, fixed=TRUE)
#aa2<-gsub("\r", "", aa, fixed=TRUE)
#a<-gsub("\n", "", aa2, fixed=TRUE)
#paste(aa2)
#return(aa)
output
}
