### Peer-graded Assignment: Getting and Cleaning Data Course Project

Here is the assignement for the Getting and Cleaning Data project. The script named run_analysis.R is used to :


1. Download the data files in the working directory.
2. Load the training and test datasets with the activity and subject data for each datasets as well as the activity and feature information.
3. Merge the training and test datasets into one, keeping only the colomns where the variables are means or standard deviations.
4. Rename all the variables with explicit names.
5. Converts the activity and subject columns into factors named activity_label and subject_id.
6. Reshape the data into a tidy dataset with the average of each variable for each activity and each subject.
7. Create a file called tidy_dataset.txt with the resulting tidy dataset.