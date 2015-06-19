## This file is supposed to be called from batch_seq_mapping.script with useArgs set to TRUE
## To execute this file inside R, set useArgs to FALSE
rm(list=ls())
useArgs <- TRUE

## args: package_name, data_dir
args <- commandArgs(trailingOnly = TRUE)
home_dir <- getwd()
home_dir <- "/home/beitman/Projects/MobEBug/OrigMobEBug/project_code/energy_analysis/activity_mapper"

wd <- c()
package_name <- c()
if(useArgs == TRUE) {
  wd <- args[2]
  package_name <- args[1]
} else {
  print("Input targeted package")
  package_name <- scan(what=character(0), nmax=1)
  print("input data folder")
  wd <- scan(what=character(0), nmax=1)
}

## set up working directory
wd <- paste(home_dir, "/", wd, sep="")
setwd(wd)

print(paste("Data folder:", wd, sep=" "))
print(paste("Targeted package:", package_name, sep=" "))

## read frequent sequence mining results
seq_file <- "sequences.out"
print(paste("Load frequent sequences:", seq_file, sep=" "))
seq <- read.table(file=seq_file, sep=",", strip.white=TRUE, stringsAsFactors=FALSE,
                  col.names=c("seq_len", "action_seq"))
seq$action_seq <- strsplit(as.character(seq$action_seq), split=" ")
##seq$log_id <- strsplit(as.character(seq$log_id), split=" ")

## read log list for log_id mapping
loglist_file <- "loglist.txt"
print(paste("Load log list:", loglist_file, sep=" "))
log_list <- read.table(file=loglist_file, strip.white=TRUE, stringsAsFactors=FALSE, 
                       col.names=c("name"))

## frequent sequence mapping
dir.create(paste(package_name, "/sequences", sep=""))
ret <- apply(as.array(c(1:length(seq$action_seq))), 1, 
             function(x) {
               seq_len <- seq$seq_len[[x]]
               targeted_seq <- seq$action_seq[[x]]
               total_energy <- c()
               ##ret_e <- apply(as.array(seq$log_id[[x]]), 1,
               ##function(i) {
               ## BAB: Instead of looking at indiv, we loop over each logname
               for (i in log_list$name) {

                            ## log index starts from 0 but list index in R starts from 1
                            #log_name <- log_list[[1]][as.numeric(i)+1]
                            targeted_log <- paste(i, "_user_action.Rdata", sep="")
                            load(paste(package_name, "/", targeted_log, sep=""))
                            idx <- which(apply(embed(as.character(app_action_energy$action_id), seq_len), 1, 
                                               identical, as.character(rev(targeted_seq))))
                            ## It's possible that we couldn't find the targeted sequencei, 
                            ## which might be removed from app_action_energy because the 
                            ## total_energy value is NA
                            if(length(idx) > 0) {
                              seq_energy <- lapply(as.array(idx), 
                                                   function(k) {
                                                     unlist(app_action_energy$total_energy)[k:(k+seq_len-1)]
                                                   })
                              seq_time <- lapply(as.array(idx), 
                                                 function(k) {
                                                   unlist(app_action_energy$total_time)[k:(k+seq_len-1)]
                                                 })
                              seq_id <- lapply(as.array(idx), 
                                                  function(k) {
                                                    unlist(app_action_energy$action_id)[k:(k+seq_len-1)]
                                                  })
                              seq_label <- lapply(as.array(idx), 
                                                  function(k) {
                                                    unlist(app_action_energy$action_label)[k:(k)]
                                                  })
                              

                              #total_energy <<- rbind(total_energy, 
                              #                       cbind(seq_energy, seq_time, seq_label, log_name))
                              
                              tot_energy<-seq_energy
                              tot_time<-seq_time
                              
                              index<-1
                              for (element in seq_time) {
                                tot_time[index] <- Reduce("+", element)
                                index<-index+1
                              }
                              
                              index<-1
                              for (element in seq_energy) {
                                tot_energy[index] <- Reduce("+", element)
                                index<-index+1
                              }
                              
                              total_energy <- rbind(total_energy, 
                                                    cbind(seq_energy, seq_time, tot_energy, tot_time, seq_id, seq_label))
                              
                            }
               }
               ## save sequence energy data
               total_energy <- as.data.frame(total_energy)
               save(seq_len, targeted_seq, total_energy, 
                    file=paste(package_name, "/sequences/seq_", x, ".Rdata", sep=""))
             })


setwd(home_dir)

