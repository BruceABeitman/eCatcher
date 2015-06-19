## This file is supposed to be called from batch_util_mapping.script with useArgs set to TRUE
## To execute this file inside R, set useArgs to FALSE
rm(list=ls())
useArgs <- TRUE 

## args: package_name, data_dir, targeted_log
args <- commandArgs(trailingOnly = TRUE)
home_dir <- getwd()

wd <- c()
package_name <- c()
targeted_log <- c()
context <- FALSE
if(useArgs == TRUE) {
  wd <- args[2]
  package_name <- args[1]
  targeted_log <- args[3]
  if(args[4] == "1")
    context <- TRUE
} else {
  print("input data folder")
  wd <- scan(what=character(0), nmax=1)
  print("Input targeted package")
  package_name <- scan(what=character(0), nmax=1)
  print("Input targeted log (*_util.log w/o _util.log)")
  targeted_log <- scan(what=character(0), nmax=1)
  print("Record context info? 1: Yes, 2: No")
  if(scan(what=character(0), nmax=1) == "1")
    context <- TRUE
}

## set up working directory
wd <- paste(home_dir, "/", wd, sep="")
setwd(wd)

print(paste("Data folder:", wd, sep=" "))
print(paste("Targeted package:", package_name, sep=" "))
print(paste("Targeted log:", targeted_log, sep=" "))
print(paste("Record context info:", context, sep=" "))

##== generate app utilization log =============================================
##=============================================================================
in_util <- paste(targeted_log, "_util.log.util", sep="")
app_util_raw <- read.table(in_util, header=TRUE, stringsAsFactors=FALSE)

## elapsed time for each record (msec) 
up_time_diff <- diff(app_util_raw$up_time, lag=1)
up_time_diff[length(up_time_diff)+1] <- 0

## Calculate component utilization per ~502ms
## up_time_diff should be all about 500ms

## cpu utilization
work_time_diff <- diff(app_util_raw$cpu_app, lag=1)
total_time_diff <- diff(app_util_raw$cpu_total, lag=1)
cpu_frac <- work_time_diff/total_time_diff
cpu_frac[length(cpu_frac)+1] <- 0
## cpu_factor = cpu_freq * utilization * time in ms
cpu_factor <- app_util_raw$cpu_freq * cpu_frac * up_time_diff

## display_factor = display_on (1/0) * brightness * time in ms
display_factor <- app_util_raw$display_use * app_util_raw$display_on * 
                  app_util_raw$brightness * up_time_diff

## wifi # of data received in KB
wifi_rx_diff <- diff(app_util_raw$wifi_rx, lag=1)/1000
wifi_rx_diff[length(wifi_rx_diff)+1] <- 0
## wifi # of data sent in KB
wifi_tx_diff <- diff(app_util_raw$wifi_tx, lag=1)/1000
wifi_tx_diff[length(wifi_tx_diff)+1] <- 0

## total data transmision on wifi
wifi_total_diff <- wifi_rx_diff + wifi_tx_diff

## wifi_base = wifi_on (1/0) * time in ms
wifi_base <- app_util_raw$wifi_on * up_time_diff


## app utilization raw matrix
app_util_raw <- cbind(app_util_raw, up_time_diff, cpu_frac, cpu_factor, 
                      display_factor, wifi_base, wifi_total_diff, 
                      wifi_rx_diff, wifi_tx_diff)
#app_util_raw <- data.frame(app_util_raw)
app_util_raw <- app_util_raw[1:(length(app_util_raw$up_time)-1),]


## To further estimate the energy consumption of an app, we need to
## calculate the average of each component utilization per 10 seconds,
## and then use the pre-built per-phone power model for the estimation.
##
## In our power model, we keep wifi and phone base consumption shared
## with all processes/apps, and therefore, simply the sum of estimated 
## energy consumed by all apps will be larger than the whole phone 
## energy consumption estimated. Guess we can estimate the energy 
## specifically used by an app by excluding wifi and phone base energy 
## consumption.

