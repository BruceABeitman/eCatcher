plot_data <- function(m, save=F) {
  px <- m$time
  py1 <- m$mws
  py2 <- m$cpu
  py3 <- m$display
  py4 <- m$wifi
  py5 <- m$wifi_base
  py6 <- m$time_base
  
  #BAB added comparison
  External <- py1
  PhoneBase <- (py6)*.5
  WiFi <- PhoneBase + (py5)*.5 + (py4)*.5
  Display <- WiFi + (py3)*.5
  CPU <- Display + (py2)*.5
  
  Test2 <- 0

  out_path <- paste(getwd(), "/out", sep="")
  #if(save == T) {
  dir.create(out_path, showWarnings=F)
  out_file <- paste(out_path, "/model_data.eps", sep="")
  postscript(file=out_file, paper="letter", horizontal=TRUE)
  #}

  pdata <- c(py1, py2, py3, py4, py5, py6)
  #ylim <- c(min(pdata), max(pdata))
  ylim <- c(450, 850)
  xlim <- c(50, 85)
  
  #BAB altered this (was getting margin too small error)
  #par(xpd=T, mar=par()$mar+c(2.0,2.0,2.0,2.0), cex=1.0)
  #par(xpd=T, mar = rep(2, 4,4,4), cex=1.0)
  #par(mar=c(5,5,.1,.1))
  par(mar=c(15,5,1,.1))
  plot(py1, xlab="Time (s)", ylab="Energy (mW)", ylim=ylim, xlim=xlim, type="l", lty=1, lwd=2, col="red"
       ,cex.axis=2, cex.lab=2)
  #axis(side=1, at=1:27, labels=labs[0:27],cex.axis=0.35)
  
  #lines(py2, type="l", lty=2, lwd=1.2, col="red")
  #lines(py3, type="l", lty=3, lwd=1.2, col="blue")
  #lines(py4, type="l", lty=4, lwd=1.2, col="orange")
  #lines(py5, type="l", lty=5, lwd=0.8)
  #lines(py6, type="l", lty=6, lwd=0.8)
  
  lines(CPU, type="l", lty=5, lwd=1.8, col="black")
  #lines(Display, type="b", lty=4, lwd=1.5, pch=19, cex=.6, col="blue")
  #lines(WiFi, type="b", lty=3, lwd=1.6, pch=23, cex=.6, col="orange")
  #lines(PhoneBase, type="l", lty=2, lwd=1.6, pch=17, cex=.6, col="gray")

  #lines(py6, type="l", lty=6, lwd=0.8)

  #legend_labels <- c("External Meter", "CPU", "Display", "Wifi", "Base")
  #legend(0, ylim[2]+2, legend_labels, 
  #       cex=1.5, lty=1:6, lwd=1.6, 
  #       col=c("red", "black", "blue", "orange", "gray"), 
  #       pch=c(NA, NA, 19, 23, NA));
  legend_labels <- c("External Meter", "Online Power Model")
  legend(55, 850, legend_labels, 
         cex=1.5, lty=1:6, lwd=1.6, 
         col=c("red", "black"), 
         pch=c(NA, NA), horiz=TRUE);
  #if(save == T) {
  dev.off()
  #}

  return(m)
}

plot_power <- function(m, save=F) {
  px <- m$time
  pdata = data.frame(py1=m$mws, py4=m$mws)

  out_path <- paste(getwd(), "/out", sep="")
  if(save == T) {
    dir.create(out_path, showWarnings=F)
    out_file <- paste(out_path, "/model_power.eps", sep="")
    postscript(file=out_file, paper="letter", horizontal=TRUE)
  }
 
  ## m$mws: mW*s
  ## cpu train
  #x <- seq(1,220, by=0.5)
  ## wifi train
  #x <- seq(1,120, by=0.5)
  ## display train
  x <- seq(1,59, by=0.5)
  y <- (pdata$py4/(m$time_base/1000))[c(1:length(x))]
  plot(x, y, xlab="Time (s)", ylab="Average Measured Power (mW/500ms)", type="l", 
       lwd=1.5, cex.lab=1.2, cex.axis=1.2)
  
  #ylim <- c(min(pdata), max(pdata))
  #par(xpd=T, mar=par()$mar+c(0,0,2.0,0), cex=1.2)
  #plot(pdata$py4, xlab="Time (s)", ylab="", ylim=ylim, type="l", lty=1, lwd=2, col="red")
  #lines(pdata$py1, type="l", lty=3, lwd=1.2)

  #legend_labels <- c("Wifi", "Energy")
  #legend(0, ylim[2]+0.2, legend_labels, cex=0.8, lty=1:2, lwd=c(2, 1.2), col=c("red", "black"));
  if(save == T) {
    dev.off()
  }

  return(m)
}

