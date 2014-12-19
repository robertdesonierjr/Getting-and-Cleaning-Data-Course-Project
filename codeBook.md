INTRODUCTION

This file contains a description of the names of the final tidy data set as well as a summary of the processing completed to transform the raw data into the final tidy dataset.

TIDY DATASET

Variables

Data

PROCESSING
Compressed data set is first downloaded and unzipped.  In preparation of futher processing the following tasks are completed  prior to begining the next steps.

<i> The files X_train and X_test are converted to data frames called trainData (7532 by 561) and testData (2947 by 561)
<ii> The file features is converted to a data frame called variables (2 by 561)
<iii>

As per the problem statement the following steps are required
(1) Merge the training and the test sets to create one data set.
(2) Extract only the measurements on the mean and standard deviation for each measurement. 
(3) Add descriptive activity names to name the activities in the data set
(4) Appropriately label the data set with descriptive variable names. 
(5) From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

Each step in the sequence is described in more detail below.

(1) Merge the training and the test sets (trainData, testData) using the rbind function to create one data set, mergedData.  The dataframe is 10299 by 561.

(2) The next step is to extract only the measurements on the mean and standard deviation for each measurement.  
Based on the information provided in features_info.txt the measurements that were used to estimate the mean and standard deviation are: tBodyAcc-XYZ, tGravityAcc-XYZ, tBodyAccJerk-XYZ, tBodyGyro-XYZ, tBodyGyroJerk-XYZ, tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.  Also these measurements with the ending "-XYZ" are actually three different signals, one in the X, Y and Z directions. 

This information has been read into the file variables but the information is not ready to use...



