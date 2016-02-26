UCI Human Activity Recognition Using Smartphones Data Set
==========

This repo contains **run_analysis.R**, which will create a tidy dataset from the UCI Human Activity Recognition Using Smartphones Dataset collected from the accelerometers from the Samsung Galaxy S II smartphone worn on the waist. A full description of source data is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script run_analysis.R will expect that the files have been downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

and extracted and then also assumes that you have copied the files 

- features.txt
- activity_labels.txt
- subject_train.txt
- subject_test.txt
- y_train.txt
- y_test.txt
- X_train.txt
- X_test.txt

to a single directory and set you working directory to this.

run_analysis.R will then process the data:

1. Read features.txt
2. Read activity_labels.txt
3. Reads the subject files subject_train.txt and subject_test.txt
4. Reads the activity files y_train.txt and y_test.txt
5. Reads the data files X_train.txt and X_test.txt
6. Merges the training and the test sets to create one data set and updates the first two columns to "Subject" and "Activity"
7. Appropriately labels the data set with descriptive variable names from activity_lables.txt.
8. Extracts only the measurements with "mean" and "std" in the column labels and ignores the columns with "angle" in the label.
9. Uses descriptive activity names to name the activities in the data set
10. Creates a final tidy data set with the average of each variable for each activity and subject combination. 

The final tidy data set will be saved in the same working directory as tidySmartPhones.txt

The [Code book](CodeBook.md) contains further details the of the tidy dataset.  