plot_wifi <- function(m, save=F) {
  px <- m$time
  pdata = data.frame(py1=m$mws, py4=m$wifi)

  out_path <- paste(getwd(), "/out", sep="")
  if(save == T) {
    dir.create(out_path, showWarnings=F)
    out_file <- paste(out_path, "/model_wifi.eps", sep="")
    postscript(file=out_file, paper="letter", horizontal=TRUE)
  }
 
  ## wifi unit: Kbits over 500ms
  ## cpu train
  #x <- seq(1,220, by=0.5)
  #ylim <- c(0, 1)
  ## wifi train
  #x <- seq(1,120, by=0.5)
  ## display train
  x <- seq(1,59, by=0.5)
  ylim <- c(0, 1)
  ## y: Kbits/s
  #y <- (pdata$py4)[c(1:length(x))]*(1000/m$time_base)[c(1:length(x))]
  ## y: bits/ms
  y <- (pdata$py4)[c(1:length(x))]/m$time_base[c(1:length(x))]*1000
  plot(x, y, xlab="Time (s)", ylab="Transmission Rate (bits/ms)", type="l", ylim=ylim,
       lwd=1.5, cex.lab=1.2, cex.axis=1.2)
  
  #ylim <- c(min(pdata), max(pdata))
  #par(xpd=T, mar=par()$mar+c(0,0,2.0,0), cex=1.2)
  #plot(pdata$py4, xlab="Time (s)", ylab="", ylim=ylim, type="l", lty=1, lwd=2, col="red")
  #lines(pdata$py1, type="l", lty=3, lwd=1.2)

  #legend_labels <- c("Wifi", "Energy")
  #legend(0, ylim[2]+0.2, legend_labels, cex=0.8, lty=1:2, lwd=c(2, 1.2), col=c("red", "black"));
  if(save == T) {
    dev.off()
  }

  return(m)
}

plot_cpu <- function(m, save=F) {
  px <- m$time
  pdata = data.frame(py1=m$mws, py4=m$cpu)

  out_path <- paste(getwd(), "/out", sep="")
  if(save == T) {
    dir.create(out_path, showWarnings=F)
    out_file <- paste(out_path, "/model_cpu.eps", sep="")
    postscript(file=out_file, paper="letter", horizontal=TRUE)
  }
 
  ## cpu train
  #x <- seq(1,220, by=0.5)
  ## wifi train
  #x <- seq(1,120, by=0.5)
  ## display train
  x <- seq(1,59, by=0.5)
  ylim <- c(0, 1)
  y <- (pdata$py4/m$time_base)[c(1:length(x))]
  plot(x, y, xlab="Time (s)", ylab="Average Utilization (per 500ms)", type="l", ylim=ylim,
       lwd=1.5, cex.lab=1.2, cex.axis=1.2)
  #ylim <- c(min(pdata), max(pdata))
  #par(xpd=T, mar=par()$mar+c(0,0,2.0,0), cex=1.2)
  #plot(pdata$py4, xlab="Time (s)", ylab="", ylim=ylim, type="l", lty=1, lwd=2, col="red")
  #lines(pdata$py1, type="l", lty=2, lwd=1.2)

  #legend_labels <- c("CPU", "Energy")
  #legend(0, ylim[2]+0.2, legend_labels, cex=0.8, lty=1:2, lwd=c(2, 1.2), col=c("red", "black"));
  if(save == T) {
    dev.off()
  }

  return(m)
}

