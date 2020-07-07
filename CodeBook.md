---
title: "Getting and Cleaning Data Project"
author: "Ken Peters"
date: "7/7/2020"
output: html_document
---
Downloaded text files were obtained from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The run_analysis.R script performs the 5 steps required as described in the course project’s definition.

Download the dataset
Dataset downloaded and extracted under the folder called UCI HAR Dataset

Creating the Tables:
activities: 6 obs. of 2 variables
features: 561 obs. of 2 variables
subject_test: 2947 obs. of 1 variable
X_test: 2947 obs. of 561 variables
Y_test: 2947 obs. of 1 variable
subject_train: 7352 obs. of 1 variable
X_train: 7352 obs. of 561 variables
Y_train: 7352 obs. of 1 variable

Merge the training and the test sets to create one data set
data_test-merges the test data: 2947 obs. of 563 variables
data_train-merges the train data: 7352 obs. of 563 variables
MergedData-merges the test and train data using rbind: 10299 obs. of 563 variables


Extract only the measurements on the mean and standard deviation 
for each measurement.
mean_or_std-uses grep: 10299 obs. of 88 variables

Appropriate labels for the data set that has descriptive variable names
Replace t with Time
Replace f with Frequency
Replace mean with Mean
Replace std with StandardDeviation
Remove all periods
Replace Acc with Acclelerometer
Replace Gyro with Gyroscope
Replace Mag with Magnitude

From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject
Change code numbers to corresponding activities:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
TidyData uses aggregate with the mean function: 180 obs. of 88 variables

Export TidyData into "TidyData.txt" file.