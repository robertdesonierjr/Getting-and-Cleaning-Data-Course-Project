INTRODUCTION

This file contains a description of the names of the final tidy data set, tidyData.txt, as well as a summary of the processing completed to transform the raw data into the final tidy dataset.

TIDY DATASET

This is a text file that was generated by the write.table command from R.  The file is 180 rows and 68 columns.  The columns are separated by tabs.

The column names and the corresponding description are below.

Categories (column number, name, description)

1	subject	=	The subject column lists the experimental subjects by their id number and range from 1 to 30.

2	activity	=	The activity column lists the activity associated with the specific observation and are:  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING.

Variables(column number, name, description)

3	timeBodyAccMeanX	=	time domain signal Body Accelerometer Mean X axis

4	timeBodyAccMeanY	=	time domain signal Body Accelerometer Mean Y axis

5	timeBodyAccMeanZ	=	time domain signal Body Accelerometer Mean Z axis

6	timeBodyAccStdX	=	time domain signal Body Accelerometer Standard Deviation  X

7	timeBodyAccStdY	=	time domain signal Body Accelerometer Standard Deviation  Y

8	timeBodyAccStdZ	=	time domain signal Body Accelerometer Standard Deviation  Z

9	timeGravityAccMeanX	=	time domain signal Gravity Accelerometer Mean X axis

10	timeGravityAccMeanY	=	time domain signal Gravity Accelerometer Mean Y axis

11	timeGravityAccMeanZ	=	time domain signal Gravity Accelerometer Mean Z axis

12	timeGravityAccStdX	=	time domain signal Gravity Accelerometer Standard Deviation  X

13	timeGravityAccStdY	=	time domain signal Gravity Accelerometer Standard Deviation  Y

14	timeGravityAccStdZ	=	time domain signal Gravity Accelerometer Standard Deviation  Z

15	timeBodyAccJerkMeanX	=	time domain signal Body Accelerometer Jerk Mean X axis

16	timeBodyAccJerkMeanY	=	time domain signal Body Accelerometer Jerk Mean Y axis

17	timeBodyAccJerkMeanZ	=	time domain signal Body Accelerometer Jerk Mean Z axis

18	timeBodyAccJerkStdX	=	time domain signal Body Accelerometer Jerk Standard Deviation X axis

19	timeBodyAccJerkStdY	=	time domain signal Body Accelerometer Jerk Standard Deviation Y axis

20	timeBodyAccJerkStdZ	=	time domain signal Body Accelerometer Jerk Standard Deviation Z axis

21	timeBodyGyroMeanX	=	time domain signal Body Gyroscope Mean X axis

22	timeBodyGyroMeanY	=	time domain signal Body Gyroscope Mean Y axis

23	timeBodyGyroMeanZ	=	time domain signal Body Gyroscope Mean Z axis

24	timeBodyGyroStdX	=	time domain signal Body Gyroscope Standard Deviation X axis

25	timeBodyGyroStdY	=	time domain signal Body Gyroscope Standard Deviation Y axis

26	timeBodyGyroStdZ	=	time domain signal Body Gyroscope Standard Deviation Z axis

27	timeBodyGyroJerkMeanX	=	time domain signal Body Gyroscope Jerk Mean X axis

28	timeBodyGyroJerkMeanY	=	time domain signal Body Gyroscope Jerk Mean Y axis

29	timeBodyGyroJerkMeanZ	=	time domain signal Body Gyroscope Jerk Mean Z axis

30	timeBodyGyroJerkStdX	=	time domain signal Body Gyroscope Jerk Standard Deviation X axis

31	timeBodyGyroJerkStdY	=	time domain signal Body Gyroscope Jerk Standard Deviation Y axis

32	timeBodyGyroJerkStdZ	=	time domain signal Body Gyroscope Jerk Standard Deviation Z axis

33	timeBodyAccMagMean	=	time domain signal Body Accelerometer Magnitude Mean

34	timeBodyAccMagStd	=	time domain signal Body Accelerometer Magnitude Standard Deviation

