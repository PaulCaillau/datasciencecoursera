### Code Book
This CodeBook describes the variables, the data, and any transformations or work that were performed to clean up the data


## DATA

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The data can be found at this url : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## VARIABLES

subject_id 			: the id of the tested subject. <br />
activity_label 		: the label designating the kind of activity that the subject was doing during the test.<br />
tBodyAcc-mean()-X <br />
tBodyAcc-mean()-Y <br />
tBodyAcc-mean()-Z <br />
tBodyAcc-std()-X <br />
tBodyAcc-std()-Y <br />
tBodyAcc-std()-Z <br />
tGravityAcc-mean()-X <br />
tGravityAcc-mean()-Y <br />
tGravityAcc-mean()-Z <br />
tGravityAcc-std()-X <br />
tGravityAcc-std()-Y <br />
tGravityAcc-std()-Z <br />
tBodyAccJerk-mean()-X <br />
tBodyAccJerk-mean()-Y <br />
tBodyAccJerk-mean()-Z <br />
tBodyAccJerk-std()-X <br />
tBodyAccJerk-std()-Y <br />
tBodyAccJerk-std()-Z <br />
tBodyGyro-mean()-X <br />
tBodyGyro-mean()-Y <br />
tBodyGyro-mean()-Z <br />
tBodyGyro-std()-X <br />
tBodyGyro-std()-Y <br />
tBodyGyro-std()-Z <br />
tBodyGyroJerk-mean()-X <br />
tBodyGyroJerk-mean()-Y <br />
tBodyGyroJerk-mean()-Z <br />
tBodyGyroJerk-std()-X <br />
tBodyGyroJerk-std()-Y <br />
tBodyGyroJerk-std()-Z <br />
tBodyAccMag-mean() <br />
tBodyAccMag-std() <br />
tGravityAccMag-mean() <br />
tGravityAccMag-std() <br />
tBodyAccJerkMag-mean() <br />
tBodyAccJerkMag-std() <br />
tBodyGyroMag-mean() <br />
tBodyGyroMag-std() <br />
tBodyGyroJerkMag-mean() <br />
tBodyGyroJerkMag-std() <br />
fBodyAcc-mean()-X <br />
fBodyAcc-mean()-Y <br />
fBodyAcc-mean()-Z <br />
fBodyAcc-std()-X <br />
fBodyAcc-std()-Y <br />
fBodyAcc-std()-Z <br />
fBodyAcc-meanFreq()-X <br />
fBodyAcc-meanFreq()-Y <br />
fBodyAcc-meanFreq()-Z <br />
fBodyAccJerk-mean()-X <br />
fBodyAccJerk-mean()-Y <br />
fBodyAccJerk-mean()-Z <br />
fBodyAccJerk-std()-X <br />
fBodyAccJerk-std()-Y <br />
fBodyAccJerk-std()-Z <br />
fBodyAccJerk-meanFreq()-X <br />
fBodyAccJerk-meanFreq()-Y <br />
fBodyAccJerk-meanFreq()-Z <br />
fBodyGyro-mean()-X <br />
fBodyGyro-mean()-Y <br />
fBodyGyro-mean()-Z <br />
fBodyGyro-std()-X <br />
fBodyGyro-std()-Y <br />
fBodyGyro-std()-Z <br />
fBodyGyro-meanFreq()-X <br />
fBodyGyro-meanFreq()-Y <br />
fBodyGyro-meanFreq()-Z <br />
fBodyAccMag-mean() <br />
fBodyAccMag-std() <br />
fBodyAccMag-meanFreq() <br />
fBodyBodyAccJerkMag-mean() <br />
fBodyBodyAccJerkMag-std() <br />
fBodyBodyAccJerkMag-meanFreq() <br />
fBodyBodyGyroMag-mean() <br />
fBodyBodyGyroMag-std() <br />
fBodyBodyGyroMag-meanFreq() <br />
fBodyBodyGyroJerkMag-mean() <br />
fBodyBodyGyroJerkMag-std() <br />
fBodyBodyGyroJerkMag-meanFreq() <br />
angle(tBodyAccMean,gravity) <br />
angle(tBodyAccJerkMean),gravityMean) <br />
angle(tBodyGyroMean,gravityMean) <br />
angle(tBodyGyroJerkMean,gravityMean) <br />
angle(X,gravityMean) <br />
angle(Y,gravityMean) <br />
angle(Z,gravityMean) <br />


##Activity labels
The activity labels were explicitly used instead of their code value <br />

WALKING: 				the subject was walking during the test. Original value = 1. <br />
WALKING_UPSTAIRS: 		the subject was walking upstairs during the test. Original value = 2. <br />
WALKING_DOWNSTAIRS: 	the subject was walking downstairs during the test. Original value = 3. <br />
SITTING: 				the subject was sitting during the test. Original value = 4. <br />
STANDING: 				the subject was standing during the test. Original value = 5. <br />
LAYING: 				the subject was laying during the test. Original value = 6. <br />