# Study design
This section of the document will explain how the original data was transformed into a tidy data set.

## Original data files
Before the data was combined or modified in any way, it contained the following files:

./

* activity_labels.txt
* features_info.txt
* features.txt
* filelist.txt
* README.txt

./test

* subject_test.txt
* X_test.txt
* y_test.txt

./train

* subject_train.txt
* X_train.txt
* y_train.txt


## Merging training and test data



# Code book
The following variables are included in the final data set:

|Variable|Description|
|--------|-----------|
|subjectID|Unique identifier of subject|
|activity|Type of activity, one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING|
|tBodyAcc-mean()-X||
|tBodyAcc-mean()-Y||
|tBodyAcc-mean()-Z||
|tBodyAcc-std()-X||
|tBodyAcc-std()-Y||
|tBodyAcc-std()-Z||
|tGravityAcc-mean()-X||
|tGravityAcc-mean()-Y||
|tGravityAcc-mean()-Z||
|tGravityAcc-std()-X||
|tGravityAcc-std()-Y||
|tGravityAcc-std()-Z||
|tBodyAccJerk-mean()-X||
|tBodyAccJerk-mean()-Y||
|tBodyAccJerk-mean()-Z||
|tBodyAccJerk-std()-X||
|tBodyAccJerk-std()-Y||
|tBodyAccJerk-std()-Z||
|tBodyGyro-mean()-X||
|tBodyGyro-mean()-Y||
|tBodyGyro-mean()-Z||
|tBodyGyro-std()-X||
|tBodyGyro-std()-Y||
|tBodyGyro-std()-Z||
|tBodyGyroJerk-mean()-X||
|tBodyGyroJerk-mean()-Y||
|tBodyGyroJerk-mean()-Z||
|tBodyGyroJerk-std()-X||
|tBodyGyroJerk-std()-Y||
|tBodyGyroJerk-std()-Z||
|tBodyAccMag-mean()||
|tBodyAccMag-std()||
|tGravityAccMag-mean()||
|tGravityAccMag-std()||
|tBodyAccJerkMag-mean()||
|tBodyAccJerkMag-std()||
|tBodyGyroMag-mean()||
|tBodyGyroMag-std()||
|tBodyGyroJerkMag-mean()||
|tBodyGyroJerkMag-std()||
|fBodyAcc-mean()-X||
|fBodyAcc-mean()-Y||
|fBodyAcc-mean()-Z||
|fBodyAcc-std()-X||
|fBodyAcc-std()-Y||
|fBodyAcc-std()-Z||
|fBodyAccJerk-mean()-X||
|fBodyAccJerk-mean()-Y||
|fBodyAccJerk-mean()-Z||
|fBodyAccJerk-std()-X||
|fBodyAccJerk-std()-Y||
|fBodyAccJerk-std()-Z||
|fBodyGyro-mean()-X||
|fBodyGyro-mean()-Y||
|fBodyGyro-mean()-Z||
|fBodyGyro-std()-X||
|fBodyGyro-std()-Y||
|fBodyGyro-std()-Z||
|fBodyAccMag-mean()||
|fBodyAccMag-std()||
|fBodyBodyAccJerkMag-mean()||
|fBodyBodyAccJerkMag-std()||
|fBodyBodyGyroMag-mean()||
|fBodyBodyGyroMag-std()||
|fBodyBodyGyroJerkMag-mean()||
|fBodyBodyGyroJerkMag-std()||