35	timeGravityAccMagMean	=	time domain signal Gravity Accelerometer Magnitude Mean

36	timeGravityAccMagStd	=	time domain signal Gravity Accelerometer Magnitude Standard Deviation

37	timeBodyAccJerkMagMean	=	time domain signal Body Accelerometer Jerk Magnitude Mean

38	timeBodyAccJerkMagStd	=	time domain signal Body Accelerometer Jerk Magnitude Standard Deviation

39	timeBodyGyroMagMean	=	time domain signal Body Gyroscope Magnitude Mean

40	timeBodyGyroMagStd	=	time domain signal Body Gyroscope Magnitude Standard Deviation

41	timeBodyGyroJerkMagMean	=	time domain signal Body Gyroscope Jerk Magnitude Mean

42	timeBodyGyroJerkMagStd	=	time domain signal Body Gyroscope Jerk Magnitude Standard Deviation

43	freqBodyAccMeanX	=	frequency domain signal Body Accelerometer Mean X axis

44	freqBodyAccMeanY	=	frequency domain signal Body Accelerometer Mean Y axis

45	freqBodyAccMeanZ	=	frequency domain signal Body Accelerometer Mean Z axis

46	freqBodyAccStdX	=	frequency domain signal Body Accelerometer Standard Deviation  X

47	freqBodyAccStdY	=	frequency domain signal Body Accelerometer Standard Deviation  Y

48	freqBodyAccStdZ	=	frequency domain signal Body Accelerometer Standard Deviation  Z

49	freqBodyAccJerkMeanX	=	frequency domain signal Body Accelerometer Jerk Mean X axis

50	freqBodyAccJerkMeanY	=	frequency domain signal Body Accelerometer Jerk Mean Y axis

51	freqBodyAccJerkMeanZ	=	frequency domain signal Body Accelerometer Jerk Mean Z axis

52	freqBodyAccJerkStdX	=	frequency domain signal Body Accelerometer Jerk Standard Deviation X axis

53	freqBodyAccJerkStdY	=	frequency domain signal Body Accelerometer Jerk Standard Deviation Y axis

54	freqBodyAccJerkStdZ	=	frequency domain signal Body Accelerometer Jerk Standard Deviation Z axis

55	freqBodyGyroMeanX	=	frequency domain signal Body Gyroscope Mean X axis

56	freqBodyGyroMeanY	=	frequency domain signal Body Gyroscope Mean Y axis

57	freqBodyGyroMeanZ	=	frequency domain signal Body Gyroscope Mean Z axis

58	freqBodyGyroStdX	=	frequency domain signal Body Gyroscope Standard Deviation X axis

59	freqBodyGyroStdY	=	frequency domain signal Body Gyroscope Standard Deviation Y axis

60	freqBodyGyroStdZ	=	frequency domain signal Body Gyroscope Standard Deviation Z axis

61	freqBodyAccMagMean	=	frequency domain signal Body Accelerometer Magnitude Mean

62	freqBodyAccMagStd	=	frequency domain signal Body Accelerometer Magnitude Standard Deviation

63	freqBodyAccJerkMagMean	=	frequency domain signal Body Accelerometer Jerk Magnitude Mean

64	freqBodyAccJerkMagStd	=	frequency domain signal Body Accelerometer Jerk Magnitude Standard Deviation

65	freqBodyGyroMagMean	=	frequency domain signal Body Gyroscope Magnitude Mean

66	freqBodyGyroMagStd	=	frequency domain signal Body Gyroscope Magnitude Standard Deviation

67	freqBodyGyroJerkMagMean	=	frequency domain signal Body Gyroscope Jerk Magnitude Mean

68	freqBodyGyroJerkMagStd	=	frequency domain signal Body Gyroscope Jerk Magnitude Standard Deviation


The observations for each subject are grouped by activity.

The observations for this data set are the averaged of the variables provided in the column name are correspond to the same data in the raw data.


PROCESSING