app_util_est <- data.frame(up_time=app_util_raw$up_time, 
                           time_base=app_util_raw$up_time_diff,
                           display_use=app_util_raw$display_use)

## todo: need to check if it's 500ms between records
interval <- 20 # 10 seconds
num_section <- length(app_util_raw$up_time)%/%interval
if(num_section >= 1) {
  cpu_rate <- apply(array(1:num_section), 1,
    function(x)
      sum(app_util_raw$cpu_factor[(1+interval*(x-1)):(interval*x)])/
      sum(app_util_raw$up_time_diff[(1+interval*(x-1)):(interval*x)]))
  
  display_rate <- apply(array(1:num_section), 1,
    function(x)
      sum(app_util_raw$display_factor[(1+interval*(x-1)):(interval*x)])/
      sum(app_util_raw$up_time_diff[(1+interval*(x-1)):(interval*x)]))
  
  wifi_rate <- apply(array(1:num_section), 1,
    function(x)
      sum(app_util_raw$wifi_total_diff[(1+interval*(x-1)):(interval*x)])/
      sum(app_util_raw$up_time_diff[(1+interval*(x-1)):(interval*x)]))
  
  wifi_base_rate <- apply(array(1:num_section), 1,
    function(x)
      sum(app_util_raw$wifi_base[(1+interval*(x-1)):(interval*x)])/
      sum(app_util_raw$up_time_diff[(1+interval*(x-1)):(interval*x)]))
  
  #mws_rate <- apply(array(1:num_section), 1,
  #  function(x)
  #    sum(app_util_raw$mws[(1+interval*(x-1)):(interval*x)])/
  #    sum(app_util_raw$up_time_diff[(1+interval*(x-1)):(interval*x)]))
  
  app_util_est$cpu <- 0
  app_util_est$display <- 0
  app_util_est$wifi <- 0
  app_util_est$wifi_base <- 0
  #app_util_est$mws <- 0
  for(x in 1:num_section) {
    app_util_est$cpu[(1+interval*(x-1)):(interval*x)] <- cpu_rate[x]
    app_util_est$display[(1+interval*(x-1)):(interval*x)] <- display_rate[x]
    app_util_est$wifi[(1+interval*(x-1)):(interval*x)] <- wifi_rate[x]
    app_util_est$wifi_base[(1+interval*(x-1)):(interval*x)] <- wifi_base_rate[x]
    #app_util_est$mws[(1+interval*(x-1)):(interval*x)] <- mws_rate[x]
  }

  if(length(app_util_raw$up_time)%%interval < 16) {
    ## discard the last few data because of the length being too short
    app_util_est <- app_util_est[1:(num_section*interval),]
  } else {
    section_begin <- (1 + num_section * interval)
    section_end <- length(app_util_raw$up_time)
    app_util_est$cpu[section_begin:section_end] <- 
                      sum(app_util_raw$cpu_factor[section_begin:section_end])/
                      sum(app_util_raw$up_time_diff[section_begin:section_end])
    
    app_util_est$display[section_begin:section_end] <- 
                      sum(app_util_raw$display_factor[section_begin:section_end])/
                      sum(app_util_raw$up_time_diff[section_begin:section_end])
    
    app_util_est$wifi[section_begin:section_end] <- 
                      sum(app_util_raw$wifi_total_diff[section_begin:section_end])/
                      sum(app_util_raw$up_time_diff[section_begin:section_end])
    
    app_util_est$wifi_base[section_begin:section_end] <- 
                      sum(app_util_raw$wifi_base[section_begin:section_end])/
                      sum(app_util_raw$up_time_diff[section_begin:section_end])
    
    #app_util_est$mws[section_begin:section_end] <- 
    #                  sum(app_util_raw$mws[section_begin:section_end])/
    #                  sum(app_util_raw$up_time_diff[section_begin:section_end])
    
  }

  ## apply the average utilization to each time period
  app_util_est$cpu <- app_util_est$cpu*app_util_est$time_base
  app_util_est$display <- app_util_est$display*app_util_est$time_base
  app_util_est$wifi <- app_util_est$wifi*app_util_est$time_base
  app_util_est$wifi_base <- app_util_est$wifi_base*app_util_est$time_base
  #app_util_est$mws <- app_util_est$mws*app_util_est$time_base
} else {
  ## log length is less than one section (10 sec)
  app_util_est$cpu <- 
      (sum(app_util_raw$cpu_factor)/sum(app_util_raw$up_time_diff))*app_util_raw$up_time_diff
  app_util_est$display <- 
      (sum(app_util_raw$display_factor)/sum(app_util_raw$up_time_diff))*app_util_raw$up_time_diff
  app_util_est$wifi <- 
      (sum(app_util_raw$wifi_total_diff)/sum(app_util_raw$up_time_diff))*app_util_raw$up_time_diff 
  app_util_est$wifi_base <- 
      (sum(app_util_raw$wifi_base)/sum(app_util_raw$up_time_diff))*app_util_raw$up_time_diff
  #app_util_est$mws <- 
  #    (sum(app_util_raw$mws)/sum(app_util_raw$up_time_diff))*app_util_raw$up_time_diff
}


