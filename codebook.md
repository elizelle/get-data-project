DATA DICTIONARY - 'Means_of_features.txt'
========================================================
STUDY DESIGN

'Means_of_features.txt' is a tidy data set created with the 'run_analysis.R' script to manipulate the Human Activity Recognition Using Smartphones Dataset found at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The 'run_analysis.R' script:

1. Creates a list of features which represent the mean or standard deviation of the measurement using 'features.txt'. It was assumed that features with the meanFreq of the measurement did not meet that criteria, so those were not included.
2. Creates three tables for test data and combines those tables into one table:
  a. Features data (only those features identified in step 1)
  b. Subject data
  c. Activity code data
3. Creates three tables for training data and combines those tables into one table:
  a. Features data (only those features identified in step 1)
  b. Subject data
  c. Activity code data
4. Combines the test and the training tables to create one data set.
5. Replaces the activity codes with descriptive names for the activities performed using 'activity_labels.txt'
6. Labels the data set with descriptive variable names. 

After running the 'run_analysis.R' script, the tidy data set can be downloaded with the following command:

  read.table('Means_of_features.txt', header = TRUE)

========================================================
CODE BOOK

The variables in the 'Means_of_features.txt' dataset are:

subject   (integer)   
  Subject who performed the activity for each sample.
  Range: 1 - 30  

activity  (factor)
  Descriptive name of activity being performed during each sample.
  Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

The remaining variables represent the average (mean) for the subject and activity of several features. The features come from accelerometer and gyroscope 3-axial raw signals taken while the subjects performed the activities listed above. See 'UCI HAR Dataset/feature_info.txt' in the original data set for more information on the capture of the feature data. 

All feature variables contain numeric data that has been normalized, with a range is -1 to 1.

Average_tBodyAccmeanX     Average mean time domain body acceleration signal from the accelerometer X-axis 

Average_tBodyAccmeanY     Average mean time domain body acceleration signal from the accelerometer Y-axis 

Average_tBodyAccmeanZ     Average mean time domain body acceleration signal from the accelerometer Z-axis 

Average_tBodyAccstdX      Average standard deviation of time domain body acceleration signal from the accelerometer X-axis 

Average_tBodyAccstdY      Average standard deviation of time domain body acceleration signal from the accelerometer Y-axis 

Average_tBodyAccstdZ      Average standard deviation of time domain body acceleration signal from the accelerometer Z-axis 

Average_tGravityAccmeanX  Average mean time domain gravity acceleration signal from the accelerometer X-axis

Average_tGravityAccmeanY  Average mean time domain gravity acceleration signal from the accelerometer Y-axis

Average_tGravityAccmeanZ  Average mean time domain gravity acceleration signal from the accelerometer Z-axis

Average_tGravityAccstdX   Average standard deviation of time domain gravity acceleration signal from the accelerometer X-axis

Average_tGravityAccstdY   Average standard deviation of time domain gravity acceleration signal from the accelerometer Y-axis

Average_tGravityAccstdZ   Average standard deviation of time domain gravity acceleration signal from the accelerometer Z-axis

Average_tBodyAccJerkmeanX Average mean time domain body linear acceleration signal from the accelerometer X-axis 

Average_tBodyAccJerkmeanY Average mean time domain body linear acceleration signal from the accelerometer Y-axis

Average_tBodyAccJerkmeanZ Average mean time domain body linear acceleration signal from the accelerometer Z-axis

Average_tBodyAccJerkstdX  Average standard deviation of time domain body linear acceleration signal from the accelerometer X-axis

Average_tBodyAccJerkstdY  Average standard deviation of time domain body linear acceleration signal from the accelerometer Y-axis

Average_tBodyAccJerkstdZ  Average standard deviation of time domain body linear acceleration signal from the accelerometer Z-axis

Average_tBodyGyromeanX    Average mean time domain body acceleration signal from the gyroscope X-axis 

Average_tBodyGyromeanY    Average mean time domain body acceleration signal from the gyroscope Y-axis 

Average_tBodyGyromeanZ    Average mean time domain body acceleration signal from the gyroscope Z-axis 

Average_tBodyGyrostdX     Average standard deviation of time domain body acceleration signal from the gyroscope X-axis 

Average_tBodyGyrostdY     Average standard deviation of time domain body acceleration signal from the gyroscope Y-axis 

Average_tBodyGyrostdZ     Average standard deviation of time domain body acceleration signal from the gyroscope Z-axis 

Average_tBodyGyroJerkmeanX  Average mean time domain body angular velocity signal from the gyroscope X-axis

Average_tBodyGyroJerkmeanY  Average mean time domain body angular velocity signal from the gyroscope Y-axis

Average_tBodyGyroJerkmeanZ  Average mean time domain body angular velocity signal from the gyroscope Z-axis

Average_tBodyGyroJerkstdX   Average standard deviation of time domain body angular velocity signal from the gyroscope X-axis

Average_tBodyGyroJerkstdY   Average standard deviation of time domain body angular velocity signal from the gyroscope Y-axis

