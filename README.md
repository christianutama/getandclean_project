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

1. Read the data. Assuming that the data is in the **UCI HAR Dataset** folder in the working directory:

> read **activity_labels.txt** and **features.txt** using **read.table()** and save them in the variables **activity_labels** and **features**
> read **subject_test.txt**, **X_test.txt** and **y_test.txt** using **read.table()** and save them in the variables **subject_test**, **X_test** and **y_test**
> read **subject_train.txt**, **X_train.txt** and **y_train.txt** using **read.table()** and save them in the variables **subject_train**, **X_train** and **y_train**

2. Merge the test and train data by row using **rbind()** and save them in the variables **subject**, **X** and **y**
3. Subset the **X** variable to extract only the measurements on the mean and standard deviation for each measurement using **grepl()** to match the strings **mean()** and **std** in the **features** variable and match it to the corresponding position in the column of **X**. Measurements on **meanFreq()** and **angle** are not included.
4. Merge the subsetted **X** in step (3) with **subject** and **y** using **cbind()** and save it into the variable **dataset**
5. Name the columns properly with the names **Subject_ID** and **Activity_ID** for the last two columns and the rest of the column names are based on the matching **features** variables in step(3)
6. Correct the names of the measurements variables as they contain illegal variable names such as **-** and **()** by using **strsplit()** and combining them back together using **paste()** with the parameter **sep="."**
7. Mutate the **dataset** by adding another variable **Activity_Name** to account for the activity name based on the **Activity_ID**. This is done by matching the **Activity_ID** on the corresponding row with **activity_labels** and extracting the names of the activites
8. Set **Subject_ID**, **Activity_ID** and **Activity_Name** as **factor** variables
9. Calculate the average of each variable (measurement) for each activity and each subject using **ave()** for every corresponding column containing measurement variable and save them in the variable **meandataset**.
10. Construct the tidy dataset which is the ultimate goal of the script by subsetting the data over every **Subject_ID** and **Activity_ID** and extracting the first row (since every row contains the same value for the same subject and activity) of every column and save them in the variable **tidyavgdata**. The **tidyavgdata** dataset contains 180 observations (rows) over 69 columns (66 measurements average, subject, activity id and activity name).
11. Correct the names of the measurement variables by adding **.avg** at the end of every measurement variable
12. Save the tidy dataset into a text file called **tidydataset.txt** using **write.table()** with the parameter **row.names=FALSE**
13. To load the tidy dataset, use **read.table()** with the parameter **header=TRUE**
