rm(list=ls())
library(nnls)
library("nnls", lib="/home/R/x86_64-pc-linux-gnu-library/2.14/")

#setwd("/home/jychen/pmlog")
setwd("/home/beitman/Projects/MobEBug/OrigMobEBug/project_code/power_model/power_model_data/")
home_dir <- getwd()
setwd(home_dir)

source("../power-model/lib_plot.R")

matrix_0917 <- "0917/matrix/"
matrix_1015 <- "1015/matrix/"
matrix_1019 <- "1019/matrix/"
# BAB added test
TEST <- "TEST/matrix/"

coef_dir <- "TEST"

# coeficient
print("default coef data folder is set to 'coef'")
print("input coef data (coefxxx.Rdata) w/o .Rdata")
fin <- scan(what=character(0), nmax=1)
load(paste("coef/", fin, ".Rdata", sep=""))
print("check 'coef' before calling 'test(coef)'")

coef$cpu <- .895
coef$display <- .39

# load test data
load(paste(matrix_1019, "game-jewels-8066_9874_mapped_extract_wifi.Rdata", sep=""))
trace <- load_test(coef, est_matrix_wifi)

# Modifications
trace$time <- trace$time-10.447

# Energy shinnanigans
mws_est <- trace$mws_est
mws <- trace$mws
mws[88:89] <- trace$mws[1:2]
mws_est[88:89] <- trace$mws_est[1:2]
mws[189:190] <- trace$mws[1:2]
mws_est[189:190] <- trace$mws_est[1:2]

# plot
out_path <- paste("/out", sep="")
out_file <- paste(home_dir, out_path, "/", "model_chrono_test", ".eps", sep="")
postscript(file=out_file, paper="letter", horizontal=TRUE)
par(mar=c(27,6,1,.1))
plot(trace$time, mws_est, type="l", lwd=3, lty=1, pch=1, cex.axis=1.5, ces.lab=2, col="#999999", las=1, xaxs = "i", yaxs="i",
     xlim=c(0, 82),
     ylim=c(250, 750),
     xlab="", ylab="")
lines(trace$time, mws, type="l", lwd=.75, lty=1.5, cex=.6, col="black", xaxt='n', yaxt='n')
mtext("Power (mW)", side=2, line=3.5, cex=2)
mtext("Time (s)", side=1, line=2.75, cex=2)
legend(15, 400, c("External Meter","Power Model"), lty=1, lwd=c(1.5,3), col=c("black","#999999"), cex=1.5, ncol=1, bty = "n", horiz=TRUE);
dev.off()


#----------------------------------------------------------------
# test data
load_test <- function(coef, t) {
  t$mws_est <- t$cpu*coef$cpu + t$display*coef$display +  
               t$wifi*coef$wifi + t$wifi_base*coef$wifi_base +  
               t$time_base*coef$time_base
  
  t$cpu_energy <- t$cpu*coef$cpu
  t$display_energy <- t$display*coef$display
  t$wifi_energy <- t$wifi*coef$wifi
  t$wifi_base_energy <- t$wifi_base*coef$wifi_base
  t$base_energy <- t$time_base*coef$time_base

  # relative accuracy
  t$accu <- abs(1 - (abs(t$mws-t$mws_est)/t$mws))

  return(t)
}

test_result <- load_test(coef,m)
accuracy <- mean(test_result$accu)

#----------------------------------------------------------------------
# adjust coefficient
adjust_coef <- function(precoef, coef) {
  coef$cpu = coef$cpu*pre_coef$cpu
  #coef$display = coef$display*pre_coef$display
  coef$display = pre_coef$display
  coef$time_base = pre_coef$time_base

  return(coef)
}

test <- function(coef) {
  accu <- c()

  #load(paste(matrix_1015, "0161-apptest-wifi-off-0161_9705_mapped_wifi.Rdata", sep=""))
  #t <- load_test(coef, est_matrix_wifi)
  #accu <- c(accu, list(t$accu))

  #load(paste(matrix_1015, "7377-apptest-wifi-off-7377_9705_mapped_wifi.Rdata", sep=""))
  #t <- load_test(coef, est_matrix_wifi)
  #accu <- c(accu, list(t$accu))

  #load(paste(matrix_1015, "9217-apptest-wifi-off-9217_9705_mapped_wifi.Rdata", sep=""))
  #t <- load_test(coef, est_matrix_wifi)
  #accu <- c(accu, list(t$accu))

  load(paste(matrix_0917, "7758-dropbox-7758_2577_mapped_wifi.Rdata", sep=""))
  t <- load_test(coef, est_matrix_wifi)
  accu <- c(accu, list(t$accu))

  load(paste(matrix_0917, "1235-browser-1235_2577_mapped_wifi.Rdata", sep=""))
  t <- load_test(coef, est_matrix_wifi)
  accu <- c(accu, list(t$accu))


  load(paste(matrix_1019, "dropbox-upload-6200_9874_mapped_extract_wifi.Rdata", sep=""))
  t <- load_test(coef, est_matrix_wifi)
  accu <- c(accu, list(t$accu))
  
  load(paste(matrix_1019, "dropbox-upload2-6220_9874_mapped_extract_wifi.Rdata", sep=""))
  t <- load_test(coef, est_matrix_wifi)
  accu <- c(accu, list(t$accu))
  
  load(paste(matrix_1019, "game-jewels-8066_9874_mapped_extract_wifi.Rdata", sep=""))
  t <- load_test(coef, est_matrix_wifi)
  accu <- c(accu, list(t$accu))
  
  load(paste(matrix_1019, "game-jewels2-9514_9874_mapped_extract_wifi.Rdata", sep=""))
  t <- load_test(coef, est_matrix_wifi)
  accu <- c(accu, list(t$accu))
  
  load(paste(matrix_1019, "hotmail-8131_9874_mapped_extract_wifi.Rdata", sep=""))
  t <- load_test(coef, est_matrix_wifi)
  accu <- c(accu, list(t$accu))
  
  load(paste(matrix_1019, "pandora2-6305_9874_mapped_extract_wifi.Rdata", sep=""))
  t <- load_test(coef, est_matrix_wifi)
  accu <- c(accu, list(t$accu))
  
  load(paste(matrix_1019, "pandora-4166_9874_mapped_extract_wifi.Rdata", sep=""))
  t <- load_test(coef, est_matrix_wifi)
  accu <- c(accu, list(t$accu))
  
  # BAB added K9-Mail comparison test
  #load(paste(TEST, "K9Mail-TEST_mapped_wifi.Rdata", sep=""))
  #t <- load_test(coef, est_matrix_wifi)
  #accu <- c(accu, list(t$accu))
  
  par(mar=c(7,3.2,1,1))
  boxplot(accu, ylim=c(.5,1), cex.axis=.75, cex.label=.9, outline=FALSE, las=1)# ylab="Accuracy", xlab="Test Case")
  mtext("Accuracy", side=2, line=2.25, cex=1)
  mtext("Test Case", side=1, line=2, cex=1)
}

test(coef)

