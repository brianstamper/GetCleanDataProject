# Getting and Cleaning Data Project

In this project we summarize the data from the Human Activity Recognition Using Smartphones Data Set from the UCI Machine Learning Repository.

The code run_analysis.R does all of the work, including downloading the data if needed. The dplyr package is required. The result is a text file of the data called "tidy_data_set.txt"

The steps of the processing are as follows:

1. The data text files are read into data frames. The raw inertial data is excluded from this step as it is unused later in the process. The data at this point includes training and test data listing subject IDs (subject), summary features of the smartphone motion data (X), and activity codes (y). There are also two tables identifying the variables in the motion data (features) and providing labels for the activity codes (activity_labels).
2. The training and testing data are merged for the subject, features, and activity data.
3. The feature data is then reduced to include only the variables representing the means and standard deviations. These are identified by variables that include "-mean()" or "-std()" in their identifiers, respectively. The resulting set (Xtrimmed) is identified and labelled by use of the table from "features.txt".
4. A vector of activity names is generated using the activity codes in conjunction with the activity_labels table.
5. The subject, activity, and features data are merged together into a single data frame (merged).
6. The means of each variable in the data are computed, broken down by subject ID and activity, with each combination of subject ID and activity being a single row on the resulting data (tidied).
7. The tidied data frame is then exported as a text file (tidy_data_set.txt).
