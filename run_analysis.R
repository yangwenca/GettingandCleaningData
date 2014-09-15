library(plyr)

Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(Url,"data.zip", mode = "wb")

## 1 Merges the training and the test sets to create one data set
## I extract data from train and test data set separately, and combine them together in one data set.

test_subject_data <- read.table(unz("data.zip", "UCI HAR Dataset/test/subject_test.txt"), sep="")

test_y_data <- read.table(unz("data.zip", "UCI HAR Dataset/test/y_test.txt"), sep="")

test_x_data <- read.table(unz("data.zip", "UCI HAR Dataset/test/X_test.txt"), sep="")

test <- cbind(test_subject_data, test_y_data, test_x_data)

train_subject_data <- read.table(unz("data.zip", "UCI HAR Dataset/train/subject_train.txt"), sep="")

train_y_data <- read.table(unz("data.zip", "UCI HAR Dataset/train/y_train.txt"), sep="")

train_x_data <- read.table(unz("data.zip", "UCI HAR Dataset/train/X_train.txt"), sep="")

train <- cbind(train_subject_data, train_y_data, train_x_data)

mergedata <- rbind(train, test)

## 3 Uses descriptive activity names to name the activities in the data set
## I add descriptive activity names to the activities in the data set, and also add name for subject and activity column.

featuresfile <- read.table(unz("data.zip", "UCI HAR Dataset/features.txt"), sep="")

colnames(mergedata) <- c("subject", "activity", as.character(featuresfile$V2))

## 2 Extracts only the measurements on the mean and stanard deviation for each measurement with subject and activity column.
mergedata <- mergedata[,c(grep("subject", colnames(mergedata)), grep("activity", colnames(mergedata)), grep("mean", colnames(mergedata)), grep("std", colnames(mergedata)))]

## 4 Appropriately labels the data set with descriptive variable names

labels <- read.table(unz("data.zip", "UCI HAR Dataset/activity_labels.txt"), sep="")
colnum <- which(colnames(data2)=="activity")


for(i in 1:nrow(mergedata)){
    mergedata[i, colnum] <- as.character(labels[mergedata$activity[i],2])
}

data1 <- arrange(mergedata, subject, activity)

write.table(data1, "data1.txt", row.names=FALSE)
## 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variabe for each activity and each subject.

data2 <- ddply(data1, .(subject, activity), .fun=function(x){ colMeans(x[,-c(1,2)]) })


write.table(data2, "data2.txt", row.names=FALSE)