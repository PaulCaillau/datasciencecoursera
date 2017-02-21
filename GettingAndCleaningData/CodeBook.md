### Code Book
This CodeBook describes the variables, the data, and any transformations or work that were performed to clean up the data


## DATA

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The data can be found at this url : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## VARIABLES

subject_id 			: the id of the tested subject
activity_label 		: the label designating the kind of activity that the subject was doing during the test.
tBodyAcc-mean()-X 
tBodyAcc-mean()-Y 
tBodyAcc-mean()-Z 
tBodyAcc-std()-X 
tBodyAcc-std()-Y 
tBodyAcc-std()-Z 
tGravityAcc-mean()-X 
tGravityAcc-mean()-Y 
tGravityAcc-mean()-Z 
tGravityAcc-std()-X 
tGravityAcc-std()-Y 
tGravityAcc-std()-Z 
tBodyAccJerk-mean()-X 
tBodyAccJerk-mean()-Y 
tBodyAccJerk-mean()-Z 
tBodyAccJerk-std()-X 
tBodyAccJerk-std()-Y 
tBodyAccJerk-std()-Z 
tBodyGyro-mean()-X 
tBodyGyro-mean()-Y 
tBodyGyro-mean()-Z 
tBodyGyro-std()-X 
tBodyGyro-std()-Y 
tBodyGyro-std()-Z 
tBodyGyroJerk-mean()-X 
tBodyGyroJerk-mean()-Y 
tBodyGyroJerk-mean()-Z 
tBodyGyroJerk-std()-X 
tBodyGyroJerk-std()-Y 
tBodyGyroJerk-std()-Z 
tBodyAccMag-mean() 
tBodyAccMag-std() 
tGravityAccMag-mean() 
tGravityAccMag-std() 
tBodyAccJerkMag-mean() 
tBodyAccJerkMag-std() 
tBodyGyroMag-mean() 
tBodyGyroMag-std() 
tBodyGyroJerkMag-mean() 
tBodyGyroJerkMag-std() 
fBodyAcc-mean()-X 
fBodyAcc-mean()-Y 
fBodyAcc-mean()-Z 
fBodyAcc-std()-X 
fBodyAcc-std()-Y 
fBodyAcc-std()-Z 
fBodyAcc-meanFreq()-X 
fBodyAcc-meanFreq()-Y 
fBodyAcc-meanFreq()-Z 
fBodyAccJerk-mean()-X 
fBodyAccJerk-mean()-Y 
fBodyAccJerk-mean()-Z 
fBodyAccJerk-std()-X 
fBodyAccJerk-std()-Y 
fBodyAccJerk-std()-Z 
fBodyAccJerk-meanFreq()-X 
fBodyAccJerk-meanFreq()-Y 
fBodyAccJerk-meanFreq()-Z 
fBodyGyro-mean()-X 
fBodyGyro-mean()-Y 
fBodyGyro-mean()-Z 
fBodyGyro-std()-X 
fBodyGyro-std()-Y 
fBodyGyro-std()-Z 
fBodyGyro-meanFreq()-X 
fBodyGyro-meanFreq()-Y 
fBodyGyro-meanFreq()-Z 
fBodyAccMag-mean() 
fBodyAccMag-std() 
fBodyAccMag-meanFreq() 
fBodyBodyAccJerkMag-mean() 
fBodyBodyAccJerkMag-std() 
fBodyBodyAccJerkMag-meanFreq() 
fBodyBodyGyroMag-mean() 
fBodyBodyGyroMag-std() 
fBodyBodyGyroMag-meanFreq() 
fBodyBodyGyroJerkMag-mean() 
fBodyBodyGyroJerkMag-std() 
fBodyBodyGyroJerkMag-meanFreq() 
angle(tBodyAccMean,gravity) 
angle(tBodyAccJerkMean),gravityMean) 
angle(tBodyGyroMean,gravityMean) 
angle(tBodyGyroJerkMean,gravityMean) 
angle(X,gravityMean) 
angle(Y,gravityMean) 
angle(Z,gravityMean)


##Activity labels
The activity labels were explicitly used instead of their code value

WALKING: 				the subject was walking during the test. Original value = 1.
WALKING_UPSTAIRS: 		the subject was walking upstairs during the test. Original value = 2.
WALKING_DOWNSTAIRS: 	the subject was walking downstairs during the test. Original value = 3.
SITTING: 				the subject was sitting during the test. Original value = 4.
STANDING: 				the subject was standing during the test. Original value = 5.
LAYING: 				the subject was laying during the test. Original value = 6.