## This file is supposed to be called from batch_diagnosis.script with useArgs set to TRUE
## To execute this file inside R, set useArgs to FALSE
rm(list=ls())
useArgs <- TRUE

library(cluster)
#library(class)
#library("e1071", lib="/home/jychen/localx/r_packages")
#library("e1071", lib="/home/R/x86_64-pc-linux-gnu-library/2.14/")

## args: options (1:actions, 2:sequences, 3:both), data_dir
args <- commandArgs(trailingOnly = TRUE)

setwd("/home/beitman/Projects/MobEBug/OrigMobEBug/project_code/energy_analysis/activity_mapper/")
home_dir <- getwd()

wd <- c()
plot_opt <- c()
if(useArgs == TRUE) {
  plot_opt <- args[1]
  wd <- args[2]
} else {
  print("Input diagnosis option (1:action clustering only, 2:)")
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

clust_label <- c()



## clustering with pam/kmeans
## label here is only used for verify the effectiveness of the clustering
## all the data used for clustering are supposed to be unlabeled
pam_clustering <- function(m, label=NULL, path=wd, out_name="pam_clus") {
  ## checking the best number of clusters
  ## this is only to make sure that cluster=2 could be always a proper choice
  ## we do not use this result to choose the number of clusters (at least for now)
  #out_path <- paste(path, "/clus_check", sep="")
  #dir.create(out_path, showWarnings=FALSE)
  #out_file <- paste(out_path, "/", out_name, "_check.eps", sep="")
  ## data_size should be at least larger than the # of clusters 
  ## we supposed that the length of m is larger than 2, and m is a dataframe
  data_size <- length(m[[1]])
  #postscript(file=out_file, paper="letter", horizontal=TRUE)
  #clus_list <- c(2:min(10, data_size-1))
  #y <- c()
  #for(i in clus_list) {
  #  #k <- kmeans(m, i, iter.max=500)
  #  #y <- c(y, k$tot.withinss)
  #  p <- pam(m, k=i)
  #  y <- c(y, p$silinfo$avg.width)
  #}
  #plot(clus_list, y, type="o", lwd=2)
  #dev.off()

  ## clustering 
  p <- pam(m, k=2)
  
  ## ranking
  sortedm <- sort(m$avg_energy)
  
  rankedm <- c()
  for (elem in m$avg_energy)
    rankedm <- rbind(rankedm, which(elem == sortedm))
  rankedm <- 100*rankedm/length(rankedm)
  
  ## Find each traces grouping confidence
  #loglist_file <- "../loglist.txt"
  #print(paste("Load log list:", loglist_file, sep=" "))
  #log_list <- read.table(file=loglist_file, strip.white=TRUE, stringsAsFactors=FALSE, 
  #                       col.names=c("name"))
  #log_list$names <- c()
  #log_list$names <- data.frame(log_list)
  
  #local_group_confidence <- c()
  #for (log in log_list$name) {
    #print(paste("Looking at log: ", log, sep=" "))
    #action_avg_energy <- c()
    
    #log_idx <- (which(m$log_name == log))
    #local_avg_energy <- m$avg_energy[log_idx]
    #local_m <- data.frame(local_avg_energy)
    
    #if(length(local_m[[1]]) > 2) {
    #  print(paste("m OK:", length(local_m[[1]]), sep=" "))
    #  local_p <- pam(local_m, k=2)
    #  local_group_confidence[log_idx] <- abs(mean(diff(local_p$medoids)))
    #}
    #else {
    #  print(paste("m too small:", length(local_m[[1]]), sep=" "))
    #  local_group_confidence[log_idx] <- NaN
    #}
    
    #m$group_confidence[log_idx] <- local_group_confidence
  }
  
  #m$group_confidence <- local_group_confidence
    
  ## partition plot
  out_path <- paste(path, "/clus", sep="")
  dir.create(paste(out_path, "/out", sep=""), recursive=TRUE, showWarnings=FALSE)
  out_file <- paste(out_path, "/out/", out_name, ".eps", sep="")
  postscript(file=out_file, paper="letter", horizontal=TRUE)
  clusplot(p)
  dev.off()

  ## effectiveness calculation
  if(!is.null(label)) {
    m_label <- p$clustering
    # This assumes the larger group is the non-bug group?
    # Why not assume the group with lower avg energy is non-bug group?
    #if(table(p$clustering)[[1]] >= table(p$clustering)[[2]]) {
    if(p$medoids[1] < p$medoids[2]) {
      m_label[which(p$clustering==1)] = "N"
      m_label[which(p$clustering==2)] = "I"
    } else {
      m_label[which(p$clustering==2)] = "N"
      m_label[which(p$clustering==1)] = "I"
    }
    
    m$group_midpoint <- mean(p$medoids)
    m$group_confidence <- mean(diff(p$medoids))
    
    m$point_confidence <- abs(m$group_midpoint - m$avg_energy)
    m$norm_point_confidence <- m$point_confidence/max(m$point_confidence)
    m$ranking <- rankedm
    
    m$clust_label <- m_label

    m_l <- data.frame(m_label, label)    
    m_tp <- length(which(m_label=="I" & label=="I"))
    m_fp <- length(which(m_label=="I" & label=="N"))
    m_tn <- length(which(m_label=="N" & label=="N"))
    m_fn <- length(which(m_label=="N" & label=="I"))

    m_recall <- m_tp/(m_tp+m_fn)
    m_precision <- m_tp/(m_tp+m_fp)
    m_accuracy <- (m_tp+m_tn)/(m_tp+m_tn+m_fp+m_fn)
    m_false_alarm <- m_fp/(m_fp+m_tn)
    # Also called the F-measure
    m_fscore <- 2*(m_precision*m_recall)/(m_precision+m_recall)
    
    m$fscore <- m_fscore
  
    clus_file <- paste(out_path, "/clus_res_", out_name, ".Rdata", sep="")
    save(m_l, m_tp, m_fp, m_tn, m_fn, m_recall, m_precision, m_accuracy, 
         m_false_alarm, m_fscore, data_size, out_name, file=clus_file)
  }

  return(m)
}

