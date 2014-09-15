Code Book
======================
In the Code Book, it describes the variables, the data, and any work to clean up the data.

A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the original data: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


### Data1
Data1 is the data set stored in the filename data1.txt. There are 10299 rows and 81 columns in the data set after several data processing step as explained below. Each row repesents a single experiment one subject and one activity. The column only contains mean and standard deviation variables.

Step 1: Merge the training and the test sets to create one data set
  - Read data from the training and the test sets separately, including subject_test.txt, X_test.txt and y_test.txt
  - Combine two data sets to one data set

Step 2: Use descriptive activity names to name the activities in the data set.
  - Read features.txt file to get the descriptive activity names, in order to use them to name the data set
  - Use "subject", "activity" and the descriptive activity names to name the column of data set
  
Step 3: Extract only the measurements on the mean and standard deviation for each measurement
  - Grep the column with name mean and std, also grep the subject and activity column to clean the data
  
Step 4: Appropritately labels the data set with descriptive variable names
  - Read activity labels from activity_labels.txt file
  - Use for loop to change the labels the data set with descriptive variable names instead of numerical names
  - Arrange the dataset based on subject and activity
  - Save this dataset as data1.txt, there are 10299 rows and 81 columns in the data set
  
Column variables:

 [1] "subject"                        
 [2] "activity"                       
 [3] "tBodyAcc-mean()-X"              
 [4] "tBodyAcc-mean()-Y"              
 [5] "tBodyAcc-mean()-Z"              
 [6] "tGravityAcc-mean()-X"           
 [7] "tGravityAcc-mean()-Y"           
 [8] "tGravityAcc-mean()-Z"           
 [9] "tBodyAccJerk-mean()-X"          
[10] "tBodyAccJerk-mean()-Y"          
[11] "tBodyAccJerk-mean()-Z"          
[12] "tBodyGyro-mean()-X"             
[13] "tBodyGyro-mean()-Y"             
[14] "tBodyGyro-mean()-Z"             
[15] "tBodyGyroJerk-mean()-X"         
[16] "tBodyGyroJerk-mean()-Y"         
[17] "tBodyGyroJerk-mean()-Z"         
[18] "tBodyAccMag-mean()"             
[19] "tGravityAccMag-mean()"          
[20] "tBodyAccJerkMag-mean()"         
[21] "tBodyGyroMag-mean()"            
[22] "tBodyGyroJerkMag-mean()"        
[23] "fBodyAcc-mean()-X"              
[24] "fBodyAcc-mean()-Y"              
[25] "fBodyAcc-mean()-Z"              
[26] "fBodyAcc-meanFreq()-X"          
[27] "fBodyAcc-meanFreq()-Y"          
[28] "fBodyAcc-meanFreq()-Z"          
[29] "fBodyAccJerk-mean()-X"          
[30] "fBodyAccJerk-mean()-Y"          
[31] "fBodyAccJerk-mean()-Z"          
[32] "fBodyAccJerk-meanFreq()-X"      
[33] "fBodyAccJerk-meanFreq()-Y"      
[34] "fBodyAccJerk-meanFreq()-Z"      
[35] "fBodyGyro-mean()-X"             
[36] "fBodyGyro-mean()-Y"             
[37] "fBodyGyro-mean()-Z"             
[38] "fBodyGyro-meanFreq()-X"         
[39] "fBodyGyro-meanFreq()-Y"         
[40] "fBodyGyro-meanFreq()-Z"         
[41] "fBodyAccMag-mean()"             
[42] "fBodyAccMag-meanFreq()"         
[43] "fBodyBodyAccJerkMag-mean()"     
[44] "fBodyBodyAccJerkMag-meanFreq()" 
[45] "fBodyBodyGyroMag-mean()"        
[46] "fBodyBodyGyroMag-meanFreq()"    
[47] "fBodyBodyGyroJerkMag-mean()"    
[48] "fBodyBodyGyroJerkMag-meanFreq()"
[49] "tBodyAcc-std()-X"               
[50] "tBodyAcc-std()-Y"               
[51] "tBodyAcc-std()-Z"               
[52] "tGravityAcc-std()-X"            
[53] "tGravityAcc-std()-Y"            
[54] "tGravityAcc-std()-Z"            
[55] "tBodyAccJerk-std()-X"           
[56] "tBodyAccJerk-std()-Y"           
[57] "tBodyAccJerk-std()-Z"           
[58] "tBodyGyro-std()-X"              
[59] "tBodyGyro-std()-Y"              
[60] "tBodyGyro-std()-Z"              
[61] "tBodyGyroJerk-std()-X"          
[62] "tBodyGyroJerk-std()-Y"          
[63] "tBodyGyroJerk-std()-Z"          
[64] "tBodyAccMag-std()"              
[65] "tGravityAccMag-std()"           
[66] "tBodyAccJerkMag-std()"          
[67] "tBodyGyroMag-std()"             
[68] "tBodyGyroJerkMag-std()"         
[69] "fBodyAcc-std()-X"               
[70] "fBodyAcc-std()-Y"               
[71] "fBodyAcc-std()-Z"               
[72] "fBodyAccJerk-std()-X"           
[73] "fBodyAccJerk-std()-Y"           
[74] "fBodyAccJerk-std()-Z"           
[75] "fBodyGyro-std()-X"              
[76] "fBodyGyro-std()-Y"              
[77] "fBodyGyro-std()-Z"              
[78] "fBodyAccMag-std()"              
[79] "fBodyBodyAccJerkMag-std()"      
[80] "fBodyBodyGyroMag-std()"         
[81] "fBodyBodyGyroJerkMag-std()"


