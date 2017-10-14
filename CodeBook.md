#CodeBook.md
This file describes the data dictionaries used in datacleaning project.

The clean_data dataset has 81 columns. Names of these columns are:

--tBodyAccMeanX
--tBodyAccMeanY
--tBodyAccMeanZ
--tBodyAccStdX
--tBodyAccStdY
--tBodyAccStdZ
--tGravityAccMeanX
--tGravityAccMeanY
--tGravityAccMeanZ
--tGravityAccStdX
--tGravityAccStdY
--tGravityAccStdZ
--tBodyAccJerkMeanX
--tBodyAccJerkMeanY
--tBodyAccJerkMeanZ
--tBodyAccJerkStdX
--tBodyAccJerkStdY
--tBodyAccJerkStdZ
--tBodyGyroMeanX
--tBodyGyroMeanY
--tBodyGyroMeanZ
--tBodyGyroStdX
--tBodyGyroStdY
--tBodyGyroStdZ
--tBodyGyroJerkMeanX
--tBodyGyroJerkMeanY
--tBodyGyroJerkMeanZ
--tBodyGyroJerkStdX
--tBodyGyroJerkStdY
--tBodyGyroJerkStdZ
--tBodyAccMagMean
--tBodyAccMagStd
--tGravityAccMagMean
--tGravityAccMagStd
--tBodyAccJerkMagMean
--tBodyAccJerkMagStd
--tBodyGyroMagMean
--tBodyGyroMagStd
--tBodyGyroJerkMagMean
--tBodyGyroJerkMagStd
--fBodyAccMeanX
--fBodyAccMeanY
--fBodyAccMeanZ
--fBodyAccStdX
--fBodyAccStdY
--fBodyAccStdZ
--fBodyAccMeanFreqX
--fBodyAccMeanFreqY
--fBodyAccMeanFreqZ
--fBodyAccJerkMeanX
--fBodyAccJerkMeanY
--fBodyAccJerkMeanZ
--fBodyAccJerkStdX
--fBodyAccJerkStdY
--fBodyAccJerkStdZ
--fBodyAccJerkMeanFreqX
--fBodyAccJerkMeanFreqY
--fBodyAccJerkMeanFreqZ
--fBodyGyroMeanX
--fBodyGyroMeanY
--fBodyGyroMeanZ
--fBodyGyroStdX
--fBodyGyroStdY
--fBodyGyroStdZ
--fBodyGyroMeanFreqX
--fBodyGyroMeanFreqY
--fBodyGyroMeanFreqZ
--fBodyAccMagMean
--fBodyAccMagStd
--fBodyAccMagMeanFreq
--fBodyBodyAccJerkMagMean
--fBodyBodyAccJerkMagStd
--fBodyBodyAccJerkMagMeanFreq
--fBodyBodyGyroMagMean
--fBodyBodyGyroMagStd
--fBodyBodyGyroMagMeanFreq
--fBodyBodyGyroJerkMagMean
--fBodyBodyGyroJerkMagStd
--fBodyBodyGyroJerkMagMeanFreq
--activity
--subject



The feature *activity* has the following dictionary attached to its meaning:

--1 WALKING
--2 WALKING_UPSTAIRS
--3 WALKING_DOWNSTAIRS
--4 SITTING
--5 STANDING
--6 LAYING

The feature *subject* though look numeric is actually a category data that takes values in the range 1 through 30,
and indicates which of the person these data are related to.