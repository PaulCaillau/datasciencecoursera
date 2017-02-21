corr <- function(directory, threshold, range=1:332, removeNA = TRUE){
  
  #initialize numbers
  df <- data.frame(id=0,nobs=0)
  vector =c()
  
  
  #looping over csv files
  for (i in range){
    correctfile <- paste(directory,"/",formatC(i, width=3, flag="0"),".csv",sep='')
    y <- read.csv(file = correctfile)
    obs <- sum(complete.cases(y))
    good <- complete.cases(y)
      
      if(obs>threshold){
        sul <- y[good,][("sulfate")]
        nit <- y[good,][("nitrate")]
        vector[i] <- cor(sul,nit)
      }
    
  } 
  vector
}