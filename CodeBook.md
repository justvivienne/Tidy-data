###Code book for the data "tidy.txt"

###Description of data transformation
1. This data "tidy.txt" is produced from dataset containing the following files
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'X_train.txt': Training set.
- 'y_train.txt': Training labels.
- 'X_test.txt': Test set.
- 'y_test.txt': Test labels.
- 'subject_train.txt': Each row identifies the train subject who performed the activity for each window sample. Its range is from 1 to 30.
- 'subject_test.txt': Each row identifies the test subject who performed the activity for each window sample. Its range is from 1 to 30.
2. First, "Test set" and "Training set" are combined by rows.
3. Then,  columns 461 to 502 are removed because there are duplicated column names that interferes with further analysis.
4. "Test labels" and "Train lables" are combined by rows.
5. "Test subjects" and "Train subjects" are combined by rows.
6. The combined test and train sets are subsetted for only the measurements on the mean and standard deviation for each measurement.
7. Subjects, activity labels, and the subsetted dataset are combined by columns.
8. Using the table read from 'activity_labels', the six labels are replaced with descriptive activity names
9. The variables names are modified to be better descriptive, and are listed below.
10. Last, average of each variable for each activity and each subject are derived and stored in an independent data set "tidy.txt".

###Description of the variables
"subject"
 Experimental subjects: a group of 30 volunteers within an age bracket of 19-48 years.
 
"activity"
 Six activities performed in experiments for data collection: walking, walking_upstairs, walking_downstairs, sitting, standing, laying.
 
"tBodyAcc_mean_X"
  Average of the mean time domain body signal from the accelerometer in the X direction for each activity and each subject.
 
"tBodyAcc_mean_Y"
  Average of the mean time domain body signal from the accelerometer in the Y direction for each activity and each subject.

"tBodyAcc_mean_Z"
  Average of the mean time domain body signal from the accelerometer in the Z direction for each activity and each subject.

"tGravityAcc_mean_X"
  Average of the mean time domain gravity signal from the accelerometer in the X direction for each activity and each subject.

"tGravityAcc_mean_Y"
   Average of the mean time domain gravity signal from the accelerometer in the Y direction for each activity and each subject.

"tGravityAcc_mean_Z"
   Average of the mean time domain gravity signal from the accelerometer in the Z direction for each activity and each subject.

"tBodyAccJerk_mean_X"
  Average of the mean time domain body jerk signal from the accelerometer in the X direction for each activity and each subject.

"tBodyAccJerk_mean_Y"
  Average of the mean time domain body jerk signal from the accelerometer in the Y direction for each activity and each subject.

"tBodyAccJerk_mean_Z"
  Average of the mean time domain body jerk signal from the accelerometer in the Z direction for each activity and each subject.

"tBodyGyro_mean_X"
  Average of the mean time domain body signal from the gyroscope in the X direction for each activity and each subject.

"tBodyGyro_mean_Y"
  Average of the mean time domain body signal from the gyroscope in the Y direction for each activity and each subject.

"tBodyGyro_mean_Z"
  Average of the mean time domain body signal from the gyroscope in the Z direction for each activity and each subject.

"tBodyGyroJerk_mean_X"
  Average of the mean time domain body jerk signal from the gyroscope in the X direction for each activity and each subject.

"tBodyGyroJerk_mean_Y"
  Average of the mean time domain body jerk signal from the gyroscope in the Y direction for each activity and each subject.

"tBodyGyroJerk_mean_Z"
  Average of the mean time domain body jerk signal from the gyroscope in the Z direction for each activity and each subject.

"tBodyAccMag_mean"
  Average of the mean time domain body signal magnitude from the accelerometer for each activity and each subject.

"tGravityAccMag_mean"
  Average of the mean time domain gravity signal magnitude from the accelerometer for each activity and each subject.

"tBodyAccJerkMag_mean"
  Average of the mean time domain body jerk signal magnitude from the accelerometer for each activity and each subject.

"tBodyGyroMag_mean"
  Average of the mean time domain body signal magnitude from the gyroscope for each activity and each subject.

"tBodyGyroJerkMag_mean"
  Average of the mean time domain body signal jerk magnitude from the gyroscope for each activity and each subject.

"fBodyAcc_mean_X"
 Average of fourier transform of mean time domain body signal from the accelerometer in the X direction for each activity and each subject.

"fBodyAcc_mean_Y"
 Average of fourier transform of mean time domain body signal from the accelerometer in the Y direction for each activity and each subject.

"fBodyAcc_mean_Z"
 Average of fourier transform of mean time domain body signal from the accelerometer in the Z direction for each activity and each subject.

"fBodyAccJerk_mean_X"
 Average of fourier transform of mean time domain body jerk signal from the accelerometer in the X direction for each activity and each subject.

"fBodyAccJerk_mean_Y"
 Average of fourier transform of mean time domain body signal from the accelerometer in the Y direction for each activity and each subject.

