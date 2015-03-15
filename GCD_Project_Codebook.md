Source of Original Dataset and Overview
=======================================

This codebook is a processed extract from
"<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>"
for the purposes of the Getting and Cleaning Data project.

Data contains subject and activity identifiers followed by averages of
the averages (*mean*) or standard deviations (*std*) of all observations
for that subject and activity. The feature contains either "mean" or
"std" in the feature name to indicate if the average is based on the
means or standard deviations for the given measurement.

Identifiers
===========

subject - Identifier for that person wearing the measurement devices and
conducting the activities activity - The six activities performed
(Walking, Walking_upstairs, Walking_downstairs, sitting, standing,
laying)

Features
========

The original description of the features provide in the based HAR UCI
Dataset: The features selected for this database come from the
accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
These time domain signals (prefix 't' to denote time) were captured at a
constant rate of 50 Hz. Then they were filtered using a median filter
and a 3rd order low pass Butterworth filter with a corner frequency of
20 Hz to remove noise. Similarly, the acceleration signal was then
separated into body and gravity acceleration signals (tBodyAcc-XYZ and
tGravityAcc-XYZ) using another low pass Butterworth filter with a corner
frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag,
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to
indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for
each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The list of features contained in this processed dataset:
tBodyAcc_mean_X
tBodyAcc_mean_Y
tBodyAcc_mean_Z
tBodyAcc_std_X
tBodyAcc_std_Y 
tBodyAcc_std_Z 
tGravityAcc_mean_X
tGravityAcc_mean_Y 
tGravityAcc_mean_Z 
tGravityAcc_std_X
tGravityAcc_std_Y 
tGravityAcc_std_Z 
tBodyAccJerk_mean_X
tBodyAccJerk_mean_Y 
tBodyAccJerk_mean_Z 
tBodyAccJerk_std_X
tBodyAccJerk_std_Y 
tBodyAccJerk_std_Z 
tBodyGyro_mean_X
tBodyGyro_mean_Y 
tBodyGyro_mean_Z 
tBodyGyro_std_X
tBodyGyro_std_Y 
tBodyGyro_std_Z 
tBodyGyroJerk_mean_X
tBodyGyroJerk_mean_Y 
tBodyGyroJerk_mean_Z 
tBodyGyroJerk_std_X
tBodyGyroJerk_std_Y 
tBodyGyroJerk_std_Z 
tBodyAccMag_mean
tBodyAccMag_std 
tGravityAccMag_mean 
tGravityAccMag_std
tBodyAccJerkMag_mean 
tBodyAccJerkMag_std 
tBodyGyroMag_mean
tBodyGyroMag_std 
tBodyGyroJerkMag_mean 
tBodyGyroJerkMag_std
fBodyAcc_mean_X 
fBodyAcc_mean_Y 
fBodyAcc_mean_Z 
fBodyAcc_std_X
fBodyAcc_std_Y 
fBodyAcc_std_Z 
fBodyAcc_meanFreq_X
fBodyAcc_meanFreq_Y 
fBodyAcc_meanFreq_Z 
fBodyAccJerk_mean_X
fBodyAccJerk_mean_Y 
fBodyAccJerk_mean_Z 
fBodyAccJerk_std_X
fBodyAccJerk_std_Y 
fBodyAccJerk_std_Z 
fBodyAccJerk_meanFreq_X
fBodyAccJerk_meanFreq_Y 
fBodyAccJerk_meanFreq_Z 
fBodyGyro_mean_X
fBodyGyro_mean_Y 
fBodyGyro_mean_Z 
fBodyGyro_std_X
fBodyGyro_std_Y 
fBodyGyro_std_Z 
fBodyGyro_meanFreq_X
fBodyGyro_meanFreq_Y 
fBodyGyro_meanFreq_Z 
fBodyAccMag_mean
fBodyAccMag_std 
fBodyAccMag_meanFreq 
fBodyBodyAccJerkMag_mean
fBodyBodyAccJerkMag_std 
fBodyBodyAccJerkMag_meanFreq
fBodyBodyGyroMag_mean 
fBodyBodyGyroMag_std 
fBodyBodyGyroMag_meanFreq
fBodyBodyGyroJerkMag_mean 
fBodyBodyGyroJerkMag_std
fBodyBodyGyroJerkMag_meanFreq 
angle_tBodyAccMean_gravity
angle_tBodyAccJerkMean_gravityMean 
angle_tBodyGyroMean_gravityMean
angle_tBodyGyroJerkMean_gravityMean 
angle_X_gravityMean
angle_Y_gravityMean 
angle_Z_gravityMean