Average_tBodyGyroJerkstdZ   Average standard deviation of time domain body angular velocity signal from the gyroscope Z-axis

Average_tBodyAccMagmean   Average mean magnitude of time domain body acceleration signal from the accelerometer 

Average_tBodyAccMagstd    Average standard deviation of magnitude of time domain body acceleration signal from the accelerometer

Average_tGravityAccMagmean  Average mean magnitude of time domain gravity acceleration signal from the accelerometer

Average_tGravityAccMagstd   Average standard deviation of magnitude of time domain gravity acceleration signal from the accelerometer

Average_tBodyAccJerkMagmean Average mean magnitude of time domain body linear acceleration signal from the accelerometer

Average_tBodyAccJerkMagstd  Average standard deviation of magnitude of time domain body linear acceleration signal from the accelerometer

Average_tBodyGyroMagmean    Average mean magnitude of time domain body acceleration signal from the gyroscope

Average_tBodyGyroMagstd     Average standard deviation of magnitude of time domain body acceleration signal from the gyroscope

Average_tBodyGyroJerkMagmean  Average mean magnitude of time domain body angular velocity signal from the gyroscope

Average_tBodyGyroJerkMagstd   Average standard deviation of magnitude of time domain body angular velocity signal from the gyroscope

Average_fBodyAccmeanX       Average mean frequency domain body acceleration signal from the accelerometer X-axis

Average_fBodyAccmeanY       Average mean frequency domain body acceleration signal from the accelerometer Y-axis

Average_fBodyAccmeanZ       Average mean frequency domain body acceleration signal from the accelerometer Z-axis

Average_fBodyAccstdX        Average standard deviation of frequency domain body acceleration signal from the accelerometer X-axis

Average_fBodyAccstdY        Average standard deviation of frequency domain body acceleration signal from the accelerometer X-axis

Average_fBodyAccstdZ        Average standard deviation of frequency domain body acceleration signal from the accelerometer X-axis

Average_fBodyAccJerkmeanX   Average mean frequency domain body linear acceleration signal from the accelerometer X-axis

Average_fBodyAccJerkmeanY   Average mean frequency domain body linear acceleration signal from the accelerometer Y-axis

Average_fBodyAccJerkmeanZ   Average mean frequency domain body linear acceleration signal from the accelerometer Z-axis

Average_fBodyAccJerkstdX    Average standard deviation of frequency domain body linear acceleration signal from the accelerometer X-axis

Average_fBodyAccJerkstdY    Average standard deviation of frequency domain body linear acceleration signal from the accelerometer Y-axis

Average_fBodyAccJerkstdZ    Average standard deviation of frequency domain body linear acceleration signal from the accelerometer Z-axis

Average_fBodyGyromeanX      Average mean frequency domain body acceleration signal from the gyroscope X-axis

Average_fBodyGyromeanY      Average mean frequency domain body acceleration signal from the gyroscope Y-axis

Average_fBodyGyromeanZ      Average mean frequency domain body acceleration signal from the gyroscope Z-axis

Average_fBodyGyrostdX       Average standard deviation of frequency domain body acceleration signal from the gyroscope X-axis

Average_fBodyGyrostdY       Average standard deviation of frequency domain body acceleration signal from the gyroscope Y-axis

Average_fBodyGyrostdZ       Average standard deviation of frequency domain body acceleration signal from the gyroscope Z-axis

Average_fBodyAccMagmean     Average mean magnitude of frequency domain body acceleration signal from the accelerometer 

Average_fBodyAccMagstd      Average standard deviation of magnitude of frequency domain body acceleration signal from the accelerometer

Average_fBodyBodyAccJerkMagmean   Average mean magnitude of frequency domain body linear acceleration signal from the accelerometer

Average_fBodyBodyAccJerkMagstd    Average standard deviation of magnitude of frequency domain body linear acceleration signal from the accelerometer

Average_fBodyBodyGyroMagmean      Average mean magnitude of frequency domain body acceleration signal from the gyroscope

Average_fBodyBodyGyroMagstd       Average standard deviation of magnitude of frequency domain body acceleration signal from the gyroscope

Average_fBodyBodyGyroJerkMagmean  Average mean magnitude of frequency domain body angular velocity signal from the gyroscope

Average_fBodyBodyGyroJerkMagstd   Average standard deviation of magnitude of frequency domain body angular velocity signal from the gyroscope

Note that the names for the last six columns (Average_fBodyBodyAccJerkMagmean, Average_fBodyBodyAccJerkMagstd, Average_fBodyBodyGyroMagmean, Average_fBodyBodyGyroMagstd, Average_fBodyBodyGyroJerkMagmean, Average_fBodyBodyGyroJerkMagstd) do not match the naming convention found in 'UCI HAR Dataset/feature_info.txt'. It is assumed that the second 'Body' in the names is a mistake in the original data set. The descriptive definitions of these figures are based on the assumption of only one 'Body' in the names.
