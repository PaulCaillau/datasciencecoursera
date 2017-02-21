pollutantmean <- function(directory, pollutant, id=1:332, removeNA = TRUE){
  
  #initialize numbers
  totalrow <- 0
  totalsum <- 0
  
  #looping over csv files
  for (i in id){
    correctfile <- paste(directory,"/",formatC(i, width=3, flag="0"),".csv",sep='')
    y <- read.csv(file = correctfile)
    nr <- colSums(!is.na(y))
    totalrow <- totalrow + nr
    totalsum <- totalsum + sum(y[,(pollutant)], na.rm = removeNA)
  } 
  
  meantest <- totalsum/totalrow
  #meantest <- mean(x[,(pollutant)], na.rm = removeNA)
  meantest
}

