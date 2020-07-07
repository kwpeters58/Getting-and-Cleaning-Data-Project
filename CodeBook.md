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

Variables of TidyData:

 [1] "activity"                                                     
 [2] "subject"                                                      
 [3] "TimeBodyAcclelerometerMeanX"                                  
 [4] "TimeBodyAcclelerometerMeanY"                                  
 [5] "TimeBodyAcclelerometerMeanZ"                                  
 [6] "TimeBodyAcclelerometerStandardDeviationX"                     
 [7] "TimeBodyAcclelerometerStandardDeviationY"                     
 [8] "TimeBodyAcclelerometerStandardDeviationZ"                     
 [9] "TimeGravityAcclelerometerMeanX"                               
[10] "TimeGravityAcclelerometerMeanY"                               
[11] "TimeGravityAcclelerometerMeanZ"                               
[12] "TimeGravityAcclelerometerStandardDeviationX"                  
[13] "TimeGravityAcclelerometerStandardDeviationY"                  
[14] "TimeGravityAcclelerometerStandardDeviationZ"                  
[15] "TimeBodyAcclelerometerJerkMeanX"                              
[16] "TimeBodyAcclelerometerJerkMeanY"                              
[17] "TimeBodyAcclelerometerJerkMeanZ"                              
[18] "TimeBodyAcclelerometerJerkStandardDeviationX"                 
[19] "TimeBodyAcclelerometerJerkStandardDeviationY"                 
[20] "TimeBodyAcclelerometerJerkStandardDeviationZ"                 
[21] "TimeBodyGyroscopeMeanX"                                       
[22] "TimeBodyGyroscopeMeanY"                                       
[23] "TimeBodyGyroscopeMeanZ"                                       
[24] "TimeBodyGyroscopeStandardDeviationX"                          
[25] "TimeBodyGyroscopeStandardDeviationY"                          
[26] "TimeBodyGyroscopeStandardDeviationZ"                          
[27] "TimeBodyGyroscopeJerkMeanX"                                   
[28] "TimeBodyGyroscopeJerkMeanY"                                   
[29] "TimeBodyGyroscopeJerkMeanZ"                                   
[30] "TimeBodyGyroscopeJerkStandardDeviationX"                      
[31] "TimeBodyGyroscopeJerkStandardDeviationY"                      
[32] "TimeBodyGyroscopeJerkStandardDeviationZ"                      
[33] "TimeBodyAcclelerometerMagnitudeMean"                          
[34] "TimeBodyAcclelerometerMagnitudeStandardDeviation"             
[35] "TimeGravityAcclelerometerMagnitudeMean"                       
[36] "TimeGravityAcclelerometerMagnitudeStandardDeviation"          
[37] "TimeBodyAcclelerometerJerkMagnitudeMean"                      
[38] "TimeBodyAcclelerometerJerkMagnitudeStandardDeviation"         
[39] "TimeBodyGyroscopeMagnitudeMean"                               
[40] "TimeBodyGyroscopeMagnitudeStandardDeviation"                  
[41] "TimeBodyGyroscopeJerkMagnitudeMean"                           
[42] "TimeBodyGyroscopeJerkMagnitudeStandardDeviation"              
[43] "FrequencyBodyAcclelerometerMeanX"                             
[44] "FrequencyBodyAcclelerometerMeanY"                             
[45] "FrequencyBodyAcclelerometerMeanZ"                             
[46] "FrequencyBodyAcclelerometerStandardDeviationX"                
[47] "FrequencyBodyAcclelerometerStandardDeviationY"                
[48] "FrequencyBodyAcclelerometerStandardDeviationZ"                
[49] "FrequencyBodyAcclelerometerMeanFreqX"                         
[50] "FrequencyBodyAcclelerometerMeanFreqY"                         
[51] "FrequencyBodyAcclelerometerMeanFreqZ"                         
[52] "FrequencyBodyAcclelerometerJerkMeanX"                         
[53] "FrequencyBodyAcclelerometerJerkMeanY"                         
[54] "FrequencyBodyAcclelerometerJerkMeanZ"                         
[55] "FrequencyBodyAcclelerometerJerkStandardDeviationX"            
[56] "FrequencyBodyAcclelerometerJerkStandardDeviationY"            
[57] "FrequencyBodyAcclelerometerJerkStandardDeviationZ"            
[58] "FrequencyBodyAcclelerometerJerkMeanFreqX"                     
[59] "FrequencyBodyAcclelerometerJerkMeanFreqY"                     
[60] "FrequencyBodyAcclelerometerJerkMeanFreqZ"                     
[61] "FrequencyBodyGyroscopeMeanX"                                  
[62] "FrequencyBodyGyroscopeMeanY"                                  
[63] "FrequencyBodyGyroscopeMeanZ"                                  
[64] "FrequencyBodyGyroscopeStandardDeviationX"                     
[65] "FrequencyBodyGyroscopeStandardDeviationY"                     
[66] "FrequencyBodyGyroscopeStandardDeviationZ"                     
[67] "FrequencyBodyGyroscopeMeanFreqX"                              
[68] "FrequencyBodyGyroscopeMeanFreqY"                              
[69] "FrequencyBodyGyroscopeMeanFreqZ"                              
[70] "FrequencyBodyAcclelerometerMagnitudeMean"                     
[71] "FrequencyBodyAcclelerometerMagnitudeStandardDeviation"        
[72] "FrequencyBodyAcclelerometerMagnitudeMeanFreq"                 
[73] "FrequencyBodyBodyAcclelerometerJerkMagnitudeMean"             
[74] "FrequencyBodyBodyAcclelerometerJerkMagnitudeStandardDeviation"
[75] "FrequencyBodyBodyAcclelerometerJerkMagnitudeMeanFreq"         
[76] "FrequencyBodyBodyGyroscopeMagnitudeMean"                      
[77] "FrequencyBodyBodyGyroscopeMagnitudeStandardDeviation"         
[78] "FrequencyBodyBodyGyroscopeMagnitudeMeanFreq"                  
[79] "FrequencyBodyBodyGyroscopeJerkMagnitudeMean"                  
[80] "FrequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation"     
[81] "FrequencyBodyBodyGyroscopeJerkMagnitudeMeanFreq"              
[82] "angletBodyAcclelerometerMeangravity"                          
[83] "angletBodyAcclelerometerJerkMeangravityMean"                  
[84] "angletBodyGyroscopeMeangravityMean"                           
[85] "angletBodyGyroscopeJerkMeangravityMean"                       
[86] "angleXgravityMean"                                            
[87] "angleYgravityMean"                                            
[88] "angleZgravityMean"          