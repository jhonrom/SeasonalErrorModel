# Seasonal Error Model of GREAT-GL project
# Jonathan Romero-Cuellar
# University of Waterloo
# 25/06/2024

# 0. Install and load libraries
if(!require(zoo)){install.packages('zoo'); library(zoo)} else {library(zoo)}


## Calibration -----

### Daily Raw residual -----
cal.date <- as.Date(calData$'02HD012'$date, format = "%Y-%m-%d")

Raw_RES_02HD012_LSTM.lumped        <- calData$'02HD012'$observed..valid. - calData$'02HD012'$LSTM.lumped
Raw_RES_02HD012_LBRM.CC.lumped     <- calData$'02HD012'$observed..valid. - calData$'02HD012'$LBRM.CC.lumped
Raw_RES_02HD012_HYMOD2.lumped      <- calData$'02HD012'$observed..valid. - calData$'02HD012'$HYMOD2.lumped
Raw_RES_02HD012_GR4J.lumped        <- calData$'02HD012'$observed..valid. - calData$'02HD012'$GR4J.lumped
Raw_RES_02HD012_HMETS.lumped       <- calData$'02HD012'$observed..valid. - calData$'02HD012'$HMETS.lumped
Raw_RES_02HD012_Blended.lumped     <- calData$'02HD012'$observed..valid. - calData$'02HD012'$Blended.lumped
Raw_RES_02HD012_Blended.Raven      <- calData$'02HD012'$observed..valid. - calData$'02HD012'$Blended.Raven
Raw_RES_02HD012_VIC.Raven          <- calData$'02HD012'$observed..valid. - calData$'02HD012'$VIC.Raven
Raw_RES_02HD012_SWAT.Raven         <- calData$'02HD012'$observed..valid. - calData$'02HD012'$SWAT.Raven
Raw_RES_02HD012_WATFLOOD.Raven     <- calData$'02HD012'$observed..valid. - calData$'02HD012'$WATFLOOD.Raven
Raw_RES_02HD012_MESH.CLASS.Raven   <- calData$'02HD012'$observed..valid. - calData$'02HD012'$MESH.CLASS.Raven
Raw_RES_02HD012_MESH.SVS.Raven     <- calData$'02HD012'$observed..valid. - calData$'02HD012'$MESH.SVS.Raven
Raw_RES_02HD012_GEM.Hydro.Watroute <- calData$'02HD012'$observed..valid. - calData$'02HD012'$GEM.Hydro.Watroute



