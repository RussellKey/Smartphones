library(dplyr)
library(reshape2)

#Read in features (processed 3-axial raw signals)
features <- read.table("features.txt", header=FALSE)
#Ids and Labels of activities performed
activity_lables <- read.table("activity_labels.txt", header=FALSE)
colnames(activity_lables) <- c("id", "activity")

#Read in Subjects
subject_train = read.table("subject_train.txt", header=FALSE)
subject_test = read.table("subject_test.txt", header=FALSE)

#Read in Activity
y_train = read.table("y_train.txt", header=FALSE)
y_test = read.table("y_test.txt", header=FALSE)

#Rading Data for Activities
X_train = read.table("X_train.txt", header=FALSE)
X_test = read.table("X_test.txt", header=FALSE)

# 1. Merges the training and the test sets to create one data set.
# Adds Subject and Activity column names
testset <- cbind(subject_test, y_test, X_test)
colnames(testset) <- c("Subject", "Activity", as.character(features[,2]))

trainset <- cbind(subject_train, y_train, X_train)
colnames(trainset) <- c("Subject", "Activity", as.character(features[,2]))

# Combines the test and train datasets
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
SmartPhonesMelt <- melt(SP_ActivityNames, id=c("Subject","activity"))

# dcast - tidy data set
SmartPhonesDcast <- dcast(SmartPhonesMelt, Subject + activity ~ variable, mean)

write.table(SmartPhonesDcast, file="./tidySmartPhones.txt", row.names=FALSE)

                               