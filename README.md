getdatacoursera
===============
run_analysis.R
--
Takes a Samsung data set available at 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

And produces a tidy data set consisting of a Subject Id (presumably an individual being observed), an Activity type, and an average of the measurements of mean and standard deviation data from the original set, summarized for each Subject and activity type.

Column 1: Subject Id (numeric, 1-30)
Column 2: Activity (LAYING, SITTING, STANDING, WALKING, WALKING\_DOWNSTAIRS, WALKING\_UPSTAIRS)
Column 3: tBodyAcc-mean()-X
Column 4: tBodyAcc-mean()-Y
Column 5: tBodyAcc-mean()-Z
Column 6: tBodyAcc-std()-X
Column 7: tBodyAcc-std()-Y
Column 8: tBodyAcc-std()-Z
Column 9: tGravityAcc-mean()-X
Column 10: tGravityAcc-mean()-Y
Column 11: tGravityAcc-mean()-Z
Column 12: tGravityAcc-std()-X
Column 13: tGravityAcc-std()-Y
Column 14: tGravityAcc-std()-Z
Column 15: tBodyAccJerk-mean()-X
Column 16: tBodyAccJerk-mean()-Y
Column 17: tBodyAccJerk-mean()-Z
Column 18: tBodyAccJerk-std()-X
Column 19: tBodyAccJerk-std()-Y
Column 20: tBodyAccJerk-std()-Z
Column 21: tBodyGyro-mean()-X
Column 22: tBodyGyro-mean()-Y
Column 23: tBodyGyro-mean()-Z
Column 24: tBodyGyro-std()-X
Column 25: tBodyGyro-std()-Y
Column 26: tBodyGyro-std()-Z
Column 27: tBodyGyroJerk-mean()-X
Column 28: tBodyGyroJerk-mean()-Y
Column 29: tBodyGyroJerk-mean()-Z
Column 30: tBodyGyroJerk-std()-X
Column 31: tBodyGyroJerk-std()-Y
Column 32: tBodyGyroJerk-std()-Z
Column 33: tBodyAccMag-mean()
Column 34: tBodyAccMag-std()
Column 35: tGravityAccMag-mean()
Column 36: tGravityAccMag-std()
Column 37: tBodyAccJerkMag-mean()
Column 38: tBodyAccJerkMag-std()
Column 39: tBodyGyroMag-mean()
Column 40: tBodyGyroMag-std()
Column 41: tBodyGyroJerkMag-mean()
Column 42: tBodyGyroJerkMag-std()
Column 43: fBodyAcc-mean()-X
Column 44: fBodyAcc-mean()-Y
Column 45: fBodyAcc-mean()-Z
Column 46: fBodyAcc-std()-X
Column 47: fBodyAcc-std()-Y
Column 48: fBodyAcc-std()-Z
Column 49: fBodyAcc-meanFreq()-X
Column 50: fBodyAcc-meanFreq()-Y
Column 51: fBodyAcc-meanFreq()-Z
Column 52: fBodyAccJerk-mean()-X
Column 53: fBodyAccJerk-mean()-Y
Column 54: fBodyAccJerk-mean()-Z
Column 55: fBodyAccJerk-std()-X
Column 56: fBodyAccJerk-std()-Y
Column 57: fBodyAccJerk-std()-Z
Column 58: fBodyAccJerk-meanFreq()-X
Column 59: fBodyAccJerk-meanFreq()-Y
Column 60: fBodyAccJerk-meanFreq()-Z
Column 61: fBodyGyro-mean()-X
Column 62: fBodyGyro-mean()-Y
Column 63: fBodyGyro-mean()-Z
Column 64: fBodyGyro-std()-X
Column 65: fBodyGyro-std()-Y
Column 66: fBodyGyro-std()-Z
Column 67: fBodyGyro-meanFreq()-X
Column 68: fBodyGyro-meanFreq()-Y
Column 69: fBodyGyro-meanFreq()-Z
Column 70: fBodyAccMag-mean()
Column 71: fBodyAccMag-std()
Column 72: fBodyAccMag-meanFreq()
Column 73: fBodyBodyAccJerkMag-mean()
Column 74: fBodyBodyAccJerkMag-std()
Column 75: fBodyBodyAccJerkMag-meanFreq()
Column 76: fBodyBodyGyroMag-mean()
Column 77: fBodyBodyGyroMag-std()
Column 78: fBodyBodyGyroMag-meanFreq()
Column 79: fBodyBodyGyroJerkMag-mean()
Column 80: fBodyBodyGyroJerkMag-std()
Column 81: fBodyBodyGyroJerkMag-meanFreq()
