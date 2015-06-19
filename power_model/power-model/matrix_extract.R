rm(list=ls())

home_dir <- "/home/beitman/Projects/MobEBug/OrigMobEBug/project_code/power_model/power_model_data"

print("input data folder")
wd <- scan(what=character(0), nmax=1)
setwd(paste(home_dir, wd, sep=""))

print("default mapping Rdata folder is set to 'matrix'")
print("input the mapping Rdata (xxx_mapped.Rdata w/o .Rdata)")
fin <- scan(what=character(0), nmax=1)

loc <- "matrix/"
load(paste(loc, fin, ".Rdata", sep=""))

#est_matrix <- subset(est_matrix, (est_matrix$time < 50))
est_matrix <- subset(est_matrix, (est_matrix$time>5)&(est_matrix$time<65))

source("../../power-model/lib_plot.R")

plot_data(est_matrix)
#plot_cpu(est_matrix)
#plot_display(est_matrix)

save(energy_measured, est_matrix_raw, est_matrix, 
     file=paste(loc, fin, "_extract.Rdata", sep=""))
setwd(home_dir)

