# CODEBOOK

This codebook highlights the information that is contained within the run.analysis.R code and what the data contains within it. 

-----------------------------------------------------------------------

## DATA SUMMARY

The data was produced by the Center for Machine Learning and Intelligent Systems, and was carried out
using a group of 30 volunteers. This group was within a chosen bracket and this was 19-48  years old,
and each of them preformed a number of activities (shown under Identifiers heading) while wearing the
same brand of smartphone; in this case a Samsung Galaxy S II.  

An accelerometer and a gyroscope was used to capture 3-axial linear acceleration and 3-axial angular
velocity at a constant rate of 50Hz, which is how the data used within this code was produced. Furthermore
a video-recording was also taken to confirm the results of the accelerometer and gyroscope, and if neccessary,
add manual data to the data set.

-----------------------------------------------------------------------

## IDENTIFIERS

* Subject - Identifier relating to each individual test subject 
* Activity - The title given to the different activities that the test subjects were asked to perform 
    1. WALKING
    2. WALKING_UPSTAIRS
    3. WALKING_DOWNSTAIRS
    4. SITTING
    5. STANDING
    7. LAYING

-----------------------------------------------------------------------

## MEASUREMENTS

* TimeBodyAccMean()-X  
* TimeBodyAccMean()-Y  
* TimeBodyAccMean()-Z  
* TimeBodyAcc-std()-X 
* TimeBodyAcc-std()-Y 
* TimeBodyAcc-std()-Z 
* TimeGravityAccMean()-X 
* TimeGravityAccMean()-Y 
* TimeGravityAccMean()-Z 
* TimeGravityAcc-std()-X 
* TimeGravityAcc-std()-Y 
* TimeGravityAcc-std()-Z 
* TimeBodyAccJerkMean()-X 
* TimeBodyAccJerkMean()-Y 
* TimeBodyAccJerkMean()-Z 
* TimeBodyAccJerk-std()-X 
* TimeBodyAccJerk-std()-Y 
* TimeBodyAccJerk-std()-Z 
* TimeBodyGyroMean()-X 
* TimeBodyGyroMean()-Y 
* TimeBodyGyroMean()-Z 
* TimeBodyGyro-std()-X 
* TimeBodyGyro-std()-Y 
* TimeBodyGyro-std()-Z 
* TimeBodyGyroJerkMean()-X 
* TimeBodyGyroJerkMean()-Y 
* TimeBodyGyroJerkMean()-Z 
* TimeBodyGyroJerk-std()-X 
* TimeBodyGyroJerk-std()-Y 
* TimeBodyGyroJerk-std()-Z 
* TimeBodyAccMagMean() 
* TimeBodyAccMag-std() 
* TimeGravityAccMagMean() 
* TimeGravityAccMag-std() 
* TimeBodyAccJerk_MagnitudeMean() 
* TimeBodyAccJerk_Magnitude-std() 
* TimeBodyfreqMean() 
* TimeBodyfreq-std() 
* TimeBodyGyroJerk_MagnitudeMean() 
* TimeBodyGyroJerk_Magnitude-std() 
* FrequencyBodyAccMean()-X 
* FrequencyBodyAccMean()-Y 
* FrequencyBodyAccMean()-Z 
* FrequencyBodyAcc-std()-X 
* FrequencyBodyAcc-std()-Y 
* FrequencyBodyAcc-std()-Z 
* FrequencyBodyAccMeanFreq()-X 
* FrequencyBodyAccMeanFreq()-Y 
* FrequencyBodyAccMeanFreq()-Z 
* FrequencyBodyAccJerkMean()-X 
* FrequencyBodyAccJerkMean()-Y 
* FrequencyBodyAccJerkMean()-Z 
* FrequencyBodyAccJerk-std()-X 
* FrequencyBodyAccJerk-std()-Y 
* FrequencyBodyAccJerk-std()-Z 
* FrequencyBodyAccJerkMeanFreq()-X 
* FrequencyBodyAccJerkMeanFreq()-Y 
* FrequencyBodyAccJerkMeanFreq()-Z 
* FrequencyBodyGyroMean()-X
* FrequencyBodyGyroMean()-Y 
* FrequencyBodyGyroMean()-Z 
* FrequencyBodyGyro-std()-X 
* FrequencyBodyGyro-std()-Y 
* FrequencyBodyGyro-std()-Z 
* FrequencyBodyGyroMeanFreq()-X 
* FrequencyBodyGyroMeanFreq()-Y 
* FrequencyBodyGyroMeanFreq()-Z 
* FrequencyBodyAccMagMean() 
* FrequencyBodyAccMag-std() 
* FrequencyBodyAccMagMeanFreq() 
* FrequencyBodyBodyAccJerk_MagnitudeMean() 
* FrequencyBodyBodyAccJerk_Magnitude-std() 
* FrequencyBodyBodyAccJerk_MagnitudeMeanFreq() 
* FrequencyBodyBodyfreqMean() 
* FrequencyBodyBodyfreq-std() 
* FrequencyBodyBodyfreqMeanFreq() 
* FrequencyBodyBodyGyroJerk_MagnitudeMean() 
* FrequencyBodyBodyGyroJerk_Magnitude-std() 
* FrequencyBodyBodyGyroJerk_MagnitudeMeanFreq()

-----------------------------------------------------------------------

## VARIABLES

List of all variables within the data, along with a description of their purpose and what they hold

* <mark>xTrain, yTrain<</mark> and <mark>subjectTrain</mark> : Contains the training data from the downloaded files 
* <mark>xTest, yTest</mark> and <mark>subjectTest</mark> : Contains the training data from the downloaded files 
* <mark>trainingData</mark> : Contains xTrain, yTrain and subjectTrain 
* <mark>testData</mark> : Contains xTest, yTest and subjectTest 
* <mark>features</mark> : Contains the downloaded features text file 
* <mark>activityLabels</mark> : Contains the downloaded activity labels from the appropriate file 
* <mark>featuresName</mark> : Contains a numeric vector that is used within the code to extract the desired data set 
* <mark>featuresNamed</mark> : Contains the same data as featuresName but with more 'human readable' labels 
* <mark>finalData</mark> : Contains the trainingData, and testData
* <mark>meltedData</mark> : Contains the final data with the melt function applied
* <mark>meanData</mark> : Contains the final data with the mean function applied