jpeg("./Fig_Cal_Raw_residuals02HD012_v2.jpg", res = 600, width = 20, height = 12, units = "in")
layout(matrix(c(1,1,2,2,3,4,5,6,7,8,9,10,11,12,13,13), 4, 4, byrow = TRUE))
par(mar = c(1.7,2.3,0.5,0.8))
plot(cal.date, Raw_RES_02HD012_LSTM.lumped, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(12022.8,11, labels = "LSTM.lumped", cex = 2)
#locator()
plot(cal.date, Raw_RES_02HD012_GR4J.lumped, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(12022.8,11, labels = "GR4J.lumped", cex = 2)

plot(cal.date, Raw_RES_02HD012_Blended.lumped, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(12022.8,11, labels = "Blended.lumped", cex = 2)

plot(cal.date, Raw_RES_02HD012_VIC.Raven, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(12022.8,11, labels = "VIC.Raven", cex = 2)

plot(cal.date, Raw_RES_02HD012_HMETS.lumped, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,11, labels = "HMETS.lumped", cex = 2)

plot(cal.date, Raw_RES_02HD012_LBRM.CC.lumped, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,11, labels = "LBRM.CC.lumped", cex = 2)

plot(cal.date, Raw_RES_02HD012_MESH.SVS.Raven, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,11, labels = "MESH.SVS.Raven", cex = 2)

plot(cal.date, Raw_RES_02HD012_HYMOD2.lumped, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,11, labels = "HYMOD2.lumped", cex = 2)

plot(cal.date, Raw_RES_02HD012_Blended.Raven, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(12022.8,11, labels = "Blended.Raven", cex = 2)

plot(cal.date, Raw_RES_02HD012_SWAT.Raven, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(12022.8,11, labels = "SWAT.Raven", cex = 2)

plot(cal.date, Raw_RES_02HD012_WATFLOOD.Raven, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,11, labels = "WATFLOOD.Raven", cex = 2)

plot(cal.date, Raw_RES_02HD012_GEM.Hydro.Watroute, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,-11, labels = "GEM.Hydro.Watroute", cex = 2)

plot(cal.date, Raw_RES_02HD012_MESH.CLASS.Raven, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "") #Daily timestep, Standardized Residuals
abline(h=0, col='black', lwd=2)
text(12022.8,11, labels = "MESH.CLASS.Raven", cex = 2)
dev.off()

### Monthly Raw residual -----
# create zoo object
GanaValRes_LSTM.lumped        <- zoo( Raw_RES_02HD012_LSTM.lumped, order.by = cal.date)
GanaValRes_LBRM.CC.lumped     <- zoo( Raw_RES_02HD012_LBRM.CC.lumped, order.by = cal.date)
GanaValRes_HYMOD2.lumped      <- zoo( Raw_RES_02HD012_HYMOD2.lumped, order.by = cal.date)
GanaValRes_GR4J.lumped        <- zoo( Raw_RES_02HD012_GR4J.lumped, order.by = cal.date)
GanaValRes_HMETS.lumped       <- zoo( Raw_RES_02HD012_HMETS.lumped, order.by = cal.date)
GanaValRes_Blended.lumped     <- zoo( Raw_RES_02HD012_Blended.lumped, order.by = cal.date)
GanaValRes_Blended.Raven      <- zoo( Raw_RES_02HD012_Blended.Raven, order.by = cal.date)
GanaValRes_VIC.Raven          <- zoo( Raw_RES_02HD012_VIC.Raven[-length(Raw_RES_02HD012_VIC.Raven)], order.by = cal.date)
GanaValRes_SWAT.Raven         <- zoo( Raw_RES_02HD012_SWAT.Raven[-length(Raw_RES_02HD012_SWAT.Raven)], order.by = cal.date)
GanaValRes_WATFLOOD.Raven     <- zoo( Raw_RES_02HD012_WATFLOOD.Raven, order.by = cal.date)
GanaValRes_MESH.CLASS.Raven   <- zoo( Raw_RES_02HD012_MESH.CLASS.Raven[-length(Raw_RES_02HD012_MESH.CLASS.Raven)], order.by = cal.date)
GanaValRes_MESH.SVS.Raven     <- zoo( Raw_RES_02HD012_MESH.SVS.Raven[-length(Raw_RES_02HD012_MESH.SVS.Raven)], order.by = cal.date)
GanaValRes_GEM.Hydro.Watroute <- zoo( Raw_RES_02HD012_GEM.Hydro.Watroute, order.by = cal.date)

# create multi-monthly object
GanaValRes_LSTM.lumpedm        <- aggregate(GanaValRes_LSTM.lumped, format(time(GanaValRes_LSTM.lumped), "%m"), mean)
GanaValRes_LBRM.CC.lumpedm     <- aggregate(GanaValRes_LBRM.CC.lumped, format(time(GanaValRes_LBRM.CC.lumped), "%m"), mean)
GanaValRes_HYMOD2.lumpedm      <- aggregate(GanaValRes_HYMOD2.lumped, format(time(GanaValRes_HYMOD2.lumped), "%m"), mean)
GanaValRes_GR4J.lumpedm        <- aggregate(GanaValRes_GR4J.lumped, format(time(GanaValRes_GR4J.lumped), "%m"), mean)
GanaValRes_HMETS.lumpedm       <- aggregate(GanaValRes_HMETS.lumped, format(time(GanaValRes_HMETS.lumped), "%m"), mean)
GanaValRes_Blended.lumpedm     <- aggregate(GanaValRes_Blended.lumped, format(time(GanaValRes_Blended.lumped), "%m"), mean)
GanaValRes_Blended.Ravenm      <- aggregate(GanaValRes_Blended.Raven, format(time(GanaValRes_Blended.Raven), "%m"), mean)
GanaValRes_VIC.Ravenm          <- aggregate(GanaValRes_VIC.Raven, format(time(GanaValRes_VIC.Raven), "%m"), mean)
GanaValRes_SWAT.Ravenm         <- aggregate(GanaValRes_SWAT.Raven, format(time(GanaValRes_SWAT.Raven), "%m"), mean)
GanaValRes_WATFLOOD.Ravenm     <- aggregate(GanaValRes_WATFLOOD.Raven, format(time(GanaValRes_WATFLOOD.Raven), "%m"), mean)
GanaValRes_MESH.CLASS.Ravenm   <- aggregate(GanaValRes_MESH.CLASS.Raven, format(time(GanaValRes_MESH.CLASS.Raven), "%m"), mean)
GanaValRes_MESH.SVS.Ravenm     <- aggregate(GanaValRes_MESH.SVS.Raven, format(time(GanaValRes_MESH.SVS.Raven), "%m"), mean)
GanaValRes_GEM.Hydro.Watroutem <- aggregate(GanaValRes_GEM.Hydro.Watroute, format(time(GanaValRes_GEM.Hydro.Watroute), "%m"), mean)

# Plot monthly REM
jpeg("./Fig_CAl_Monthly_RAW_RES_02HD012_v2.jpg", res = 600, width = 20, height = 12, units = "in")
layout(matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), 4, 4, byrow = TRUE))
par(mar = c(2.7,2.3,0.5,0.8))
plot(GanaValRes_LSTM.lumpedm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 1)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-0.4, labels = "LSTM.lumped", cex = 1.5)

plot(GanaValRes_LBRM.CC.lumpedm, type = "b",ylim = c(-2.5, 2.5), pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(9,-1, labels = "LBRM.CC.lumped", cex = 1.5)

plot(GanaValRes_HYMOD2.lumpedm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-1.5, labels = "HYMOD2.lumped", cex = 1.5)

plot(GanaValRes_GR4J.lumpedm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(7,-1.5, labels = "GR4J.lumped", cex = 1.5)

plot(GanaValRes_HMETS.lumpedm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-1.5, labels = "HMETS.lumped", cex = 1.5)

plot(GanaValRes_Blended.lumpedm, type = "b",ylim = c(-2.5, 2.5), pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-1.5, labels = "Blended.lumped", cex = 1.5)

plot(GanaValRes_Blended.Ravenm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-1.5, labels = "Blended.Raven", cex = 1.5)

plot(GanaValRes_VIC.Ravenm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-1.5, labels = "VIC.Raven", cex = 1.5)

plot(GanaValRes_SWAT.Ravenm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-1.5, labels = "SWAT.Raven", cex = 1.5)

plot(GanaValRes_WATFLOOD.Ravenm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-1.5, labels = "WATFLOOD.Raven", cex = 1.5)

plot(GanaValRes_MESH.CLASS.Ravenm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-1.5, labels = "MESH.CLASS.Raven", cex = 1.5)

plot(GanaValRes_MESH.SVS.Ravenm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-0.4, labels = "MESH.SVS.Raven", cex = 1.5)

plot(GanaValRes_GEM.Hydro.Watroutem, type = "b",ylim = c(-2.5, 2.5), pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(7,0.4, labels = "GEM.Hydro.Watroute", cex = 1.5)

dev.off()


### Daily Standardized residual -----

#val.date <- as.Date(valData$'02HD012'$date, format = "%Y-%m-%d")

jpeg("./Fig_CAl_Std_residuals02HD012_v2.jpg", res = 600, width = 20, height = 12, units = "in")
layout(matrix(c(1,1,2,2,3,4,5,6,7,8,9,10,11,12,13,13), 4, 4, byrow = TRUE))
par(mar = c(1.7,2.3,0.5,0.8))
plot(cal.date, allStationResaultsCal$'02HD012'$LSTM.lumped$nu, ylim = c(-5,7), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,5, labels = "LSTM.lumped", cex = 2)
#locator()
plot(cal.date, allStationResaultsCal$'02HD012'$GR4J.lumped$nu, ylim = c(-5,7), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,5, labels = "GR4J.lumped", cex = 2)

plot(cal.date, allStationResaultsCal$'02HD012'$Blended.lumped$nu, ylim = c(-5,7), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,5, labels = "Blended.lumped", cex = 2)

plot(cal.date[-1], allStationResaultsCal$'02HD012'$VIC.Raven$nu, ylim = c(-5,7), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,5, labels = "VIC.Raven", cex = 2)

plot(cal.date, allStationResaultsCal$'02HD012'$HMETS.lumped$nu, ylim = c(-5,7), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,5, labels = "HMETS.lumped", cex = 2)

plot(cal.date, allStationResaultsCal$'02HD012'$LBRM.CC.lumped$nu, ylim = c(-5,7), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,5, labels = "LBRM.CC.lumped", cex = 2)

plot(cal.date[-1], allStationResaultsCal$'02HD012'$MESH.SVS.Raven$nu, ylim = c(-5,7), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,5, labels = "MESH.SVS.Raven", cex = 2)

plot(cal.date, allStationResaultsCal$'02HD012'$HYMOD2.lumped$nu, ylim = c(-5,7), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,5, labels = "HYMOD2.lumped", cex = 2)

plot(cal.date, allStationResaultsCal$'02HD012'$Blended.Raven$nu, ylim = c(-5,7), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,5, labels = "Blended.Raven", cex = 2)

plot(cal.date[-1], allStationResaultsCal$'02HD012'$SWAT.Raven$nu, ylim = c(-5,7), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,5, labels = "SWAT.Raven", cex = 2)

plot(cal.date, allStationResaultsCal$'02HD012'$WATFLOOD.Raven$nu, ylim = c(-5,7), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,5, labels = "WATFLOOD.Raven", cex = 2)

plot(cal.date[-1], allStationResaultsCal$'02HD012'$GEM.Hydro.Watroute$nu, ylim = c(-5,7), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,5, labels = "GEM.Hydro.Watroute", cex = 2)

plot(cal.date, allStationResaultsCal$'02HD012'$MESH.CLASS.Raven$nu, ylim = c(-5,7), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "") #Daily timestep, Standardized Residuals
abline(h=0, col='black', lwd=2)
text(13022.8,5, labels = "MESH.CLASS.Raven", cex = 2)
dev.off()


### Monthly Standardized residual -----
# compute standardized residual for station 02HD012
# create zoo object
GanaValStdRes_LSTM.lumped        <- zoo( allStationResaultsCal$'02HD012'$LSTM.lumped$nu, order.by = cal.date)
GanaValStdRes_LBRM.CC.lumped     <- zoo( allStationResaultsCal$'02HD012'$LBRM.CC.lumped$nu, order.by = cal.date)
GanaValStdRes_HYMOD2.lumped      <- zoo( allStationResaultsCal$'02HD012'$HYMOD2.lumped$nu, order.by = cal.date)
GanaValStdRes_GR4J.lumped        <- zoo( allStationResaultsCal$'02HD012'$GR4J.lumped$nu, order.by = cal.date)
GanaValStdRes_HMETS.lumped       <- zoo( allStationResaultsCal$'02HD012'$HMETS.lumped$nu, order.by = cal.date)
GanaValStdRes_Blended.lumped     <- zoo( allStationResaultsCal$'02HD012'$Blended.lumped$nu, order.by = cal.date)
GanaValStdRes_Blended.Raven      <- zoo( allStationResaultsCal$'02HD012'$Blended.Raven$nu, order.by = cal.date)
GanaValStdRes_VIC.Raven          <- zoo( allStationResaultsCal$'02HD012'$VIC.Raven$nu, order.by = cal.date)
GanaValStdRes_SWAT.Raven         <- zoo( allStationResaultsCal$'02HD012'$SWAT.Raven$nu, order.by = cal.date)
GanaValStdRes_WATFLOOD.Raven     <- zoo( allStationResaultsCal$'02HD012'$WATFLOOD.Raven$nu, order.by = cal.date)
GanaValStdRes_MESH.CLASS.Raven   <- zoo( allStationResaultsCal$'02HD012'$MESH.CLASS.Raven$nu, order.by = cal.date)
GanaValStdRes_MESH.SVS.Raven     <- zoo( allStationResaultsCal$'02HD012'$MESH.SVS.Raven$nu, order.by = cal.date)
GanaValStdRes_GEM.Hydro.Watroute <- zoo( allStationResaultsCal$'02HD012'$GEM.Hydro.Watroute$nu, order.by = cal.date)

# create multi-monthly object
GanaValStdRes_LSTM.lumpedm        <- aggregate(GanaValStdRes_LSTM.lumped, format(time(GanaValStdRes_LSTM.lumped), "%m"), mean)
GanaValStdRes_LBRM.CC.lumpedm     <- aggregate(GanaValStdRes_LBRM.CC.lumped, format(time(GanaValStdRes_LBRM.CC.lumped), "%m"), mean)
GanaValStdRes_HYMOD2.lumpedm      <- aggregate(GanaValStdRes_HYMOD2.lumped, format(time(GanaValStdRes_HYMOD2.lumped), "%m"), mean)
GanaValStdRes_GR4J.lumpedm        <- aggregate(GanaValStdRes_GR4J.lumped, format(time(GanaValStdRes_GR4J.lumped), "%m"), mean)
GanaValStdRes_HMETS.lumpedm       <- aggregate(GanaValStdRes_HMETS.lumped, format(time(GanaValStdRes_HMETS.lumped), "%m"), mean)
GanaValStdRes_Blended.lumpedm     <- aggregate(GanaValStdRes_Blended.lumped, format(time(GanaValStdRes_Blended.lumped), "%m"), mean)
GanaValStdRes_Blended.Ravenm      <- aggregate(GanaValStdRes_Blended.Raven, format(time(GanaValStdRes_Blended.Raven), "%m"), mean)
GanaValStdRes_VIC.Ravenm          <- aggregate(GanaValStdRes_VIC.Raven, format(time(GanaValStdRes_VIC.Raven), "%m"), mean)
GanaValStdRes_SWAT.Ravenm         <- aggregate(GanaValStdRes_SWAT.Raven, format(time(GanaValStdRes_SWAT.Raven), "%m"), mean)
GanaValStdRes_WATFLOOD.Ravenm     <- aggregate(GanaValStdRes_WATFLOOD.Raven, format(time(GanaValStdRes_WATFLOOD.Raven), "%m"), mean)
GanaValStdRes_MESH.CLASS.Ravenm   <- aggregate(GanaValStdRes_MESH.CLASS.Raven, format(time(GanaValStdRes_MESH.CLASS.Raven), "%m"), mean)
GanaValStdRes_MESH.SVS.Ravenm     <- aggregate(GanaValStdRes_MESH.SVS.Raven, format(time(GanaValStdRes_MESH.SVS.Raven), "%m"), mean)
GanaValStdRes_GEM.Hydro.Watroutem <- aggregate(GanaValStdRes_GEM.Hydro.Watroute, format(time(GanaValStdRes_GEM.Hydro.Watroute), "%m"), mean)

# Plot monthly REM
jpeg("./Fig_Cal_Monthly_RES_02HD012_v2.jpg", res = 600, width = 20, height = 12, units = "in")
layout(matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), 4, 4, byrow = TRUE))
par(mar = c(2.7,2.3,0.5,0.8))
plot(GanaValStdRes_LSTM.lumpedm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 1)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-0.4, labels = "LSTM.lumped", cex = 1.5)

plot(GanaValStdRes_LBRM.CC.lumpedm, type = "b",ylim = c(-0.9, 1.5), pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(9,-0.2, labels = "LBRM.CC.lumped", cex = 1.5)

plot(GanaValStdRes_HYMOD2.lumpedm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,0.3, labels = "HYMOD2.lumped", cex = 1.5)

plot(GanaValStdRes_GR4J.lumpedm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(7,0.4, labels = "GR4J.lumped", cex = 1.5)

plot(GanaValStdRes_HMETS.lumpedm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-0.4, labels = "HMETS.lumped", cex = 1.5)

plot(GanaValStdRes_Blended.lumpedm, type = "b",ylim = c(-0.9, 1.5), pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,0.4, labels = "Blended.lumped", cex = 1.5)

plot(GanaValStdRes_Blended.Ravenm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-0.2, labels = "Blended.Raven", cex = 1.5)

plot(GanaValStdRes_VIC.Ravenm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-0.2, labels = "VIC.Raven", cex = 1.5)

plot(GanaValStdRes_SWAT.Ravenm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,0.8, labels = "SWAT.Raven", cex = 1.5)

plot(GanaValStdRes_WATFLOOD.Ravenm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(7,0.4, labels = "WATFLOOD.Raven", cex = 1.5)

plot(GanaValStdRes_MESH.CLASS.Ravenm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,0.4, labels = "MESH.CLASS.Raven", cex = 1.5)

plot(GanaValStdRes_MESH.SVS.Ravenm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-0.4, labels = "MESH.SVS.Raven", cex = 1.5)

plot(GanaValStdRes_GEM.Hydro.Watroutem, type = "b",ylim = c(-0.9, 1.5), pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(7,0.4, labels = "GEM.Hydro.Watroute", cex = 1.5)

dev.off()

### Compute NSE & KGE by month for all models -----

# Define KGE function
myKGE <- function(sim, obs) {
  if (length(sim) != length(obs)) {
    stop("The length of simulated and observed data must be the same.")
  }
  
  mean_obs <- mean(obs, na.rm = TRUE)
  mean_sim <- mean(sim, na.rm = TRUE)
  
  std_obs <- sd(obs, na.rm = TRUE)
  std_sim <- sd(sim, na.rm = TRUE)
  
  correlation <- cor(sim, obs, use = "complete.obs")
  
  beta <- mean_sim / mean_obs
  alpha <- std_sim / std_obs
  
  kge <- 1 - sqrt((correlation - 1)^2 + (alpha - 1)^2 + (beta - 1)^2)
  return(kge)
}

# Define NSE function
myNSE <- function(sim, obs) {
  if (length(sim) != length(obs)) {
    stop("The length of simulated and observed data must be the same.")
  }
  
  mean_obs <- mean(obs, na.rm = TRUE)
  
  numerator <- sum((obs - sim)^2, na.rm = TRUE)
  denominator <- sum((obs - mean_obs)^2, na.rm = TRUE)
  
  nse <- 1 - (numerator / denominator)
  return(nse)
}

# Load necessary libraries
library(dplyr)
library(lubridate)
library(tidyr)
# define data frame
df <- calData$'02HD012'
df$date <- as.Date(calData$'02HD012'$date, format = "%Y-%m-%d")
head(df)
str(df)
# Add a month column
df$Month <- month(df$date)
# Convert data to long format for easier manipulation
df_long <- df %>%
  pivot_longer(cols = LSTM.lumped:GEM.Hydro.Watroute, names_to = "Model", values_to = "Discharge_Simulated")

# Calculate KGE and NSE for each month and each model using custom functions
kge_nse_monthly <- df_long %>%
  group_by(Month, Model) %>%
  summarize(
    KGE = myKGE(Discharge_Simulated, observed..valid.),
    NSE = myNSE(Discharge_Simulated, observed..valid.)
  ) %>%
  ungroup()

# Print the KGE and NSE for each month and each model
print(kge_nse_monthly, n=156)


library(ggplot2)
# define custom colors
custom_colors <- c(
  "SWAT.Raven"         = "#1f77b4",
  "Blended.lumped"     = "#ff7f0e",
  "GR4J.lumped"        = "#2ca02c",
  "LSTM.lumped"        = "#d62728",
  "HMETS.lumped"       = "#9467bd",
  "WATFLOOD.Raven"     = "#8c564b",
  "MESH.CLASS.Raven"   = "#e377c2",
  "LBRM.CC.lumpe"      = "#FF004D",
  "Blended.Raven"      = "#bcbd22",
  "HYMOD2.lumped"      = "#17becf",
  "MESH.SVS.Raven"     = "#b5b5b5",
  "VIC.Raven"          = "#393b79",
  "GEM.Hydro.Watroute" = "#000000"
)

# Define custom shapes for each model
custom_shapes <- c(
  "SWAT.Raven"         = 1,
  "Blended.lumped"     = 4,
  "GR4J.lumped"        = 8,
  "LSTM.lumped"        = 20,
  "HMETS.lumped"       = 19,
  "WATFLOOD.Raven"     = 3,
  "MESH.CLASS.Raven"   = 16,
  "LBRM.CC.lumpe"      = 17,
  "Blended.Raven"      = 18,
  "HYMOD2.lumped"      = 0,
  "MESH.SVS.Raven"     = 23,
  "VIC.Raven"          = 24,
  "GEM.Hydro.Watroute" = 10
)

# Plotting Monthly KGE
ggplot(kge_nse_monthly, aes(x = factor(Month), y = KGE, color = Model, shape = Model, group = Model)) +
  geom_line() +
  geom_point() +
  ylim(0,1) +
  scale_x_discrete(name = "Month", breaks = 1:12, labels = month.abb) +
  labs(y = "KGE", title = "Daily KGE for each month (Calibration)") +
  theme_minimal() +
  theme(legend.position = "bottom") +
  scale_color_manual(values = custom_colors) +
  scale_shape_manual(values = custom_shapes) +
  guides(color = guide_legend(nrow = 2, byrow = TRUE), shape = guide_legend(nrow = 2, byrow = TRUE))

# Plotting Monthly NSE
ggplot(kge_nse_monthly, aes(x = factor(Month), y = NSE, color = Model, shape = Model, group = Model)) +
  geom_line() +
  geom_point() +
  scale_x_discrete(name = "Month", breaks = 1:12, labels = month.abb) +
  labs(y = "NSE", title = "Daily NSE for each month (Calibration)") +
  theme_minimal() +
  ylim(0,1)+
  theme(legend.position = "bottom") +
  scale_color_manual(values = custom_colors) +
  scale_shape_manual(values = custom_shapes) +
  guides(color = guide_legend(nrow = 2, byrow = TRUE), shape = guide_legend(nrow = 2, byrow = TRUE))



## Validation -----

### Daily Raw residual -----
val.date <- as.Date(valData$'02HD012'$date, format = "%Y-%m-%d")

Raw_RES_02HD012_LSTM.lumped        <- valData$'02HD012'$observed..valid. - valData$'02HD012'$LSTM.lumped
Raw_RES_02HD012_LBRM.CC.lumped     <- valData$'02HD012'$observed..valid. - valData$'02HD012'$LBRM.CC.lumped
Raw_RES_02HD012_HYMOD2.lumped      <- valData$'02HD012'$observed..valid. - valData$'02HD012'$HYMOD2.lumped
Raw_RES_02HD012_GR4J.lumped        <- valData$'02HD012'$observed..valid. - valData$'02HD012'$GR4J.lumped
Raw_RES_02HD012_HMETS.lumped       <- valData$'02HD012'$observed..valid. - valData$'02HD012'$HMETS.lumped
Raw_RES_02HD012_Blended.lumped     <- valData$'02HD012'$observed..valid. - valData$'02HD012'$Blended.lumped
Raw_RES_02HD012_Blended.Raven      <- valData$'02HD012'$observed..valid. - valData$'02HD012'$Blended.Raven
Raw_RES_02HD012_VIC.Raven          <- valData$'02HD012'$observed..valid. - valData$'02HD012'$VIC.Raven
Raw_RES_02HD012_SWAT.Raven         <- valData$'02HD012'$observed..valid. - valData$'02HD012'$SWAT.Raven
Raw_RES_02HD012_WATFLOOD.Raven     <- valData$'02HD012'$observed..valid. - valData$'02HD012'$WATFLOOD.Raven
Raw_RES_02HD012_MESH.CLASS.Raven   <- valData$'02HD012'$observed..valid. - valData$'02HD012'$MESH.CLASS.Raven
Raw_RES_02HD012_MESH.SVS.Raven     <- valData$'02HD012'$observed..valid. - valData$'02HD012'$MESH.SVS.Raven
Raw_RES_02HD012_GEM.Hydro.Watroute <- valData$'02HD012'$observed..valid. - valData$'02HD012'$GEM.Hydro.Watroute



jpeg("./FigRaw_residuals02HD012_v2.jpg", res = 600, width = 20, height = 12, units = "in")
layout(matrix(c(1,1,2,2,3,4,5,6,7,8,9,10,11,12,13,13), 4, 4, byrow = TRUE))
par(mar = c(1.7,2.3,0.5,0.8))
plot(val.date, Raw_RES_02HD012_LSTM.lumped, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "LSTM.lumped", cex = 2)
#locator()
plot(val.date, Raw_RES_02HD012_GR4J.lumped, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "GR4J.lumped", cex = 2)

plot(val.date, Raw_RES_02HD012_Blended.lumped, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "Blended.lumped", cex = 2)

plot(val.date, Raw_RES_02HD012_VIC.Raven, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "VIC.Raven", cex = 2)

plot(val.date, Raw_RES_02HD012_HMETS.lumped, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "HMETS.lumped", cex = 2)

plot(val.date, Raw_RES_02HD012_LBRM.CC.lumped, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "LBRM.CC.lumped", cex = 2)

plot(val.date, Raw_RES_02HD012_MESH.SVS.Raven, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "MESH.SVS.Raven", cex = 2)

plot(val.date, Raw_RES_02HD012_HYMOD2.lumped, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "HYMOD2.lumped", cex = 2)

plot(val.date, Raw_RES_02HD012_Blended.Raven, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "Blended.Raven", cex = 2)

plot(val.date, Raw_RES_02HD012_SWAT.Raven, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "SWAT.Raven", cex = 2)

plot(val.date, Raw_RES_02HD012_WATFLOOD.Raven, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "WATFLOOD.Raven", cex = 2)

plot(val.date, Raw_RES_02HD012_GEM.Hydro.Watroute, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,-11, labels = "GEM.Hydro.Watroute", cex = 2)

plot(val.date, Raw_RES_02HD012_MESH.CLASS.Raven, ylim = c(-20,20), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "") #Daily timestep, Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "MESH.CLASS.Raven", cex = 2)
dev.off()

### Monthly Raw residual -----
# create zoo object
GanaValRes_LSTM.lumped        <- zoo( Raw_RES_02HD012_LSTM.lumped, order.by = val.date)
GanaValRes_LBRM.CC.lumped     <- zoo( Raw_RES_02HD012_LBRM.CC.lumped, order.by = val.date)
GanaValRes_HYMOD2.lumped      <- zoo( Raw_RES_02HD012_HYMOD2.lumped, order.by = val.date)
GanaValRes_GR4J.lumped        <- zoo( Raw_RES_02HD012_GR4J.lumped, order.by = val.date)
GanaValRes_HMETS.lumped       <- zoo( Raw_RES_02HD012_HMETS.lumped, order.by = val.date)
GanaValRes_Blended.lumped     <- zoo( Raw_RES_02HD012_Blended.lumped, order.by = val.date)
GanaValRes_Blended.Raven      <- zoo( Raw_RES_02HD012_Blended.Raven, order.by = val.date)
GanaValRes_VIC.Raven          <- zoo( Raw_RES_02HD012_VIC.Raven[-length(Raw_RES_02HD012_VIC.Raven)], order.by = val.date)
GanaValRes_SWAT.Raven         <- zoo( Raw_RES_02HD012_SWAT.Raven[-length(Raw_RES_02HD012_SWAT.Raven)], order.by = val.date)
GanaValRes_WATFLOOD.Raven     <- zoo( Raw_RES_02HD012_WATFLOOD.Raven, order.by = val.date)
GanaValRes_MESH.CLASS.Raven   <- zoo( Raw_RES_02HD012_MESH.CLASS.Raven[-length(Raw_RES_02HD012_MESH.CLASS.Raven)], order.by = val.date)
GanaValRes_MESH.SVS.Raven     <- zoo( Raw_RES_02HD012_MESH.SVS.Raven[-length(Raw_RES_02HD012_MESH.SVS.Raven)], order.by = val.date)
GanaValRes_GEM.Hydro.Watroute <- zoo( Raw_RES_02HD012_GEM.Hydro.Watroute, order.by = val.date)

# create multi-monthly object
GanaValRes_LSTM.lumpedm        <- aggregate(GanaValRes_LSTM.lumped, format(time(GanaValRes_LSTM.lumped), "%m"), mean)
GanaValRes_LBRM.CC.lumpedm     <- aggregate(GanaValRes_LBRM.CC.lumped, format(time(GanaValRes_LBRM.CC.lumped), "%m"), mean)
GanaValRes_HYMOD2.lumpedm      <- aggregate(GanaValRes_HYMOD2.lumped, format(time(GanaValRes_HYMOD2.lumped), "%m"), mean)
GanaValRes_GR4J.lumpedm        <- aggregate(GanaValRes_GR4J.lumped, format(time(GanaValRes_GR4J.lumped), "%m"), mean)
GanaValRes_HMETS.lumpedm       <- aggregate(GanaValRes_HMETS.lumped, format(time(GanaValRes_HMETS.lumped), "%m"), mean)
GanaValRes_Blended.lumpedm     <- aggregate(GanaValRes_Blended.lumped, format(time(GanaValRes_Blended.lumped), "%m"), mean)
GanaValRes_Blended.Ravenm      <- aggregate(GanaValRes_Blended.Raven, format(time(GanaValRes_Blended.Raven), "%m"), mean)
GanaValRes_VIC.Ravenm          <- aggregate(GanaValRes_VIC.Raven, format(time(GanaValRes_VIC.Raven), "%m"), mean)
GanaValRes_SWAT.Ravenm         <- aggregate(GanaValRes_SWAT.Raven, format(time(GanaValRes_SWAT.Raven), "%m"), mean)
GanaValRes_WATFLOOD.Ravenm     <- aggregate(GanaValRes_WATFLOOD.Raven, format(time(GanaValRes_WATFLOOD.Raven), "%m"), mean)
GanaValRes_MESH.CLASS.Ravenm   <- aggregate(GanaValRes_MESH.CLASS.Raven, format(time(GanaValRes_MESH.CLASS.Raven), "%m"), mean)
GanaValRes_MESH.SVS.Ravenm     <- aggregate(GanaValRes_MESH.SVS.Raven, format(time(GanaValRes_MESH.SVS.Raven), "%m"), mean)
GanaValRes_GEM.Hydro.Watroutem <- aggregate(GanaValRes_GEM.Hydro.Watroute, format(time(GanaValRes_GEM.Hydro.Watroute), "%m"), mean)

# Plot monthly REM
jpeg("./FigMonthly_RAW_RES_02HD012_v2.jpg", res = 600, width = 20, height = 12, units = "in")
layout(matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), 4, 4, byrow = TRUE))
par(mar = c(2.7,2.3,0.5,0.8))
plot(GanaValRes_LSTM.lumpedm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 1)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-0.4, labels = "LSTM.lumped", cex = 1.5)

plot(GanaValRes_LBRM.CC.lumpedm, type = "b",ylim = c(-2.5, 2.5), pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(9,-1, labels = "LBRM.CC.lumped", cex = 1.5)

plot(GanaValRes_HYMOD2.lumpedm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-1.5, labels = "HYMOD2.lumped", cex = 1.5)

plot(GanaValRes_GR4J.lumpedm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(7,-1.5, labels = "GR4J.lumped", cex = 1.5)

plot(GanaValRes_HMETS.lumpedm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-1.5, labels = "HMETS.lumped", cex = 1.5)

plot(GanaValRes_Blended.lumpedm, type = "b",ylim = c(-2.5, 2.5), pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-1.5, labels = "Blended.lumped", cex = 1.5)

plot(GanaValRes_Blended.Ravenm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-1.5, labels = "Blended.Raven", cex = 1.5)

plot(GanaValRes_VIC.Ravenm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-1.5, labels = "VIC.Raven", cex = 1.5)

plot(GanaValRes_SWAT.Ravenm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-1.5, labels = "SWAT.Raven", cex = 1.5)

plot(GanaValRes_WATFLOOD.Ravenm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-1.5, labels = "WATFLOOD.Raven", cex = 1.5)

plot(GanaValRes_MESH.CLASS.Ravenm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-1.5, labels = "MESH.CLASS.Raven", cex = 1.5)

plot(GanaValRes_MESH.SVS.Ravenm, type = "b", ylim = c(-2.5, 2.5),pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-0.4, labels = "MESH.SVS.Raven", cex = 1.5)

plot(GanaValRes_GEM.Hydro.Watroutem, type = "b",ylim = c(-2.5, 2.5), pch =17, xaxt = "n", col = "red",ylab = "Raw Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(7,0.4, labels = "GEM.Hydro.Watroute", cex = 1.5)

dev.off()

### Compute NSE & KGE by month for all models -----

# Load necessary libraries
library(dplyr)
library(lubridate)
library(tidyr)
# define data frame
df <- valData$'02HD012'
df$date <- as.Date(valData$'02HD012'$date, format = "%Y-%m-%d")
head(df)
str(df)
# Add a month column
df$Month <- month(df$date)
# Convert data to long format for easier manipulation
df_long <- df %>%
  pivot_longer(cols = LSTM.lumped:GEM.Hydro.Watroute, names_to = "Model", values_to = "Discharge_Simulated")

# Calculate KGE and NSE for each month and each model using custom functions
kge_nse_monthly <- df_long %>%
  group_by(Month, Model) %>%
  summarize(
    KGE = myKGE(Discharge_Simulated, observed..valid.),
    NSE = myNSE(Discharge_Simulated, observed..valid.)
  ) %>%
  ungroup()

# Print the KGE and NSE for each month and each model
print(kge_nse_monthly, n=156)


library(ggplot2)
# define custom colors
custom_colors <- c(
  "SWAT.Raven"         = "#1f77b4",
  "Blended.lumped"     = "#ff7f0e",
  "GR4J.lumped"        = "#2ca02c",
  "LSTM.lumped"        = "#d62728",
  "HMETS.lumped"       = "#9467bd",
  "WATFLOOD.Raven"     = "#8c564b",
  "MESH.CLASS.Raven"   = "#e377c2",
  "LBRM.CC.lumpe"      = "#FF004D",
  "Blended.Raven"      = "#bcbd22",
  "HYMOD2.lumped"      = "#17becf",
  "MESH.SVS.Raven"     = "#b5b5b5",
  "VIC.Raven"          = "#393b79",
  "GEM.Hydro.Watroute" = "#000000"
)

# Define custom shapes for each model
custom_shapes <- c(
  "SWAT.Raven"         = 1,
  "Blended.lumped"     = 4,
  "GR4J.lumped"        = 8,
  "LSTM.lumped"        = 20,
  "HMETS.lumped"       = 19,
  "WATFLOOD.Raven"     = 3,
  "MESH.CLASS.Raven"   = 16,
  "LBRM.CC.lumpe"      = 17,
  "Blended.Raven"      = 18,
  "HYMOD2.lumped"      = 0,
  "MESH.SVS.Raven"     = 23,
  "VIC.Raven"          = 24,
  "GEM.Hydro.Watroute" = 10
)

# Plotting Monthly KGE
ggplot(kge_nse_monthly, aes(x = factor(Month), y = KGE, color = Model, shape = Model, group = Model)) +
  geom_line() +
  geom_point() +
  ylim(0,1) +
  scale_x_discrete(name = "Month", breaks = 1:12, labels = month.abb) +
  labs(y = "KGE", title = "Daily KGE for each month") +
  theme_minimal() +
  theme(legend.position = "bottom") +
  scale_color_manual(values = custom_colors) +
  scale_shape_manual(values = custom_shapes) +
  guides(color = guide_legend(nrow = 2, byrow = TRUE), shape = guide_legend(nrow = 2, byrow = TRUE))

# Plotting Monthly NSE
ggplot(kge_nse_monthly, aes(x = factor(Month), y = NSE, color = Model, shape = Model, group = Model)) +
  geom_line() +
  geom_point() +
  scale_x_discrete(name = "Month", breaks = 1:12, labels = month.abb) +
  labs(y = "NSE", title = "Daily NSE for each month") +
  theme_minimal() +
  ylim(0,1)+
  theme(legend.position = "bottom") +
  scale_color_manual(values = custom_colors) +
  scale_shape_manual(values = custom_shapes) +
  guides(color = guide_legend(nrow = 2, byrow = TRUE), shape = guide_legend(nrow = 2, byrow = TRUE))



### Daily Standardized residual -----

val.date <- as.Date(valData$'02HD012'$date, format = "%Y-%m-%d")

jpeg("./FigStd_residuals02HD012_v2.jpg", res = 600, width = 20, height = 12, units = "in")
layout(matrix(c(1,1,2,2,3,4,5,6,7,8,9,10,11,12,13,13), 4, 4, byrow = TRUE))
par(mar = c(1.7,2.3,0.5,0.8))
plot(val.date, allStationResaultsVal$'02HD012'$LSTM.lumped$nu, ylim = c(-5,15), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "LSTM.lumped", cex = 2)
#locator()
plot(val.date, allStationResaultsVal$'02HD012'$GR4J.lumped$nu, ylim = c(-5,15), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "GR4J.lumped", cex = 2)

plot(val.date, allStationResaultsVal$'02HD012'$Blended.lumped$nu, ylim = c(-5,15), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "Blended.lumped", cex = 2)

plot(val.date[-1], allStationResaultsVal$'02HD012'$VIC.Raven$nu, ylim = c(-5,15), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "VIC.Raven", cex = 2)

plot(val.date, allStationResaultsVal$'02HD012'$HMETS.lumped$nu, ylim = c(-5,15), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "HMETS.lumped", cex = 2)

plot(val.date, allStationResaultsVal$'02HD012'$LBRM.CC.lumped$nu, ylim = c(-5,15), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "LBRM.CC.lumped", cex = 2)

plot(val.date[-1], allStationResaultsVal$'02HD012'$MESH.SVS.Raven$nu, ylim = c(-5,15), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "MESH.SVS.Raven", cex = 2)

plot(val.date, allStationResaultsVal$'02HD012'$HYMOD2.lumped$nu, ylim = c(-5,15), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "HYMOD2.lumped", cex = 2)

plot(val.date, allStationResaultsVal$'02HD012'$Blended.Raven$nu, ylim = c(-5,15), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "Blended.Raven", cex = 2)

plot(val.date[-1], allStationResaultsVal$'02HD012'$SWAT.Raven$nu, ylim = c(-5,15), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "SWAT.Raven", cex = 2)

plot(val.date, allStationResaultsVal$'02HD012'$WATFLOOD.Raven$nu, ylim = c(-5,15), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "WATFLOOD.Raven", cex = 2)

plot(val.date, allStationResaultsVal$'02HD012'$GEM.Hydro.Watroute$nu, ylim = c(-5,15), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "")#Daily timestep,Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "GEM.Hydro.Watroute", cex = 2)

plot(val.date[-1], allStationResaultsVal$'02HD012'$MESH.CLASS.Raven$nu, ylim = c(-5,15), type = 'l', col='red', lwd=1, main = '', cex.axis = 2, cex.lab = 2,
     xlab ='', ylab = "") #Daily timestep, Standardized Residuals
abline(h=0, col='black', lwd=2)
text(15879.14,11, labels = "MESH.CLASS.Raven", cex = 2)
dev.off()


### Monthly Standardized residual -----
# compute standardized residual for station 02HD012
# create zoo object
GanaValStdRes_LSTM.lumped        <- zoo( allStationResaultsVal$'02HD012'$LSTM.lumped$nu, order.by = val.date)
GanaValStdRes_LBRM.CC.lumped     <- zoo( allStationResaultsVal$'02HD012'$LBRM.CC.lumped$nu, order.by = val.date)
GanaValStdRes_HYMOD2.lumped      <- zoo( allStationResaultsVal$'02HD012'$HYMOD2.lumped$nu, order.by = val.date)
GanaValStdRes_GR4J.lumped        <- zoo( allStationResaultsVal$'02HD012'$GR4J.lumped$nu, order.by = val.date)
GanaValStdRes_HMETS.lumped       <- zoo( allStationResaultsVal$'02HD012'$HMETS.lumped$nu, order.by = val.date)
GanaValStdRes_Blended.lumped     <- zoo( allStationResaultsVal$'02HD012'$Blended.lumped$nu, order.by = val.date)
GanaValStdRes_Blended.Raven      <- zoo( allStationResaultsVal$'02HD012'$Blended.Raven$nu, order.by = val.date)
GanaValStdRes_VIC.Raven          <- zoo( allStationResaultsVal$'02HD012'$VIC.Raven$nu, order.by = val.date)
GanaValStdRes_SWAT.Raven         <- zoo( allStationResaultsVal$'02HD012'$SWAT.Raven$nu, order.by = val.date)
GanaValStdRes_WATFLOOD.Raven     <- zoo( allStationResaultsVal$'02HD012'$WATFLOOD.Raven$nu, order.by = val.date)
GanaValStdRes_MESH.CLASS.Raven   <- zoo( allStationResaultsVal$'02HD012'$MESH.CLASS.Raven$nu, order.by = val.date)
GanaValStdRes_MESH.SVS.Raven     <- zoo( allStationResaultsVal$'02HD012'$MESH.SVS.Raven$nu, order.by = val.date)
GanaValStdRes_GEM.Hydro.Watroute <- zoo( allStationResaultsVal$'02HD012'$GEM.Hydro.Watroute$nu, order.by = val.date)

# create multi-monthly object
GanaValStdRes_LSTM.lumpedm        <- aggregate(GanaValStdRes_LSTM.lumped, format(time(GanaValStdRes_LSTM.lumped), "%m"), mean)
GanaValStdRes_LBRM.CC.lumpedm     <- aggregate(GanaValStdRes_LBRM.CC.lumped, format(time(GanaValStdRes_LBRM.CC.lumped), "%m"), mean)
GanaValStdRes_HYMOD2.lumpedm      <- aggregate(GanaValStdRes_HYMOD2.lumped, format(time(GanaValStdRes_HYMOD2.lumped), "%m"), mean)
GanaValStdRes_GR4J.lumpedm        <- aggregate(GanaValStdRes_GR4J.lumped, format(time(GanaValStdRes_GR4J.lumped), "%m"), mean)
GanaValStdRes_HMETS.lumpedm       <- aggregate(GanaValStdRes_HMETS.lumped, format(time(GanaValStdRes_HMETS.lumped), "%m"), mean)
GanaValStdRes_Blended.lumpedm     <- aggregate(GanaValStdRes_Blended.lumped, format(time(GanaValStdRes_Blended.lumped), "%m"), mean)
GanaValStdRes_Blended.Ravenm      <- aggregate(GanaValStdRes_Blended.Raven, format(time(GanaValStdRes_Blended.Raven), "%m"), mean)
GanaValStdRes_VIC.Ravenm          <- aggregate(GanaValStdRes_VIC.Raven, format(time(GanaValStdRes_VIC.Raven), "%m"), mean)
GanaValStdRes_SWAT.Ravenm         <- aggregate(GanaValStdRes_SWAT.Raven, format(time(GanaValStdRes_SWAT.Raven), "%m"), mean)
GanaValStdRes_WATFLOOD.Ravenm     <- aggregate(GanaValStdRes_WATFLOOD.Raven, format(time(GanaValStdRes_WATFLOOD.Raven), "%m"), mean)
GanaValStdRes_MESH.CLASS.Ravenm   <- aggregate(GanaValStdRes_MESH.CLASS.Raven, format(time(GanaValStdRes_MESH.CLASS.Raven), "%m"), mean)
GanaValStdRes_MESH.SVS.Ravenm     <- aggregate(GanaValStdRes_MESH.SVS.Raven, format(time(GanaValStdRes_MESH.SVS.Raven), "%m"), mean)
GanaValStdRes_GEM.Hydro.Watroutem <- aggregate(GanaValStdRes_GEM.Hydro.Watroute, format(time(GanaValStdRes_GEM.Hydro.Watroute), "%m"), mean)

# Plot monthly REM
jpeg("./FigMonthly_RES_02HD012_v2.jpg", res = 600, width = 20, height = 12, units = "in")
layout(matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), 4, 4, byrow = TRUE))
par(mar = c(2.7,2.3,0.5,0.8))
plot(GanaValStdRes_LSTM.lumpedm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 1)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-0.4, labels = "LSTM.lumped", cex = 1.5)

plot(GanaValStdRes_LBRM.CC.lumpedm, type = "b",ylim = c(-0.9, 1.5), pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(9,-0.2, labels = "LBRM.CC.lumped", cex = 1.5)

plot(GanaValStdRes_HYMOD2.lumpedm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,0.3, labels = "HYMOD2.lumped", cex = 1.5)

plot(GanaValStdRes_GR4J.lumpedm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(7,0.4, labels = "GR4J.lumped", cex = 1.5)

plot(GanaValStdRes_HMETS.lumpedm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-0.4, labels = "HMETS.lumped", cex = 1.5)

plot(GanaValStdRes_Blended.lumpedm, type = "b",ylim = c(-0.9, 1.5), pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,0.4, labels = "Blended.lumped", cex = 1.5)

plot(GanaValStdRes_Blended.Ravenm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-0.2, labels = "Blended.Raven", cex = 1.5)

plot(GanaValStdRes_VIC.Ravenm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,-0.2, labels = "VIC.Raven", cex = 1.5)

plot(GanaValStdRes_SWAT.Ravenm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,0.8, labels = "SWAT.Raven", cex = 1.5)

plot(GanaValStdRes_WATFLOOD.Ravenm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(7,0.4, labels = "WATFLOOD.Raven", cex = 1.5)

plot(GanaValStdRes_MESH.CLASS.Ravenm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(8,0.4, labels = "MESH.CLASS.Raven", cex = 1.5)

plot(GanaValStdRes_MESH.SVS.Ravenm, type = "b", ylim = c(-0.9, 1.5),pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(6,-0.4, labels = "MESH.SVS.Raven", cex = 1.5)

plot(GanaValStdRes_GEM.Hydro.Watroutem, type = "b",ylim = c(-0.9, 1.5), pch =17, xaxt = "n", col = "red",ylab = "Standardized Residuals",xlab = "")
axis(1, at = 1:12, labels = month.abb, las = 2)
abline(h=0, col='black', lwd=2, lty=2)
text(7,0.4, labels = "GEM.Hydro.Watroute", cex = 1.5)

dev.off()



