# Getting and Cleaning Data Project

In this project we summarize the data from the Human Activity Recognition Using Smartphones Data Set from the UCI Machine Learning Repository.

The code run_analysis.R does all of the work, including downloading the data if needed. The dplyr package is required. The result is a text file of the data called "tidy_data_set.txt"

The steps of the processing are as follows:
1. The data text files are read into data frames. The raw inertial data is excluded from this step as it is unused later in the process.