## save object data
dir.create(package_name)
print(paste("Save util info: ", package_name, "/", targeted_log, "_util.Rdata", sep=""))
save(app_util_raw, app_util_est, file=paste(package_name, "/", targeted_log, "_util.Rdata", sep=""))


##== get chronological action log =============================================
##=============================================================================
## read app log file (modified)
#print("input app log file name (xxx.log w/o .log)")
#log_name <- scan(what=character(0), nmax=1)

in_log <- paste(targeted_log, "_user.log.new", sep="")
print(paste("Read app log file: ", in_log, sep=""))
app_log <- read.table(in_log, col.names=c("up_time", "action"), stringsAsFactors=FALSE)

## elapsed time for each record (msec) 
up_time_diff <- diff(app_log$up_time, lag=1)
up_time_diff[length(up_time_diff)+1] <- 0
app_log$up_time_diff <- up_time_diff

print(paste("app_log$up_time|||diff: ", app_log$up_time, "|||", app_log$up_time_diff, sep=""))

func_action_cpu <- function(t) {
  t_lower <- which(app_util_est$up_time <= app_log$up_time[t])
  t_upper <- which(app_util_est$up_time > app_log$up_time[t])
  if(length(t_lower)==0 || length(t_upper)==0) {
    ## timestamp out of utilization log range
    return(NA)
  } else {
    t_lower <- max(t_lower)
    action_end <- app_log$up_time[t] + app_log$up_time_diff[t]
    t_upper <- max(which(app_util_est$up_time <= action_end))

    if(t_lower < t_upper) {
      head_to_remove <- (app_log$up_time[t]-app_util_est$up_time[t_lower])/app_util_est$time_base[t_lower]
      tail_to_append <- (action_end-app_util_est$up_time[t_upper])/app_util_est$time_base[t_upper]

      cpu <- sum(app_util_est$cpu[t_lower:(t_upper-1)]) - 
             app_util_est$cpu[t_lower]*head_to_remove + 
             app_util_est$cpu[t_upper]*tail_to_append
    } else if(t_lower == t_upper) {
      action_length <- app_log$up_time_diff[t]/app_util_est$time_base[t_lower]
      cpu <- app_util_est$cpu[t_lower]*action_length
    }

    return(cpu)
  }
}

func_action_display <- function(t) {
  t_lower <- which(app_util_est$up_time <= app_log$up_time[t])
  t_upper <- which(app_util_est$up_time > app_log$up_time[t])
  if(length(t_lower)==0 || length(t_upper)==0) {
    ## timestamp out of utilization log range
    return(NA)
  } else {
    t_lower <- max(t_lower)
    action_end <- app_log$up_time[t] + app_log$up_time_diff[t]
    t_upper <- max(which(app_util_est$up_time <= action_end))

    if(t_lower < t_upper) {
      head_to_remove <- (app_log$up_time[t]-app_util_est$up_time[t_lower])/app_util_est$time_base[t_lower]
      tail_to_append <- (action_end-app_util_est$up_time[t_upper])/app_util_est$time_base[t_upper]

      display <- sum(app_util_est$display[t_lower:(t_upper-1)]) - 
                 app_util_est$display[t_lower]*head_to_remove + 
                 app_util_est$display[t_upper]*tail_to_append
    } else if(t_lower == t_upper) {
      action_length <- app_log$up_time_diff[t]/app_util_est$time_base[t_lower]
      display <- app_util_est$display[t_lower]*action_length
    }

    return(display)
  }
}

