complete <- function(directory, range, removeNA = TRUE){
  
  #initialize numbers
  df <- data.frame(id=0,nobs=0)
  
  #looping over csv files
  for (i in range){
    correctfile <- paste(directory,"/",formatC(i, width=3, flag="0"),".csv",sep='')
    y <- read.csv(file = correctfile)
    obs <- sum(complete.cases(y))
    df <- rbind(df, data.frame(id=i,nobs=obs))
  } 
  df
}