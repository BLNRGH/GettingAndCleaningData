library(data.table)

setwd("/Users/bartlenoir/gitrepo/GettingAndCleaningDataProjet")

# clean up work space
rm(list = ls()); gc();

# download to current working directory and decompress data set
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","Dataset.zip")
unzip("Dataset.zip")

# show files in directory
list.files(getwd())

# set new working directory
setwd(paste(getwd(), "/UCI HAR Dataset", sep = ''))

# show files in directory: UCI HAR Dataset
list.files(getwd())

# show files in directory: train
list.files(paste(getwd(), "/train", sep = ''))
list.files(paste(getwd(), "/train/Inertial Signals", sep = ''))

# show files in directory: test
list.files(paste(getwd(), "/test", sep = ''))
list.files(paste(getwd(), "/test/Inertial Signals", sep = ''))

# read train and test data
X_train <- fread("train/X_train.txt")
Y_train <- fread("train/Y_train.txt")
subject_train <- fread("train/subject_train.txt")
X_test <- fread("test/X_test.txt")
Y_test <- fread("test/Y_test.txt")
subject_test <- fread("test/subject_test.txt")

# 1. Merges the training and the test sets to create one data set.
lx = list(X_train, X_test)
XAll <- rbindlist(lx, use.names = TRUE)
ly = list(Y_train, Y_test)
YAll <- rbindlist(ly, use.names = TRUE)
ls = list(subject_train, subject_test)
SAll <- rbindlist(ls, use.names = TRUE)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- fread("features.txt", stringsAsFactors = FALSE)
selectedFeatures <- grep("-(mean|std)\\(\\)", features[,V2])
XAllSF <- XAll[,selectedFeatures,with=F]
colnames(XAllSF) <- features[selectedFeatures,V2]

# 3. Uses descriptive activity names to name the activities in the data set.
activityLabels <- fread("activity_labels.txt", stringsAsFactors = FALSE)
YAll[,V1:=activityLabels[YAll[,V1],V2]]
colnames(YAll) <- "activity"

# 4. Appropriately labels the data set with descriptive variable names. 
colnames(SAll) <- "subject"
All <- cbind(XAllSF, YAll, SAll)

# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
AllMelt <- melt.data.table(All, id = c("subject", "activity"))
AllMean <- dcast.data.table(AllMelt, subject + activity ~ variable, mean)
write.table(AllMean, "../tidyMeans.txt", row.names = FALSE, quote = FALSE)

