# Getting and Cleaning Data Project README

# Raw data

Contains:

- UCI HAR Dataset
- UCI HAR Dataset/activity_labels.txt
- UCI HAR Dataset/features_info.txt
- UCI HAR Dataset/features.txt
- UCI HAR Dataset/README.txt
- UCI HAR Dataset/test/Inertial Signals
- UCI HAR Dataset/test/subject_test.txt
- UCI HAR Dataset/test/X_test.txt
- UCI HAR Dataset/test/y_test.txt
- UCI HAR Dataset/train/Inertial Signals
- UCI HAR Dataset/train/subject_train.txt
- UCI HAR Dataset/train/X_train.txt
- UCI HAR Dataset/train/y_train.txt

# Source code

**run_analysis.R**

- Downloads and unzips the raw data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Code Book

**CodeBook.md**

Describes: 

- the variables 
- the data
- transformations


