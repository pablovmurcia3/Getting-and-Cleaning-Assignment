
## **README**

## **Getting and Cleaning Data Assignment**

This is a repo containing the material for the final assignment of the Getting and Cleaning Data Course

In the repo menu you will find the following files:

* **run_analysis.R**: the code that processes the raw data into the finalTidy table
* **CodeBook.md**: a file explaining the components of the finalTidy table
* **finalTidy.txt**: the final output of the assignment (also uploaded in Coursera's    plataform) 

Some important points:

## Read the finalTidy.txt

The finalTidy table contains information of the average of multiple features for
each subject and each activity.

To read it please use the following code:

finalTidy <- read.table("finalTidy.txt", header = TRUE)

make sure to have the file in your working directory. 


## Download the raw data

in order to reproduce the code of the run_analysis.R it´s necessary to download 
the raw data and put it in your working directory. You can do this using the three first rows in the code (take some minutes) or by your own manually.

the raw data contains information of sensors (accelerometer and gyroscope of Samsung Galaxy II) that monitored 30 subjects performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

## Description of Code

In short, the code process the raw data to get a tidy table in a *wide* format.

in order to do it, the code is divided into 6 parts. In the first part, the raw data is downloaded and read. Then, the different parts of the data (X_test/train, subject_test/train, y_test/train) are organized in two specific data sets, train data set and test data set.

After that, the code followed the instructions of the assignment. These are:

Part 1:Merges the training and the test sets to create one data set.

Part 2:Extracts only the measurements on the mean and standard deviation for each measurement.

Part 3:Uses descriptive activity names to name the activities in the data set

Part 4:Appropriately labels the data set with descriptive variable names.

Part 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


