## This file is supposed to be called from batch_plot.script with useArgs set to TRUE
## To execute this file inside R, set useArgs to FALSE
rm(list=ls())
source("plot_args.R")
#source("../../plot_args.R")
library(calibrate)
library(cluster)
require(data.table)
useArgs <- TRUE

## args: options (1:actions, 2:sequences, 3:both), data_dir
args <- commandArgs(trailingOnly = TRUE)
home_dir <- getwd()

wd <- c()
plot_opt <- c()
if(useArgs == TRUE) {
  plot_opt <- args[1]
  wd <- args[2]
} else {
  print("Input plot option (0:non-interaction, 1:actions, 2:sequences, 3:all)")
  plot_opt <- scan(what=character(0), nmax=1)
  print("input data folder")
  wd <- scan(what=character(0), nmax=1)
}

## set up working directory
wd <- paste(home_dir, "/", wd, sep="")
setwd(wd)

package_name <- c()
print("Load package info")
load("package.Rdata")
print(paste("Targeted package:", package_name, sep=" "))

wd <- paste(wd, "/", package_name, sep="")
setwd(wd)
print(paste("Data folder:", wd, sep=" "))

## rounding function ##########################################################
mround <- function(x,base){ 
        base*round(x/base) 
} 


## plotting functions ##########################################################
## pie plot funciton
plot_pie_energy <- function(m, total_energy, save=FALSE, context=FALSE,
                               path=wd, out_name="plot_action_energy") {
  if(save == TRUE) {
    if(context == TRUE) {
      out_path <- paste(path, "/out_context", sep="")
    } else {
      out_path <- paste(path, "/out", sep="")
    }
    dir.create(out_path, showWarnings=FALSE)
    out_file <- paste(out_path, "/", out_name, ".eps", sep="")
    postscript(file=out_file, paper="letter", horizontal=TRUE)
  }
  
  unique_ids <- unique(m$id)
  
  ids <- data.frame(unique_ids)
  
  for (id in ids$unique_ids) {
    id_idx <- which(m$id == id)
    avg_energy <- mean(m$avg_energy[id_idx])
    avg_duration <- mean(m$duration[id_idx])
    
    id_idx <- which(ids$unique_ids == id)
    ids$avg_energy[id_idx] <- avg_energy
    ids$avg_duration[id_idx] <- avg_duration
  }
  
  # Add wakelock energy
  num_wls <- 2
  energy_wls <- sum(total_energy$app_idle_cpu_energy)
  energy_wls_per_action <- energy_wls/num_wls
  
  wakelock <- data.frame(unique_ids="WL", avg_energy=energy_wls_per_action, avg_duration=0)
  
  ids <- rbind(ids, wakelock)
  
  sorted_ids <- ids[order(-ids$avg_energy),]
  
  par(mar=c(2,2.25,.1,2))
  # Energy pie chart
  #slices <- ids$avg_energy
  #lbls <- ids$unique_ids
  #pct <- round(ids$avg_energy/sum(ids$avg_energy)*100)
  #lbls <- paste(lbls, pct) # add percents to labels
  #lbls <- paste(lbls,"%",sep="") # ad % to labels
  #pie(slices,radius = 6,labels = lbls, col=rainbow(length(lbls))) 
  
  # Simple Horizontal Bar Plot with Added Labels
  energy <- sorted_ids$avg_energy
  pctg <- round(sorted_ids$avg_energy/sum(sorted_ids$avg_energy)*100, digits = 2)
  labels <- paste(sorted_ids$unique_ids,", ", pctg,"%",sep="")
  barplot(energy, 
          horiz=TRUE,
          names.arg=labels,
          las=1,
          cex.axis=.8,
          cex.names=.2,
         # yaxs="i",
          border=NA)
  
  # Duration pie chart
  #slices <- ids$avg_duration
  #lbls <- ids$unique_ids
  #pct <- round(ids$avg_duration/sum(ids$avg_duration)*100)
  #lbls <- paste(lbls, pct) # add percents to labels
  #lbls <- paste(lbls,"%",sep="") # ad % to labels
  #pie(slices,radius = 1,labels = lbls, col=rainbow(length(lbls))) 
  
  # Comparison code
  WL_sorted_ids <- sorted_ids
  NoWL_sorted_ids <- sorted_ids
  
  wakelock$unique_ids <- 0
  wakelock$avg_energy <- 0
  wakelock$avg_duration <- 0
  
  wakelock_comp <- data.frame(unique_ids=0, avg_energy=0, avg_duration=0)
  
  for (id in NoWL_sorted_ids$unique_ids) {
    if (id %in% WL_sorted_ids$unique_ids){
      WL_idx <- which(id == WL_sorted_ids$unique_ids)
      NoWL_idx <- which(id == NoWL_sorted_ids$unique_ids)
      
      wakelock$unique_ids <- id
      wakelock$avg_energy <- abs(NoWL_sorted_ids$avg_energy[NoWL_idx] - WL_sorted_ids$avg_energy[WL_idx])
      wakelock$avg_duration <- 0
      
      if (wakelock_comp$unique_ids == 0) {
        wakelock_comp$unique_ids <- wakelock$unique_ids
        wakelock_comp$avg_energy <- wakelock$avg_energy
        wakelock_comp$avg_duration <- wakelock$avg_duration
      }
      else {
        wakelock_comp <- rbind(wakelock_comp, wakelock)
      } 
    }
  }
  sorted_ids <- wakelock_comp
  sorted_ids <- ids[order(-sorted_ids$avg_energy),]
  
  save(sorted_ids, file=paste("sorted_ids.Rdata", sep=""))
  
}
  
  
## energy plot funciton
plot_action_energy <- function(m, save=FALSE, context=FALSE,
                               path=wd, out_name="plot_action_energy") {
  if(save == TRUE) {
    if(context == TRUE) {
      out_path <- paste(path, "/out_context", sep="")
    } else {
      out_path <- paste(path, "/out", sep="")
    }
    dir.create(out_path, showWarnings=FALSE)
    out_file <- paste(out_path, "/", out_name, ".eps", sep="")
    postscript(file=out_file, paper="letter", horizontal=TRUE)
  }

  # Normalization Code
  ## m contains 4 lists: id, energy, label, duration
  med <- median(m$avg_energy)
  mean <- mean(m$avg_energy)
  if(med > 0)
    m$true_avg_energy <- m$avg_energy
    m$avg_energy <- m$avg_energy/mean

  #ylim=c(min(m$avg_energy), min(10, max(m$avg_energy))) 
  #ylim=c(0, max(m$avg_energy))
  #boxplot(energy~id, m, main="", lwd=1.5, ylim=ylim)

  #if(context == TRUE) {
  #  m$id <- m$context_id
  #}
  
  # List of all action ids
  action_ids <- unique(unlist(m$id, use.names = FALSE))
  loc_clus <- data.frame(action_ids)
  
  medoids <- c()
  local_group_confidence <- c()
  avg_energy <- c()
  avg_duration <- c()
  for (id in loc_clus$action_ids) {
    id_idx <- (which(m$id == id))
    
    avg_energy <- c(avg_energy, mean(m$true_avg_energy[id_idx]))
    avg_duration <- c(avg_duration, mean(m$duration[id_idx]))
    local_avg_energy <- m$avg_energy[id_idx]

    local_m <- data.frame(local_avg_energy)
    
    #print(paste("id_idx:", id_idx, sep=" "))

    if(length(local_m[[1]]) > 2) {
      local_p <- pam(local_m, k=2)
      #if (length(which(local_p$clustering == 1)) < 3) {
      #  medoids <- rbind(medoids, cbind(NaN,NaN))
      #  local_group_confidence <- rbind(local_group_confidence, NaN)
      #}
      #else if (length(which(local_p$clustering == 2)) < 3) {
      #  medoids <- rbind(medoids, cbind(NaN,NaN))
      #  local_group_confidence <- rbind(local_group_confidence, NaN)
      #}
      #else {
        medoids <- rbind(medoids, cbind(local_p$medoids[1], local_p$medoids[2]))
        local_group_confidence <- rbind(local_group_confidence, abs(mean(diff(local_p$medoids))))
        #print(paste("medoids:", local_p$medoids, sep=" "))
      #}
    }
    else {
      medoids <- rbind(medoids, cbind(NaN, NaN))
      local_group_confidence <- rbind(local_group_confidence, NaN)
    }

    print(paste("local_group_confidence:", local_group_confidence, sep=" "))
  }
  loc_clus$medoid1 <- medoids[,1]
  loc_clus$medoid2 <- medoids[,2]
  loc_clus$med_dist <- local_group_confidence
  loc_clus$avg_energy <- avg_energy
  loc_clus$avg_duration <- avg_duration
  loc_clus$avg_total_energy <- loc_clus$avg_energy * loc_clus$avg_duration
  loc_clus$avg_total_energy_perc <- (loc_clus$avg_total_energy)/sum((loc_clus$avg_total_energy))
  
  resp_medoid1 <- c()
  resp_medoid2 <- c()
  for (id in m$id) {
    idx <- which(id == loc_clus$action_ids)
    
    resp_medoid1 <- c(resp_medoid1, loc_clus$medoid1[idx])
    resp_medoid2 <- c(resp_medoid2, loc_clus$medoid2[idx])
  }
  m$resp_medoid1 <- resp_medoid1
  m$resp_medoid2 <- resp_medoid2
  m$dist_med <- pmin(abs(m$avg_energy - m$resp_medoid1), abs(m$avg_energy - m$resp_medoid2))
  
  for (id in loc_clus$action_ids) {
    print(paste("id:", id, sep=" "))
    idx <- which(id == m$id)
    avg_dist_med <- mean(m$dist_med[idx])
    loc_idx <- which(id == loc_clus$action_ids)
    loc_clus$avg_dist_med[loc_idx] <- avg_dist_med
  }
  max_dist <- max(loc_clus$avg_dist_med[!is.na(loc_clus$avg_dist_med)])
  loc_clus$confidence <- max_dist - loc_clus$avg_dist_med
  
  #clus <- loc_clus
  #file_name <- paste("Master_cluster_info", sep="")
  #clus_file <- paste(out_path, "/", file_name, ".Rdata", sep="")
  #save(clus, file=clus_file)
  
  #file_name <- paste("Master_action_info", sep="")
  #m_file <- paste(out_path, "/", file_name, ".Rdata", sep="")
  #save(m, file=m_file)  
  

  #xlab <- paste("Action Unit, Group_Conf:", mean(sortedm$group_conf, na.rm=TRUE), " Isolation: ", mean(sortedm$isolation, na.rm=TRUE), sep=" ")
  xlab <- paste("Action Unit, Avg Med Distance:", mean(loc_clus$med_dist, na.rm=TRUE), "Avg Spread:", mean(m$dist_med, na.rm=TRUE), sep=" ")
  
  idx = which(m$label == "N")
  #print(paste("idx", idx, sep=" "))
  if(TRUE) {
    #print(paste("id:", m$id[idx], sep=" "))
    #print(paste("avg_energy:", m$avg_energy[idx], sep=" "))
    #par(mar=c(5,5,.1,.1))
    par(mar=c(25,5,1,.1))
    #normal$id = m$id[idx]
    
    ## Remove unwanted Facebook actions
    #idx = which(!(m$id %in% c(1,9,10,11)))
    
    plot(m$id, m$avg_energy, type="b", ylim=c(0, 4), outline=FALSE,
         pch=pch[8], lwd=.25, cex.lab=1.75, cex.axis=1.75, xaxt='n',
         ylab="Normalized Avg. Energy")
    #mtext(xlab, side=1, line=7, cex=2)
    #idx = which(m$label == "I")
    #axis(1,1:20, labels=FALSE, tick=FALSE, line=-.5)
    
    ActionLabels <- c("ML:onResume","ML:onOptSelect","ML:onClick","ML:onItemClick","FL:onCreate","FL:onResume","FL:onItemClick","FL:SaveState","FL:onPause",
"ML:onCreate","ML:onOptSelect","ML:onClick","AS:onCreate","ML:SaveState","ML:onPause","MV:onCreate","MV:onResume","MV:onClick")
    #ActionLabels <- c("HA:OptItemSelect","SA:onCreate","SA:onResume","EA:onItemClick","EBA:onCreate","EBA:onResume","EBA:onPause","HARL:ItemSelect",
#"HA:onPause","HA:onClick","UTHA:onCreate","FBTA:onResume","FBTA:onPause","UTHA:onDestroy","RA:onCreate","FBLA:onREsume",
#"FBLA:onPause","EA:onCreate","EA:onResume","EA:onPause","SA:onCreate","SA:onResume","SA:onPause","SA:onStop","SA:onDestroy",
#"PTHA:onCreate","PTHA:onResume","PTHA:onPause","PTHA:onDestroy","AA:onCreate","AA:onResume","AA:onPause","M:onCreate",
#"FBTA:onResume","M:onScroll","FBTA:onPause","M:onDestroy","FA:onItemClick","TCL:onClick","PTHA:onPause","USR:onCreate","FBTA:onResume",
#"Part_Wklock(Disp Off)", "Part_Wklock(Disp On)")
    #text(x = seq(1, 44, by=1), par("usr")[1]+1, labels = ActionLabels, srt = -90, xpd = TRUE, adj = c(0,.5))
    text(x = seq(1, 18, by=1), par("usr")[1], labels = ActionLabels, srt = -90, xpd = TRUE, adj = c(0,.5))
    
    #points(m$id[idx], m$avg_energy[idx], lwd=1.5, col="red", pch=pch[2])
  } else {
    idx = which(m$label == "I")
    #print(paste("m$avg_energy[idx]:", m$avg_energy, sep=" "))
    #plot(m$id[idx], m$avg_energy[idx], type="p", col="red", 
    #     pch=pch[2], lwd=1.5, cex.lab=1.2, cex.axis=0.45, 
    #     xlab=xlab, ylab="Normalized Average Energy Consumption")
    points(m$id[idx], m$avg_energy[idx], lwd=1.5, col="blue", pch=pch[8])
  }
  
  #loc_clus$medoid1[is.na(loc_clus$medoid1)] <- 0
  #loc_clus$medoid2[is.na(loc_clus$medoid2)] <- 0
  loc_clus$med_spread <- abs(loc_clus$medoid1 - loc_clus$medoid2)
  loc_clus$spread_confidence <- loc_clus$med_spread * (1+loc_clus$confidence)
  
  ## Remove unwanted Facebook actions
  #idx = which(!(loc_clus$action_ids %in% c(1,9,10,11)))
  
  points(loc_clus$action_ids, loc_clus$spread_confidence, type="p", col="red", pch=pch[1], cex=1.5,lwd=4)
  
  
  points(loc_clus$action_ids, loc_clus$medoid1, type="p", col="blue", pch=pch[5], cex=.9,lwd=1.5)
  points(loc_clus$action_ids, loc_clus$medoid2, type="p", col="blue", pch=pch[5], cex=.9,lwd=1.5)
  
  # Legend
  legend_labels <- c("Raw Data", "Medoids", "Group Confidence")
  legend(4, 4, legend_labels, 
         cex=1, pt.cex=1.5, lty=c(2,0,0), lwd=c(.25,1.5,2), col=c("black", "blue", "red"), pch=c(NA, 4, 1), horiz=TRUE);

  file_name <- paste(wd, "/..", "/Master_cluster_info.Rdata", sep="")
  if (file.exists(file_name)) {
    load(file_name)
    print(paste("clus$action_ids:", clus$action_ids, sep=" "))
    print(paste("loc_clus$action_ids:", loc_clus$action_ids, sep=" "))
    act_idx <- which(clus$action_ids %in% loc_clus$action_ids)
    print(paste("act_idx:", act_idx, sep=" "))
    
    ids <- clus$action_ids[act_idx]
    med1 <- clus$medoid1[act_idx]
    med2 <- clus$medoid2[act_idx]
    cut_clus <- data.frame(ids, med1, med2)
    loc_clus$mmed1 <- cut_clus$med1
    loc_clus$mmed2 <- cut_clus$med2
    #print(paste("cut_clus:", cut_clus, sep=" "))
    
    loc_clus$m2m1d <- abs(loc_clus$medoid1 - loc_clus$mmed1)
    loc_clus$m2m2d <- abs(loc_clus$medoid2 - loc_clus$mmed2)
    loc_clus$m2m <- loc_clus$m2m1d + loc_clus$m2m2d
    print(paste("avg distance from master medoids:", mean(loc_clus$m2m, na.rm=TRUE), sep=" "))
    print(paste("percentage of NaN:", length(which(loc_clus$medoid1 == "NaN"))/length(loc_clus$medoid1), sep=" "))
                    
    points(loc_clus$action_ids, loc_clus$mmed1, type="p", col="green", pch=pch[7], cex=.75)
    points(loc_clus$action_ids, loc_clus$mmed2, type="p", col="green", pch=pch[7], cex=.75)
  } else {
    print(paste("percentage of NaN (cannot print distance to master because file doesn't exist):", length(which(loc_clus$medoid1 == "NaN"))/length(loc_clus$medoid1), sep=" "))
  }
  
  #clus[is.na(clus)] <- 0
  #textxy(clus$action_ids, 0, clus$med_dist)

  if(save == TRUE) { 
    dev.off()
  }
    
  return(m)
}