func_action_display_use <- function(t) {
  t_lower <- which(app_util_est$up_time <= app_log$up_time[t])
  t_upper <- which(app_util_est$up_time > app_log$up_time[t])
  if(length(t_lower)==0 || length(t_upper)==0) {
    ## timestamp out of utilization log range
    return(NA)
  } else {
    return(app_util_est$display_use[max(t_lower)])
  }
}

func_action_wifi <- function(t) {
  t_lower <- which(app_util_est$up_time <= app_log$up_time[t])
  t_upper <- which(app_util_est$up_time > app_log$up_time[t])
  if(length(t_lower)==0 || length(t_upper)==0) {
    ## timestamp out of utilization log range
    return(NA)
  } else {
    t_lower <- max(t_lower)
    action_end <- app_log$up_time[t] + app_log$up_time_diff[t]
    t_upper <- max(which(app_util_est$up_time <= action_end))

    if(t_lower < t_upper) {
      head_to_remove <- (app_log$up_time[t]-app_util_est$up_time[t_lower])/app_util_est$time_base[t_lower]
      tail_to_append <- (action_end-app_util_est$up_time[t_upper])/app_util_est$time_base[t_upper]

      wifi <- sum(app_util_est$wifi[t_lower:(t_upper-1)]) - 
                 app_util_est$wifi[t_lower]*head_to_remove + 
                 app_util_est$wifi[t_upper]*tail_to_append
    } else if(t_lower == t_upper) {
      action_length <- app_log$up_time_diff[t]/app_util_est$time_base[t_lower]
      wifi <- app_util_est$wifi[t_lower]*action_length
    }

    return(wifi)
  }
}

func_action_wifi_base <- function(t) {
  t_lower <- which(app_util_est$up_time <= app_log$up_time[t])
  t_upper <- which(app_util_est$up_time > app_log$up_time[t])
  if(length(t_lower)==0 || length(t_upper)==0) {
    ## timestamp out of utilization log range
    return(NA)
  } else {
    t_lower <- max(t_lower)
    action_end <- app_log$up_time[t] + app_log$up_time_diff[t]
    t_upper <- max(which(app_util_est$up_time <= action_end))

    if(t_lower < t_upper) {
      head_to_remove <- (app_log$up_time[t]-app_util_est$up_time[t_lower])/app_util_est$time_base[t_lower]
      tail_to_append <- (action_end-app_util_est$up_time[t_upper])/app_util_est$time_base[t_upper]

      wifi_base <- sum(app_util_est$wifi_base[t_lower:(t_upper-1)]) - 
                       app_util_est$wifi_base[t_lower]*head_to_remove + 
                       app_util_est$wifi_base[t_upper]*tail_to_append
    } else if(t_lower == t_upper) {
      action_length <- app_log$up_time_diff[t]/app_util_est$time_base[t_lower]
      wifi_base <- app_util_est$wifi_base[t_lower]*action_length
    }

    return(wifi_base)
  }
}

app_log$cpu <- apply(array(1:length(app_log$up_time)), 1, function(x) func_action_cpu(x))
app_log$display <- apply(array(1:length(app_log$up_time)), 1, function(x) func_action_display(x))
app_log$display_use <- apply(array(1:length(app_log$up_time)), 1, function(x) func_action_display_use(x))
app_log$wifi <- apply(array(1:length(app_log$up_time)), 1, function(x) func_action_wifi(x))
app_log$wifi_base <- apply(array(1:length(app_log$up_time)), 1, function(x) func_action_wifi_base(x))

