# Getting and Cleaning Data Project Code Book

# Data

### Input data:

- "train/X_train.txt": numeric
- "train/Y_train.txt": numeric
- "train/subject_train.txt": numeric
- "test/X_test.txt": numeric
- "test/Y_test.txt": numeric
- "test/subject_test.txt": numeric
- "features.txt": feature names
- "activity_labels.txt": activity names

### Output data: 

- tidyMeans.txt

# Variables

### Output variables: tidyMeans.txt

- "subject"
- "activity"
- "tBodyAcc-mean()-X"
- "tBodyAcc-mean()-Y"
- "tBodyAcc-mean()-Z"
- "tBodyAcc-std()-X"
- "tBodyAcc-std()-Y"
- "tBodyAcc-std()-Z"
- "tGravityAcc-mean()-X"
- "tGravityAcc-mean()-Y"
- "tGravityAcc-mean()-Z"
- "tGravityAcc-std()-X"
- "tGravityAcc-std()-Y"
- "tGravityAcc-std()-Z"
- "tBodyAccJerk-mean()-X"
- "tBodyAccJerk-mean()-Y"
- "tBodyAccJerk-mean()-Z"
- "tBodyAccJerk-std()-X"
- "tBodyAccJerk-std()-Y"
- "tBodyAccJerk-std()-Z"
- "tBodyGyro-mean()-X"
- "tBodyGyro-mean()-Y"
- "tBodyGyro-mean()-Z"
- "tBodyGyro-std()-X"
- "tBodyGyro-std()-Y"
- "tBodyGyro-std()-Z"
- "tBodyGyroJerk-mean()-X"
- "tBodyGyroJerk-mean()-Y"
- "tBodyGyroJerk-mean()-Z"
- "tBodyGyroJerk-std()-X"
- "tBodyGyroJerk-std()-Y"
- "tBodyGyroJerk-std()-Z"
- "tBodyAccMag-mean()"
- "tBodyAccMag-std()"
- "tGravityAccMag-mean()"
- "tGravityAccMag-std()"
- "tBodyAccJerkMag-mean()"
- "tBodyAccJerkMag-std()"
- "tBodyGyroMag-mean()"
- "tBodyGyroMag-std()"
- "tBodyGyroJerkMag-mean()"
- "tBodyGyroJerkMag-std()"
- "fBodyAcc-mean()-X"
- "fBodyAcc-mean()-Y"
- "fBodyAcc-mean()-Z"
- "fBodyAcc-std()-X"
- "fBodyAcc-std()-Y"
- "fBodyAcc-std()-Z"
- "fBodyAccJerk-mean()-X"
- "fBodyAccJerk-mean()-Y"
- "fBodyAccJerk-mean()-Z"
- "fBodyAccJerk-std()-X"
- "fBodyAccJerk-std()-Y"
- "fBodyAccJerk-std()-Z"
- "fBodyGyro-mean()-X"
- "fBodyGyro-mean()-Y"
- "fBodyGyro-mean()-Z"
- "fBodyGyro-std()-X"
- "fBodyGyro-std()-Y"
- "fBodyGyro-std()-Z"
- "fBodyAccMag-mean()"
- "fBodyAccMag-std()"  
- "fBodyBodyAccJerkMag-mean()"
- "fBodyBodyAccJerkMag-std()"
- "fBodyBodyGyroMag-mean()"
- "fBodyBodyGyroMag-std()" 
- "fBodyBodyGyroJerkMag-mean()"
- "fBodyBodyGyroJerkMag-std()"

# Transformations

Numeric data:

- Row Bind X_train.txt and X_test.txt
- Row Bind Y_train.txt and Y_test.txt
- Row Bind subject_train.txt and subject_test.txt
- Col Bind the above

Character data:

- Extract features "mean" and "std" from features.txt and populate X data
- Extract activities from activity_labels.txt and populate Y data

Calculations:

- Average of each variable for each activity and each subject


