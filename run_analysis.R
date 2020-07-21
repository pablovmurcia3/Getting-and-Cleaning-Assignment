################################################################################
                                # Run_analysis #                                                                                                                   
################################################################################


           ## Part 0 downloading, reading and constructing the datasets ##

# download the data with the following code
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="UCI HAR dataset.zip",method="curl") # it takes some minutes depending on your internet connection
unzip(zipfile="UCI HAR dataset.zip")

# read test, train and features data
# test data
X_test <- read.table("./UCI HAR dataset/test/X_test.txt")
subject_test <-read.table("./UCI HAR dataset/test/subject_test.txt")
y_test <- read.table("./UCI HAR dataset/test/y_test.txt")

# train data
X_train <- read.table("./UCI HAR dataset/train/X_train.txt")
subject_train <-read.table("./UCI HAR dataset/train/subject_train.txt")
y_train <- read.table("./UCI HAR dataset/train/y_train.txt")

# features
features <- read.table("./UCI HAR dataset/features.txt")[,2]

# construct the test and train databases

# test dataset

testDB <- cbind(subject_test, y_test, X_test)

# train dataset

trainDB <- cbind(subject_train, y_train, X_train)


                            ## PART 1 Merging the datasets ##

# merge datasets
mergeDB <- rbind(testDB,trainDB)

#set column names

colnames(mergeDB) <- c("subject", "activity", features)


                       ## PART 2 Extracting only the measurements ##
                         ## on the mean and standard deviation ##

mergeDBsub <- mergeDB[, grepl("subject|activity|mean[()]|std()", colnames(mergeDB))] 


                    ## PART 3 Using descriptive activity names ##
                    ## to name the activities in the data set ##


mergeDBsub$activity <- as.factor(mergeDBsub$activity)

levels(mergeDBsub$activity) <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS" , "SITTING",
                 "STANDING", "LAYING")

mergeDBsub$activity <- tolower(mergeDBsub$activity)


                   ## PART 4: label the data set with descriptive ## 
                              ## variable names ## 


# the data already have column names, so I limited to clean the names

colnames(mergeDBsub) <- gsub("-",".", colnames(mergeDBsub))

colnames(mergeDBsub) <- gsub("()","", fixed = TRUE, colnames(mergeDBsub))


                 ## PART 5: creating data set with the average of ##
               ## each variable for each activity and each subject ##

library(dplyr) # load the dplyr package in order to manipulate the merged data set

finalTidy <- mergeDBsub %>% group_by(subject, activity) %>% summarize_all(mean)



write.table(finalTidy, file = "finalTidy.txt", row.name=FALSE)

##### Don´t forget to set Header = TRUE in the read.table command :) ###########
