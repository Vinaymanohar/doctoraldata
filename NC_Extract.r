#R Code to Extract the grid values from the NETCDF format based on the Shapefile 
#Written by VINAY M
#Affiliation: Centre for Geoinformatics Technology, DOS in Geography, University of Mysore
#email: vinaymanohar.gis@gmail.com
library(sp)    
library(ncdf4)
library(raster)
library(rgdal)
setwd("I:\\CLIMATE DATA\\NEX GDDP CLIMATE DATA\\ACCESS1-0-1980_2050-COMPLETED\\pr")
shp = readOGR("MNLPA_points_moved.shp")
pre1 = nc_open("pr_day_ACCESS1-0_rcp45_r1i1p1_2050.nc")
pre1.brick= brick("pr_day_ACCESS1-0_rcp45_r1i1p1_2050.nc")
pre1.mask= mask(pre1.brick, shp)
pre1.df=as.data.frame(pre1.mask, xy=TRUE)
pre1.df=pre1.df[complete.cases(pre1.df),]
write.csv(pre1.df, file="pr_day_ACCESS1-0_rcp45_r1i1p1_2050.csv")


