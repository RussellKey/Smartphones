library(dplyr)

setwd("C:\\Working\\UCI HAR Dataset\\merge")

#features
features <- read.table("features.txt", header=FALSE)
#activity labels
activity_lables <- read.table("activity_labels.txt", header=FALSE)
colnames(activity_lables) <- c("id", "activity")

#Subjects
subject_train = read.table("subject_train.txt", header=FALSE)
subject_test = read.table("subject_test.txt", header=FALSE)
#Activity
y_train = read.table("y_train.txt", header=FALSE)
y_test = read.table("y_test.txt", header=FALSE)
#Data
X_train = read.table("X_train.txt", header=FALSE)
X_test = read.table("X_test.txt", header=FALSE)

# 1. Merges the training and the test sets to create one data set.
testset <- cbind(subject_test, y_test, X_test)
colnames(testset) <- c("Subject", "Activity")

trainset <- cbind(subject_train, y_train, X_train)
colnames(trainset) <- c("Subject", "Activity")

SmartPhones <- dplyr::union(testset, trainset)

# 4. Appropriately labels the data set with descriptive variable names. 

colnames(SmartPhones) <- c("Subject", "act", as.character(features[,2]))

valid_column_names <- make.names(names=names(SmartPhones), unique=TRUE, allow_ = TRUE)
colnames(SmartPhones) <- valid_column_names

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# Extract mean() and std() columns

# Verify this returns only those columns needed
# std = 33
# mean = 56
# angle = 10(-)
# + 2 = 81
SP <- select(SmartPhones, Subject, act, contains("mean"), contains("std"), -contains("angle"))
names(SP)

# 3. Uses descriptive activity names to name the activities in the data set
SP_ActivityNames <- inner_join(SP, activity_lables, by = c("act" = "id"))
SP_ActivityNames <- select(SP_ActivityNames, -act)
SP_ActivityNames <- select(SP_ActivityNames, Subject, activity, everything())

# 5. From the data set in step 4, creates a second, 
# independent tidy data set with the average of each variable for each activity 
# and each subject.


                               