## duration plot function
plot_action_duration <- function(m, save=FALSE, context=FALSE,
                                 path=wd, out_name="plot_action_duration") {
  if(save == TRUE) {
    if(context == TRUE) {
      out_path <- paste(path, "/out_context", sep="")
    } else {
      out_path <- paste(path, "/out", sep="")
    }
    dir.create(out_path, showWarnings=FALSE)
    out_file <- paste(out_path, "/", out_name, ".eps", sep="")
    postscript(file=out_file, paper="letter", horizontal=TRUE)
  }

  ## m contains 4 lists: id, energy, label, duration
  med <- median(m$duration)
  if(med > 0)
    m$duration <- m$duration/med

  #ylim=c(0, min(10, max(m$duration))) 
  #ylim=c(min(m$duration), max(m$duration))
  #boxplot(duration~id, m, main="", lwd=1.5, ylim=ylim)
  
  if(context == TRUE) {
    m$id <- m$context_id
  }

  idx = which(m$label == "N")
  if(length(idx) > 0) {
    plot(m$id[idx], m$duration[idx], type="p", lwd=1.5,   pch=pch[1])
    idx = which(m$label == "I")
    points(m$id[idx], m$duration[idx], lwd=1.5, col="red", pch=pch[2])
  } else {
    idx = which(m$label == "I")
    plot(m$id[idx], m$duration[idx], type="p", lwd=1.5, ylim=c(min(m$duration), max(m$duration)), col="red", pch=pch[2])
  }

  if(save == TRUE) { 
    dev.off()
  }
    
  return(m)
}

