library(reshape2)


##########################################################################################################

## Peer-graded Assignment: Getting and Cleaning Data Course Project
## Date: 21-07-2017
## Author: The Only Enigma
## Course: Getting and Cleaning Data
## Original Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# run_analysis.R

## This code shall take some untidy data that was collected from UCI Machine 
## Learning Repository, and preform the following task on the original data:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation 
## for each measurement. 
## 3. Extracts only the measurements on the mean and standard deviation for 
## each measurement.  
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data 
## set with the average of each variable for each activity and each subject.


###########################################################################################################

## Find out what the current working directory is, and set it to one 
## that allows for the extraction of the data needed

getwd()
setwd("/Users/Battlestation/Documents/Courses/Cleaning_Data/Assignment_Two/UCI HAR Dataset")

###########################################################################################################

## DOWNLOADS THE DATASETS AND NECCESSARY TEXT FILES

## Downloads X_train.txt, y_train.txt, and subject_train.txt then places them into new values

xTrain <- read.table("train/X_train.txt")
yTrain <- read.table("train/y_train.txt")
subjectTrain <- read.table("train/subject_train.txt")

## Downloads X_test.txt, y_test.txt and subject_test.txt then places them into new values

xTest <- read.table("test/X_test.txt")
yTest <- read.table("test/y_test.txt")
subjectTest <- read.table("test/subject_test.txt")

## Downloads features.txt and activity_labels.txt then places them into new values for later in the code

features <- read.table("features.txt")
features[,2] <- as.character(features[,2])
activityLabels <- read.table("activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])

###########################################################################################################

## MERGES THE TRAINING DATA AND THE TEST DATA TO PRODUCE TWO SEPERATE DATA SETS

## Produces the x data set, or training data set by binding xTrain, yTrain and subjectTrain together

trainingData <- cbind(subjectTrain, yTrain, xTrain)

## Produces the y data set, or test data set by binding xTest, yTest and subjectTest together

testData <- cbind(subjectTest, yTest, xTest)


###########################################################################################################

## EXTRACTS ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT

## Takes the features.txt file that was loaded in prior in the code to help label the dataset

featuresName <- grep(".*mean.*|.*std.*", features[,2])

###########################################################################################################

## APPROPRIATELY LABELS THE DATA SET WITH DESCRIPTIVE VARIABLE NAMES

## Changes the names of some of the column names to ones that may be more appropriate

featuresNamed <- features[featuresName, 2]
featuresNamed <- gsub("^(f)","Frequency", featuresNamed)
featuresNamed <- gsub("^(t)","Time", featuresNamed)
featuresNamed <- gsub("gravity","Gravity", featuresNamed)
featuresNamed <- gsub("gyro","Gyro", featuresNamed)
featuresNamed <- gsub("body","Body", featuresNamed)
featuresNamed <- gsub("subject","Subject", featuresNamed)
featuresNamed <- gsub("activity","Activity", featuresNamed)
featuresNamed <- gsub("[Jj]erkMag","Jerk_Magnitude", featuresNamed)
featuresNamed <- gsub("[Gg]yroMag","freq", featuresNamed)
featuresNamed <- gsub("-mean","Mean", featuresNamed)
featuresNamed <- gsub("-std$","StdDev", featuresNamed)
featuredNamed <- gsub("[Aa]cc", "Accelerometer", featuresNamed)

## Merges the dataset and adds the labels to the neccessary areas

finalData <- rbind(trainingData, testData)
colnames(finalData) <- c("subject", "activity", featuresNamed)

###########################################################################################################

## USES DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATA SET

finalData$activity <- factor(finalData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
finalData$subject <- as.factor(finalData$subject)

###########################################################################################################

## CREATES A SECOND INDEPENDANT TIDY DATA SET THAT CONTAINS THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY
## and each subject

## Melts the final data and then creates the new table meanData

meltedData <- melt(finalData, id = c("subject", "activity"))
meanData <- dcast(meltedData, subject + activity ~ variable, mean)

## Writes the table out as a final product

write.table(meanData, "tidy.txt", row.names = FALSE, quote = FALSE)