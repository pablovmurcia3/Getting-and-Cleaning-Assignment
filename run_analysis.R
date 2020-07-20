################################################################################
                                # Run_analysis #                                                                                                                   
################################################################################

        ## Part 0 reading and constructing the data sets ##

# 0.1 read the elements of the test, train and features data

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
features <-as.data.frame(features)

# 0.2 construct the test and train databases

# test database

testDB <- cbind(subject_test, y_test, X_test)

# train database

trainDB <- cbind(subject_train, y_train, X_train)


                        ## Part 1 Merging the data sets ##

# merge datasets
mergeDB <- rbind(testDB,trainDB)

#set column names

colnames(mergeDB) <- c("subject", "activity", features)


                        ## Part 2 Extracting only the measurements ##
                          ## on the mean and standard deviation ##

mergeDBsub <- mergeDB[,grepl("subject|activity|mean[()]|std()", colnames(mergeDB))] 

# Part 3 -- Using descriptive activity names to name the activities in the data set

mergeDBsub$activity <- as.factor(mergeDBsub$activity)

levels(mergeDBsub$activity) <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS" , "SITTING",
                 "STANDING", "LAYING")

# Part 4 -- label the data set with descriptive variable names.



# Part 5 -- creating data set with the average of each variable for each activity and each subject.
