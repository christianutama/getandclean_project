# Codebook for Getting and Cleaning Data Course Project

This is the codebook for the tidy dataset obtained using the **run_analysis.R** script which is made for this project. The original data was obtained by experiments carried out with a group of 30 volunteers, randomly divided into two sets where 30% of the volunteers were selected to generate the test data and the rest 70% of the volunteers were selected to generate the training data. The volunteers are within an age bracket of 19-48 years. For each experiment, each subject was subjected to perform 6 activities wearing a smartphone (Samsung Galaxy SII) on the waist. The six activities were WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING. The data was obtained using the phone's built-in accelerometer and gyroscope. The explanation on features and variables of the original data can be obtained from the **features_info.txt** file which is provided along with the original data and quoted below.

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

> These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

> tBodyAcc-XYZ

> tGravityAcc-XYZ

> tBodyAccJerk-XYZ

> tBodyGyro-XYZ

> tBodyGyroJerk-XYZ

> tBodyAccMag

> tGravityAccMag

> tBodyAccJerkMag

> tBodyGyroMag

> tBodyGyroJerkMag

> fBodyAcc-XYZ

> fBodyAccJerk-XYZ

> fBodyGyro-XYZ

> fBodyAccMag

> fBodyAccJerkMag

> fBodyGyroMag

> fBodyGyroJerkMag

> The set of variables that were estimated from these signals are: 

> mean(): Mean value

> std(): Standard deviation

> mad(): Median absolute deviation 

> max(): Largest value in array

> min(): Smallest value in array

> sma(): Signal magnitude area

> energy(): Energy measure. Sum of the squares divided by the number of values. 

> iqr(): Interquartile range 

> entropy(): Signal entropy

> arCoeff(): Autorregresion coefficients with Burg order equal to 4

> correlation(): correlation coefficient between two signals

> maxInds(): index of the frequency component with largest magnitude

> meanFreq(): Weighted average of the frequency components to obtain a mean frequency

> skewness(): skewness of the frequency domain signal 

> kurtosis(): kurtosis of the frequency domain signal 

> bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

> angle(): Angle between to vectors.

The original data (merged between train and test sets) contains 10299 observations and 561 features. The main transformations to the data which is involved in the script are:

1. Subsetting the features on the original dataset so that it contains only the features with mean (mean()) and standard deviation (std()) estimated from the signals. Features with meanFreq() and angleMean are not included
2. Calculating the average of these features across every unique subject and activity
 
Details on the script can be found on the **README** file. The tidy dataset contains 180 observations (30 unique subjects over 6 activities, 30*6) and 69 columns (66 average on measurements/variables, 3 for subject, activity id and activity name).

## Variables

Common format for the measurements variable: XXXX.YY.Z.avg, where:

