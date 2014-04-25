## CodeBook for the programming assinment script run_analysis()

The final tidy data set contains average values for all mean() and std() variables from the raw data set for each subject and each activity. Hence it contains 6 * 30 = 180 rows(observations) and 68 columns(variables), including the Subject and Activity variables

Subject - Each row identifies the subject who performed the activity. Its range is from 1 to 30.

Activity - Each row identifies the activity performed by the subject. Its values are one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

The rest of the columns are aggregations of mean, std measurements are 68 variables as listed below.
[1] "Subject"                     "Activity"                   
 [3] "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
 [5] "tBodyAcc-mean()-Z"           "tGravityAcc-mean()-X"       
 [7] "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"       
 [9] "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
[11] "tBodyAccJerk-mean()-Z"       "tBodyGyro-mean()-X"         
[13] "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"         
[15] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
[17] "tBodyGyroJerk-mean()-Z"      "tBodyAccMag-mean()"         
[19] "tGravityAccMag-mean()"       "tBodyAccJerkMag-mean()"     
[21] "tBodyGyroMag-mean()"         "tBodyGyroJerkMag-mean()"    
[23] "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[25] "fBodyAcc-mean()-Z"           "fBodyAccJerk-mean()-X"      
[27] "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"      
[29] "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[31] "fBodyGyro-mean()-Z"          "fBodyAccMag-mean()"         
[33] "fBodyBodyAccJerkMag-mean()"  "fBodyBodyGyroMag-mean()"    
[35] "fBodyBodyGyroJerkMag-mean()" "tBodyAcc-std()-X"           
[37] "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
[39] "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"        
[41] "tGravityAcc-std()-Z"         "tBodyAccJerk-std()-X"       
[43] "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
[45] "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"          
[47] "tBodyGyro-std()-Z"           "tBodyGyroJerk-std()-X"      
[49] "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[51] "tBodyAccMag-std()"           "tGravityAccMag-std()"       
[53] "tBodyAccJerkMag-std()"       "tBodyGyroMag-std()"         
[55] "tBodyGyroJerkMag-std()"      "fBodyAcc-std()-X"           
[57] "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
[59] "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"       
[61] "fBodyAccJerk-std()-Z"        "fBodyGyro-std()-X"          
[63] "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
[65] "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-std()"  
[67] "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-std()" 
