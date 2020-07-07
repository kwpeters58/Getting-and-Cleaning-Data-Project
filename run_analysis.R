## Required Packages
install.packages("tidyverse")
library(tidyverse)
library(dplyr)

## Download  the data for the project
filename <- "project.zip"
if(!file.exists(filename)) {
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile = filename, method = "curl")
}
if(!file.exists("UCI HAR Dataset")) {
      unzip(filename)
}

## Create all the Tables
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("n", "activity"))
features <- read.table("UCI HAr Dataset/features.txt", col.names = c("n", "values"))
subject_test <- read.table("UCI HAr Dataset/test/subject_test.txt", col.names = c("subject"))
X_test <- read.table("UCI HAr Dataset/test/X_test.txt", col.names = features$values)
Y_test <- read.table("UCI HAr Dataset/test/Y_test.txt", col.names = c("code"))
subject_train <- read.table("UCI HAr Dataset/train/subject_train.txt", col.names = c("subject"))
X_train <- read.table("UCI HAr Dataset/train/X_train.txt", col.names = features$values)
Y_train <- read.table("UCI HAr Dataset/train/Y_train.txt", col.names = c("code"))

## Merge the training and the test sets to create one data set.
data_test <-  data.frame(subject_test, Y_test, X_test)
data_train <-  data.frame(subject_train, Y_train, X_train)
MergedData <- rbind(data_test, data_train)


## Extract only the measurements on the mean and standard deviation 
##    for each measurement.
mean_or_std <- MergedData %>% select(1,2, grep(('mean|Mean|std'), colnames(MergedData)))
## Appropriate labels for the data set that has descriptive variable names
descriptive_name <- names(mean_or_std)
descriptive_name  <- gsub("^t", "Time", descriptive_name)
descriptive_name  <- gsub("^f", "Frequency", descriptive_name)
descriptive_name  <- gsub("mean", "Mean", descriptive_name)
descriptive_name  <- gsub("std", "StandardDeviation", descriptive_name)
descriptive_name  <- gsub("\\.", "", descriptive_name)
descriptive_name  <- gsub("Acc", "Acclelerometer", descriptive_name)
descriptive_name  <- gsub("Gyro", "Gyroscope", descriptive_name)
descriptive_name  <- gsub("Mag", "Magnitude", descriptive_name)
names(mean_or_std) <- descriptive_name


## From the data set above, create a second, 
##independent tidy data set with the average of each variable 
##for each activity and each subject.

mean_or_std[mean_or_std$code == 1, "code"] <- "WALKING"
mean_or_std[mean_or_std$code == 2, "code"] <- "WALKING_UPSTAIRS"
mean_or_std[mean_or_std$code == 3, "code"] <- "WALKING_DOWNSTAIRS"
mean_or_std[mean_or_std$code == 4, "code"] <- "SITTING"
mean_or_std[mean_or_std$code == 5, "code"] <- "STANDING"
mean_or_std[mean_or_std$code == 6, "code"] <- "LAYING"
TidyData <-aggregate(mean_or_std[,3:88], by=list(activity= mean_or_std$code, subject = mean_or_std$subject),
                    FUN=mean, na.rm=TRUE)
write.table(TidyData, file = "TidyData.txt",
            row.names = FALSE)