## estimate the energy consumed
## the coeficient for Google HTC Nexus One
coef <- list(cpu=0.9195579, display=0.2123821, 
             wifi=0.4439166, wifi_base=0.01391701, phone_base=0.3594519)

app_log$energy <- app_log$cpu*coef$cpu + app_log$display*coef$display +
                  app_log$wifi*coef$wifi + app_log$wifi_base*coef$wifi_base + 
                  app_log$up_time_diff*coef$phone_base

## BAB ADDED (Testing energy and timing):
print(paste("app_log$up_time: ", app_log$up_time, sep=""))
print(paste("app_log$cpu: ", app_log$cpu*coef$cpu, sep=""))
print(paste("app_log$display: ", app_log$display*coef$display, sep=""))
print(paste("app_log$wifi: ", app_log$wifi*coef$wifi, sep=""))
print(paste("app_log$wifi_base: ", app_log$wifi_base*coef$wifi_base, sep=""))
print(paste("app_log$phone_base: ", app_log$up_time_diff*coef$phone_base, sep=""))
print(paste("app_log$energy: ", app_log$energy, sep=""))
print(paste("length(app_log$up_time): ", length(app_log$up_time), sep=""))

app_util_est$energy <- app_util_est$cpu*coef$cpu + app_util_est$display*coef$display + 
                       app_util_est$wifi*coef$wifi + app_util_est$wifi_base*coef$wifi_base + 
                       app_util_est$time_base*coef$phone_base
print(paste("app_util_est$up_time: ", app_util_est$up_time, sep=""))
print(paste("app_util_est$cpu: ",                    app_util_est$cpu*coef$cpu, sep=""))
print(paste("app_util_est$display: ",                app_util_est$display*coef$display, sep=""))
print(paste("app_util_est$wifi: ",                   app_util_est$wifi*coef$wifi, sep=""))
print(paste("app_util_est$wifi_base: ",              app_util_est$wifi_base*coef$wifi_base, sep=""))
print(paste("app_util_est$phone_base: ",             app_util_est$time_base*coef$phone_base, sep=""))
print(paste("app_util_est$$energy: ",         app_util_est$energy, sep=""))

app_util_raw$energy <- app_util_raw$cpu_factor*coef$cpu + 
                       app_util_raw$display_factor*coef$display + 
                       app_util_raw$wifi_total_diff*coef$wifi + 
                       app_util_raw$wifi_base*coef$wifi_base + 
                       app_util_raw$up_time_diff*coef$phone_base
print(paste("app_util_raw$up_time: ", app_util_raw$up_time, sep=""))
print(paste("app_util_raw$cpu: ",                    app_util_est$cpu_factor*coef$cpu, sep=""))
print(paste("app_util_raw$display: ",                app_util_est$display_factor*coef$display, sep=""))
print(paste("app_util_raw$wifi: ",                   app_util_est$wifi_total_diff*coef$wifi, sep=""))
print(paste("app_util_raw$wifi_base: ",              app_util_est$wifi_base*coef$wifi_base, sep=""))
print(paste("app_util_raw$phone_base: ",             app_util_est$up_time_diff*coef$phone_base, sep=""))
print(paste("app_util_raw$energy: ", app_util_raw$energy, sep=""))





##== mapping energy consumed by actions =======================================
##=============================================================================
## read app action log file 
in_action <- paste(targeted_log, "_user.log.action", sep="")
print(paste("Read app action file: ", in_action, sep=""))
app_action <- readLines(in_action)
app_action <- strsplit(app_action, " ")

