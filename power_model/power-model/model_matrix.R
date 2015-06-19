rm(list=ls())
source("power-model/lib_plot.R")

#setwd("/home/jychen/power_model")
home_dir <- getwd()
setwd(home_dir)

# (cpu, display, base) w/o wifi, apptest: browser, dropbox
matrix_0917 <- "power_model_data/0917/matrix/"

# wifi, base w/ wifi
matrix_0928 <- "power_model_data/0928/matrix/"

# apptest: mainly browser & dropbox
matrix_1015 <- "power_model_data/1015/matrix/"

# (cpu, display) w/ wifi & w/o wifi
# apptest: dropbox, game-jewels, hotmail, pandora
matrix_1019 <- "power_model_data/1019/matrix/"
matrix_1029 <- "power_model_data/1029/matrix/"
matrix_10292 <- "power_model_data/1029-2/matrix/"
matrix_10292_BASE <- "power_model_data/1029-2/matrix/BASETEST/"
matrix_display <- "power_model_data/display/matrix/"
TEST <- "power_model_data/TEST/matrix/"

#----------------------------------------------------------------
# base 
load_base <- function() {
  load(paste(matrix_1029, "base2-wifi-off-3551_6015_mapped20ss_MAVwifi.Rdata", sep=""))
  m <- est_matrix_wifi
  #load(paste(matrix_1029, "base2-wifi-on-1167_6015_mapped_extract_wifi.Rdata", sep=""))
  #m <- rbind(m, est_matrix_wifi)
  
  #load(paste(matrix_0917, "8039-base-pt-wifi-off-8039_6388_mapped_extract_wifi.Rdata", sep=""))
  #m <- est_matrix_wifi

  return(m)
}

