# Project-Get-Clean-Data

	The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we 
captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50 Hz. 

	The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals
tAcc-XYZ and t-Gyro-XYZ. These time domain signals ((prefix 't' to denote time) were captured at a constant rate 
of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner
frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity 
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner 
frequency of 0.3 Hz.

	Similarly, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated
using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

	Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ,
fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate
frequency domain signals).
      
	These signals were used to estimate mean and standard deviation(std) of all the above mentioned features for
each pattern. In the raw data, many other variables were also estimated from these signals. Since in tidyData,
we do not include that, we do not mention here. '-XYZ' is used to denote 3-axial signals in the X, Y and Z
directions.

	In the raw data, all the subjects(volunteers) are divided into two groups and their data is recorded
in two different sets - training dataset and test dataset. The raw dataset has all the data in the following files:


- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels. 

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
	
	The steps we followed to make a tidyData are:

1. 	While reading training set 'X_train.txt' and test set 'X_test.txt', we provided these data the column names 		from table features.txt.
2. 	While reading training label 'Y_train.txt' and test label 'Y_test.txt', we provided this data the column 		names 'Activity Label'.
3. 	While reading subject identifier data 'subject_train.txt' and 'subject_test.txt', we provided both the column 	names 'Subject'.
4. 	Next, we combine all the data read from 'X_train.txt', 'Y_train.txt' and 'subject_train.txt' columnwise and 		call it trainData.
5. 	Similarly, we combine all data from 'X_test.txt', 'Y_test.txt' and 'subject_test.txt' columnwise and call it 	testData.
6. 	We combine all trainData and testData rowwise and call it data_merged.
7. 	The data 'data_merged' has only activity labels but not the activities. So we merge 'data_merged' with data 		obtained from reading 'activity_labels.txt'. So now 'data_merged' has a new column named 'Activity'.
8. 	Next, we arrange the 'data_merged' in ascending order of Subject and Activity_Label.
9. 	Insted of changing activity labels with activities, we added another column named 'Activity'. So now, we get 	rid of the column 'Activity_Labels' by selecting all the columns other than this.
10. 	Now we need to extract only those columns which evaluated the mean and standard deviation of all the above		mentioned features. To do this, we find the indices of the columns whose names contain 'mean()' or 'std().		In this way, we select columns whose indicies we just found including 'Subject' and 'Activity' columns		and call this new data 'data_extracted'.
11. 	In the last step, we want to get a tidy set with average of each variable for each activity and each subject.		To achieve this, we first melt data using 'Subject' and 'Activity' as ID and call it 'meltData'. Then, we		dcast 'meltData' with mean as its argument function and we call it 'tidyData'.

      

===============================================

This dataset includes the following files:
— 'README.md'
- 'CodeBook.md'
— 'tidyData.txt'

===============================================





