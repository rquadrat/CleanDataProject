## Information about the variables

From the initial 561 variables (The complete list of variables of the feature vectors is available in 'features\.txt') contained
in X\_test\.txt and X\_train\.txt only 66 are kept. These variables contain either a mean() or a std() in their variable name indicating
a mean value or standard deviation signal. These variables are:

+   tBodyAcc-mean()-X
+   tBodyAcc-mean()-Y
+   tBodyAcc-mean()-Z
+   tBodyAcc-std()-X
+   tBodyAcc-std()-Y
+   tBodyAcc-std()-Z
+   tGravityAcc-mean()-X
+   tGravityAcc-mean()-Y
+   tGravityAcc-mean()-Z
+   tGravityAcc-std()-X
+   tGravityAcc-std()-Y
+   tGravityAcc-std()-Z
+   tBodyAccJerk-mean()-X
+   tBodyAccJerk-mean()-Y
+   tBodyAccJerk-mean()-Z
+   tBodyAccJerk-std()-X
+   tBodyAccJerk-std()-Y
+   tBodyAccJerk-std()-Z
+   tBodyGyro-mean()-X
+   tBodyGyro-mean()-Y
+   tBodyGyro-mean()-Z
+   tBodyGyro-std()-X
+   tBodyGyro-std()-Y
+   tBodyGyro-std()-Z
+   tBodyGyroJerk-mean()-X
+   tBodyGyroJerk-mean()-Y
+   tBodyGyroJerk-mean()-Z
+   tBodyGyroJerk-std()-X
+   tBodyGyroJerk-std()-Y
+   tBodyGyroJerk-std()-Z
+   tBodyAccMag-mean()
+   tBodyAccMag-std()
+   tGravityAccMag-mean()
+   tGravityAccMag-std()
+   tBodyAccJerkMag-mean()
+   tBodyAccJerkMag-std()
+   tBodyGyroMag-mean()
+   tBodyGyroMag-std()
+   tBodyGyroJerkMag-mean()
+   tBodyGyroJerkMag-std()
+   fBodyAcc-mean()-X
+   fBodyAcc-mean()-Y
+   fBodyAcc-mean()-Z
+   fBodyAcc-std()-X
+   fBodyAcc-std()-Y
+   fBodyAcc-std()-Z
+   fBodyAccJerk-mean()-X
+   fBodyAccJerk-mean()-Y
+   fBodyAccJerk-mean()-Z
+   fBodyAccJerk-std()-X
+   fBodyAccJerk-std()-Y
+   fBodyAccJerk-std()-Z
+   fBodyGyro-mean()-X
+   fBodyGyro-mean()-Y
+   fBodyGyro-mean()-Z
+   fBodyGyro-std()-X
+   fBodyGyro-std()-Y
+   fBodyGyro-std()-Z
+   fBodyAccMag-mean()
+   fBodyAccMag-std()
+   fBodyBodyAccJerkMag-mean()
+   fBodyBodyAccJerkMag-std()
+   fBodyBodyGyroMag-mean()
+   fBodyBodyGyroMag-std()
+   fBodyBodyGyroJerkMag-mean()
+   fBodyBodyGyroJerkMag-std()

The X\_test\.txt was combined with data from the y\_test\.txt and subject\_test\.txt files.  
The X\_train\.txt was combined with data from the y\_train\.txt and subject\_train\.txt files.  
The resulting data was merged into one dataset containing all available data. 

----

## Data processing

For each proband-activity combination the mean of all available measurements was calulated for all other variables.  
As the variables are a combination of a objective variable, an axis direction and a measured quantity (mean respectively 
standard deviation) the data was tidied using the tidyr package. At the end the following variables are left over:

+   Activity
+   Person
+   Quantity
+   Axis
+   fBodyAcc
+   fBodyAccJerk
+   fBodyAccMag
+   fBodyBodyAccJerkMag
+   fBodyBodyGyroJerkMag
+   fBodyBodyGyroMag
+   fBodyGyro
+   tBodyAcc
+   tBodyAccJerk
+   tBodyAccJerkMag
+   tBodyAccMag
+   tBodyGyro
+   tBodyGyroJerk
+   tBodyGyroJerkMag
+   tBodyGyroMag
+   tGravityAcc
+   tGravityAccMag