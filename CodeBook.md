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

"tBodyAcc.mean.X.avg"

"tBodyAcc.mean.Y.avg"

"tBodyAcc.mean.Z.avg"

"tBodyAcc.std.X.avg"

"tBodyAcc.std.Y.avg"

"tBodyAcc.std.Z.avg"

"tGravityAcc.mean.X.avg"

"tGravityAcc.mean.Y.avg"

"tGravityAcc.mean.Z.avg"

"tGravityAcc.std.X.avg"

"tGravityAcc.std.Y.avg"

"tGravityAcc.std.Z.avg"

"tBodyAccJerk.mean.X.avg"

"tBodyAccJerk.mean.Y.avg"

"tBodyAccJerk.mean.Z.avg"

"tBodyAccJerk.std.X.avg"

"tBodyAccJerk.std.Y.avg"

"tBodyAccJerk.std.Z.avg"

"tBodyGyro.mean.X.avg"

"tBodyGyro.mean.Y.avg"

"tBodyGyro.mean.Z.avg"

"tBodyGyro.std.X.avg"

"tBodyGyro.std.Y.avg"

"tBodyGyro.std.Z.avg"

"tBodyGyroJerk.mean.X.avg"

"tBodyGyroJerk.mean.Y.avg"

"tBodyGyroJerk.mean.Z.avg"

"tBodyGyroJerk.std.X.avg"

"tBodyGyroJerk.std.Y.avg"

"tBodyGyroJerk.std.Z.avg"

"tBodyAccMag.mean.NA.avg"

"tBodyAccMag.std.NA.avg"

"tGravityAccMag.mean.NA.avg"

"tGravityAccMag.std.NA.avg"

"tBodyAccJerkMag.mean.NA.avg"

"tBodyAccJerkMag.std.NA.avg"

"tBodyGyroMag.mean.NA.avg"

"tBodyGyroMag.std.NA.avg"

"tBodyGyroJerkMag.mean.NA.avg"

"tBodyGyroJerkMag.std.NA.avg"

"fBodyAcc.mean.X.avg"

"fBodyAcc.mean.Y.avg"

"fBodyAcc.mean.Z.avg"

"fBodyAcc.std.X.avg"

"fBodyAcc.std.Y.avg"

"fBodyAcc.std.Z.avg"

"fBodyAccJerk.mean.X.avg"

"fBodyAccJerk.mean.Y.avg"

"fBodyAccJerk.mean.Z.avg"

"fBodyAccJerk.std.X.avg"

"fBodyAccJerk.std.Y.avg"

"fBodyAccJerk.std.Z.avg"

"fBodyGyro.mean.X.avg"

"fBodyGyro.mean.Y.avg"

"fBodyGyro.mean.Z.avg"

"fBodyGyro.std.X.avg"

"fBodyGyro.std.Y.avg"

"fBodyGyro.std.Z.avg"

"fBodyAccMag.mean.NA.avg"

"fBodyAccMag.std.NA.avg"

"fBodyBodyAccJerkMag.mean.NA.avg"

"fBodyBodyAccJerkMag.std.NA.avg"

"fBodyBodyGyroMag.mean.NA.avg"

"fBodyBodyGyroMag.std.NA.avg"

"fBodyBodyGyroJerkMag.mean.NA.avg"

"fBodyBodyGyroJerkMag.std.NA.avg"

"Subject_ID"

"Activity_ID"

"Activity_Name"