## chronological plot function
plot_action_chrono <- function(m, appm, appm2, save=FALSE, context=FALSE,
                                 path=wd, out_name="plot_action_chrono") {
    if(save == TRUE) {
    if(context == TRUE) {
      out_path <- paste(path, "/out_context", sep="")
    } else {
      out_path <- paste(path, "/out", sep="")
    }
    dir.create(out_path, showWarnings=FALSE)
    out_file <- paste(out_path, "/", out_name, ".eps", sep="")
    postscript(file=out_file, paper="letter", horizontal=TRUE)
  }

  ## m contains 4 lists: id, energy, label, duration
  med <- median(m$avg_energy)
  if(med > 0)
    #m$avg_energy <- m$avg_energy/med
  
  if(context == TRUE) {
    m$id <- m$context_id
  }
  
  # Convert .5s energy gathering to 1s
  m$conv_avg_energy <- m$avg_energy

  ABStimeshift = 0
  RELtimeshift = 0
  AddCompsUp = 1
  if (AddCompsUp==1) {

      # Move the two traces
      appm$app_time = appm$app_time - ABStimeshift;
      # Align the two traces up properly
      if (appm2!=0){
        appm2$app_time = appm2$app_time - ABStimeshift;
      }

      ## Add each component up to composite
      appm$app_energy <- ((appm$app_energy))*2
      appm$app_phoneBase_energy <- ((appm$app_phoneBase_energy))*2
      appm$app_wifiBase_energy <- ((appm$app_wifiBase_energy))*2
      # Subsume wifiBase into wifi's energy
      #appm$app_wifi_energy <- ((appm$app_wifi_energy))*2 + appm$app_phoneBase_energy + appm$app_wifiBase_energy
    appm$app_wifi_energy <- ((appm$app_wifi_energy))*2 + appm$app_wifiBase_energy
      #appm$app_wifiBase_energy <- (appm$app_wifiBase_energy)/1000 + appm$app_wifi_energy
      appm$app_display_energy <- ((appm$app_display_energy))*2 + appm$app_wifi_energy
      #appm$app_MT_energy <- ((appm$app_MT_energy))*2 + appm$app_display_energy
      appm$app_cpu_energy <- ((appm$app_cpu_energy))*2 + appm$app_display_energy #+ appm$app_idle_cpu_energy
      appm$app_total <- appm$app_cpu_energy

      if (appm2!=0){
        ## Add each component up to composite
        appm2$app_energy <- ((appm2$app_energy))*2
        appm2$app_phoneBase_energy <- ((appm2$app_phoneBase_energy))*2
        appm2$app_wifiBase_energy <- ((appm2$app_wifiBase_energy))*2
        # Subsume wifiBase into wifi's energy
        #appm2$app_wifi_energy <- ((appm2$app_wifi_energy))*2 + appm2$app_phoneBase_energy + appm2$app_wifiBase_energy
        appm2$app_wifi_energy <- ((appm2$app_wifi_energy))*2 + appm2$app_wifiBase_energy
        #appm2$app_wifiBase_energy <- (appm2$app_wifiBase_energy)/1000 + appm2$app_wifi_energy
        appm2$app_display_energy <- ((appm2$app_display_energy))*2 + appm2$app_wifi_energy
        #appm$app_MT_energy <- ((appm2$app_MT_energy))*2 + appm2$app_display_energy
        appm2$app_cpu_energy <- ((appm2$app_cpu_energy))*2 + appm2$app_display_energy #+ appm2$app_idle_cpu_energy
        appm2$app_total <- appm2$app_cpu_energy
      }
  }
  else {

     appm$app_energy <- ((appm$app_energy))*2
     appm$app_phoneBase_energy <- ((appm$app_phoneBase_energy))*2
     appm$app_wifiBase_energy <- ((appm$app_wifiBase_energy))*2
     # Subsume wifiBase into wifi's energy
     appm$app_wifi_energy <- ((appm$app_wifi_energy))*2 + appm$app_wifiBase_energy
     appm$app_display_energy <- ((appm$app_display_energy))*2
     #appm$app_MT_energy <- ((appm$app_MT_energy))*2
     appm$app_cpu_energy <- ((appm$app_cpu_energy))*1.5
     #appm$app_idle_cpu_energy <- ((appm$app_idle_cpu_energy))*2

#    if (nrow(appm2) > 1){
    if (appm2!=0){
        ## Add each component up to composite
        appm2$app_energy <- ((appm2$app_energy))*2
        appm2$app_phoneBase_energy <- ((appm2$app_phoneBase_energy))*2
        appm2$app_wifiBase_energy <- ((appm2$app_wifiBase_energy))*2
        # Subsume wifiBase into wifi's energy
        appm2$app_wifi_energy <- ((appm2$app_wifi_energy))*2
        appm2$app_display_energy <- ((appm2$app_display_energy))*2
        #appm2$app_MT_energy <- ((appm2$app_MT_energy))*2
        appm2$app_cpu_energy <- ((appm2$app_cpu_energy))*2

        # Align the two traces up properly
        appm2$app_time = appm2$app_time - 60;
      }
  }

  #m$avg_time <- ((m$action_start + m$action_end)/2)*2
  m$avg_time <- m$action_start

  # BAB Change ylim if normalization changes
  #ylim=c(min(m$avg_energy), min(10, max(m$avg_energy))) 
  ylim=c(0, max(appm$app_total))
  #ylim=c(0, 650)
  #xlim=c(min(m$avg_time), max(m$avg_time))
  #boxplot(duration~id, m, main="", lwd=1.5, ylim=ylim)

  #print(paste("action_start:", m$action_start, sep=" "))
  #print(paste("action_end:", m$action_end, sep=" "))
  #print(paste("avg_energy:", m$avg_energy, sep=" "))
  #print(paste("appm$app_time:", appm$app_time, sep=" "))
  #print(paste("appm$app_ATcpu_energy:", appm$app_ATcpu_energy, sep=" "))

#1app_energy=app_total_energy,
#2app_time=app_time,
#3app_AT_energy=app_ATcpu_energy,
#4app_MT_energy=app_MTcpu_energy,
#5app_display_energy=app_display_energy,
#6app_wifi_energy=app_wifi_energy,
#7app_wifiBase_energy=app_wifi_base_energy,
#8app_phoneBase_energy=app_phone_base_energy)
  # PLOT Total App Energy ######################################################################
  #print(paste("app_time:", appm$app_time, sep=" "))
  #print(paste("app_energy:", appm$app_energy, sep=" "))
  #par(mar=c(5,5,.1,.1))
  par(mar=c(27.5,6,1,6))

  # Plot for NI-Bug Example shinnanigans
  appm$app_time <- appm$app_time - 90

  plot(appm$app_time, appm$app_cpu_energy, type="l", lwd=1.75, lty=1, pch=1, cex.axis=1.5, cex.lab=2, col="black",
      # BAB Limit the total plot time to actions
      #xlim=c(min(m$avg_time), max(m$avg_time)),
      #xaxt = "n",
      las=1,
      xlim=c(0, 50), 
      ylim=c(0, 500),
      xaxt='n',
      yaxt='n',
      bty="n",
      xaxs="i", yaxs="i",
      xlab="", ylab="")

  #axis(side = 1, at = c(0,50,100,150,200,250,300,350), labels = c("0","50","100","150","200","250","300","350"), cex.axis=1.75)
  mtext("Power (mW)", side=2, line=1.5, cex=2)
  axis(side = 2, labels= c("","","","","",""), c(0,100,200,300,400,500))
  axis(side = 4, labels= c("0","20","40","60","80","100"), c(0,100,200,300,400,500), las=1, cex.axis=1.5, col.axis=rgb(.55, .55, .55), col.ticks=rgb(.55, .55, .55))
  mtext("Ranking (%)", side=4, line=3.5, cex=2, col=rgb(.55, .55, .55))
  #axis(side = 2, at = c(0,100,200,300,400,500,600), labels = c("0","100","200","300","400","500","600"), srt=-90, cex.axis=1.25)

  # grid lines
  abline(h=c(0,250,500), lwd=.5, lty=3,)

  if (appm2!=0){
    lines(appm2$app_time, appm2$app_cpu_energy, type="l", lwd=1.5, lty=1, ylim=ylim,  pch=19, cex=.6, col="black")
  }
  #lines(appm$app_time, appm$app_AT_energy, type="b", lwd=.5, lty=1, ylim=ylim,  pch=19, cex=.5,
  #    xlim=c(min(m$avg_time), max(m$avg_time)))
  #lines(appm$app_time, appm$app_cpu_energy, type="b", lwd=.5, lty=1, ylim=ylim,  pch=0, cex=.5, col="red",
  #    xlim=c(min(m$avg_time), max(m$avg_time)))

  # OPTIONAL Components::
  #lines(appm$app_time, appm$app_idle_cpu_energy, type="b", lwd=.25, lty=2, ylim=ylim,  pch=19, cex=.5, col="green",
  #    xlim=c(min(m$avg_time), max(m$avg_time))) 
  #lines(appm$app_time, appm$app_display_energy, type="b", lwd=.25, lty=2, ylim=ylim,  pch=19, cex=.5, col="blue",
 #     xlim=c(min(m$avg_time), max(m$avg_time)))
 # lines(appm$app_time, appm$app_wifi_energy, type="b", lwd=.25, lty=2, ylim=ylim,  pch=23, cex=.5, col="orange",
 #     xlim=c(min(m$avg_time), max(m$avg_time)))
    
    
  #lines(appm$app_time, appm$app_phoneBase_energy, type="l", lwd=1.5, lty=2, ylim=ylim,  pch=17, cex=.6, col="black",
  #    xlim=c(min(m$avg_time), max(m$avg_time)))

  # Power Legend
  legend_labels <- c("CPU (active)", "CPU (idle)", "Display", "Wifi")
  legend(20, 700, legend_labels, cex=1.25, pt.cex=.75, lty=c(2,2,2), lwd=3, col=c("red", "green", "blue", "orange"), pch=c(NA, 19, 19, 23), horiz=TRUE);
  #legend_labels <- c("With bug", "No bug")
  #legend(25, 225, legend_labels, 
  #       cex=1.35, pt.cex=1, lty=c(5,1), lwd=c(3,1.5), col=c("red", "black"), pch=c(NA, NA), horiz=TRUE);

  #legend_labels <- c("CPU", "Display", "Wifi")
  #legend(22, 700, legend_labels, 
  #       cex=1.35, pt.cex=1, lty=c(5,1), lwd=c(3,1.5,1.5), col=c("red", "blue", "orange"), pch=c(NA, 19,23), horiz=TRUE);

  # Action Legend
  # turn off clipping:
  par(xpd=TRUE)
  #Action_lagend_labels <- c("1   onResume", "7   onClick", "8   onCreateOptionsMenu", "9   onOptionsItemSelected")
  #legend(58, -105, Action_lagend_labels, cex=1.5, ncol=2);
    
  # Move the two traces
  m$action_start = m$action_start - ABStimeshift;
  # Align the two traces up properly
  #appm2$app_time = appm2$app_time - ABStimeshift;

  print(paste("m$avg_energy:", m$avg_energy, sep=" "))
  #textxy(m$action_start, rep(100, length(m$action_start)), m$id, cex=1.5, col="#666666")
  idx = which(m$label == "N")
  ids <- m$id[idx]
  start_times <- m$action_start[idx]
  id_idx = which(ids %in% c(7,8,9,10,12,13,17,18,23,26,27))
  if(length(idx) > 0) {
    #textxy(m$action_start[idx], rep(500, length(m$action_start[idx])), m$id[idx], cex=.25, col="black")
    #textxy(start_times[id_idx], rep(475, length(ids[id_idx])), ids[id_idx], cex=1.5, col="#666666")
  }
  idx = which(m$label == "I")
  ids <- m$id[idx]
  start_times <- m$action_start[idx]
  id_idx = which(ids %in% c(7,8,9,10,12,13,17,18,23,26,27))
  if(length(idx) > 0) {
    #m$action_start[idx] = m$action_start[idx] - timeshift
    #m$avg_energy[idx] = 22
    #textxy(start_times[id_idx], rep(800, length(ids[id_idx])), ids[id_idx], cex=1.5, col="red")
  }
  #abline(v = m$action_start, col = "red", lty=1, lwd=.1)
  #abline(v = m$action_end, col = "black", lty=2, lwd=.25)
  #textxy(m$action_start, 100, m$id)

  # BAB Change ylim if normalization changes
  #ylim=c(min(m$avg_energy), min(10, max(m$avg_energy))) 
  ylim=c(0, 600)
  #boxplot(duration~id, m, main="", lwd=1.5, ylim=ylim)

  font_size <- 1.2
  # PLOT EACH ACTION BASED ON ITS LABEL (Normal/Illegal) #######################################
  idx = which(m$label == "N")
  #normal = m[idx]
  if(length(idx) > 0) {
    # plot normal main thread first
    #idx = which(m$thread == "MT")
    #plot(m$avg_time[idx], m$conv_avg_energy[idx], type="l", lwd=1.5, ylim=ylim,  pch=pch[1],
    #xlab="Time (s)", ylab="Average Energy Consumption", axes=FALSE)
    #(side=1, at=seq(0, (max(m$avg_time)+mround(max(m$avg_time)/20,5)), by=mround(max(m$avg_time)/20,5)))
    #axis(side=2, at=seq(0, (max(m$conv_avg_energy)+1)), by=1)
    #axis(1, at=min(m$avg_time):max(m$avg_time))
    #axis(1, at=min(m$avg_time):max(m$avg_time))
    #textxy(m$avg_time[idx], m$conv_avg_energy[idx], m$id[idx], cex=font_size)

    idx = which(m$label == "I")
    #ill = m[idx]
    #idx = which(ill$thread == "MT")
    lines(m$avg_time[idx], m$conv_avg_energy[idx], type="l", lwd=1.5, ylim=ylim,  pch=pch[1], cex.axis=1.5, las=1, xlab="Time (s)", ylab="Average Energy Consumption", axes=FALSE)

    #print(paste("action_start:", m$action_start[idx], sep=" "))
    #print(paste("avg_energy:", m$avg_energy[idx], sep=" "))
    if (length(m$avg_time[idx]) > 0) {
        #plot(m$avg_time[idx], m$conv_avg_energy[idx], type="l", lwd=1.5, ylim=ylim, col="red", pch=pch[1],
        #xlab="Time (s)", ylab="Average Energy Consumption", axes=FALSE)
        axis(side=1, at=seq(0, (max(m$avg_time)+mround(max(m$avg_time)/20,5)), by=mround(max(m $avg_time)/20,5)))
        axis(side=2, at=seq(0, (max(m$conv_avg_energy)+1)), by=1)
        textxy(m$avg_time[idx], m$conv_avg_energy[idx], m$id[idx], cex=font_size)
        #legend(0, ylim, c("No Bug","Bug"), col=c("black","red"));

        idx = which(m$label == "I" && m$thread == "AT")
        lines(m$avg_time[idx], m$conv_avg_energy[idx], type="l", lwd=1.5, ylim=ylim,  pch=pch[1],
            xlab="Time (s)", ylab="Average Energy Consumption", axes=FALSE)
    }

  } else {
    idx = which(m$label == "I")
    #print(paste("action_start:", m$action_start[idx], sep=" "))
    #print(paste("avg_energy:", m$avg_energy[idx], sep=" "))
    print(paste("MAX_TIME:", max(m$avg_time)+mround(max(m$avg_time)/20,5), sep=" "))
    print(paste("MAX_ENERGY:", max(m$conv_avg_energy)))
    #plot(m$avg_time[idx], m$conv_avg_energy[idx], type="l", lwd=1.5, ylim=ylim, col="red", pch=pch[2],
    #xlab="Time (s)", ylab="Average Energy Consumption", axes=FALSE)
    axis(side=1, at=seq(0, (max(m$avg_time)+mround(max(m$avg_time)/20,5)), by=mround(max(m$avg_time)/20,5)))
    axis(side=2, at=seq(0, (max(m$conv_avg_energy)+1)), by=1)
#axis(side=2, at=seq(0, max(m$avg_energy), by=mround(max(m$avg_energy)/10,10^ceiling(log10(max(m$avg_energy)/10)))))
    #axis(1, at=min(m$avg_time):max(m$avg_time))
    textxy(m$avg_time[idx], m$conv_avg_energy[idx], m$id[idx], cex=font_size)
  }

  #### !!!!!!!!!!!!!!!!!!!!!!!!!! ADDED RANKING TO THIS PLOT !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! #####
  data_path <- paste(wd, "/actions/clus/actions/", sep="")
  action_files <- list.files(path=data_path, pattern="action_", 
                             full.names=TRUE, recursive=FALSE)
  
  ## read log list for log_id mapping
  loglist_file <- "../loglist.txt"
  print(paste("Load log list:", loglist_file, sep=" "))
  log_list <- read.table(file=loglist_file, strip.white=TRUE, stringsAsFactors=FALSE, 
                         col.names=c("name"))
  
  for (log in log_list$name) {
    print(paste("Looking at log: ", log, sep=" "))
    action_avg_energy <- c()
    energy_local <- c()
    action_energy <- c()
    ret <- apply(as.array(action_files), 1, 
                 function(x) {
                   load(x)
                   
                   total_time_s <- total_time/1000
                   avg_energy <- total_energy/total_time_s
                   avg_energy[which(is.na(avg_energy))] <- 0
                   f_measure[which(is.na(f_measure))] <- 0
                   
                   confidence <- c()
                   idx <- (which(clust_label == "N"))
                   ##confidence[idx] <- -1*norm_point_confidence
                   confidence[idx] <- -1
                   idx <- (which(clust_label == "I"))
                   ##confidence[idx] <- 1*norm_point_confidence
                   confidence[idx] <- 1
                   
                   #time <- 1:length(confidence)
                   
                   context_id <- paste(prev_id, action_id, next_id, sep="_")
                   
                   log_idx <- c()
                   log_idx <- (which(log_name == log))
                   #print(paste("id: ", action_id, " log_idx: ", log_idx, sep=""))
                   local_action_id <- action_id
                   local_avg_energy <- avg_energy[log_idx]
                   #print(paste("avg_energy: ", local_avg_energy, sep=""))
                   local_action_label <- action_label[log_idx]
                   local_total_time <- total_time[log_idx]
                   local_log_name <- log_name[log_idx]
                   local_context_id <- context_id[log_idx]
                   local_total_action_start <- total_action_start[log_idx]
                   local_total_action_end <- total_action_end[log_idx]
                   
                   ## Clustering info
                   local_clust_label <- clust_label[log_idx]
                   local_f_measure <- f_measure[log_idx]
                   local_confidence <- confidence[log_idx]
                   local_ranking <- ranking[log_idx]
                   group_conf <- group_confidence[log_idx]
                   medoids <- medoids[log_idx]
                   isolation <- isolation[log_idx]
                   
                   ## ignore records with duration 0 if they happened rarely
                   effective_idx <- c(1:length(local_total_time))
                   if(length(which(local_total_time==0)) < length(local_total_time)/4) {
                     effective_idx <- which(local_total_time>0)
                   }

                   energy_local <- cbind(local_action_id, local_avg_energy[effective_idx], 
                                         local_action_label[effective_idx], local_total_time[effective_idx], 
                                         local_log_name[effective_idx], local_context_id[effective_idx],
                                         local_total_action_start[effective_idx], 
                                         local_total_action_end[effective_idx],
                                         local_clust_label[effective_idx],
                                         local_f_measure[effective_idx], local_confidence[effective_idx],
                                         local_ranking[effective_idx], group_conf[effective_idx], medoids[effective_idx], isolation[effective_idx])
                   print(energy_local)
                   
                   # Select certain actions if desired
                   #if (action_id %in% c(1,2,3,4,5,6,7,8,9,17,18,20,21,22,23,24,25,26,27,29)) {
                   # If this log had no of these actions, then don't add to total log
                   if (length(local_avg_energy) != 0) {
                    action_avg_energy <<- rbind(action_avg_energy, energy_local)
                   }
                   #}
                 })
    
    action_energy <- data.frame(id=as.factor(action_avg_energy[,1]), 
                                avg_energy=as.numeric(action_avg_energy[,2]),
                                label=action_avg_energy[,3],
                                duration=as.numeric(action_avg_energy[,4]),
                                context_id=as.factor(action_avg_energy[,6]),
                                action_start=as.numeric(action_avg_energy[,7]), 
                                action_end=as.numeric(action_avg_energy[,8]),

                                cluster=as.factor(action_avg_energy[,9]),
                                fmeasure=as.numeric(action_avg_energy[,10]),
                                confidence=as.numeric(action_avg_energy[,11]),
                                ranking=as.numeric(action_avg_energy[,12]),
                                group_conf=as.numeric(action_avg_energy[,13]),
                                medoids=as.numeric(action_avg_energy[,14]),
                                isolation=as.numeric(action_avg_energy[,15]))
    
    sortedm <- action_energy[order(action_energy[,7]),]
    sortedm_iter <- 1:length(sortedm$confidence)
    
    #out_path <- paste(wd, "/actions/out", sep="")
    #out_file <- paste(out_path, "/", log, "_action_confidence", ".eps", sep="")
    #postscript(file=out_file, paper="letter", horizontal=TRUE)
    
    # Moving Average
    sortedm$MA <- mavg(sortedm$ranking, 10)
    sortedm$MA <- mavg(sortedm$MA, 10)
    sortedm$MA <- mavg(sortedm$MA, 10)
    
    #n <- length(sortedm$ranking)/5
    #res <- c()
    #for (iter in 1:(ceiling(n/2))) {
    #  end <- n/2
    #  start <- max(1,iter-(ceiling(n/2)))
    #  tmp_mean <- mean(sortedm$ranking[start:end])
    #  res <- c(res, mean(tmp_mean))
    #}
    #tmp <- c(res, sortedm$ranking[(ceiling(n/2)+1):(length(sortedm$ranking))])
    #res <- c(res, filter(tmp,rep(1/n,n),sides=2)[(ceiling(n/2)+1):(length(tmp))])
    #sortedm$MA <- res
    
    # Derivative
    dY <- diff(sortedm$MA)/diff(sortedm_iter)
    dX <- rowMeans(embed(sortedm_iter,2))

    # Change Derivative to match other plot
    #dY <- ((dY+.5) * 100)
    # Scale Derivative plot to help readability
    # FOR CW because of injection    
    #dY <- ((dY) * 14)
    dY <- ((dY) * 100)
    
    ob_dY <- c(0, dY)
    sortedm$dY <- ob_dY
    
    manifestation_point <- max(dY, na.rm=TRUE)
    corr_x <- sortedm_iter[which(sortedm$dY == manifestation_point)]
    corr_id <- sortedm$id[which(sortedm$dY == manifestation_point)]

    corr_x_window <- sortedm_iter[(which(sortedm$dY == manifestation_point)-6):(which(sortedm$dY == manifestation_point)+5)]
    corr_id_window <- sortedm$id[(which(sortedm$dY == manifestation_point)-6):(which(sortedm$dY == manifestation_point)+5)]
    dY_window <- dY[(which(sortedm$dY == manifestation_point)-5):(which(sortedm$dY == manifestation_point)+5)]
    
    #xlab <- paste("Consecutive Actions, Group_Conf:", mean(sortedm$group_conf, na.rm=TRUE), " Isolation: ", mean(sortedm$isolation, na.rm=TRUE), sep=" ")
    xlab <- paste("Consecutive Actions", sep=" ")

    par(mar=c(22.5,5,1,5))

    sortedm_iter[0] <- 95
    sortedm$ranking[0] <- 95
    sortedm$ranking[1:4] <- sortedm$ranking[1:4] * .25
    sortedm$ranking[37:50] <- sortedm$ranking[37:50] * .25
    sortedm$ranking <- sortedm$ranking * 4.95

    lines(sortedm_iter, sortedm$ranking, type="l", ylab="Rank (%)", xlab="", cex.axis=1.5, cex.lab=2, las=1, ylim=c(0,100), xlim=c(0,400), lwd=4, lty=1, col=rgb(.55, .55, .55), xaxs="i", yaxs="i")
    #lines(sortedm_iter, sortedm$MA, xlab="", ylab="Rank (%)", cex.axis=1.5, cex.lab=2, las=1, lwd=4, lty=4, col="black")
    #textxy(sortedm_iter, sortedm$MA, sortedm$id)
    #lines(dX, dY, xlab=xlab, type="l", ylab="Confidence", ylim=c(-.5,1.5), cex.axis=1.5, cex.lab=2, las=1, lwd=2, lty=2, col=rgb(.55, .55, .55))
    #textxy(dX, dY, sortedm$id, cex=.9)
    #textxy(corr_x, (manifestation_point + 2.5), corr_id, col="red", cex=1.5)
    #textxy(corr_x_window, dY_window, corr_id_window, cex=.75, col=rgb(.55, .55, .55))
    
    #axis(side = 4, at = c(0,20,40,60,80,100,120), labels=c(0,.2,.4,.6,.8,1,1.2), las=1, cex.axis=1.5, col.axis=rgb(.55, .55, .55), col.ticks=rgb(.55, .55, .55))
    #mtext(side = 4, line = 4, "", cex=2)

    #mtext("Actions (in chronological order)", side=1, line=3.5, cex=2)
    }
  #}

  #### !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! END !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!########

  if(save == TRUE) { 
    dev.off()
  }
    
  return(m)
}

