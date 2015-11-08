run_plot3<-function(rnd=rnd,pgr_rb=pgr_rb,pgr_sm=pgr_sm){
run_model(rnd=rnd,pgr_rb=pgr_rb,pgr_sm=pgr_sm)
a<-inlineleafmap(year=2008)
paste(capture.output(a), collapse ='\n')
}
