downloading <- function (sourcefileURL, sourcefiletype, destname){
  
  if(!file.exists("data")){
    dir.create("data")
  }
  
  if(sourcefiletype == "csv"){
    destfileName <-  paste("./data/",destname,".csv",sep='')
    download.file(sourcefileURL, destfile = destfileName)
    dataDownloaded <- date()
    DF <- read.csv(destfileName, header = TRUE)
    DT <- data.table(DF)
    DF
  
    
  }else if(sourcefiletype == "xlsx"){
    destfileName <-  paste("./data/",destname,".xlsx",sep='')
    download.file(sourcefileURL, destfile = destfileName, mode="wb")
    dataDownloaded <- date()
    quizData2 <- read.xlsx(destfileName)
    
  }else if(sourcefiletype == "xml"){
    destfileName <-  paste("./data/",destname,".xml",sep='')
    download.file(sourcefileURL, destfile = destfileName)
    dataDownloaded <- date()
    doc <- xmlTreeParse(destfileName, useInternal=TRUE)
    rootNode <-xmlRoot(doc)
    #xmlName(rootNode)
    Zip <- xpathSApply(rootNode,"//zipcode",xmlValue)
    a <- table(Zip)
    a[names(a)==21231]
  }
}