## plot function for actions
plot_actions <- function() {
  ## retrieve action files
  data_path <- paste(wd, "/actions", sep="")
  action_files <- list.files(path=data_path, pattern="action_", 
                             full.names=TRUE, recursive=FALSE)
  action_avg_energy <- c()
  ret <- apply(as.array(action_files), 1, 
               function(x) {
                 load(x)
                 ## use average energy consumption instead of the absolute total value
                 ## By doing this, we can remove the effect caused by the length of the 
                 ## action, and have two separate attributes: average energy & duration.
                 ## The effect of the duration is: small power draw * long duration might
                 ## have the same value of large power draw * short duration. 
                 
                 ## ignore records with duration 0 if they happened rarely
                 effective_idx <- c(1:length(total_time))
                 if(length(which(total_time==0)) < length(total_time)/4) {
                   effective_idx <- which(total_time>0)
                 }
                
                 total_time_s <- total_time/1000
                 avg_energy <- total_energy/total_time_s
                 avg_energy[which(is.na(avg_energy))] <- 0

                 #m <- median(avg_energy)
                 ##m <- mean(avg_energy)
                 #if(m > 0)
                 #  avg_energy <- avg_energy/m

                 context_id <- paste(prev_id, action_id, next_id, sep="_")
                 energy_local <- cbind(action_id, avg_energy[effective_idx], 
                                       action_label[effective_idx], total_time[effective_idx], 
                                       log_name[effective_idx], context_id[effective_idx],
                                       total_action_start[effective_idx], 
                                       total_action_end[effective_idx])
                 # Select certain actions if desired
                 #if (action_id %in% c(1,2,3,4,5,6,7,8,9,17,18,20,21,22,23,24,25,26,27,29)) {
                 #if (action_id %in% c(10,12,17,18,7,21,28,31,32,33,35,36,4,47,48,49,50,61)) {
                 #if (action_id %in% c(16,18,19,20,21,22,23,24,25,26,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,95,96,97,98,99,100,101,102,103,104,105,106,"WL0","WL1")) {
                     action_avg_energy <<- rbind(action_avg_energy, energy_local)
                 #}

                 ## plot energy dist in an action
                 action_energy_local <- data.frame(id=as.factor(energy_local[,1]), 
                                                   avg_energy=as.numeric(energy_local[,2]),
                                                   label=energy_local[,3], 
                                                   duration=as.numeric(energy_local[,4]),
                                                   context_id=as.factor(energy_local[,6]),
                                                   action_start=as.numeric(energy_local[,7]), 
                                                   action_end=as.numeric(energy_local[,8]))
                
                 out_name <- strsplit(basename(x), split=".Rdata")[[1]]
                 #plot_action_energy(action_energy_local, save=TRUE, 
                 #                   path=data_path, out_name=paste(out_name, "energy", sep="_"))
                 #plot_action_duration(action_energy_local, save=TRUE, 
                 #                     path=data_path, out_name=paste(out_name, "duration", sep="_"))
               })

  action_energy <- data.frame(id=as.factor(action_avg_energy[,1]), 
                              avg_energy=as.numeric(action_avg_energy[,2]),
                              label=action_avg_energy[,3],
                              duration=as.numeric(action_avg_energy[,4]),
                              context_id=as.factor(action_avg_energy[,6]),
                              action_start=as.numeric(action_avg_energy[,7]), 
                              action_end=as.numeric(action_avg_energy[,8]))

  sortedm <- action_energy[order(action_energy[,7]),]

  TotEn_file <- paste(wd, "/TotalEnergy.Rdata", sep="")
  load(TotEn_file)

  Tot_app_energy <- data.frame(app_energy=app_total_energy,
                           app_time=app_time,
                           app_cpu_energy=app_cpu_energy,
                           #app_idle_cpu_energy=app_idle_cpu_energy,
                           #app_MT_energy=app_MTcpu_energy,
                           app_display_energy=app_display_energy,
                           app_wifi_energy=app_wifi_energy,
                           app_wifiBase_energy=app_wifi_base_energy,
                           app_phoneBase_energy=app_phone_base_energy)

  sappm <- Tot_app_energy[order(Tot_app_energy[,2]),]
  #print(paste("sappm:", sappm, sep=" "))

  TotEn2_file <- paste(wd, "/TotalEnergy2.Rdata", sep="")
  if (file.exists(TotEn2_file)) {
    load(TotEn2_file)

    Tot_app_energy2 <- data.frame(app_energy=app_total_energy,
                           app_time=app_time,
                           app_cpu_energy=app_cpu_energy,
                           #app_idle_cpu_energy=app_idle_cpu_energy,
                           #app_MT_energy=app_MTcpu_energy,
                           app_display_energy=app_display_energy,
                           app_wifi_energy=app_wifi_energy,
                           app_wifiBase_energy=app_wifi_base_energy,
                           app_phoneBase_energy=app_phone_base_energy)

    sappm2 <- Tot_app_energy2[order(Tot_app_energy2[,2]),]
    #print(paste("sappm2:", sappm2, sep=" "))

    plot_action_chrono(sortedm, sappm, sappm2, save=TRUE, path=data_path)
  }
  else {
      plot_action_energy(action_energy, save=TRUE, path=data_path)
      #plot_action_duration(action_energy, save=TRUE, path=data_path)
      plot_action_chrono(sortedm, sappm, 0, save=TRUE, path=data_path)
      #plot_pie(action_energy, Tot_app_energy, save=TRUE, path=data_path)

      #plot_action_energy(action_energy, save=TRUE, path=data_path, context=TRUE)
      #plot_action_duration(action_energy, save=TRUE, path=data_path, context=TRUE)
  }
  
  return(ret)
}


