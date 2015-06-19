rm(list=ls())

home_dir <- "/home/beitman/Projects/MobEBug/OrigMobEBug/project_code/power_model/power_model_data/"

print("input data folder")
wd <- scan(what=character(0), nmax=1)
setwd(paste(home_dir, wd, sep=""))

print("analysis data folder is set to 'analysis_data' by default")
print("input logfile (PowerTracexxx.log)")
fin <- scan(what=character(0), nmax=1)
print("output rdata")
rda <- scan(what=character(0), nmax=1)
#print("old format? (y/n)")
#fmt <- scan(what=character(0), nmax=1)
#print("which phone? 1) nexus one 2) nexus s")
#pho<- scan(what=character(0), nmax=1)

# battery capacity (Ah)
#if(pho == "1") { 
#  capacity <- 1.4
#} else {
#  capacity <- 1.5
#}

loc <- "analysis_data/"
# matrix 
est_matrix_raw <- read.table(paste(loc, "matrix-", fin, sep=""), header=T)
#est_matrix_raw <- read.table(paste("matrix-", fin, sep=""), header=T)

work_time_diff <- diff(est_matrix_raw$work_time, lag=1)
total_time_diff <- diff(est_matrix_raw$total_time, lag=1)
util_frac <- work_time_diff/total_time_diff
util_frac[length(util_frac)+1] <- 0

# wifi # of data received in KB
wifi_rx_bytes_diff <- diff(est_matrix_raw$wifi_rx_bytes, lag=1)/1000
wifi_rx_bytes_diff[length(wifi_rx_bytes_diff)+1] <- 0
# wifi # of data sent in KB
wifi_tx_bytes_diff <- diff(est_matrix_raw$wifi_tx_bytes, lag=1)/1000
wifi_tx_bytes_diff[length(wifi_tx_bytes_diff)+1] <- 0

# total data transmision on wifi
wifi_bytes <- wifi_rx_bytes_diff + wifi_tx_bytes_diff

# elapsed time for each record (msec) 
up_time_diff <- diff(est_matrix_raw$up_time, lag=1)
up_time_diff[length(up_time_diff)+1] <- 0

# cpu_factor = cpu_freq * utilization * time in hour 
#cpu_factor <- est_matrix_raw$cpu_freq * util_frac * (up_time_diff/3600000)
# screen_factor = screen_on (1/0) * brightness * time in hour 
#screen_factor <- est_matrix_raw$screen_on * est_matrix_raw$brightness * (up_time_diff/3600000)

# cpu_factor = cpu_freq * utilization * time in ms
cpu_factor <- est_matrix_raw$cpu_freq * util_frac * up_time_diff
cpu_base <- util_frac * up_time_diff
cpu_freq <- est_matrix_raw$cpu_freq * up_time_diff
# screen_factor = screen_on (1/0) * brightness * time in ms
screen_factor <- est_matrix_raw$screen_on * est_matrix_raw$brightness * up_time_diff
# wifi_base = wifi_on (1/0) * time in ms
wifi_base <- est_matrix_raw$wifi_on * up_time_diff

est_matrix_raw <- cbind(cpu_base, cpu_freq, est_matrix_raw, util_frac, wifi_rx_bytes_diff, wifi_tx_bytes_diff,
                        cpu_factor, screen_factor, up_time_diff, wifi_bytes, wifi_base)

#png(file="cpu.png")
#pdf(file="raw.pdf")
#px <- est_matrix_raw$up_time
#py <- est_matrix_raw$cpu_factor
#py <- est_matrix_raw$screen_factor
#py <- (est_matrix_raw$wifi_rx_bytes_diff+est_matrix_raw$wifi_tx_bytes_diff)
#plot(px, py, type="l")
#dev.off()

# save object data
dir.create("matrix")
save(est_matrix_raw, file=paste("matrix/", rda, ".Rdata", sep=""))

source(paste(home_dir, "../power-model/matrix_energy_mapping.R", sep=""))
#source("plot_log.R")

setwd(home_dir)

q()

# BAB: Battery Charge State IS NOT USED!!!!
#--------------------------------------------------------------------------------------------
# The following code is used for the battery charge state approach, which needs to aggregate
# records to 1% battery consumption

