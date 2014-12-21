# Course Project / run_analysis.R
# Set working directory and open libraries needed
setwd("~/Coursera/03_Getting and Cleaning Data/project")
library(plyr)

# Record timestamp for down load
dateDownloaded <- date()

# Download zipped data to working directory and unzip
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "DatasetZip")
unzip("DatasetZip")

# Convert the raw data files into data frames and rename
testData <- read.table("UCI HAR Dataset/test/X_test.txt")
trainData <- read.table("UCI HAR Dataset/train/X_train.txt")
variables <- read.table("UCI HAR Dataset/features.txt")

subjtestData <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjtrainData <- read.table("UCI HAR Dataset/train/subject_train.txt")

activitytestData <- read.table("UCI HAR Dataset/test/y_test.txt")
activitytrainData <- read.table("UCI HAR Dataset/train/y_train.txt")
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Merge the raw dataset for training and test
mergedData <- rbind(testData, trainData)

dim(mergedData); class(mergedData) # check dimensions and class of result

# Prepare variables for use in extracting targeted data
variables <- as.data.frame(lapply(variables ,function(x) gsub("meanF","MeanF",x)))
listMeans <- which(apply(variables, 1, function(x) any(grepl("mean", x))))

listStd <- which(apply(variables, 1, function(x) any(grepl("std()", x))))

listVariables <- append(listMeans, listStd, after = length(listMeans))
listVariablesSorted <- sort(listVariables)

table(listVariablesSorted)

# extract means and standard deviations from mergedData
extractData <- mergedData[,c(listVariablesSorted)]

dim(extractData) # check dimensions of result

# Combine subject raw data into single data frame while perserving order of observations
subjectData <- rbind(subjtestData, subjtrainData)

str(subjectData) # check structure of result

# Convert activity raw data to activity labels while perserving order of observations
activityData <- rbind(activitytestData, activitytrainData)
activity <- merge(x = activityData, y = activityLabels, by.x = "V1", by.y = "V1", all.x = TRUE)

x1 <- as.character(activityData$V1)
activity <- revalue(x1, c("1" = "WALKING", "2" = "WALKING_UPSTAIRS", 
                                    "3" = "WALKING_DOWNSTAIRS", 
                                    "4" = "SITTING", "5" = "STANDING", 
                                    "6" = "LAYING"))

class(activity); str(activity) # check class and structure of result


# convert list of variables to more descriptive names
extractVariables <- variables[c(listVariablesSorted),]
descriptiveVariables <- extractVariables
descriptiveVariables <- as.data.frame(lapply(descriptiveVariables ,function(x) gsub("[[:punct:]]","", x)))
descriptiveVariables <- as.data.frame(lapply(descriptiveVariables ,function(x) gsub("mean","Mean",x)))
descriptiveVariables <- as.data.frame(lapply(descriptiveVariables ,function(x) gsub("std","Std",x)))
descriptiveVariables <- as.data.frame(lapply(descriptiveVariables ,function(x) gsub("tB","timeB",x)))
descriptiveVariables <- as.data.frame(lapply(descriptiveVariables ,function(x) gsub("tG","timeG",x)))
descriptiveVariables <- as.data.frame(lapply(descriptiveVariables ,function(x) gsub("fB","freqB",x)))
descriptiveVariables <- as.data.frame(lapply(descriptiveVariables ,function(x) gsub("fG","freqG",x)))
descriptiveVariables <- as.data.frame(lapply(descriptiveVariables ,function(x) gsub("BodyBody","Body",x)))


# merge the extracted data set with the subject data and the activity data
combinedData <- cbind(subjectData, activity)
combinedData <- cbind(combinedData, extractData)

# rename the column labels with names in descriptiveVariables
categoryVariables <- data.frame(V1 = c(0,0), V2 = c("subject","activity"))
columnNames <- rbind(categoryVariables, descriptiveVariables)
columnNames[] <- lapply(columnNames, as.character)
colnames(combinedData) <- c(columnNames$V2)

colnames(combinedData) # check to see that column names have been modifed and assigned correctly

# sort data and take average of each observation by activity and subject
combinedDataSort <- combinedData[with(combinedData, order(combinedData$subject, combinedData$activity)),]
combinedDataSort.means <- aggregate(combinedDataSort[,3:68], by = combinedDataSort[c("subject", "activity")], FUN=mean)
combinedDataSort.means <- combinedDataSort.means[with(combinedDataSort.means, order(combinedDataSort.means$subject, combinedDataSort.means$activity)),]

dim(combinedDataSort.means);class(combinedDataSort.means)  # check dimensions and class of result

combinedDataSort.means$subject # check subject column to be sorted as wanted

combinedDataSort.means$activity # check activity column to be sorted as wanted


# output final data file to text file for sumbmission
write.table(combinedDataSort.means, file = "tidyData.txt", quote = FALSE, sep = " \t", row.names = FALSE)