## plot function for sequences
plot_sequences <- function() {
  print("plot_sequences")
  ## retrieve sequence files
  data_path <- paste(wd, "/sequences", sep="")
  seq_files <- list.files(path=data_path, pattern="seq_", 
                          full.names=TRUE, recursive=FALSE)
  sequence_energy <- c()
  ret <- apply(as.array(seq_files), 1, 
               function(x) {
                 load(x)
                 #if(length(total_energy$tot_energy) > 0) {

                   energy_local <- cbind(total_energy$seq_id,
                                         total_energy$tot_energy, 
                                         total_energy$tot_time, 
                                         total_energy$seq_label)
                  

                    sequence_energy <<- rbind(sequence_energy, energy_local)
                   
                    
                 
  
  #action_energy <- data.frame(id=sequence_energy[,1],
  #                            energy=sequence_energy[,2],
  #                            time=sequence_energy[,3],
  #                            label=sequence_energy[,4])

    
    #args <- unlist(total_energy$log_name)

    ## plot
    out_path <- paste(data_path, "/out", sep="")
    dir.create(out_path, showWarnings=FALSE)
    out_file <- paste(out_path, "/", 
                     strsplit(basename(x), split=".Rdata")[[1]], ".eps", sep="")
    postscript(file=out_file, paper="letter", horizontal=TRUE)

    ## barplot
    #h <- array(unlist(total_energy$seq_energy), 
    #           dim=c(seq_len, length(total_energy$seq_energy)))
    #ylim <- c(0, max(colSums(h)))
    #m <- barplot(h, ylim=ylim)
    #text(m, par("usr")[3]-1, srt=60, adj=1,
    #     labels=args, xpd=TRUE, cex=0.8)

    ## segments 
    #ylim <- c(0, max(unlist(total_energy$seq_energy)))
    ylim <- unlist(total_energy$tot_energy)/unlist(total_energy$tot_time)
    ylim[which(is.na(ylim))] = 0
    ylim <- c(0, max(ylim))
    plot(c(1:length(total_energy$tot_energy[[1]])), 
        total_energy$tot_energy[[1]], type="n", ylim=ylim,
         ylab="Normalized Avg. Energy", xlab="")
    mtext(total_energy$seq_id, side=1, line=2, cex=1)
    for(i in 1:length(total_energy$tot_energy)) {
     illegal_file <- "ill"
     col <- ifelse(total_energy$seq_label[[i]]=="I", "red", "black")
     #energy <- total_energy$seq_energy[[i]]
     ## average energy consumption per action during a frequent sequence
     #energy <- total_energy$tot_energy[[i]]/total_energy$tot_time[[i]]
     energy <- total_energy$tot_energy[[i]]/total_energy$tot_time[[i]]
     energy[which(is.na(energy))] = 0
     points(c(1:length(energy)), energy,
            pch=pch[1], lwd=2.0, col=col)
     if(length(energy) > 1) {
       h <- embed(energy, dimension=2)
       h_col <- embed(col, dimension=2)
       col <- ifelse(h_col[,1]=="red" & h_col[,1]==h_col[,2], "red", "black")
       segments(c(1:length(h[,1])), h[,2], 
                c(1:length(h[,1]))+1, h[,1], 
                lty=lty[i%%length(lty)], lwd=2.0, col=col)
       }
       
       
     }
                 dev.off()
   }
  )             

  return(ret)
}

