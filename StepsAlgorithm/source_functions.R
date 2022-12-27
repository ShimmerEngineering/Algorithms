
#remove(list = ls())

all_files = dir('~/R/GGIR-2.8-2/R')
for (iFile in all_files) {
  file_loc = paste0('~/R/GGIR-2.8-2/R/',iFile)
  debugSource(file_loc)
}

# external function only
#library(GENEAread)
library("Rcpp")
pathR = "~/R/GGIR-2.8-2"
# sourceCpp(paste0(pathR,"/src/numUnpack.cpp"))
# sourceCpp(paste0(pathR,"/src/resample.cpp"))