## action clustering
action_clustering <- function() {
  ## retrieve action files
  
  #data_path <- paste(wd, "/actions", sep="")
  data_path <- paste(wd, "/actions", sep="")
  
  action_files <- list.files(path=data_path, pattern="^action_", 
                             full.names=TRUE, recursive=FALSE)
  
  ret <- apply(as.array(action_files), 1, 
               function(x) {
                 load(x)
                 ## use average energy consumption instead of the absolute total value
                 ## By doing this, we can remove the effect caused by the length of the 
                 ## action, and have two separate attributes: average energy & duration.
                 ## The effect of the duration is: small power draw * long duration might
                 ## have the same value of large power draw * short duration. 
                 avg_energy <- total_energy/total_time
                 avg_energy[which(is.na(avg_energy))]=0
                 m <- data.frame(avg_energy)
                 m$log_name <- log_name
                 #m <- data.frame(avg_energy, prev_id, next_id)

                 out_name <- strsplit(basename(x), split=".Rdata")[[1]]
                 print(out_name)
                 print(m)
                 ## the number of data should be larger than the # of clusters
                 if(length(m[[1]]) > 2) {
                   m <- pam_clustering(m, label=action_label,
                                  path=data_path, out_name=paste(out_name, "clus", sep="_"))
                   # BAB 4/3/14
                   dir.create(file.path(paste(wd, "/actions/clus/", sep=""), "actions/"), showWarnings = FALSE)
                   data_path <- paste(wd, "/actions/clus/actions/", sep="")
                   
                   action_file <- paste(data_path, out_name, ".Rdata", sep="")
                   #out_file <- paste(data_path, "/clus_act.Rdata", sep="")
                   clust_label <- m$clust_label
                   f_measure <- m$fscore
                   norm_point_confidence <- m$norm_point_confidence
                   ranking <- m$ranking
                   
                   #group_confidence <- m$group_confidence
                   
                   save(action_id, action_hash, prev_id, next_id, action_label, clust_label, f_measure, norm_point_confidence, ranking, #group_confidence,
                        section_energy, total_energy, section_time, total_time, 
                        log_name, total_action_start, total_action_end, file=action_file)
                 } else {
                   print(paste("Warning:", out_name, 
                               "is ignored because length is smaller than 2", sep=" "))
                 }
                 
               })

  ## result analysis
  data_path <- paste(wd, "/actions/clus", sep="")
  clus_files <- list.files(path=data_path, pattern="^clus_res_", 
                           full.names=TRUE, recursive=FALSE)

  action_recall <- c()
  action_accuracy <- c()
  action_precision <- c()
  action_false_alarm <- c()
  action_fscore <- c()
  ret <- apply(as.array(clus_files), 1, 
               function(x) {
                 load(x)
                 action_recall <<- rbind(action_recall, cbind(out_name, m_recall, data_size))
                 action_accuracy <<- rbind(action_accuracy, cbind(out_name, m_accuracy, data_size))
                 action_precision <<- rbind(action_precision, cbind(out_name, m_precision, data_size))
                 action_false_alarm <<- rbind(action_false_alarm, cbind(out_name, m_false_alarm, data_size))
                 action_fscore <<- rbind(action_fscore, cbind(out_name, m_fscore, data_size))
               })
  rownames(action_recall) <- NULL
  rownames(action_accuracy) <- NULL
  rownames(action_precision) <- NULL
  rownames(action_false_alarm) <- NULL
  rownames(action_fscore) <- NULL

  out_file <- paste(data_path, "/clus_res.Rdata", sep="")
  save(action_recall, action_accuracy, action_precision, 
       action_false_alarm, action_fscore, file=out_file) 
  
  #out_file <- paste(data_path, "/action_recall.eps", sep="")
  #postscript(file=out_file, paper="letter", horizontal=TRUE)
  #plot(p)
  #dev.off()
  
  return(ret)
}

