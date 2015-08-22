#' Plot abundance maps of plant communities.
#' 
#' Plot abundance maps of plant communities in a given year. 
#'
#' @param year year to plot (from 1984 to 2008)
#'
#' @return by default plots the final plant communities map (year = 2008).
#'
#' @keywords plot
#'
#' @export
#' 
#' @examples
#' ## Not run plot_maps()

plot_maps<-function(year = 2008) { 
#require(raster)
out<-get('out')
nr<-get('nr')
nc<-get('nc')
NN<-get('NN')

i <- (year-1984)*4

if(i==0){i = 1}

print(paste('year = ',year))

brks <- seq(0, 30, by=1) 
nb <- length(brks)-1 
#i<-96

par(mfrow=c(2,2))

image(raster(matrix(nrow = nr, ncol = nc, out[i, 2:(NN+1)])),breaks=brks, col=rev(grDevices::terrain.colors(nb)), lab.breaks=brks, zlim=c(0,30),main="Salt marsh")

image(raster(matrix(nrow = nr, ncol = nc, out[i, (NN+2):(2*NN+1)])),breaks=brks, col=rev(grDevices::terrain.colors(nb)), lab.breaks=brks, zlim=c(0,30),main="Salt steppe")

image(raster(matrix(nrow = nr, ncol = nc, out[i, (2*NN+2):(3*NN+1)])),breaks=brks, col=rev(grDevices::terrain.colors(nb)), lab.breaks=brks, zlim=c(0,30),main="Reed beds")


image(raster(matrix(nrow = nr, ncol = nc, out[i, (3*NN+2):(4*NN+1)])),breaks=brks, col=rev(grDevices::terrain.colors(nb)), lab.breaks=brks, zlim=c(0,30),main="Bare soil")
}