## add the previous and the next action info for each action
ret <- apply(array(1:length(app_action)), 1, 
             function(x) {
               if(x>1 && x<length(app_action)) {
                 app_action[[x]] <<- c(app_action[[x]][1:2],  ## action_id, action_hash 
                                       app_action[[x-1]][1],  ## prev_action_id
                                       app_action[[x+1]][1],  ## next_action_id
                                       #action_label, section time sequence (# >= 1) 
                                       app_action[[x]][3:length(app_action[[x]])])  
               } else if(x == 1) {
                 app_action[[x]] <<- c(app_action[[x]][1:2],  ## action_id, action_hash 
                                       -1,  ## prev_action_id
                                       app_action[[x+1]][1],  ## next_action_id
                                       #action_label, section time sequence (# >= 1) 
                                       app_action[[x]][3:length(app_action[[x]])])  
               } else if(x == length(app_action)) {
                 app_action[[x]] <<- c(app_action[[x]][1:2],  ## action_id, action_hash 
                                       app_action[[x-1]][1],  ## prev_action_id
                                       -1,  ## next_action_id
                                       #action_label, section time sequence (# >= 1) 
                                       app_action[[x]][3:length(app_action[[x]])])  
               }
           })

## app_action_energy: 
##  c(action_id, action_hash, prev_id, next_id, action_label, 
##    total_energy, section energy sequence (# of items >= 1),
##    total_time, section time sequence (# of items >= 1))
app_action_id <- c()
app_action_hash <- c()
app_action_label <- c()
app_total_energy <- c()
app_section_energy <- c()
app_total_time <- c()
app_section_time <- c()

dir.create(paste(package_name, "/actions", sep=""))
last_mark <- 0
ret <- lapply(app_action,
  function(seq) {
    ## map the energy consumed by each action
    ## we should use the whole sequence of an action to find out the section in app_log;
    ## otherwise, it might come out with some results (when the sequence length is only 2 
    ## and both time stamp are the same)
    action_id_local <- seq[1]
    action_hash_local <- seq[2]
    prev_id_local <- seq[3]
    next_id_local <- seq[4]
    action_label_local <- seq[5]
    action_start_index <- 6
    action_len <- length(seq) - action_start_index + 1
    action_start <- which(apply(embed(as.character(app_log$up_time), action_len), 1, 
                                identical, as.character(rev(seq[action_start_index:length(seq)]))))
    
    ## correctness check
    if(length(action_start) > 1) {
      print(paste("id:", action_id_local, sep=" "))
      print(paste("last id:", prev_id_local, sep=" "))
      print(paste("next id:", next_id_local, sep=" "))
      print(paste("time:", seq[action_start_index], sep=" "))
      print(paste("action_start:", action_start, sep=" "))
      print(paste("last_mark:", last_mark, sep=" "))
      action_start <- action_start[which(action_start==(last_mark+1))]
      print(paste("set action_start:", action_start, sep=" "))
    }
    
    action_end <- action_start + action_len - 1
    last_mark <<- action_end 
    
    section_energy_local <- app_log$energy[action_start:(action_end-1)]
    total_energy_local <- sum(section_energy_local)
    
    section_time_local <- app_log$up_time_diff[action_start:(action_end-1)]
    total_time_local <- sum(section_time_local)

    ## for per action record
    ## if sequence is out of util log range, total_energy_local will be NA 
    if(!(is.na(total_energy_local))) {
      ## aggregate app action energy
      if(context == TRUE) {
        action_file <- paste(package_name, "/actions/action_", 
                             prev_id_local, "_", action_id_local, "_", next_id_local, 
                             ".Rdata", sep="")
      } else {
        action_file <- paste(package_name, "/actions/action_", 
                             action_id_local, ".Rdata", sep="")
      }
      if(file.exists(action_file)) {
        load(action_file)
        prev_id <- rbind(prev_id, prev_id_local)
        next_id <- rbind(next_id, next_id_local)
        action_label <- rbind(action_label, action_label_local)
        section_energy <- rbind(section_energy, section_energy_local)
        total_energy <- rbind(total_energy, total_energy_local) 
        section_time <- rbind(section_time, section_time_local)
        total_time <- rbind(total_time, total_time_local) 
        log_name <- rbind(log_name, targeted_log) 
      } else {
        action_id <- action_id_local
        action_hash <- action_hash_local
        prev_id <- prev_id_local
        next_id <- next_id_local
        action_label <- action_label_local
        section_energy <- section_energy_local
        total_energy <- total_energy_local
        section_time <- section_time_local
        total_time <- total_time_local
        log_name <- targeted_log 
      }
      rownames(prev_id) <- NULL
      rownames(next_id) <- NULL
      rownames(action_label) <- NULL
      rownames(section_energy) <- NULL
      rownames(total_energy) <- NULL
      rownames(section_time) <- NULL
      rownames(total_time) <- NULL
      rownames(log_name) <- NULL
      
      save(action_id, action_hash, prev_id, next_id, action_label, 
           section_energy, total_energy, section_time, total_time, 
           log_name, file=action_file)
      
      ## for per app action record
      ## c(action_id, action_hash, action_label, total_energy, section energy sequence (# of items >= 1)) 
      app_action_id <<- c(app_action_id, action_id_local)
      app_action_hash <<- c(app_action_hash, action_hash_local)
      app_action_label <<- c(app_action_label, action_label_local)
      app_total_energy <<- c(app_total_energy, total_energy_local)
      app_section_energy <<- c(app_section_energy, list(section_energy_local))
      app_section_time <<- c(app_section_time, list(section_time_local))
      app_total_time <<- c(app_total_time, list(total_time_local))
    } 
  })