### action analaysis
#data_folder<- "k9_2403_0304+0318"
#package_name <- "com.fsck.k9"
#action_file <- "action_27_27_28.Rdata"
#load(paste(data_folder, "/", package_name, "/actions/", action_file, sep=""))
#
#power_avg <- total_energy[which(total_time>0)]/total_time[which(total_time>0)]
##m <- data.frame(scale(power_avg), prev_id, next_id)
#m <- data.frame(scale(power_avg))
#p <- pam(m, k=2)
#
#c1 <- rownames(p$silinfo$width)[which(p$silinfo$width[,1]==1 & p$silinfo$width[,3]>=0.8)]
#c2 <- rownames(p$silinfo$width)[which(p$silinfo$width[,1]==2 & p$silinfo$width[,3]>=0.8)]
#m_l <- cbind(m[as.numeric(c1)], "1")
#m_l <- rbind(m_l, cbind(m[as.numeric(c2)], "2"))
#c0 <- rownames(p$silinfo$width)[which(p$silinfo$width[,3]<0.8)]
#m_u <- cbind(m[as.numeric(c0)])
#
#model <- naiveBayes(m_l[,1], as.factor(m_l[,2]))
#table(predict(model, m_u[,1]))

## sequence analysis
#data_folder<- "k9_2403_0304+0318"
#package_name <- "com.fsck.k9"
#seq_file <- "seq_38.Rdata"
#
#load(paste(data_folder, "/", package_name, "/sequences/", seq_file, sep=""))
### using per-action total energy consumption in a sequence as the dataset
#m1 <- matrix(unlist(total_energy$seq_energy), ncol=seq_len)
#t1 <- matrix(unlist(total_energy$seq_time), ncol=seq_len)
#m1 <- rowSums(m1)/rowSums(t1)

## using per-action average energy consumption in a sequence as the dataset
#m2 <- unlist(total_energy$seq_energy)/unlist(total_energy$seq_time)
#m2[which(is.na(m2))] <- 0
#m2 <- matrix(m2, ncol=seq_len)
#
#m <- cbind(m1, m2)

#p <- pam(m1, 2)


## end of plotting ############################################################
if(plot_opt == "1") {
  action_clustering()
} else if(plot_opt == "2") {
} else if(plot_opt == "3") {
} else {
  print("Error: unknow options")
}

setwd(home_dir)