> First letter in XXXX indicates time ("t") or frequency ("f") domain of the measurement, the rest indicates whether they are accelerometer signals ("Acc"), gyroscope signals ("Gyro"), Jerk signals ("Jerk") or magnitude ("Mag)
> YY is either "mean" or "std" which indicates mean or standard deviation
> Z is either "X", "Y", "Z" or "NA" which indicates the axis of the measurement, "NA" indicates magnitude measurement which doesn't have axis element
> avg indicates that every measurement is the average across each subject and activity

Common units of measurement:

> standard unit of gravity (g) for accelerometer signals ("Acc" in XXXX)
> radians/second for gyroscope signals ("Gyro" in XXXX)
> meter/second^3 (assuming g=meter/second^2) for accelerometer Jerk signals ("Jerk" in XXXX)
> radians/second^2 for gyroscope Jerk signals ("Jerk" in XXXX)
> same unit of measurement for the corresponding magnitude ("Mag" in XXXX)

"tBodyAcc.mean.X.avg"
> the average of mean for body acceleration signals on X-axis for the time domain 

"tBodyAcc.mean.Y.avg"
> the average of mean for body acceleration signals on Y-axis for the time domain 

"tBodyAcc.mean.Z.avg"
> the average of mean for body acceleration signals on Z-axis for the time domain 

"tBodyAcc.std.X.avg"
> the average of standard deviation for body acceleration signals on X-axis for the time domain 

"tBodyAcc.std.Y.avg"
> the average of standard deviation for body acceleration signals on Y-axis for the time domain 

"tBodyAcc.std.Z.avg"
> the average of standard deviation for body acceleration signals on Z-axis for the time domain 

"tGravityAcc.mean.X.avg"
> the average of mean for gravity acceleration signals on X-axis for the time domain 

"tGravityAcc.mean.Y.avg"
> the average of mean for gravity acceleration signals on Yaxis for the time domain 

"tGravityAcc.mean.Z.avg"
> the average of mean for gravity acceleration signals on Z-axis for the time domain 

"tGravityAcc.std.X.avg"
> the average of standard deviation for gravity acceleration signals on X-axis for the time domain 

"tGravityAcc.std.Y.avg"
> the average of standard deviation for gravity acceleration signals on Y-axis for the time domain 

"tGravityAcc.std.Z.avg"
> the average of standard deviation for gravity acceleration signals on Z-axis for the time domain 

"tBodyAccJerk.mean.X.avg"
> the average of mean for Jerk signals derived from body linear acceleration on X-axis for the time domain

"tBodyAccJerk.mean.Y.avg"
> the average of mean for Jerk signals derived from body linear acceleration on Y-axis for the time domain

"tBodyAccJerk.mean.Z.avg"
> the average of mean for Jerk signals derived from body linear acceleration on Z-axis for the time domain

"tBodyAccJerk.std.X.avg"
> the average of standard deviation for Jerk signals derived from body linear acceleration on X-axis for the time domain

"tBodyAccJerk.std.Y.avg"
> the average of standard deviation for Jerk signals derived from body linear acceleration on Y-axis for the time domain

"tBodyAccJerk.std.Z.avg"
> the average of standard deviation for Jerk signals derived from body linear acceleration on Z-axis for the time domain

"tBodyGyro.mean.X.avg"
> the average of mean for body gyroscope signals on X-axis for the time domain 

"tBodyGyro.mean.Y.avg"
> the average of mean for body gyroscope signals on Y-axis for the time domain 

"tBodyGyro.mean.Z.avg"
> the average of mean for body gyroscope signals on Z-axis for the time domain 

"tBodyGyro.std.X.avg"
> the average of standard deviation for body gyroscope signals on X-axis for the time domain 

"tBodyGyro.std.Y.avg"
> the average of standard deviation for body gyroscope signals on Y-axis for the time domain 

"tBodyGyro.std.Z.avg"
> the average of standard deviation for body gyroscope signals on Z-axis for the time domain 

"tBodyGyroJerk.mean.X.avg"
> the average of mean for Jerk signals derived from body gyroscope signals on X-axis for the time domain

"tBodyGyroJerk.mean.Y.avg"
> the average of mean for Jerk signals derived from body gyroscope signals on Y-axis for the time domain

"tBodyGyroJerk.mean.Z.avg"
> the average of mean for Jerk signals derived from body gyroscope signals on Z-axis for the time domain

"tBodyGyroJerk.std.X.avg"
> the average of standard deviation for Jerk signals derived from body gyroscope signals on X-axis for the time domain

"tBodyGyroJerk.std.Y.avg"
> the average of standard deviation for Jerk signals derived from body gyroscope signals on Y-axis for the time domain

"tBodyGyroJerk.std.Z.avg"
> the average of standard deviation for Jerk signals derived from body gyroscope signals on Z-axis for the time domain

"tBodyAccMag.mean.NA.avg"
> the average of mean for the magnitude of three-dimensional body acceleration signals for the time domain

"tBodyAccMag.std.NA.avg"
> the average of standard deviation for the magnitude of three-dimensional body acceleration signals for the time domain

"tGravityAccMag.mean.NA.avg"
> the average of mean for the magnitude of three-dimensional gravity acceleration signals for the time domain

"tGravityAccMag.std.NA.avg"
> the average of standard deviation for the magnitude of three-dimensional gravity acceleration signals for the time domain

"tBodyAccJerkMag.mean.NA.avg"
> the average of mean for the magnitude of three-dimensional Jerk signals derived from body acceleration signals for the time domain

"tBodyAccJerkMag.std.NA.avg"
> the average of standard deviation for the magnitude of three-dimensional Jerk signals derived from body acceleration signals for the time domain

"tBodyGyroMag.mean.NA.avg"
> the average of mean for the magnitude of three-dimensional body gyroscope signals for the time domain

"tBodyGyroMag.std.NA.avg"
> the average of mean for the magnitude of three-dimensional body gyroscope signals for the time domain

"tBodyGyroJerkMag.mean.NA.avg"
> the average of mean for the magnitude of three-dimensional Jerk signals derived from body gyroscope signals for the time domain

"tBodyGyroJerkMag.std.NA.avg"
> the average of standard deviation for the magnitude of three-dimensional Jerk signals derived from body gyroscope signals for the time domain

"fBodyAcc.mean.X.avg"
> the average of mean for body acceleration signals on X-axis for the frequency domain 

"fBodyAcc.mean.Y.avg"
> the average of mean for body acceleration signals on Y-axis for the frequency domain 

"fBodyAcc.mean.Z.avg"
> the average of mean for body acceleration signals on Z-axis for the frequency domain 

"fBodyAcc.std.X.avg"
> the average of standard deviation for body acceleration signals on X-axis for the frequency domain 

"fBodyAcc.std.Y.avg"
> the average of standard deviation for body acceleration signals on Y-axis for the frequency domain 

"fBodyAcc.std.Z.avg"
> the average of standard deviation for body acceleration signals on Z-axis for the frequency domain 

"fBodyAccJerk.mean.X.avg"
> the average of mean for Jerk signals derived from body linear acceleration on X-axis for the frequency domain

"fBodyAccJerk.mean.Y.avg"
> the average of mean for Jerk signals derived from body linear acceleration on Y-axis for the frequency domain

"fBodyAccJerk.mean.Z.avg"
> the average of mean for Jerk signals derived from body linear acceleration on Z-axis for the frequency domain

"fBodyAccJerk.std.X.avg"
> the average of standard deviation for Jerk signals derived from body linear acceleration on X-axis for the frequency domain

"fBodyAccJerk.std.Y.avg"
> the average of standard deviation for Jerk signals derived from body linear acceleration on Y-axis for the frequency domain

"fBodyAccJerk.std.Z.avg"
> the average of standard deviation for Jerk signals derived from body linear acceleration on Z-axis for the frequency domain

"fBodyGyro.mean.X.avg"
> the average of mean for body gyroscope signals on X-axis for the frequency domain 

"fBodyGyro.mean.Y.avg"
> the average of mean for body gyroscope signals on Y-axis for the frequency domain 

"fBodyGyro.mean.Z.avg"
> the average of mean for body gyroscope signals on Z-axis for the frequency domain 

"fBodyGyro.std.X.avg"
> the average of standard deviation for body gyroscope signals on X-axis for the frequency domain 

"fBodyGyro.std.Y.avg"
> the average of standard deviation for body gyroscope signals on Y-axis for the frequency domain 

"fBodyGyro.std.Z.avg"
> the average of standard deviation for body gyroscope signals on Z-axis for the frequency domain 

"fBodyAccMag.mean.NA.avg"
> the average of mean for the magnitude of three-dimensional body acceleration signals for the frequency domain

"fBodyAccMag.std.NA.avg"
> the average of standard deviation for the magnitude of three-dimensional body acceleration signals for the frequency domain

"fBodyBodyAccJerkMag.mean.NA.avg"
> the average of mean for the magnitude of three-dimensional Jerk signals derived from body acceleration signals for the frequency domain

"fBodyBodyAccJerkMag.std.NA.avg"
> the average of standard deviation for the magnitude of three-dimensional Jerk signals derived from body acceleration signals for the frequency domain

"fBodyBodyGyroMag.mean.NA.avg"
> the average of mean for the magnitude of three-dimensional body gyroscope signals for the frequency domain

"fBodyBodyGyroMag.std.NA.avg"
> the average of mean for the magnitude of three-dimensional body gyroscope signals for the frequency domain

"fBodyBodyGyroJerkMag.mean.NA.avg"
> the average of mean for the magnitude of three-dimensional Jerk signals derived from body gyroscope signals for the frequency domain

"fBodyBodyGyroJerkMag.std.NA.avg"
> the average of standard deviation for the magnitude of three-dimensional Jerk signals derived from body gyroscope signals for the frequency domain

"Subject_ID"
> identification number for experiment subjects, factor variable with levels ranging from 1-30

"Activity_ID"
> identification number for activites, factor variable with levels ranging from 1-6

"Activity_Name"
> activity name for the experiment, factor variable with levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
