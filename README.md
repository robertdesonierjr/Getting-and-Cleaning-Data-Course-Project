Getting-and-Cleaning-Data-Course-Project
========================================
Getting-and-Cleaning-Data-Course-Project
========================================
INTRODUCTION
This repository was created for the "Getting and Cleaning Data" class offered by Coursera and provides my submission for the Course project.  There are two files in the repository:  codeBook.md and run_analysis.R.

The file codeBook.md contains a general description (variables and data) of the tidy data set that was created by running the script, run_analysis.R as well as a summary of the transformations performed to clean up the data.

RAW DATA
The raw data was obtained from the url "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" and is described at the site where the data was orignally obtained:  "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"

The unzipped file is called "UCI HAR Dataset" and the contents are described in the README.txt file.

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone and are described in the readme file provided by the experimenters who collected and prepared the data set.

The experimenters refer to the data derived from the raw signals from the accelerometer and gyroscope as "features" in their documentation.  The features have been normalized and bounded within [-1,1] and are therefore unitless.

Each feature vector is a row on the text file.

DATA ANALYIS
The data analysis required by the problem statment given in the project summary was completed using the R script, run_analysis.R.  The output from this script was written to a text file (tidyData.txt) and uploaded to the course project submission script.

A description of the output data file and the processing steps is contained in the file codeBook.md in this repo.

