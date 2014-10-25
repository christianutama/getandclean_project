Getting and Cleaning Data Course Project
===================

The purpose of this project is to prepare a tidy data which can be used for later analysis. The data for this project is obtained from the course project page on Coursera. The data can be downloaded from the following URL:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Full description of the data is available at the original data site:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script which is submitted for this project is **run_analysis.R**. This script is used to do the following tasks:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. (from the course project page)

The script works by the following steps:
1. Assuming that the data is in the **UCI HAR Dataset** folder in the working directory:
> read **activity_labels.txt** and **features.txt** and save them in the variables **activity_labels** and **features**
