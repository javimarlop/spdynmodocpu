plotr_leaflet<-function(){
r<-raster('refmap.tif')

a<-r
b<-r
c<-r
d<-r

a0<-raster::raster(matrix(nrow = nr, ncol = nc, out[1, (3*NN+2):(4*NN+1)]))

values(a)<-values(a0)

#ini<-"+proj=utm +zone=30 +ellps=intl +a=686960 +b=691320 +units=m +no_defs"
#crs(a)<-ini

#newproj<-'+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs' 
#newproj<-'+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +wktext  +no_defs'
#epsg4326 (wgs84)

#a_ll <- projectRaster(a, crs=newproj)

#m = leaflet() %>% addTiles()

#m %>% addRasterImage(a_ll) %>% setView(-0.856123, 37.702488,zoom = 15)
own2<-c('#fed976','#feb24c','#addd8e','#78c679','#41ab5d','#238443','#006837','#004529')
pal <- colorNumeric(own2, c(0,25), na.color = "transparent")

leaflet()  %>% # %>% addTiles()
  addWMSTiles(
    "http://www.ign.es/wms-inspire/pnoa-ma?SERVICE=WMS&",
    layers='OI.OrthoimageCoverage',
    options = WMSTileOptions(format = "image/png", transparent = TRUE),
    attribution = "PNOA cedido por © Instituto Geográfico Nacional"
  ) %>% addRasterImage(a, colors = pal, opacity = 0.5) %>% addLegend(pal = pal, values = values(a), title = "Test") %>% setView(-0.856123, 37.702488,zoom = 15)
}
