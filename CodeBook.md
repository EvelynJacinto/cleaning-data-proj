---
title: CodeBook for Reshaped Data from Human Activity Recognition Using Smartphones
  Data Set
author: "Evelyn Jacinto"
date: "Friday, November 21, 2014"
output: html_document
---

###Source Data Set 

The source data was downloaded from UCI Machine Learning Repository (<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>). 

The original datasets contained motion indicators gathered using the embedded accelerometer and gyroscope of a smart phone. Experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:  

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.  
* Triaxial Angular velocity from the gyroscope.  
* A 561-feature vector with time and frequency domain variables.  
* Its activity label.   
* An identifier of the subject who carried out the experiment.  

###Feature Selection in Source Data Set

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

###This Data Set

This data set contains 180 rows, one for each activity of each of the 30 volunteers. There are 68 columns. The first two columns are identifiers and the rest of the columns are the mean and standard deviation of each of the signals gathered in the source data set.

Following are the columns.

* __SubjectID__ - identifier for the volunteer
* __Activity__ - one of 6 possible values: WALKING, WALKING\_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

The remaining columns are means of the corresponding columns in the source data set, where the mean is taken over all observations for a subject and activity 

  + tBodyAcc-mean()-X 
  + tBodyAcc-mean()-Y
  + tBodyAcc-mean()-Z
  + tBodyAcc-std()-X 
  + tBodyAcc-std()-Y 
  + tBodyAcc-std()-Z 
  + tGravityAcc-mean()-X 
  + tGravityAcc-mean()-Y 
  + tGravityAcc-mean()-Z 
  + tGravityAcc-std()-X 
  + tGravityAcc-std()-Y 
  + tGravityAcc-std()-Z 
  + tBodyAccJerk-mean()-X 
  + tBodyAccJerk-mean()-Y 
  + tBodyAccJerk-mean()-Z 
  + tBodyAccJerk-std()-X 
  + tBodyAccJerk-std()-Y 
  + tBodyAccJerk-std()-Z 
  + tBodyGyro-mean()-X 
  + tBodyGyro-mean()-Y 
  + tBodyGyro-mean()-Z 
  + tBodyGyro-std()-X 
  + tBodyGyro-std()-Y 
  + tBodyGyro-std()-Z 
  + tBodyGyroJerk-mean()-X 
  + tBodyGyroJerk-mean()-Y 
  + tBodyGyroJerk-mean()-Z 
  + tBodyGyroJerk-std()-X 
  + tBodyGyroJerk-std()-Y 
  + tBodyGyroJerk-std()-Z 
  + tBodyAccMag-mean() 
  + tBodyAccMag-std() 
  + tGravityAccMag-mean() 
  + tGravityAccMag-std() 
  + tBodyAccJerkMag-mean() 
  + tBodyAccJerkMag-std() 
  + tBodyGyroMag-mean() 
  + tBodyGyroMag-std() 
  + tBodyGyroJerkMag-mean() 
  + tBodyGyroJerkMag-std() 
  + fBodyAcc-mean()-X 
  + fBodyAcc-mean()-Y 
  + fBodyAcc-mean()-Z 
  + fBodyAcc-std()-X 
  + fBodyAcc-std()-Y 
  + fBodyAcc-std()-Z 
  + fBodyAccJerk-mean()-X 
  + fBodyAccJerk-mean()-Y 
  + fBodyAccJerk-mean()-Z 
  + fBodyAccJerk-std()-X 
  + fBodyAccJerk-std()-Y 
  + fBodyAccJerk-std()-Z 
  + fBodyGyro-mean()-X 
  + fBodyGyro-mean()-Y 
  + fBodyGyro-mean()-Z 
  + fBodyGyro-std()-X 
  + fBodyGyro-std()-Y 
  + fBodyGyro-std()-Z 
  + fBodyAccMag-mean() 
  + fBodyAccMag-std() 
  + fBodyBodyAccJerkMag-mean() 
  + fBodyBodyAccJerkMag-std() 
  + fBodyBodyGyroMag-mean() 
  + fBodyBodyGyroMag-std() 
  + fBodyBodyGyroJerkMag-mean() 
  + fBodyBodyGyroJerkMag-std()

###Transformations to Get This Data Set

Following are the steps taken to get the current data set.

1. Activity labels where mapped to descriptive names as follows:

+ 1 - WALKING
+ 2 - WALKING_UPSTAIRS
+ 3 - WALKING_DOWNSTAIRS
+ 4 - SITTING
+ 5 - STANDING
+ 6 - LAYING

2. Subsets of the train and test features sets containing only columns for means and standard deviations were created.
3. for each of the train and test sets, the subject identifier and the activity descriptive names were attached to the subset of the features set.
4. The train and test sets were merged into one data set and descriptive column names were assigned.
5. Finally, the mean for each measurement column was computed for each subject and activity and saved into this dataset (UCI_HAR.txt).