"fBodyAccJerk_mean_Z"
  Average of fourier transform of mean time domain body signal from the accelerometer in the Z direction for each activity and each subject.

"fBodyGyro_mean_X"
 Average of fourier transform of mean time domain body signal from the gyroscope in the X direction for each activity and each subject.

"fBodyGyro_mean_Y"
 Average of fourier transform of mean time domain body signal from the gyroscope in the Y direction for each activity and each subject.

"fBodyGyro_mean_Z"
 Average of fourier transform of mean time domain body signal from the gyroscope in the Z direction for each activity and each subject.

"fBodyAccMag_mean"
 Average of fourier transform of mean time domain body signal magnitude from the accelerometer in the X direction for each activity and each subject.

"tBodyAcc_std_X"
  Average of the standard deviation of time domain body signal from the accelerometer in the X direction for each activity and each subject.

"tBodyAcc_std_Y"
  Average of the standard deviation of time domain body signal from the accelerometer in the Y direction for each activity and each subject.

"tBodyAcc_std_Z"
  Average of the standard deviation of time domain body signal from the accelerometer in the Z direction for each activity and each subject.

"tGravityAcc_std_X"
  Average of the standard deviation of time domain gravity signal from the accelerometer in the X direction for each activity and each subject.

"tGravityAcc_std_Y"
  Average of the standard deviation of time domain gravity signal from the accelerometer in the Y direction for each activity and each subject.

"tGravityAcc_std_Z"
  Average of the standard deviation of time domain gravity signal from the accelerometer in the Z direction for each activity and each subject.

"tBodyAccJerk_std_X"
  Average of the standard deviation of time domain body jerk signal from the accelerometer in the X direction for each activity and each subject.

"tBodyAccJerk_std_Y"
  Average of the standard deviation of time domain body jerk signal from the accelerometer in the Y direction for each activity and each subject.

"tBodyAccJerk_std_Z"
  Average of the standard deviation of time domain body jerk signal from the accelerometer in the Z direction for each activity and each subject.

"tBodyGyro_std_X"
  Average of the standard deviation time domain body signal from the gyroscope in the X direction for each activity and each subject.

"tBodyGyro_std_Y"
  Average of the standard deviation time domain body signal from the gyroscope in the Y direction for each activity and each subject.

"tBodyGyro_std_Z"
  Average of the standard deviation time domain body signal from the gyroscope in the Z direction for each activity and each subject.

"tBodyGyroJerk_std_X"
  Average of the standard deviation time domain body jerk signal from the gyroscope in the X direction for each activity and each subject.

"tBodyGyroJerk_std_Y"
  Average of the standard deviation time domain body jerk signal from the gyroscope in the Y direction for each activity and each subject.

"tBodyGyroJerk_std_Z"
  Average of the standard deviation time domain body jerk signal from the gyroscope in the Z direction for each activity and each subject.

"tBodyAccMag_std"
  Average of the standard deviation time domain body signal magnitude from the accelerometer for each activity and each subject.

"tGravityAccMag_std"
  Average of the standard deviation time domain gravity signal magnitude from the accelerometer for each activity and each subject.

"tBodyAccJerkMag_std"
  Average of the standard deviation time domain body jerk signal magnitude from the accelerometer for each activity and each subject.

"tBodyGyroMag_std"
  Average of the standard deviation time domain body signal magnitude from the gyroscope for each activity and each subject.

"tBodyGyroJerkMag_std"
  Average of the standard deviation time domain body signal jerk magnitude from the gyroscope for each activity and each subject.

"fBodyAcc_std_X"
  Average of the fourier transform of standard deviation of time domain body signal from the accelerometer in the X direction for each activity and each subject.

"fBodyAcc_std_Y"
  Average of the fourier transform of standard deviation of time domain body signal from the accelerometer in the Y direction for each activity and each subject.

"fBodyAcc_std_Z"
  Average of the fourier transform of standard deviation of time domain body signal from the accelerometer in the Z direction for each activity and each subject.

"fBodyAccJerk_std_X"
  Average of the fourier transform of standard deviation of time domain body jerk signal from the accelerometer in the X direction for each activity and each subject.

"fBodyAccJerk_std_Y"
  Average of the fourier transform of standard deviation of time domain body jerk signal from the accelerometer in the Y direction for each activity and each subject.

"fBodyAccJerk_std_Z"
  Average of the fourier transform of standard deviation of time domain body jerk signal from the accelerometer in the Z direction for each activity and each subject.

"fBodyGyro_std_X"
  Average of the fourier transform of standard deviation of time domain body signal from the gyroscope in the X direction for each activity and each subject.

"fBodyGyro_std_Y"
  Average of the fourier transform of standard deviation of time domain body signal from the gyroscope in the Y direction for each activity and each subject.

"fBodyGyro_std_Z"
  Average of the fourier transform of standard deviation of time domain body signal from the gyroscope in the Z direction for each activity and each subject.

"fBodyAccMag_std"
  Average of the fourier transform of standard deviation of time domain body signal magnitude from the accelerometer for each activity and each subject.

