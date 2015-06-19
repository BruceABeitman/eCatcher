rm(list=ls())
#library("nnls", lib="/home/jychen/localx/r_packages")

home_dir <- "/home/beitman/Projects/MobEBug/OrigMobEBug/project_code/power_model/power_model_data/"

# no need to set working directory if called from build_matrix.R
#print("input data folder")
#wd <- scan(what=character(0), nmax=1)
#setwd(paste(home_dir, wd, sep=""))

print("power monitor logfile folder is set to 'raw' by default")
print("input power monitor logfile (PowerBox_xxx.csv)")
fin_m <- scan(what=character(0), nmax=1)
print("output rdata")
o_rda <- scan(what=character(0), nmax=1)

# load phone activity log
print("phone activity log Rdata folder is set to 'matrix' by default")
print("input phone activity log Rdata (w/o .Rdata)")
i_rda <- scan(what=character(0), nmax=1)
load(paste("matrix/", i_rda, ".Rdata", sep=""))

loc <- "raw/"
monitor_raw <- read.table(paste(loc, fin_m, sep=""), header=T, sep=",")
#names(monitor_raw) <- c("time", "avg_current_ma", "avg_power_mw", "avg_voltage_v")
names(monitor_raw) <- c("time", "avg_power_mw")


# it's weird that the power monitor sometimes did not record the data 
# in a regular 0.2ms gap.
time_diff <- diff(monitor_raw$time, lag=1)
time_diff_check <- which(time_diff > 0.00021)

print("check the time stamp gaps larger than 2e-04:")
print(time_diff_check)
print(time_diff[time_diff_check])


# add the missing power record by interpolation
# suppose only some irregualr gap of 0.4ms
power_mw <- monitor_raw$avg_power_mw[1: time_diff_check[1]]
power_mw_patch <- apply(array(1:length(time_diff_check)), 1,
                        function(x)
                          if(x < length(time_diff_check)) {
                            c((monitor_raw$avg_power_mw[time_diff_check[x]]+
                               monitor_raw$avg_power_mw[time_diff_check[x]+1])/2,
                              monitor_raw$avg_power_mw[(time_diff_check[x]+1):time_diff_check[x+1]])
                          } 
                          else {
                            c((monitor_raw$avg_power_mw[time_diff_check[x]]+
                               monitor_raw$avg_power_mw[time_diff_check[x]+1])/2,
                              monitor_raw$avg_power_mw[(time_diff_check[x]+1):length(monitor_raw$avg_power_mw)])
                          })

log_time <- monitor_raw$time[1: time_diff_check[1]]
log_time_patch <- apply(array(1:length(time_diff_check)), 1,
                        function(x)
                          if(x < length(time_diff_check)) {
                            c((monitor_raw$time[time_diff_check[x]]+
                               monitor_raw$time[time_diff_check[x]+1])/2,
                              monitor_raw$time[(time_diff_check[x]+1):time_diff_check[x+1]])
                          } 
                          else {
                            c((monitor_raw$time[time_diff_check[x]]+
                               monitor_raw$time[time_diff_check[x]+1])/2,
                              monitor_raw$time[(time_diff_check[x]+1):length(monitor_raw$time)])
                          })

for(x in 1:length(power_mw_patch)) {
  power_mw <- c(power_mw, power_mw_patch[[x]])
  log_time <- c(log_time, log_time_patch[[x]])
}


monitor_patch <- data.frame(time=log_time, power_mw=power_mw)

# unit of energy: mW*ms
# length of per aggregrate record: according to up_time_diff per entry (~500ms) in phone activity log 
len <- sum(est_matrix_raw$up_time_diff)*5
num_entry <- length(est_matrix_raw$up_time_diff)
for(x in 1:(length(est_matrix_raw$up_time_diff)-1)) {
  if(len <= length(log_time)) {
    print("TEST: phone activity log is FINE")
    break
  } 
  else {
    print("Warning: phone activity log is larger than power monitor log")
    len <- sum(est_matrix_raw$up_time_diff[1:(length(est_matrix_raw$up_time_diff)-(x+1))])*5 
    num_entry <- length(est_matrix_raw$up_time_diff) - x
  }
}

# BAB: Add each adjacent element in monitor_patch$power_mw, and multiply by .1
energy <- apply(array(1:len), 1, 
                function(x) (monitor_patch$power_mw[x]+monitor_patch$power_mw[x+1])*0.1)

# unit of energy: mW*s 
#energy_measured <- data.frame(time=monitor_patch$time[seq(2501, len+1, by=2500)])
#energy_measured$energy <- colSums(matrix(unlist(energy)[1:len], nrow=2500))/1000

# unit of energy: mW*s per phone acitivy entry
# BAB: Get the relative time (since the start of the trace)
time_accum = (est_matrix_raw$up_time[1:num_entry] - est_matrix_raw$up_time[1])
# BAB: Get the corresponding time from monitor_patch using time_accum
# BAB: Using ms to access (1/5000) resolution, so multiply by 5
# BAB: Index starting at 2, so add 1
energy_measured <- data.frame(time=monitor_patch$time[time_accum[2:length(time_accum)]*5+1])

# BAB: sum across energy for lengths of time_accum intervals?
energy_measured$energy <- apply(array(1:(length(time_accum)-1)), 1,
                                function(x) sum(unlist(energy)[(1+time_accum[x]*5):(time_accum[x+1]*5)])/1000)

## load phone activity log
#print("input phone activity log Rdata (w/o .Rdata)")
#i_rda <- scan(what=character(0), nmax=1)
#load(paste(i_rda, ".Rdata", sep=""))

est_matrix <- data.frame(time=energy_measured$time)
est_matrix$mws <- energy_measured$energy
est_matrix$cpu <- est_matrix_raw$cpu_factor[1:length(energy_measured$time)]

est_matrix$cpu_base <- est_matrix_raw$cpu_base[1:length(energy_measured$time)]
est_matrix$cpu_freq <- est_matrix_raw$cpu_freq[1:length(energy_measured$time)]

est_matrix$display <- est_matrix_raw$screen_factor[1:length(energy_measured$time)]
est_matrix$wifi <- est_matrix_raw$wifi_bytes[1:length(energy_measured$time)]
est_matrix$wifi_base <- est_matrix_raw$wifi_base[1:length(energy_measured$time)]
est_matrix$time_base <- est_matrix_raw$up_time_diff[1:length(energy_measured$time)]


# calculate wifi transmission rate in 10 seconds (bytes per ms)
#wifi_rate_sample <- length(est_matrix$wifi)%/%20
#wifi_rate <- apply(array(1:wifi_rate_sample), 1,
#                   function(x)
#                     sum(est_matrix$wifi[(1+20*(x-1)):(20*x)])/sum(est_matrix$time_base[(1+20*(x-1)):(20*x)]))
#
#est_matrix$wifi_r <- 0
#for(x in 1:wifi_rate_sample)
#  est_matrix$wifi_r[(1+20*(x-1)):(20*x)] <- wifi_rate[x]
#
## calculate wifi transmission rate in the remaining time period
#wifi_r <- sum(est_matrix$wifi[(1+wifi_rate_sample):length(est_matrix$wifi)])/
#          sum(est_matrix$time_base[(1+wifi_rate_sample):length(est_matrix$wifi)])
#est_matrix$wifi_r[(1+wifi_rate_sample):length(est_matrix$wifi)] <- wifi_r


# output 
#dir.create("matrix")
save(energy_measured, est_matrix_raw, est_matrix, 
     file=paste("matrix/", o_rda, "_mapped.Rdata", sep=""))

