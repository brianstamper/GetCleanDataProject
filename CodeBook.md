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

## Transformation
The steps of the processing are as follows:

1. The data text files are read into data frames. The raw inertial data is excluded from this step as it is unused later in the process. The data at this point includes training and test data listing subject IDs (subject), summary features of the smartphone motion data (X), and activity codes (y). There are also two tables identifying the variables in the motion data (features) and providing labels for the activity codes (activity_labels).
2. The training and testing data are merged for the subject, features, and activity data.
3. The feature data is then reduced to include only the variables representing the means and standard deviations. These are identified by variables that include "-mean()" or "-std()" in their identifiers, respectively. The resulting set (Xtrimmed) is identified and labelled by use of the table from "features.txt".
4. A vector of activity names is generated using the activity codes in conjunction with the activity_labels table.
5. The subject, activity, and features data are merged together into a single data frame (merged).
6. The means of each variable in the data are computed, broken down by subject ID and activity, with each combination of subject ID and activity being a single row on the resulting data (tidied).
7. The tidied data frame is then exported as a text file (tidy_data_set.txt).

# Code book
The following variables are included in the final data set:

|Variable|Description|
|--------|-----------|
|subjectID|Unique identifier of subject|
|activity|Type of activity, one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING|
|tBodyAcc-mean()-X|This and all of the following variables are the means of the original data, as grouped by subjectID and activity. The units are normalized on a scale of [-1, 1].|
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