# display
load_display <- function(wifi=F) {
  # 0917 data is shorter in test period
  #load(paste(matrix_0917, "5754-display-5754_6388_mapped_extract.Rdata", sep=""))
  
  if(wifi == F) 
    load(paste(matrix_1019, "display-wifi-off-0383_1364_mapped_extract_wifi10ss_wifi.Rdata", sep=""))
  else {
    #load(paste(matrix_1019, "display-wifi-on-6644_1364_mapped_extract_wifi10ss_wifi.Rdata", sep=""))
    #load(paste(matrix_1019, "display-wifi-on-6644_1364_mapped_extract20ss_MAVwifi.Rdata", sep=""))

    # BAB Reperformed tests
    
    load(paste(matrix_display, "Display_off_Deleted_MAVwifi.Rdata", sep=""))
    m <- est_matrix_wifi
    load(paste(matrix_display, "Display_0_mapped20ss_MAVwifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_display, "Display_25_mapped20ss_MAVwifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_display, "Display_50_mapped20ss_MAVwifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_display, "Display_75_mapped20ss_MAVwifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_display, "Display_100_mapped20ss_MAVwifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    
  }
  
  m <- est_matrix_wifi
 
  return(m)
}

# cpu
load_cpu <- function(wifi=F) {
  if(wifi == F) {
    load(paste(matrix_0917, "5215-cpu-998-5215_2577_mapped_extract_wifi.Rdata", sep=""))
    m <- est_matrix_wifi
    load(paste(matrix_0917, "2890-cpu-883-2890_2577_mapped_extract_wifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_0917, "9874-cpu-768-9874_2577_mapped_extract_wifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_0917, "3515-cpu-652-3515_2577_mapped_extract_wifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_0917, "3881-cpu-537-3881_2577_mapped_extract_wifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_0917, "1752-cpu-422-1752_2577_mapped_extract_wifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_0917, "6447-cpu-245-6447_2577_mapped_extract_wifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    
    # error in display brightness value
    #load(paste(matrix_1019, "cpu-998-wifi-off-0569_1364_mapped_extract_wifi.Rdata", sep=""))
    #m <- est_matrix_wifi
    #load(paste(matrix_1019, "cpu-883-wifi-off-0089_1364_mapped_extract_wifi.Rdata", sep=""))
    #m <- rbind(m, est_matrix_wifi)
    #load(paste(matrix_1019, "cpu-768-wifi-off-1444_2378_mapped_extract_wifi.Rdata", sep=""))
    #m <- rbind(m, est_matrix_wifi)
    #load(paste(matrix_1019, "cpu-652-wifi-off-2679_2378_mapped_extract_wifi.Rdata", sep=""))
    #m <- rbind(m, est_matrix_wifi)
    #load(paste(matrix_1019, "cpu-537-wifi-off-2673_2378_mapped_extract_wifi.Rdata", sep=""))
    #m <- rbind(m, est_matrix_wifi)
    #load(paste(matrix_1019, "cpu-422-wifi-off-5099_2378_mapped_extract_wifi.Rdata", sep=""))
    #m <- rbind(m, est_matrix_wifi)
    #load(paste(matrix_1019, "cpu-245-wifi-off-6347_2378_mapped_extract_wifi.Rdata", sep=""))
    #m <- rbind(m, est_matrix_wifi)
  } else {
    load(paste(matrix_10292_BASE, "cpu-998-BASE_mapped20ss_MAVwifi.Rdata", sep=""))
    m <- est_matrix_wifi
    load(paste(matrix_10292_BASE, "cpu-883-BASE_mapped20ss_MAVwifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_10292_BASE, "cpu-768-BASE_mapped20ss_MAVwifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_10292_BASE, "cpu-652-BASE_mapped20ss_MAVwifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_10292_BASE, "cpu-537-BASE_mapped20ss_MAVwifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_10292_BASE, "cpu-422-BASE_mapped20ss_MAVwifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
    load(paste(matrix_10292_BASE, "cpu-245-BASE_mapped20ss_MAVwifi.Rdata", sep=""))
    m <- rbind(m, est_matrix_wifi)
  }

  

  return(m)
}

# wifi 
load_wifi <- function() {
  #load(paste(matrix_1019, "wifi-500K2-2544_9874_mapped_extract_wifi.Rdata", sep=""))
  #m <- est_matrix_wifi
  #load(paste(matrix_1019, "wifi-1000K-7356_9874_mapped_extract_wifi.Rdata", sep=""))
  #m <- rbind(m, est_matrix_wifi)
  #load(paste(matrix_1019, "wifi-1500K-8266_9874_mapped_extract_wifi.Rdata", sep=""))
  #m <- rbind(m, est_matrix_wifi)
  load(paste(matrix_1029, "wifi-2000K3-5096_6015_mapped_extract20ss_MAVwifi.Rdata", sep=""))
  m <- est_matrix_wifi
  #m <- rbind(m, est_matrix_wifi)
  #load(paste(matrix_1019, "wifi-3000K2-8760_9874_mapped_extract_wifi.Rdata", sep=""))
  #m <- rbind(m, est_matrix_wifi)
  #load(paste(matrix_1019, "wifi-4000K-6711_9874_mapped_extract_wifi.Rdata", sep=""))
  #m <- rbind(m, est_matrix_wifi)
  load(paste(matrix_1029, "wifi-5000K2-3908_6015_mapped_extract20ss_MAVwifi.Rdata", sep=""))
  m <- rbind(m, est_matrix_wifi)

  # error in display brightness value?
  #load(paste(matrix_0928, "9663-wifi-500K-9663_9099_mapped_extract_wifi.Rdata", sep=""))
  #m <- est_matrix_wifi
  #load(paste(matrix_0928, "6151-wifi-1000K-6151_9099_mapped_extract_wifi.Rdata", sep=""))
  #m <- rbind(m, est_matrix_wifi)
  #load(paste(matrix_0928, "9231-wifi-1500K-9231_9099_mapped_extract_wifi.Rdata", sep=""))
  #m <- rbind(m, est_matrix_wifi)
  #load(paste(matrix_0928, "0820-wifi-2000K-0820_9099_mapped_extract_wifi.Rdata", sep=""))
  #m <- rbind(m, est_matrix_wifi)
  #load(paste(matrix_0928, "0993-wifi-3000K-0993_9099_mapped_extract_wifi.Rdata", sep=""))
  #m <- rbind(m, est_matrix_wifi)

  return(m)
}

