QuizData <- read.table("./data/dataquizz.csv", sep="," , quote="", header=TRUE)
DT <- data.table(QuizData)
DTfiltered <- DT[DT$VAL==24,]
x <- nrow(DTfiltered)