## plot funciton for non-interaction energy
plot_non_int <- function() {
  data_path <- wd
  out_path <- paste(data_path, "/out", sep="")
  dir.create(out_path, showWarnings=FALSE)
  out_file <- paste(out_path, "/plot_non_int.eps", sep="")
  postscript(file=out_file, paper="letter", horizontal=TRUE)

  non_int_file <- paste(data_path, "/non_interaction.Rdata", sep="")
  load(non_int_file)

  ## lead_action_desc, duration, energy, display_use, label
  m <- data.frame(lead_action_desc, duration, energy, display_use, label)
  m$energy_avg <- m$energy/m$duration

  ylim=c(min(m$energy/m$duration), min(10, max(m$energy/m$duration))) 

  idx_n_disp_1 <- which(m$label=="N" & m$display_use==1)
  idx_n_disp_0 <- which(m$label=="N" & m$display_use==0)
  idx_i_disp_1 <- which(m$label=="I" & m$display_use==1)
  idx_i_disp_0 <- which(m$label=="I" & m$display_use==0)
  plot(as.factor(m$lead_action_desc[idx_n_disp_1]), m$energy_avg[idx_n_disp_1],
       type="p", lwd=1.5, ylim=ylim, pch=pch[1])
  points(as.factor(m$lead_action_desc[idx_n_disp_0]), m$energy_avg[idx_n_disp_0],
         lwd="1.5", col="blue", pch=pch[2])
  points(as.factor(m$lead_action_desc[idx_i_disp_1]), m$energy_avg[idx_i_disp_1],
         lwd="1.5", col="red", pch=pch[3])
  points(as.factor(m$lead_action_desc[idx_i_disp_0]), m$energy_avg[idx_i_disp_0],
         lwd="1.5", col="#FF6600", pch=pch[4])

  dev.off()
  return(m)
}


