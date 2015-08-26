# Data preparation
out2<-as.data.frame(out)
b<-1:80
DatosApilados <- stack(out2[, c("baresoil","rb","sm","ss")])
tiempo<-rep(b,4)
DatosApilados2<-DatosApilados
DatosApilados2[,1]<-DatosApilados$ind
DatosApilados2[,2]<-tiempo
DatosApilados2[,3]<-DatosApilados$values
names(DatosApilados2) <- c("factor", "tiempo","valor")

# Plot
require(googleVis)
Motion=gvisMotionChart(DatosApilados2, idvar="factor", timevar="tiempo", options=list(height=350, width=400))
# Display chart
plot(Motion) 
# Create Google Gadget
#cat(createGoogleGadget(Motion), file="motionchart.xml")