fmt <- "n"
# charge-volate
if(fmt == "y") {  # old format
  charge_volt <- read.table(paste("battery-", fin, sep=""), header=T)
  charge_log <- read.table(paste("battery_map-", fin, sep=""), header=T)
} else {
  charge_volt <- read.table(paste("battery-", fin, sep=""), header=T)
  charge_log <- data.frame(charge=unique(charge_volt$charge))
  charge_log$up_time <- apply(array(1:length(charge_log$charge)), 1,
                              function(x) 
                                min(charge_volt$up_time[which(charge_volt$charge==charge_log$charge[x])]))
}


# calculate average voltage (Volt) in 1% battery consumption
volt_avg <- apply(array(1:length(charge_log$charge)), 1, 
                  function(x) mean(charge_volt$volt[which(charge_volt$charge == charge_log$charge[x])]))

capacity <- 1.5
# estimate energy (Wh) per 1% battery consumption
est_wh <- apply(array(1:(length(charge_log$charge)-1)), 1, 
                 function(x) (volt_avg[x]+volt_avg[x+1])*0.01*capacity/2)
est_wh[length(est_wh)+1] <- 0

charge_log <- cbind(charge_log, volt_avg, est_wh)

# charge section
charge_sect <- apply(array(1:length(charge_log$charge)), 1, 
                     function(x) min(which((est_matrix_raw$up_time>=charge_log$up_time[x]))))

# time section
elapse <- rep.int(0, length(charge_log$charge))
apply(array(2:(length(charge_log$charge)-1)), 1,
                function(x) 
                  if(length(which(est_matrix_raw$up_time_diff[charge_sect[x]:(charge_sect[x+1]-1)]>1100))==0) 
                    # the unit of time is converted from ms to hour
                    elapse[x] <<- sum(est_matrix_raw$up_time_diff[charge_sect[x]:(charge_sect[x+1]-1)])/3600000
                    #elapse[x] <<- sum(est_matrix_raw$up_time_diff[charge_sect[x]:(charge_sect[x+1]-1)])
                  else  # any log interval larger than 1100ms is treated as invalid
                    elapse[x] <<- 0)
# exclude the 1st and the last record because they might be incomplete
elapse[c(1, length(charge_log$charge))] <- 0

# cpu
cpu <- rep.int(0, length(charge_log$charge))
cpu <- apply(array(1:(length(charge_log$charge)-1)), 1,
             function(x) sum(est_matrix_raw$cpu_factor[charge_sect[x]:(charge_sect[x+1]-1)]))
cpu[length(charge_log$charge)] <- 0

# screen
screen <- rep.int(0, length(charge_log$charge))
screen <- apply(array(1:(length(charge_log$charge)-1)), 1,
                function(x) sum(est_matrix_raw$screen_factor[charge_sect[x]:(charge_sect[x+1]-1)]))
screen[length(charge_log$charge)] <- 0

# wifi_rx 
wifi_rx <- rep.int(0, length(charge_log$charge))
wifi_rx <- apply(array(1:(length(charge_log$charge)-1)), 1,
                 function(x) sum(est_matrix_raw$wifi_rx_bytes_diff[charge_sect[x]:(charge_sect[x+1]-1)]))
wifi_rx[length(charge_log$charge)] <- 0

# wifi_tx 
wifi_tx <- rep.int(0, length(charge_log$charge))
wifi_tx <- apply(array(1:(length(charge_log$charge)-1)), 1,
                 function(x) sum(est_matrix_raw$wifi_tx_bytes_diff[charge_sect[x]:(charge_sect[x+1]-1)]))
wifi_tx[length(charge_log$charge)] <- 0

charge_log <- cbind(charge_log, cpu, screen, wifi_rx, wifi_tx, elapse)


# discard those records with incomplete logs
if(length(which(floor(charge_log$elapse*1e+6)==0)) > 0)
  charge_data <- charge_log[-c(which(floor(charge_log$elapse*1e+6)==0)),]


# linear modeling
#charge.lm <- lm(est_wh ~ cpu + screen + wifi_rx + wifi_tx, data=charge_data)


# save object data
save(list=ls(), file=paste(rda, ".Rdata", sep=""))

#q()