app_action_energy <- data.frame(cbind(app_action_id, app_action_hash, app_action_label,
                                      app_total_energy, app_section_energy,
                                      app_total_time, app_section_time))
names(app_action_energy) <- c("action_id", "action_hash", "action_label", 
                              "total_energy", "section_energy",
                              "total_time", "section_time")

print(paste("Save action info: ", package_name, "/", targeted_log, "_user_action.Rdata", sep=""))
save(app_log, app_action, app_action_energy, 
     file=paste(package_name, "/", targeted_log, "_user_action.Rdata", sep=""))

save(package_name, file="package.Rdata")


##== finding non-user-interaction energy (background & idle) ==================
## we use display_use to identify the two cases: 
## background: display_use = 0, no user interaction
## idle: display_use = 1, no user interaction
## no user interaction: up_time_diff > idle_threshold
##=============================================================================
## idle threshold: 3 seconds
idle_threshold <- 3000
idx <- which(app_log$up_time_diff > idle_threshold)
idx <- idx[which(!is.na(app_log$energy[idx]))]

ill_file <- paste(targeted_log, "_user.log.ill", sep="")
ill_session <- c()
if(file.exists(ill_file)) {
  ill_session <- read.table(ill_file)
  names(ill_session) <- c("time")
}

## aggregate app non-interaction energy
non_int_file <- paste(package_name, "/non_interaction.Rdata", sep="")
if(file.exists(non_int_file)) {
  load(non_int_file)
  log_name <- rbind(log_name, targeted_log) 
  lead_action_desc <- c(lead_action_desc, app_log$action[idx])
  duration <- c(duration, app_log$up_time_diff[idx])
  energy <- c(energy, app_log$energy[idx])
  display_use <- c(display_use, app_log$display_use[idx])
  label_local <- rep("N", length(idx))
  if(!is.null(ill_session)) {
    idx_ill <- which(app_log$up_time[idx]>=ill_session$time[1] & 
                     app_log$up_time[idx]<=ill_session$time[2])
    label_local[idx_ill] <- "I"
  }
  label <- c(label, label_local)
} else {
  log_name <- targeted_log 
  lead_action_desc <- app_log$action[idx] 
  duration <- app_log$up_time_diff[idx]
  energy <- app_log$energy[idx]
  display_use <- app_log$display_use[idx]
  label <- rep("N", length(idx))
  if(!is.null(ill_session)) {
    idx_ill <- which(app_log$up_time[idx]>=ill_session$time[1] & 
                     app_log$up_time[idx]<=ill_session$time[2])
    label[idx_ill] <- "I"
  }
}

save(lead_action_desc, energy, duration, display_use, label, log_name, 
     file=non_int_file)


##=============================================================================
#source(paste(home_dir, "matrix_energy_mapping.R", sep=""))
#source("plot_log.R")

setwd(home_dir)
#q()

