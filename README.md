# Project-Get-Clean-Data

############################################################
Disclaimer:
Some of the details about the experiment have been copied directly 
from README.txt file provided in this project.
############################################################



      The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

      The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

      Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

      Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

      These signals were used to estimate mean and standard deviation (std) of all the above mentioned features for each pattern. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

      In this dataset, we evaluated the average of mean (and std) estimates of all the above mentioned features for each activity and each subject.

=================================================================

The column of this dataset are:

1. Subject     - - - representing people who are tagged from 1 to 30
2. Activity      - - - representing one of the six activities mention above.
3. tBodyAcc-mean()-X       - - -  representing the average of mean estimates of signal “tBodyAcc” in X direction for the respective subject doing respective activity in the respective row.
4  tBodyAcc-mean()-Y       - - - representing the average of mean estimates of signal “tBodyAcc” in Y direction for the respective subject doing respective activity in the respective row.
5  tBodyAcc-mean()-Z       - - - representing the average of mean estimates of signal “tBodyAcc” in Z direction for the respective subject doing respective activity in the respective row.
6  tGravityAcc-mean()-X       - - -  representing the average of mean estimates of signal “tGravityAcc” in X direction for the respective subject doing respective activity in the respective row.

Similar explanation for all of the following columns:

7  tGravityAcc-mean()-Y
8  tGravityAcc-mean()-Z
9  tBodyAccJerk-mean()-X
10 tBodyAccJerk-mean()-Y
11 tBodyAccJerk-mean()-Z
12 tBodyGyro-mean()-X
13 tBodyGyro-mean()-Y
14 tBodyGyro-mean()-Z
15 tBodyGyroJerk-mean()-X
16 tBodyGyroJerk-mean()-Y
17 tBodyGyroJerk-mean()-Z
18 tBodyAccMag-mean()
19 tGravityAccMag-mean()
20 tBodyAccJerkMag-mean()
21 tBodyGyroMag-mean()
22 tBodyGyroJerkMag-mean()
23 fBodyAcc-mean()-X
24 fBodyAcc-mean()-Y
25 fBodyAcc-mean()-Z
26 fBodyAccJerk-mean()-X
27 fBodyAccJerk-mean()-Y
28 fBodyAccJerk-mean()-Z
29 fBodyGyro-mean()-X
30 fBodyGyro-mean()-Y
31 fBodyGyro-mean()-Z
32 fBodyAccMag-mean()
33 fBodyBodyAccJerkMag-mean()
34 fBodyBodyGyroMag-mean()
35 fBodyBodyGyroJerkMag-mean()

36 tBodyAcc-std()-X           - - representing the average of standard deviation(std) estimates of signal “tBodyAcc” in X direction for the respective subject doing respective activity in the respective row.

37 tBodyAcc-std()-Y
38 tBodyAcc-std()-Z
39 tGravityAcc-std()-X
40 tGravityAcc-std()-Y
41 tGravityAcc-std()-Z
42 tBodyAccJerk-std()-X
43 tBodyAccJerk-std()-Y
44 tBodyAccJerk-std()-Z
45 tBodyGyro-std()-X
46 tBodyGyro-std()-Y
47 tBodyGyro-std()-Z
48 tBodyGyroJerk-std()-X
49 tBodyGyroJerk-std()-Y
50 tBodyGyroJerk-std()-Z
51 tBodyAccMag-std()
52 tGravityAccMag-std()
53 tBodyAccJerkMag-std()
54 tBodyGyroMag-std()
55 tBodyGyroJerkMag-std()
56 fBodyAcc-std()-X
57 fBodyAcc-std()-Y
58 fBodyAcc-std()-Z
59 fBodyAccJerk-std()-X
60 fBodyAccJerk-std()-Y
61 fBodyAccJerk-std()-Z
62 fBodyGyro-std()-X
63 fBodyGyro-std()-Y
64 fBodyGyro-std()-Z
65 fBodyAccMag-std()
66 fBodyBodyAccJerkMag-std()
67 fBodyBodyGyroMag-std()
68 fBodyBodyGyroJerkMag-std()


===============================================

This dataset includes the following files:
— ‘README.md’
— ‘tidyData.txt’

===============================================





