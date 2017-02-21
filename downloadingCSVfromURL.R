downloading <- function (fileURL, destname){
  
  if(!file.exists("data")){
    dir.create("data")
  }
  download.file(fileURL, destfile = paste("./data/",destname,".csv"))
  dataDownloaded <- date()
}
