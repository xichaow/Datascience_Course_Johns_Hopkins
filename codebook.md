# Data
## These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag


## The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation 

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values. 

iqr(): Interquartile range 

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal 

kurtosis(): kurtosis of the frequency domain signal 

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

angle(): Angle between to vectors.


## Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean


## Also we add two columns in the new dataset, with names Subject and Activity:
Subject: 30 volunteers within an age bracket of 19-48 years. Each one represents with number 1 to 30.

Activity: 6 kinds of activities including WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING


# Calculated Units
dttest: data from X_test.txt

dttrain: data from X_train.txt

dtsubject_train: data from subject_train.txt

dtsubject_test: data from subject_test.txt

dtlable_train: data from y_train.txt

dtlable_test: data from y_test.txt

activity: data from activity_labels.txt

features: data from features.txt

dttest_train: combine data from test and train

dtsubjecttest_train: combine subjects from test and train

dtlabletest_train: combine activities from test and train

index: vector with mean and standard deviation

dttest_train_new: select columns with index

dt_names: select column names from features

dt: combine original data with suject and activities data

tidydt: store the mean value group by subject and activity.


