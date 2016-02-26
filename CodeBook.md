Raw data is downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

**Study Design**

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

A README.txt file is included in the raw data download and can be opened for further details about this dataset.   


**Variables**

tidySmartPhones.txt contains the following variables (see included features_info.txt for original variable naming and description):

subject - the subject number (1-30)

activity - the activity label 

  1 WALKING

  2 WALKING_UPSTAIRS

  3 WALKING_DOWNSTAIRS

  4 SITTING

  5 STANDING

  6 LAYING


The remaining variables in the tidy dataset are the average of each variable in the raw data set corresponding to measurements on the mean and standard deviation by subject by activity.
  
tBodyAcc.mean...X

tBodyAcc.mean...Y

tBodyAcc.mean...Z

tGravityAcc.mean...X

tGravityAcc.mean...Y

tGravityAcc.mean...Z

tBodyAccJerk.mean...X

tBodyAccJerk.mean...Y

tBodyAccJerk.mean...Z

tBodyGyro.mean...X

tBodyGyro.mean...Y

tBodyGyro.mean...Z

tBodyGyroJerk.mean...X

tBodyGyroJerk.mean...Y

tBodyGyroJerk.mean...Z

tBodyAccMag.mean..

tGravityAccMag.mean..

tBodyAccJerkMag.mean..

tBodyGyroMag.mean..

tBodyGyroJerkMag.mean..

fBodyAcc.mean...X

fBodyAcc.mean...Y

fBodyAcc.mean...Z

fBodyAcc.meanFreq...X

fBodyAcc.meanFreq...Y

fBodyAcc.meanFreq...Z

fBodyAccJerk.mean...X

fBodyAccJerk.mean...Y

fBodyAccJerk.mean...Z

fBodyAccJerk.meanFreq...X

fBodyAccJerk.meanFreq...Y

fBodyAccJerk.meanFreq...Z

fBodyGyro.mean...X

fBodyGyro.mean...Y

fBodyGyro.mean...Z

fBodyGyro.meanFreq...X

fBodyGyro.meanFreq...Y

fBodyGyro.meanFreq...Z

fBodyAccMag.mean..

fBodyAccMag.meanFreq..

fBodyBodyAccJerkMag.mean..

fBodyBodyAccJerkMag.meanFreq..

fBodyBodyGyroMag.mean..

fBodyBodyGyroMag.meanFreq..

fBodyBodyGyroJerkMag.mean..

fBodyBodyGyroJerkMag.meanFreq..

tBodyAcc.std...X

tBodyAcc.std...Y

tBodyAcc.std...Z

tGravityAcc.std...X

tGravityAcc.std...Y

tGravityAcc.std...Z

tBodyAccJerk.std...X

tBodyAccJerk.std...Y

tBodyAccJerk.std...Z

tBodyGyro.std...X

tBodyGyro.std...Y

tBodyGyro.std...Z

tBodyGyroJerk.std...X

tBodyGyroJerk.std...Y

tBodyGyroJerk.std...Z

tBodyAccMag.std..

tGravityAccMag.std..

tBodyAccJerkMag.std..

tBodyGyroMag.std..

tBodyGyroJerkMag.std..

fBodyAcc.std...X

fBodyAcc.std...Y

fBodyAcc.std...Z

fBodyAccJerk.std...X

fBodyAccJerk.std...Y

fBodyAccJerk.std...Z

fBodyGyro.std...X

fBodyGyro.std...Y

fBodyGyro.std...Z

fBodyAccMag.std..

fBodyBodyAccJerkMag.std..

fBodyBodyGyroMag.std..

fBodyBodyGyroJerkMag.std..




*Lichman, M. (2013). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California, School of Information and Computer Science.*

*Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.*


