library(dplyr)
library(reshape2)

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
colnames(testset) <- c("Subject", "Activity", as.character(features[,2]))

trainset <- cbind(subject_train, y_train, X_train)
colnames(trainset) <- c("Subject", "Activity", as.character(features[,2]))

SmartPhones <- dplyr::union(testset, trainset)

# 4. Appropriately labels the data set with descriptive variable names. 

valid_column_names <- make.names(names=names(SmartPhones), unique=TRUE, allow_ = TRUE)
colnames(SmartPhones) <- valid_column_names

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# Extract mean() and std() columns

SP <- select(SmartPhones, Subject, Activity, contains("mean"), contains("std"), -contains("angle"))


# 3. Uses descriptive activity names to name the activities in the data set
SP_ActivityNames <- inner_join(SP, activity_lables, by = c("Activity" = "id"))
SP_ActivityNames <- select(SP_ActivityNames, -Activity)
SP_ActivityNames <- select(SP_ActivityNames, Subject, activity, everything())

# 5. From the data set in step 4, creates a second, 
# independent tidy data set with the average of each variable for each activity 
# and each subject.

# melt
#SmartPhonesMelt <- melt(SP_ActivityNames, id=c("Subject","activity"), measure.vars=c(as.character(names(SP_ActivityNames[,3:ncol(SP_ActivityNames)]))))
SmartPhonesMelt <- melt(SP_ActivityNames, id=c("Subject","activity"))

# dcast - tidy data set
SmartPhonesDcast <- dcast(SmartPhonesMelt, Subject + activity ~ variable, mean)

write.table(SmartPhonesDcast, file="./tidySmartPhones.txt", row.names=FALSE)

                               