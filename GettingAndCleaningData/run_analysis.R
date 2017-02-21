library(reshape2)
library(dplyr)

filename <- "gettingandcleaningdata_dataset.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}


#Let's read the files and load them into R
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#Rename variables with explicit names

y_test <- rename(y_test, activity_id = V1 )               
y_train <- rename(y_train, activity_id = V1 )
subject_test <- rename(subject_test, subject_id = V1 )
subject_train <- rename(subject_train, subject_id = V1 )

#Merge the train and the test sets to create one data set.
test_dataset <- cbind(subject_test,y_test,X_test)
train_dataset <- cbind(subject_train,y_train,X_train)
complete_dataset <- rbind(test_dataset, train_dataset)

#Identify the variables that correspond to a mean or a standard deviation and store their names.
x <- grep("mean|Mean|std", features$V2)
extract_values <- c(1,2, x+2)
x_names <- grep("mean|Mean|std", features$V2, value=TRUE)
extract_values_names <- c("subject_id","activity_id", x_names)

#Subset the complete dataset to extract only the measurements on the mean and standard deviation for each measurement
complete_dataset <- complete_dataset[,(extract_values)]

#Rename all the variables with explicit names
names(complete_dataset) <- c(extract_values_names)

#Rename the activity_id by the corresponding explicit activity_label
complete_dataset <- mutate(complete_dataset, activity_label = factor(activity_id, labels = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")))
complete_dataset <- select(complete_dataset,-activity_id)

#Let's reshape the dataset with the average of each variable for each activity_label and each subject_id
complete_dataset$subject_id <- as.factor(complete_dataset$subject_id)
melted_dataset <- melt(complete_dataset, id = c("subject_id", "activity_label"))
dataset_mean <- dcast(melted_dataset, subject_id + activity_label ~ variable, mean)

#Now write the tidy dataset into a new file 
write.table(dataset_mean, "tidy_dataset.txt", row.names = FALSE, quote = FALSE)
