rankall <- function(outcome, num) {
  
  ## Read outcome data
  file <- read.csv("outcome-of-care-measures.csv", na.strings="Not Available", stringsAsFactors=FALSE)
  r <- nrow(file)
  outcomes <- c("heart attack", "heart failure","pneumonia")
  colOutcomes <-c(11,17,23)
  m <- rbind(outcomes, colOutcomes)
  statecode = c(state.abb)
  mat <- matrix(, nrow = 0, ncol = 3)
  
  ## Check that state and outcome are valid
  if(is.element(statecode, file[,7])==TRUE && is.element(outcome, outcomes)==TRUE){
    print ("valid arguments")
    
    ##I NEED O FILTER BY STATE !
    indexcol <- as.numeric(m[2,which(outcomes==outcome)])
    Hopital = file[,2] 
    code = file[,7]
    rate = file[,indexcol]
    my_data = cbind(Hopital, code, rate)
    
    ##ADD a loop aver statecode
    for (i in 1:50) {
    statecode = state.abb[i]
    my_data2 <- my_data[which(my_data[,2] == statecode),]
    nmax = nrow(my_data2)
    
    
    ## Return hospital name in that state with lowest 30-day death
    x <- my_data2[order(as.numeric(my_data2[,3]),my_data2[,1],decreasing=FALSE),]
    ## Special cases for worst and best
    if(num <= nmax) {
      line <- x[num,]
    }else if(num == "best"){
      lowestrate <- (min(as.numeric(my_data2[,3]), na.rm=TRUE))
      line <- my_data2[which(my_data2[,3]==lowestrate),]
    }else if (num =="worst"){
      biggestrate <- (max(as.numeric(my_data2[,3]), na.rm=TRUE))
      line <- my_data2[which(my_data2[,3]==biggestrate),]
    }else{
      line <- c("<NA>", statecode, "<NA>" )
    }
    
    mat <- rbind(mat, line)
    }
    matordered <- mat[order((mat[,2]),decreasing=FALSE),]
    matordered
    
    
  }else if(is.element(outcome, outcomes)==FALSE && is.element(state, file[,7])==TRUE){
    stop('invalid outcomes')
  }else if(is.element(state, file[,7])==FALSE && is.element(outcome, outcomes)==TRUE){
    stop('invalid state')
  }else if(is.element(state, file[,7])==FALSE && is.element(outcome, outcomes)==FALSE){
    stop('invalid arguments')
  }
  
  
  ## rate
}