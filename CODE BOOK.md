---
title: "CODE BOOK"
date: "21/7/2020"
output: html_document
---

### Contents

1. instructions to read the final tidy table 
2. interpretation of the rows (observations)
3. interpretation of the columns (variables)

## 1. instructions to read the final tidy table 

in order to read de table, download the table in your current directory and
use the following command:

read.table("finalTidy.txt", header = TRUE)

as you can see, I decided to create the tidy table in the *wide* format. So the
dimension is 180 rows x 68 columns. 



## 2. interpretation of the rows (observations)

Each row is an observation that, in the case of the wide format, corresponds to 
a combination between subject and activity. 

For instance the 180 rows of the table represent all the posible combination between 
the 30 individuals of the study and the 6 activities that they permorm (30 x 6 = 180)

## 3. interpretation of the columns (variables)

The table have 68 variables. The  first two correspond to the subject index (1-30)
and to the activities (1-6). 

The next 66 variables  are averages of some selected features. As I explained in the README and run_analysis.R files, the selected fetures were the ones that contains the meassurments of the mean and the standard deviation. 

SO the finalTidy table contains iformation of the average of multiple features for
each subject and each activity


In the following list the 68 variables of the table:


* "subject"                   
* "activity"                  
* "tBodyAcc.mean.X"
* "tBodyAcc.mean.Y"
* "tBodyAcc.mean.Z" 
* "tBodyAcc.std.X"           
* "tBodyAcc.std.Y"
* "tBodyAcc.std.Z" 
* "tGravityAcc.mean.X"       
* "tGravityAcc.mean.Y" 
* "tGravityAcc.mean.Z"  
* "tGravityAcc.std.X"        
* "tGravityAcc.std.Y"
* "tGravityAcc.std.Z"     
* "tBodyAccJerk.mean.X"      
* "tBodyAccJerk.mean.Y"  
* "tBodyAccJerk.mean.Z"      
* "tBodyAccJerk.std.X"       
* "tBodyAccJerk.std.Y"     
* "tBodyAccJerk.std.Z"    
* "tBodyGyro.mean.X"         
* "tBodyGyro.mean.Y"    
* "tBodyGyro.mean.Z" 
* "tBodyGyro.std.X"          
* "tBodyGyro.std.Y"
* "tBodyGyro.std.Z"
* "tBodyGyroJerk.mean.X"     
* "tBodyGyroJerk.mean.Y"
* "tBodyGyroJerk.mean.Z"
* "tBodyGyroJerk.std.X"      
* "tBodyGyroJerk.std.Y"
* "tBodyGyroJerk.std.Z"
* "tBodyAccMag.mean"         
* "tBodyAccMag.std"
* "tGravityAccMag.mean"
* "tGravityAccMag.std"       
* "tBodyAccJerkMag.mean" 
* "tBodyAccJerkMag.std"
* "tBodyGyroMag.mean"        
* "tBodyGyroMag.std"
* "tBodyGyroJerkMag.mean"  
* "tBodyGyroJerkMag.std"     
* "fBodyAcc.mean.X"          
* "fBodyAcc.mean.Y"   
* "fBodyAcc.mean.Z"          
* "fBodyAcc.std.X"  
* "fBodyAcc.std.Y"         
* "fBodyAcc.std.Z"           
* "fBodyAccJerk.mean.X"  
* "fBodyAccJerk.mean.Y"   
* "fBodyAccJerk.mean.Z"      
* "fBodyAccJerk.std.X"     
* "fBodyAccJerk.std.Y"  
* "fBodyAccJerk.std.Z"       
* "fBodyGyro.mean.X"         
* "fBodyGyro.mean.Y"      
* "fBodyGyro.mean.Z"         
* "fBodyGyro.std.X"          
* "fBodyGyro.std.Y"    
* "fBodyGyro.std.Z"          
* "fBodyAccMag.mean"         
* "fBodyAccMag.std"  
* "fBodyBodyAccJerkMag.mean" 
* "fBodyBodyAccJerkMag.std" 
* "fBodyBodyGyroMag.mean"
* "fBodyBodyGyroMag.std"     
* "fBodyBodyGyroJerkMag.mean"
* "fBodyBodyGyroJerkMag.std" 
