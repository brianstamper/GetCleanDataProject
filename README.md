# Getting and Cleaning Data Project

In this project we summarize the data from the Human Activity Recognition Using Smartphones Data Set from the UCI Machine Learning Repository.

The code run_analysis.R does all of the work, including downloading the data if needed. The dplyr package is required. 

The run_analysis.R script combines the training and test data and extracts the features that are means or standard deviations. The mean of each of those variables are found for each combination of subject and activity. The result is a text file of the data called "tidy_data_set.txt". For more about the transformation steps involved, please see CodeBook.md.



