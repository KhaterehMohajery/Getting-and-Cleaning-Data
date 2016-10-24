The following variables  were estimated from signals: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
 

 
The signals are:


body and gravity acceleration signals:

tBodyAcc-XYZ
tGravityAcc-XYZ

body linear acceleration and angular velocity were derived in time to obtain Jerk signals:
tBodyAccJerk-XYZ
tBodyGyroJerk-XYZ

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm:
tBodyGyro-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag

Fast Fourier Transform (FFT) was applied to some of these signals producing:
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag



variables from averaging the signals in a signal window sample on angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean