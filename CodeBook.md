---
title: "CodeBook.md"
author: "Tyrone Wong"
date: "Wednesday, February 18, 2015"
output: html_document
---

This document describes the variables contained in the "Final Summary Table.txt" data set.
This file was created from the SummaryTable object that was created in the run_analysis.R script.

For a decription of the raw data set and experimental design please refer to:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Refer to the README.txt file included in the zip file downloaded in the run_analysis.R script for a explanation of the experiments.

Refer to the features_info.txt included in the zip file downloaded in the run_analysis.R script for an explanation of the measurements taken.

Refer to the features.txt file included in the zip file downloaded in the run_analysis.R script for an explanation of the full set of measurements taken.

The variables described in this document were processed from the raw data from the above experiment obtained from the following link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following is a description of the variables contained in the data set "Final Summary Table.txt". 

 [1] "Subject"                                             

This is the integer number indicating which Subject performed the test. Values range from 1 to 30.

 [2] "Activity" 

This is the factor variable with six levels and corresponding labels that show which activity was performed during each test.

A subset of the full set of measurements was taken in Variables 3 to 88 that are the means and standard deviations for each respective measurment as indicated by the variable name.

Mean measurements are indicated with the word "mean" in the variable name and standard deviations are indicated with the word "std" in the name.

The meanFreq and "angle mean" measurements were included in the data set but can be ignored by the user of the date at their discretion.

 [3] "Measurement.1 tBodyAcc-mean()-X"                     
 [4] "Measurement.2 tBodyAcc-mean()-Y"                     
 [5] "Measurement.3 tBodyAcc-mean()-Z"                     
 [6] "Measurement.41 tGravityAcc-mean()-X"                 
 [7] "Measurement.42 tGravityAcc-mean()-Y"                 
 [8] "Measurement.43 tGravityAcc-mean()-Z"                 
 [9] "Measurement.81 tBodyAccJerk-mean()-X"                
[10] "Measurement.82 tBodyAccJerk-mean()-Y"                
[11] "Measurement.83 tBodyAccJerk-mean()-Z"                
[12] "Measurement.121 tBodyGyro-mean()-X"                  
[13] "Measurement.122 tBodyGyro-mean()-Y"                  
[14] "Measurement.123 tBodyGyro-mean()-Z"                  
[15] "Measurement.161 tBodyGyroJerk-mean()-X"              
[16] "Measurement.162 tBodyGyroJerk-mean()-Y"              
[17] "Measurement.163 tBodyGyroJerk-mean()-Z"              
[18] "Measurement.201 tBodyAccMag-mean()"                  
[19] "Measurement.214 tGravityAccMag-mean()"               
[20] "Measurement.227 tBodyAccJerkMag-mean()"              
[21] "Measurement.240 tBodyGyroMag-mean()"                 
[22] "Measurement.253 tBodyGyroJerkMag-mean()"             
[23] "Measurement.266 fBodyAcc-mean()-X"                   
[24] "Measurement.267 fBodyAcc-mean()-Y"                   
[25] "Measurement.268 fBodyAcc-mean()-Z"                   
[26] "Measurement.294 fBodyAcc-meanFreq()-X"               
[27] "Measurement.295 fBodyAcc-meanFreq()-Y"               
[28] "Measurement.296 fBodyAcc-meanFreq()-Z"               
[29] "Measurement.345 fBodyAccJerk-mean()-X"               
[30] "Measurement.346 fBodyAccJerk-mean()-Y"               
[31] "Measurement.347 fBodyAccJerk-mean()-Z"               
[32] "Measurement.373 fBodyAccJerk-meanFreq()-X"           
[33] "Measurement.374 fBodyAccJerk-meanFreq()-Y"           
[34] "Measurement.375 fBodyAccJerk-meanFreq()-Z"           
[35] "Measurement.424 fBodyGyro-mean()-X"                  
[36] "Measurement.425 fBodyGyro-mean()-Y"                  
[37] "Measurement.426 fBodyGyro-mean()-Z"                  
[38] "Measurement.452 fBodyGyro-meanFreq()-X"              
[39] "Measurement.453 fBodyGyro-meanFreq()-Y"              
[40] "Measurement.454 fBodyGyro-meanFreq()-Z"              
[41] "Measurement.503 fBodyAccMag-mean()"                  
[42] "Measurement.513 fBodyAccMag-meanFreq()"              
[43] "Measurement.516 fBodyBodyAccJerkMag-mean()"          
[44] "Measurement.526 fBodyBodyAccJerkMag-meanFreq()"      
[45] "Measurement.529 fBodyBodyGyroMag-mean()"             
[46] "Measurement.539 fBodyBodyGyroMag-meanFreq()"         
[47] "Measurement.542 fBodyBodyGyroJerkMag-mean()"         
[48] "Measurement.552 fBodyBodyGyroJerkMag-meanFreq()"     
[49] "Measurement.555 angle(tBodyAccMean,gravity)"         
[50] "Measurement.556 angle(tBodyAccJerkMean),gravityMean)"
[51] "Measurement.557 angle(tBodyGyroMean,gravityMean)"    
[52] "Measurement.558 angle(tBodyGyroJerkMean,gravityMean)"
[53] "Measurement.559 angle(X,gravityMean)"                
[54] "Measurement.560 angle(Y,gravityMean)"                
[55] "Measurement.561 angle(Z,gravityMean)"                
[56] "Measurement.4 tBodyAcc-std()-X"                      
[57] "Measurement.5 tBodyAcc-std()-Y"                      
[58] "Measurement.6 tBodyAcc-std()-Z"                      
[59] "Measurement.44 tGravityAcc-std()-X"                  
[60] "Measurement.45 tGravityAcc-std()-Y"                  
[61] "Measurement.46 tGravityAcc-std()-Z"                  
[62] "Measurement.84 tBodyAccJerk-std()-X"                 
[63] "Measurement.85 tBodyAccJerk-std()-Y"                 
[64] "Measurement.86 tBodyAccJerk-std()-Z"                 
[65] "Measurement.124 tBodyGyro-std()-X"                   
[66] "Measurement.125 tBodyGyro-std()-Y"                   
[67] "Measurement.126 tBodyGyro-std()-Z"                   
[68] "Measurement.164 tBodyGyroJerk-std()-X"               
[69] "Measurement.165 tBodyGyroJerk-std()-Y"               
[70] "Measurement.166 tBodyGyroJerk-std()-Z"               
[71] "Measurement.202 tBodyAccMag-std()"                   
[72] "Measurement.215 tGravityAccMag-std()"                
[73] "Measurement.228 tBodyAccJerkMag-std()"               
[74] "Measurement.241 tBodyGyroMag-std()"                  
[75] "Measurement.254 tBodyGyroJerkMag-std()"              
[76] "Measurement.269 fBodyAcc-std()-X"                    
[77] "Measurement.270 fBodyAcc-std()-Y"                    
[78] "Measurement.271 fBodyAcc-std()-Z"                    
[79] "Measurement.348 fBodyAccJerk-std()-X"                
[80] "Measurement.349 fBodyAccJerk-std()-Y"                
[81] "Measurement.350 fBodyAccJerk-std()-Z"                
[82] "Measurement.427 fBodyGyro-std()-X"                   
[83] "Measurement.428 fBodyGyro-std()-Y"                   
[84] "Measurement.429 fBodyGyro-std()-Z"                   
[85] "Measurement.504 fBodyAccMag-std()"                   
[86] "Measurement.517 fBodyBodyAccJerkMag-std()"           
[87] "Measurement.530 fBodyBodyGyroMag-std()"              
[88] "Measurement.543 fBodyBodyGyroJerkMag-std()"
