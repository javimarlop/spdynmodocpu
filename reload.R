#install.packages('yaml')
#install.packages('opencpu')
#install.packages('base64enc')
#require(devtools)
#install_github('ramnathv/rCharts@dev')
#install_github('ramnathv/rMaps')
devtools::install('.')
library(spdynmodocpu)
opencpu$browse('library/spdynmodocpu/www/')