plot_display <- function(m, save=F) {
  px <- m$time
  pdata = data.frame(py1=m$mws, py4=m$display)

  out_path <- paste(getwd(), "/out", sep="")
  if(save == T) {
    dir.create(out_path, showWarnings=F)
    out_file <- paste(out_path, "/model_display.eps", sep="")
    postscript(file=out_file, paper="letter", horizontal=TRUE)
  }

  ## cpu train
  #x <- seq(1,220, by=0.5)
  ## wifi train
  #x <- seq(1,120, by=0.5)
  ## display train
  x <- seq(1,59, by=0.5)
  y <- (pdata$py4/m$time_base)[c(1:length(x))]
  ylim <- c(0, 1)
  plot(x, y, xlab="Time (s)", ylab="Average Utilization (per 500ms)", ylim=ylim, type="l", 
       lwd=1.5, cex.lab=1.2, cex.axis=1.2)

  #ylim <- c(min(pdata), max(pdata))
  #par(xpd=T, mar=par()$mar+c(0,0,2.0,0), cex=1.2)
  #plot(pdata$py4, xlab="Time (s)", ylab="", ylim=ylim, type="l", lty=1, lwd=2, col="red")
  #lines(pdata$py1, type="l", lty=2, lwd=1.2)

  #legend_labels <- c("Display", "Energy")
  #legend(0, ylim[2]+0.2, legend_labels, cex=0.8, lty=1:2, lwd=c(2, 1.2), col=c("red", "black"));
  if(save == T) {
    dev.off()
  }

  return(m)
}

plot_box <- function(m, save=F) {
  out_path <- paste(getwd(), "/out", sep="")
  if(save == T) {
    dir.create(out_path, showWarnings=F)
    out_file <- paste(out_path, "/boxplot.eps", sep="")
    postscript(file=out_file, paper="letter", horizontal=TRUE)
  }
 
  ## for power model accuracy
  ylim <- c(0.5, max(unlist(m)))
  ylab <- "Accuracy"
  xlab <- "Test Data"
  boxplot(m, main="", ylim=ylim, xlab=xlab, ylab=ylab, 
          lwd=1.5, cex.lab=1.2, cex.axis=1.2)
  
  if(save == T) {
    dev.off()
  }
  
  return(m)
}



#rm(list=ls())
#
#home_dir <- "/home/jychen/pmlog/"
#
#print("input data folder")
#wd <- scan(what=character(0), nmax=1)
#setwd(paste(home_dir, wd, sep=""))
#
#print("default mapping Rdata folder is set to 'matrix'")
#print("input the mapping Rdata (xxx_mapped.Rdata)")
#fin <- scan(what=character(0), nmax=1)
#
#loc <- paste("matrix/", sep="")
#load(paste(loc, fin, sep=""))
#
##px <- energy_measured$time
#px <- est_matrix$time
#py1 <- est_matrix$mws
#py2<- est_matrix$cpu
#py3 <- est_matrix$display
#py4 <- est_matrix$wifi
#py5 <- est_matrix$wifi_base
#py6 <- est_matrix$time_base
#
## plot
## data normalization
#py1 <- py1/max(py1)
#py2 <- py2/max(py2)
#py3 <- py3/max(py3)
#if(max(py4) != 0) py4 <- py4/max(py4)
#if(max(py5) != 0) py5 <- py5/max(py5)
#py6 <- py6/max(py6)
#
##png(file="energy.png")
##pdf(file="energy.pdf")
##pdf(file=paste(i_rda, "-", o_rda, ".pdf", sep=""))
#pdata <- c(py1, py2, py3, py4, py5, py6)
#ylim <- c(min(pdata), max(pdata))
#par(xpd=T, mar=par()$mar+c(0,0,2.0,0))
#plot(px, py1, xlab="Time (s)", ylab="", ylim=ylim, type="l", lty=1)
#lines(px, py2, type="l", lty=2)
#lines(px, py3, type="l", lty=3)
#lines(px, py4, type="l", lty=4)
#lines(px, py5, type="l", lty=5, col="blue")
#lines(px, py6, type="l", lty=6, col="red")
#
#legend_labels <- c("Energy", "CPU", "Disply", "Wifi", "Wifi Base", "Time Base")
#legend(0, ylim[2]+0.3, legend_labels, cex=0.8, lty=1:6, col=c(rep("black", 4), "blue", "red"));
##dev.off()
#
#setwd(home_dir)
#