### Data2
Data1 is the data set stored in the filename data2.txt. There are 180 rows and 81 columns in the data set after several data processing step as explained below. Each row represents the average of each variable for each subject and each activity. There are 30 subjects and 6 activities, thus the row is 180. Column variables are the same as data1.

Step 5: A second, independent tidy data set with the average of each variable for each activity and each subject.
  - Use data1 from previous step, apply column mean function for each activity and each subject to find the average of each variable
  - Save this dataset as data2.txt, there are 180 rows and 81 columns in the data set.
  - 180 rows is correct, because there are 30 subjects and 6 activities.


Column variables:

 [1] "subject"                        
 [2] "activity"                       
 [3] "tBodyAcc-mean()-X"              
 [4] "tBodyAcc-mean()-Y"              
 [5] "tBodyAcc-mean()-Z"              
 [6] "tGravityAcc-mean()-X"           
 [7] "tGravityAcc-mean()-Y"           
 [8] "tGravityAcc-mean()-Z"           
 [9] "tBodyAccJerk-mean()-X"          
[10] "tBodyAccJerk-mean()-Y"          
[11] "tBodyAccJerk-mean()-Z"          
[12] "tBodyGyro-mean()-X"             
[13] "tBodyGyro-mean()-Y"             
[14] "tBodyGyro-mean()-Z"             
[15] "tBodyGyroJerk-mean()-X"         
[16] "tBodyGyroJerk-mean()-Y"         
[17] "tBodyGyroJerk-mean()-Z"         
[18] "tBodyAccMag-mean()"             
[19] "tGravityAccMag-mean()"          
[20] "tBodyAccJerkMag-mean()"         
[21] "tBodyGyroMag-mean()"            
[22] "tBodyGyroJerkMag-mean()"        
[23] "fBodyAcc-mean()-X"              
[24] "fBodyAcc-mean()-Y"              
[25] "fBodyAcc-mean()-Z"              
[26] "fBodyAcc-meanFreq()-X"          
[27] "fBodyAcc-meanFreq()-Y"          
[28] "fBodyAcc-meanFreq()-Z"          
[29] "fBodyAccJerk-mean()-X"          
[30] "fBodyAccJerk-mean()-Y"          
[31] "fBodyAccJerk-mean()-Z"          
[32] "fBodyAccJerk-meanFreq()-X"      
[33] "fBodyAccJerk-meanFreq()-Y"      
[34] "fBodyAccJerk-meanFreq()-Z"      
[35] "fBodyGyro-mean()-X"             
[36] "fBodyGyro-mean()-Y"             
[37] "fBodyGyro-mean()-Z"             
[38] "fBodyGyro-meanFreq()-X"         
[39] "fBodyGyro-meanFreq()-Y"         
[40] "fBodyGyro-meanFreq()-Z"         
[41] "fBodyAccMag-mean()"             
[42] "fBodyAccMag-meanFreq()"         
[43] "fBodyBodyAccJerkMag-mean()"     
[44] "fBodyBodyAccJerkMag-meanFreq()" 
[45] "fBodyBodyGyroMag-mean()"        
[46] "fBodyBodyGyroMag-meanFreq()"    
[47] "fBodyBodyGyroJerkMag-mean()"    
[48] "fBodyBodyGyroJerkMag-meanFreq()"
[49] "tBodyAcc-std()-X"               
[50] "tBodyAcc-std()-Y"               
[51] "tBodyAcc-std()-Z"               
[52] "tGravityAcc-std()-X"            
[53] "tGravityAcc-std()-Y"            
[54] "tGravityAcc-std()-Z"            
[55] "tBodyAccJerk-std()-X"           
[56] "tBodyAccJerk-std()-Y"           
[57] "tBodyAccJerk-std()-Z"           
[58] "tBodyGyro-std()-X"              
[59] "tBodyGyro-std()-Y"              
[60] "tBodyGyro-std()-Z"              
[61] "tBodyGyroJerk-std()-X"          
[62] "tBodyGyroJerk-std()-Y"          
[63] "tBodyGyroJerk-std()-Z"          
[64] "tBodyAccMag-std()"              
[65] "tGravityAccMag-std()"           
[66] "tBodyAccJerkMag-std()"          
[67] "tBodyGyroMag-std()"             
[68] "tBodyGyroJerkMag-std()"         
[69] "fBodyAcc-std()-X"               
[70] "fBodyAcc-std()-Y"               
[71] "fBodyAcc-std()-Z"               
[72] "fBodyAccJerk-std()-X"           
[73] "fBodyAccJerk-std()-Y"           
[74] "fBodyAccJerk-std()-Z"           
[75] "fBodyGyro-std()-X"              
[76] "fBodyGyro-std()-Y"              
[77] "fBodyGyro-std()-Z"              
[78] "fBodyAccMag-std()"              
[79] "fBodyBodyAccJerkMag-std()"      
[80] "fBodyBodyGyroMag-std()"         
[81] "fBodyBodyGyroJerkMag-std()" 
