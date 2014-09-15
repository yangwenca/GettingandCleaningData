GettingandCleaningData
======================
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names. 
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

run_analysis.R script Explanation
=============================================

In summary, I follow the instruction to get and clean the data.

Step 1: Download the file from the link and store it in the laptop

Step 2: Merge the training and the test sets to create one data set
  - Read data from the training and the test sets separately, including subject_test.txt, X_test.txt and y_test.txt
  - Combine two data sets to one data set

Step 3: Use descriptive activity names to name the activities in the data set.
  - Read features.txt file to get the descriptive activity names, in order to use them to name the data set
  - Use "subject", "activity" and the descriptive activity names to name the column of data set
  
Step 4: Extract only the measurements on the mean and standard deviation for each measurement
  - Grep the column with name mean and std, also grep the subject and activity column to clean the data
  
Step 5: Appropritately labels the data set with descriptive variable names
  - Read activity labels from activity_labels.txt file
  - Use for loop to change the labels the data set with descriptive variable names instead of numerical names
  - Arrange the dataset based on subject and activity
  - Save this dataset as data1.txt, there are 10299 rows and 81 columns in the data set
  
Step 6: A second, independent tidy data set with the average of each variable for each activity and each subject.
  - Use data1 from previous step, apply column mean function for each activity and each subject to find the average of each variable
  - Save this dataset as data2.txt, there are 180 rows and 81 columns in the data set.
  - 180 rows is correct, because there are 30 subjects and 6 activities.
  