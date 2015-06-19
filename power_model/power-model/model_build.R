rm(list=ls())
library(nnls)
library("nnls", lib="/home//home/R/x86_64-pc-linux-gnu-library/2.14/")

setwd("/home/beitman/Projects/MobEBug/OrigMobEBug/project_code/power_model/")
source("power-model/lib_plot.R")
source("power-model/model_matrix.R")


#----------------------------------------------------------------
# Power model: mws, cpu, display, wifi, wifi_base, time_base
# E = a(CPU Util) + b(Display Util) + c(Wifi Utily) + K
# CPU Util = SUM(CPU freq * delta(t))
# Display Util = SUM(brightness * delta(t))
# Wifi Util = SUM(Wifi rate * delta(t)) = SUM(bytes sent & received during delta(t))
# K = K_base * T = K_base * SUM(delta(t))
# T ~ 500ms
#
# Separate Wifi base (W) from Base (K)
# E = a(CPU Util) + b(Display Util) + (c(Wifi Utily)+W) + K

print("two coefficient calculation approaches:")
print("1-step method: coef_calc1(wifi), data saved to coef/coef1.Rdata")
print("2-step method: coef_calc2(), data saved to coef/coef2.Rdata")

# Calculation 1: normal approach 
coef_calc1 <- function(wifi=T) {
  m <- data.frame()
  m <- rbind(m, load_base())
  m <- rbind(m, load_wifi())
  if(wifi == T) {
    m <- rbind(m, load_display(T))
    m <- rbind(m, load_cpu(T))
  } else {
    m <- rbind(m, load_display())
    m <- rbind(m, load_cpu())
  }

  #base <- data.frame(mws=max(m$mws), cpu=max(m$cpu), display=max(m$display), wifi=max(m$wifi),
  #                   wifi_base=max(m$wifi_base), time_base=max(m$time_base))
  #
  #m$mws <- m$mws/base$mws 
  #m$cpu <- m$cpu/base$cpu
  #m$display <- m$display/base$display
  #if(base$wifi > 0) m$wifi <- m$wifi/base$wifi
  #if(base$wifi_base > 0) m$wifi_base <- m$wifi_base/base$wifi_base
  #m$time_base <- m$time_base/base$time_base

  #plot_data(m, T)
  #plot_wifi(m, F)
  #plot_cpu(m, F)
  #plot_display(m, T)

  # CPU only linear
  nnls_a <- cbind(m$cpu, m$display, m$wifi, m$wifi_base, m$time_base)
  # CPU Base and linear
  #nnls_a <- cbind(m$cpu_base, m$cpu_freq, m$display, m$wifi, m$wifi_base, m$time_base)
  
  nnls_b <- m$mws
  power.nnls <- nnls(nnls_a, nnls_b)
  
  # CPU only linear
  coef <- data.frame(cpu=power.nnls$x[1], display=power.nnls$x[2], 
                     wifi=power.nnls$x[3], wifi_base=power.nnls$x[4], 
                     time_base=power.nnls$x[5]) 
  
  # CPU Base and linear
  #coef <- data.frame(cpu_base=power.nnls$x[1], cpu_freq=power.nnls$x[2], display=power.nnls$x[3], 
  #                   wifi=power.nnls$x[4], wifi_base=power.nnls$x[5], 
  #                   time_base=power.nnls$x[6]) 
  
  if(wifi == T) save(m, coef, nnls_a, nnls_b, power.nnls, file="power_model_data/coef/coef_UpDisp.Rdata")
  else save(m, coef, nnls_a, nnls_b, power.nnls, file="power_model_data/TEST/coef15ss.Rdata")
  
  return(coef)
}

coef_calc1(T)

# Calculation 2: calculate a and b first, then c, W
# E = a'(pre-a(CPU Util)) + b'(pre-b(Display Util)) + (c(Wifi Utily)+W) + pre-K
coef_calc2 <- function() {
  m1 <- data.frame()
  m1 <- rbind(m1, load_base())
  m1 <- rbind(m1, load_display())
  m1 <- rbind(m1, load_cpu())
  
  nnls_a1 <- cbind(m1$cpu, m1$display, m1$wifi, m1$wifi_base, m1$time_base)
  nnls_b1 <- m1$mws
  power.nnls1 <- nnls(nnls_a1, nnls_b1)
  
  pre_coef <- data.frame(cpu=power.nnls1$x[1], display=power.nnls1$x[2], 
                         wifi=power.nnls1$x[3], wifi_base=power.nnls1$x[4], 
                         time_base=power.nnls1$x[5]) 
  #pre_coef <- data.frame(cpu=0.9831946, display=0.4436606, time_base=0.2427851)
  #pre_coef <- data.frame(cpu=0.7320067, display=0.341632, time_base=0.2067468)
 
  print(pre_coef)

  m2 <- data.frame()
  m2 <- rbind(m2, load_wifi())
  
  m2$cpu <- m2$cpu*pre_coef$cpu
  m2$display <- m2$display*pre_coef$display
  m2$time_base <- m2$time_base*pre_coef$time_base

  nnls_a2 <- cbind(m2$cpu, m2$display, m2$wifi, m2$wifi_base, m2$time_base)
  nnls_b2 <- m2$mws
  power.nnls2 <- nnls(nnls_a2, nnls_b2)
  
  coef <- data.frame(cpu=power.nnls2$x[1], display=power.nnls2$x[2], 
                     wifi=power.nnls2$x[3], wifi_base=power.nnls2$x[4], 
                     time_base=power.nnls2$x[5]) 
  
  save(m1, pre_coef, nnls_a1, nnls_b1, power.nnls1,
       m2, coef, nnls_a2, nnls_b2, power.nnls2, file="power_model_data/coef/coefUpDisp.Rdata")
  return(coef)
}

coef_calc1(T)
coef_calc1()
coef_calc2()


#coef <- data.frame(cpu=power.nnls$x[1]*base$mws/base$cpu, display=power.nnls$x[2]*base$mws/base$display, 
#                   time_base=power.nnls$x[5]*base$mws/base$time_base) 
#
#if(base$wifi > 0) {
#    coef$wifi <- power.nnls$x[3]*base$mws/base$wifi
#} else 
#    coef$wifi <- 0
#
#if(base$wifi_base > 0) {
#    coef$wifi_base <- power.nnls$x[4]*base$mws/base$wifi_base 
#} else 
#    coef$wifi_base <- 0

