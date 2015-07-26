library(dplyr)

# Read and extract the file, if needed
if (!file.exists("UCI_HAR_Dataset.zip")) {
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  destfile <- "UCI_HAR_Dataset.zip"
  download.file(url, destfile, method = "curl")
  downloadDate <- date()
  unzip("UCI_HAR_Dataset.zip")
}

# Read the text files into data frames
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

# Merge the training and the test sets
subject <- rbind(subject_test, subject_train)
X <- rbind(X_test, X_train)
y <- rbind(y_test, y_train)

# Extract only the measurements on the mean and standard deviation
# The following produces boolean vectors indicating the location
# of the means and standard deviations
featmeans <- grepl(pattern = "-mean\\(\\)", features$V2)
featstds <- grepl(pattern = "-std\\(\\)", features$V2)
# Produce a vector of the column numbers of X we want using the
# row numbers in the first column of features.txt
Xcolumns <- features$V1[featmeans | featstds]
# Subset X and apply column names
Xtrimmed <- select(X, Xcolumns)
colnames(Xtrimmed) <- features$V2[Xcolumns]

# Use activity_labels to give descriptive activity names
activity <- activity_labels[y$V1, 2]

# One last column name needed
colnames(subject) <- "subjectID"

# Merge the three parts together
merged <- cbind(subject, activity, Xtrimmed)

# From the data set in step 4, creates a second, independent tidy data set with
# the average of each variable for each activity and each subject.
tidied <- merged %>%
group_by(subjectID, activity) %>%
summarise_each(funs(mean))

# Output the result to a text file
write.table(tidied, file = "tidy_data_set.txt", row.names = FALSE)

