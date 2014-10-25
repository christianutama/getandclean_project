# Load all required data and save it to a corresponding variable
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# Bind the rows to merge train and test data for subject, X and y variable
subject <- rbind(subject_test,subject_train)
X <- rbind(X_test,X_train)
y <- rbind(y_test,y_train)

# Merge the variables to create a data frame with all variables and at the same time
# subsetting/extracting only the measurements on the mean and standard deviation of
# each measurements. Measurements on the mean frequency (meanFreq) and mean on the angle
# variable are not included
dataset <- cbind(X[,(grepl("mean()",features$V2,fixed=TRUE) | grepl("std",features$V2))], subject, y)

# Set the column names for subject and y as "Subject" and "Activity"
names(dataset)[67:68] <- c("Subject_ID", "Activity_ID")
# Set the column names for the measurements based on the variable names in features
names(dataset)[1:66] <- as.character(features$V2[grepl("mean()",features$V2,fixed=TRUE) | grepl("std()",features$V2)])

# Correct the names of the measurements to remove illegal characters such as "-" and "()"
# as variable names
str <- names(dataset)[grepl("mean()",names(dataset),fixed=TRUE)]
for (m in 1:length(str)){
    list <- strsplit(str[m],split="-")
    temp <- unlist(list)
    str[m] <- paste(temp[1],"mean", temp[3],sep=".")
}
names(dataset)[grepl("mean()",names(dataset),fixed=TRUE)] <- str

str <- names(dataset)[grepl("std",names(dataset))]
for (n in 1:length(str)){
    list <- strsplit(str[n],split="-")
    temp <- unlist(list)
    str[n] <- paste(temp[1],"std", temp[3],sep=".")
}
names(dataset)[grepl("std",names(dataset))] <- str

# Add another column to the dataset to account for the activity names
activity_labels$V2 <- as.character(activity_labels$V2)
for (i in 1:dim(dataset)[1]) {
    dataset$Activity_Name[i] <- activity_labels$V2[activity_labels$V1 %in% dataset$Activity[i]]
}

# Set the variables Activity and Activity_Name as factors
dataset$Subject_ID<-factor(dataset$Subject_ID)
dataset$Activity_ID<-factor(dataset$Activity_ID)
dataset$Activity_Name<-factor(dataset$Activity_Name)

# Calculate the average of each variable (measurement) for each activity and each subject
meandataset <- dataset
for (j in 1:66) {
    meandataset[,j] <- ave(dataset[,j], dataset$Subject_ID, dataset$Activity_ID)
}

# Construct a tidy dataset containing one row for each average of each variable, based
# on each activity and each subject
tidyavgdata <- data.frame()
for (k in 1:30){
    for (l in 1:6){
        a <- subset(meandataset, meandataset$Subject_ID==k & meandataset$Activity_ID==l)
        tidyavgdata <- rbind(tidyavgdata, a[1,])
    }
}
# Correct the variable names to account for the fact that each variable is the average
# measurements across a number of observations for each subject and activity
names(tidyavgdata)[1:66] <- paste(names(tidyavgdata)[1:66],"avg",sep=".")

# Save the tidy data set into a txt file
write.table(tidyavgdata,file="tidydataset.txt",row.names=FALSE)