The processing steps are recorded in the R script, run_analysis.R.  The text below provides a narrative of the tasks completed to generate the file, tidyData.txt.

Compressed data set is first downloaded and unzipped.  In preparation of further processing the following tasks are completed to make the raw data available within the R programming environment prior to beginning the next steps.
(a) The files X_train.txt and X_test.txt are converted to data frames called trainData (7532 by 561) and testData (2947 by 561)
(b) The file features.txt is converted to a data frame called variables (2 by 561)
(c) The files subject_train.txt and subject_test.txt are converted to data frames called subjtrainData (7532 by 1) and subjtestData (2947 by 1)
(d) The files y_train.txt and y_test.txt are converted to data frames called activitytrainData (7532 by 561) and activitytestData (2947 by 561)
(e) The file activity_lables.txt is converted to a data frame called activityLabels (2 by 6)

There is a diagram that was provided by the TA for the class that provides an overview of the different files and their relationship to each other https://class.coursera.org/getdata-016/forum/thread?thread_id=50#comment-333 .  

Prior to start of further work the dimensions of the files were confirmed to be consistent with the diagram.  In the features_info.txt, line numbers 13 to 29 correspond to 33 signals in all. Each signal that has -XYZ is actually 3 separate signals (one for each coordinate).  Since, there are 8 such signals listed, we have:
8*3 (for the 3 axes) + (29 - 13 + 1) (for the total number of signals) - 8 (considered first) = 33.  The variables that are estimated are from lines 33 to 49 or, 49 - 33 + 1 = 17 in all. Since, the variables operate on the signals, the total number of features are 17*33 = 561.  The total number of observations is 10,299 which is the sum of the number of rows in the X_test and X_train files.

Also need to check dimensions for tidy data set.  Have 33 measurement variables, have both mean and std calculated so that is 66, there are 2 categorical variables (subject and activity) for a total of 68 columns.  There are 30 subjects and 6 activities studied for each subject so there are 180 rows (30 * 6 = 180).

As per the problem statement the following steps are required
(1) Merge the training and the test sets to create one data set.
(2) Extract only the measurements on the mean and standard deviation for each measurement. 
(3) Add descriptive activity names to name the activities in the data set
(4) Appropriately label the data set with descriptive variable names. 
(5) From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

Each step in the sequence is described in more detail below.

(1) Merge the training and the test sets (trainData, testData) using the rbind function to create one data set, mergedData.  The dataframe is 10299 by 561.

(2) The next step is to extract only the measurements on the mean and standard deviation for each measurement.  Based on the information provided in features_info.txt the measurements that were used to estimate the mean and standard deviation are: tBodyAcc-XYZ, tGravityAcc-XYZ, tBodyAccJerk-XYZ, tBodyGyro-XYZ, tBodyGyroJerk-XYZ, tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.  Also those measurements with the ending "-XYZ" are actually three different signals, one in the X, Y and Z directions. 

This information has been read into the file variables but the information is not ready to use.  A sorted list of the desired variables is generated and stored in listVariablesSorted.  Once the list is generated then the desired data is extracted from mergedData to extractData.

(3) Add descriptive activity names to name the activities in the data set.  This information is contained in the file descriptiveVariables.  Using gsub command completed some edits to make the variables names "cleaner: (removed "-" and "()", mean and std is Capitalized, corrected error "BodyBody" and replaced "t" and "f" with time and freq respectively).

(4) Appropriately label the data set with descriptive variable names based only on the extracted measurements listed in item(2) above.  Created data frame called combinedData that has the following columns (L to R) subject, activity, and then the descriptive variable names as described in the Tidy Data section above.  Sorted data frame by subject and then activity to create data frame called combinedDataSort.

(5) From the data set created step 4, combinedDataSort, created a second, independent tidy data set with the average of each variable for each activity and each subject.  This was accomplished using the aggregate command.  After taking the means the data is then sorted and written to the file combindedDataSort.means.

The output file was generated using the write.table command from the file combinedDataSort.means.