## plot clustering results 
plot_cluster <- function(m, save=FALSE,
                         path=wd, out_name="plot_action_cluster", ylab="") {
  if(save == TRUE) {
    out_path <- paste(path, "/out", sep="")
    dir.create(out_path, showWarnings=FALSE)
    out_file <- paste(out_path, "/", out_name, ".eps", sep="")
    postscript(file=out_file, paper="letter", horizontal=TRUE)
  }

  ## m contains 3 clummns: action, result, data size
  x <- strsplit(m[,1], "_")
  args <- unlist(lapply(x, function(x) x[2]))

  h <- as.numeric(m[,2])
  idx <- which(!is.na(h))
  
  barplot(h[idx], lwd=1.5, cex.lab=1.2, cex.axis=1.2, 
          names.arg=args[idx], cex.names=0.6, xlab="Action Unit", ylab=ylab)


  if(save == TRUE) { 
    dev.off()
  }
    
  return(m)
}

plot_find_manifest <- function() {
  
  data_path <- paste(wd, "/actions/clus/actions/", sep="")
  action_files <- list.files(path=data_path, pattern="action_", 
                             full.names=TRUE, recursive=FALSE)
  
  ## read log list for log_id mapping
  loglist_file <- "../loglist.txt"
  print(paste("Load log list:", loglist_file, sep=" "))
  log_list <- read.table(file=loglist_file, strip.white=TRUE, stringsAsFactors=FALSE, 
                         col.names=c("name"))
  
  for (log in log_list$name) {
    print(paste("Looking at log: ", log, sep=" "))
    action_avg_energy <- c()
    energy_local <- c()
    action_energy <- c()
    ret <- apply(as.array(action_files), 1, 
                 function(x) {
                   load(x)
                   
                   total_time_s <- total_time/1000
                   avg_energy <- total_energy/total_time_s
                   avg_energy[which(is.na(avg_energy))] <- 0
                   f_measure[which(is.na(f_measure))] <- 0
                   
                   confidence <- c()
                   idx <- (which(clust_label == "N"))
                   ##confidence[idx] <- -1*norm_point_confidence
                   confidence[idx] <- -1
                   idx <- (which(clust_label == "I"))
                   ##confidence[idx] <- 1*norm_point_confidence
                   confidence[idx] <- 1
                   
                   #time <- 1:length(confidence)
                   
                   context_id <- paste(prev_id, action_id, next_id, sep="_")
                   
                   log_idx <- c()
                   log_idx <- (which(log_name == log))
                   #print(paste("id: ", action_id, " log_idx: ", log_idx, sep=""))
                   local_action_id <- action_id
                   local_avg_energy <- avg_energy[log_idx]
                   #print(paste("avg_energy: ", local_avg_energy, sep=""))
                   local_action_label <- action_label[log_idx]
                   local_total_time <- total_time[log_idx]
                   local_log_name <- log_name[log_idx]
                   local_context_id <- context_id[log_idx]
                   local_total_action_start <- total_action_start[log_idx]
                   local_total_action_end <- total_action_end[log_idx]
                   
                   ## Clustering info
                   local_clust_label <- clust_label[log_idx]
                   local_f_measure <- f_measure[log_idx]
                   local_confidence <- confidence[log_idx]
                   local_ranking <- ranking[log_idx]
                   group_conf <- group_confidence[log_idx]
                   medoids <- medoids[log_idx]
                   isolation <- isolation[log_idx]
                   
                   ## ignore records with duration 0 if they happened rarely
                   effective_idx <- c(1:length(local_total_time))
                   if(length(which(local_total_time==0)) < length(local_total_time)/4) {
                     effective_idx <- which(local_total_time>0)
                   }

                   energy_local <- cbind(local_action_id, local_avg_energy[effective_idx], 
                                         local_action_label[effective_idx], local_total_time[effective_idx], 
                                         local_log_name[effective_idx], local_context_id[effective_idx],
                                         local_total_action_start[effective_idx], 
                                         local_total_action_end[effective_idx],
                                         local_clust_label[effective_idx],
                                         local_f_measure[effective_idx], local_confidence[effective_idx],
                                         local_ranking[effective_idx], group_conf[effective_idx], medoids[effective_idx], isolation[effective_idx])
                   print(energy_local)
                   
                   # Select certain actions if desired
                   #if (action_id %in% c(1,2,3,4,5,6,7,8,9,17,18,20,21,22,23,24,25,26,27,29)) {
                   # If this log had no of these actions, then don't add to total log
                   if (length(local_avg_energy) != 0) {
                    action_avg_energy <<- rbind(action_avg_energy, energy_local)
                   }
                   #}
                 })
    
    action_energy <- data.frame(id=as.factor(action_avg_energy[,1]), 
                                avg_energy=as.numeric(action_avg_energy[,2]),
                                label=action_avg_energy[,3],
                                duration=as.numeric(action_avg_energy[,4]),
                                context_id=as.factor(action_avg_energy[,6]),
                                action_start=as.numeric(action_avg_energy[,7]), 
                                action_end=as.numeric(action_avg_energy[,8]),

                                cluster=as.factor(action_avg_energy[,9]),
                                fmeasure=as.numeric(action_avg_energy[,10]),
                                confidence=as.numeric(action_avg_energy[,11]),
                                ranking=as.numeric(action_avg_energy[,12]),
                                group_conf=as.numeric(action_avg_energy[,13]),
                                medoids=as.numeric(action_avg_energy[,14]),
                                isolation=as.numeric(action_avg_energy[,15]))
    
    sortedm <- action_energy[order(action_energy[,7]),]
    sortedm_iter <- 1:length(sortedm$confidence)
    
    out_path <- paste(wd, "/actions/out", sep="")
    out_file <- paste(out_path, "/", log, "_action_confidence", ".eps", sep="")
    postscript(file=out_file, paper="letter", horizontal=TRUE)
    
    # Moving Average
    sortedm$MA <- mavg(sortedm$ranking, 10)
    sortedm$MA <- mavg(sortedm$MA, 10)
    sortedm$MA <- mavg(sortedm$MA, 10)
    
    #n <- length(sortedm$ranking)/5
    #res <- c()
    #for (iter in 1:(ceiling(n/2))) {
    #  end <- n/2
    #  start <- max(1,iter-(ceiling(n/2)))
    #  tmp_mean <- mean(sortedm$ranking[start:end])
    #  res <- c(res, mean(tmp_mean))
    #}
    #tmp <- c(res, sortedm$ranking[(ceiling(n/2)+1):(length(sortedm$ranking))])
    #res <- c(res, filter(tmp,rep(1/n,n),sides=2)[(ceiling(n/2)+1):(length(tmp))])
    #sortedm$MA <- res
    
    # Derivative
    dY <- diff(sortedm$MA)/diff(sortedm_iter)
    dX <- rowMeans(embed(sortedm_iter,2))

    # Change Derivative to match other plot
    #dY <- ((dY+.5) * 100)
    # Scale Derivative plot to help readability
    # FOR CW because of injection    
    dY <- ((dY) * 14)
    #dY <- ((dY) * 100)
    
    ob_dY <- c(0, dY)
    sortedm$dY <- ob_dY
    
    manifestation_point <- max(dY, na.rm=TRUE)
    corr_x <- sortedm_iter[which(sortedm$dY == manifestation_point)]
    corr_id <- sortedm$id[which(sortedm$dY == manifestation_point)]

    corr_x_window <- sortedm_iter[(which(sortedm$dY == manifestation_point)-6):(which(sortedm$dY == manifestation_point)+5)]
    corr_id_window <- sortedm$id[(which(sortedm$dY == manifestation_point)-6):(which(sortedm$dY == manifestation_point)+5)]
    dY_window <- dY[(which(sortedm$dY == manifestation_point)-5):(which(sortedm$dY == manifestation_point)+5)]
    
    #xlab <- paste("Consecutive Actions, Group_Conf:", mean(sortedm$group_conf, na.rm=TRUE), " Isolation: ", mean(sortedm$isolation, na.rm=TRUE), sep=" ")
    xlab <- paste("Consecutive Actions", sep=" ")

    par(mar=c(29,5,1.5,5))
    plot(sortedm_iter, sortedm$ranking, type="l", ylab="Rank (%)", xlab="", cex.axis=1.5, cex.lab=2, las=1, ylim=c(0,100), xlim=c(0,50), lwd=1, lty=1, col="black", xaxs="i", yaxs="i")
    lines(sortedm_iter, sortedm$MA, xlab="", ylab="Rank (%)", cex.axis=1.5, cex.lab=2, las=1, lwd=4, lty=4, col="black")
    #textxy(sortedm_iter, sortedm$MA, sortedm$id)
    lines(dX, dY, xlab=xlab, type="l", ylab="Confidence", ylim=c(-.5,1.5), cex.axis=1.5, cex.lab=2, las=1, lwd=2, lty=2, col=rgb(.55, .55, .55))
    #textxy(dX, dY, sortedm$id, cex=.9)
    #textxy(corr_x, (manifestation_point + 2.5), corr_id, col="red", cex=1.5)
    #textxy(corr_x_window, dY_window, corr_id_window, cex=.75, col=rgb(.55, .55, .55))
    
    axis(side = 4, at = c(0,20,40,60,80,100), labels=c(0,.2,.4,.6,.8,"1.0"), las=1, cex.axis=1.5, col.axis=rgb(.55, .55, .55), col.ticks=rgb(.55, .55, .55))
    mtext(side = 4, line = 4, "", cex=2)
    mtext(side = 4, line = 3.5, "Derivative", cex=2, col=rgb(.55, .55, .55))
    mtext("Actions (in chronological order)", side=1, line=2.45, cex=2)

    # grid lines
    abline(h=c(0,20,40,60,80,100), lwd=.5, lty=3,)
    
    par(xpd=TRUE)
    legend_labels <- c("Ranked Actions", "Smoothed", "Derivative")
    legend(3, 125, legend_labels, bty = "n", horiz=TRUE,
         cex=1.5, pt.cex=1, lty=c(1,4,2), lwd=c(1,4,2), col=c("black", "black", rgb(.55, .55, .55)));


    sortedm <- action_energy[order(action_energy[,1]),]
    plot(1:length(sortedm$group_conf),sortedm$group_conf, type="p", lwd=1.5, xlab=xlab, ylab="Group", col="red", ylim=c(0,3))
    lines(1:length(sortedm$medoids),sortedm$medoids, type="p", lwd=1.5, xlab=xlab, ylab="Group", col="black")
    lines(1:length(sortedm$medoids),sortedm$isolation, type="p", lwd=1.5, xlab=xlab, ylab="Group", col="blue")
    
    dev.off()
  }
}

