best <- function(statecode, outcome) {
 
   ## Read outcome data
  file <- read.csv("outcome-of-care-measures.csv", na.strings="Not Available", stringsAsFactors=FALSE)
  r <- nrow(file)
  outcomes <- c("heart attack", "heart failure","pneumonia")
  colOutcomes <-c(11,17,23)
  m <- rbind(outcomes, colOutcomes)
  
  ## Check that state and outcome are valid
    if(is.element(statecode, file[,7])==TRUE && is.element(outcome, outcomes)==TRUE){
      print ("valid arguments")
      
      ##I NEED O FILTER BY STATE !
      indexcol <- as.numeric(m[2,which(outcomes==outcome)])
      Hopital = file[,2] 
      code = file[,7]
      rate = file[,indexcol]
      my_data = cbind(Hopital, code, rate)
      my_data2 <- my_data[which(my_data[,2] == statecode),]
      
      ## Return hospital name in that state with lowest 30-day death
      lowestrate <- (min(as.numeric(my_data2[,3]), na.rm=TRUE))
      lowestindex <- which(my_data2[,3]==lowestrate)
      my_data2[which(my_data2[,3]==lowestrate),]
      
    }else if(is.element(outcome, outcomes)==FALSE && is.element(state, file[,7])==TRUE){
      stop('invalid outcomes')
    }else if(is.element(state, file[,7])==FALSE && is.element(outcome, outcomes)==TRUE){
      stop('invalid state')
    }else if(is.element(state, file[,7])==FALSE && is.element(outcome, outcomes)==FALSE){
      stop('invalid arguments')
    }
  
  
  ## rate
}