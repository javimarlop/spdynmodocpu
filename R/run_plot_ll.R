run_plot_ll<-function(rnd=rnd,pgr_rb=pgr_rb,pgr_sm=pgr_sm){
output <- plotr_leaflet(year=2008)
htmlwidgets::saveWidget(output, "mymap.html", selfcontained = FALSE)
}