plot_component_util <- function() {

    #data_path <- paste(wd, "/actions/clus/actions/", sep="")
    #action_files <- list.files(path=data_path, pattern="action_", 
    #                         full.names=TRUE, recursive=FALSE)

    out_path <- paste(wd, "/actions/out/", sep="")
    out_file <- paste(out_path, "cpu_utilizations", ".eps", sep="")
    postscript(file=out_file, paper="letter", horizontal=TRUE)

    app_util <- paste(wd, "/PowerTrace1402970512306_ill_util.Rdata", sep="")
    if(file.exists(app_util)) {
        load(app_util)
        #log_name <- rbind(log_name, targeted_log) 
        app_time <- app_util_raw$up_time
        offset <- app_time[1]
        app_time <- (app_time - offset)/1000

        cpu_freq <- app_util_raw$cpu_freq
        display_use <- app_util_raw$display_use
        brightness <- app_util_raw$brightness
        screen <- display_use * brightness

        plot(app_time,cpu_freq, type="l", lwd=1.5, xlab="Time", ylab="Percentile", col="red", ylim=c(0,1))
        lines(app_time,screen, type="l", lwd=1.5, xlab="Time", ylab="Percentile", col="blue", ylim=c(0,1))
        
        dev.off()    
    }
    else {
          print(paste("No CPU UTIL file found: ", app_util, sep=""))
    }
}

## Moving Average
mavg <- function(x,s=5){
  n <- ceiling(length(x)/s)
  #x <- sortedm$ranking
  #MAranking <- mav(ranking, length(ranking)/5)    
  res <- c()
  ## Handles first n/2 elements
  for (iter in 1:(ceiling(n/2))) {
    end <- ((ceiling(n/2)) + iter)
    start <- 1
    tmp_mean <- mean(x[start:end])
    res <- c(res, tmp_mean)
  }
  tmp <- c(res, x[(ceiling(n/2)):(length(x))])
  tx = data.frame(x)
  tdfa = data.frame(tmp)

  for (iter in (ceiling(n/2)+1):(length(x) - (ceiling(n/2)))) {
    end <- ((ceiling(n/2)) + iter)
    start <- (iter - (ceiling(n/2)))
    tmp_mean <- mean(x[start:end])
    res <- c(res, tmp_mean)
  }
  ## Handles all middle elements
  #res <- c(res, filter(tmp,rep(1/n,n),sides=2)[(ceiling(n/2)):(length(tmp))])
  #res <- c(res, mid_res)
  tdf = data.frame(res)
  
  ## Handles last n/2 elements
  end_res <- c()
  for (iter in (length(x) - (ceiling(n/2))):(length(x))) {
    end <- length(x)
    start <- (iter - (ceiling(n/2)))
    tmp_mean <- mean(x[start:end])
    end_res <- c(end_res, tmp_mean)
  }
  tdfe = data.frame(end_res)
  res <- c(res[1:(length(x) - (ceiling(n/2)))], end_res[1:(length(end_res)-1)])
  tdfet = data.frame(res)
  
  
  return (res)
}



## end of plotting ############################################################
if(plot_opt == "0") {
  plot_non_int()
} else if(plot_opt == "1") {
  plot_actions()
  #plot_component_util()
} else if(plot_opt == "2") {
  plot_sequences()
} else if(plot_opt == "3") {
  print("plot_clusters")
  ## retrieve sequence files
  data_path <- paste(wd, "/actions/clus/clus_res.Rdata", sep="")
  load(paste(wd, "/actions/clus/clus_res.Rdata", sep=""))
  plot_cluster(action_accuracy, save=TRUE, out_name="plot_cluster_accuracy")
  plot_cluster(action_false_alarm, save=TRUE, out_name="plot_cluster_false-alarm")
  plot_cluster(action_fscore, save=TRUE, out_name="plot_cluster_fscore")
  plot_cluster(action_precision, save=TRUE, out_name="plot_cluster_precision")
  plot_cluster(action_recall, save=TRUE, out_name="plot_cluster_recall")
} else if(plot_opt == "4") {
  plot_find_manifest()
#  plot_actions()
#  plot_sequences()
} else {
  print("Error: unknown options")
}

setwd(home_dir)



