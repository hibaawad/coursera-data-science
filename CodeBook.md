##HUMAN ACTIVITY RECOGNITION USING SMARTPHONES

###Introduction

Analysis was performed on data from an experiment which used smartphone sensors to detect the type of
human activity.  The study design section is taken from the original dataset, and describes the experiments.

###Study Design
Human Activity Recognition Using Smartphones Dataset

Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory

DITEN - Universit? degli Studi di Genova.

Via Opera Pia 11A, I-16145, Genoa, Italy.

activityrecognition@smartlab.ws

www.smartlab.ws


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.


###Explanation of Data Transformations

1. Data was taken from the UCI HAR Dataset, which can be downloaded here:
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

   The following files were used:

   train/X_train.txt

   train/y_train.txt

   train/subject_train.txt

   test/X_test.txt

   test/y_test.txt

   test/subject_test.txt

   activity_labels.txt


   The first 3 files consist of training data.  The remaining 3 files consist of test data.
   The X_train.txt and X_test.txt files consist of the 561 features collected.
   The y_train.txt and y_test.txt files are corresponding activity codes.
   The subject_train.txt and subject_test.txt files are the IDs of subjects performing the activities.
   The activity_labels.txt file maps the activity codes to the actual activity.

   The included run_analysis.R script performs all the analysis and save the output to "tidy_summary.txt".
   The output is an average value of each variable (feature) for each subject/activity pair.

2. All the input files were read with a fixed width format reader.  

3. The training and test data were merged.  In the data frames, testing data was placed on "top" of the tarining data.
   This results in data, activity, and subject.

4. Mean and standard deviation measurements were extracted from the feature data.  This was done by looking at the original dataset's features.txt file and taking only feature names which had "mean" or "std" in the name.

5. The feature activity and subject data were combined into a single data set: final_data
   Data consists of the feature columns, followed by the activity, and then the subject column.

6. Descriptive names based on feature were given to all of the columns in the data set.  For the feature columns, names were manually created based on names from the original dataset's features.txt file. 

7. Activity values were changed from a code to a descriptive name.  The activity_labels.txt file from the original UCI Har Dataset contains the transformations.

8. Data was summarized by averaging each feature's value for all subject/activity combinations.

9. The final, tidy data set was written to a file "result.txt".  This data is tidy because each variable (the average feature value) is in a separate column.   In addition, this average feature value is observed for a subject/activity pair.  Each subject/activity pair is in a different row.  The Subject and Activity
   columns have this data.


### Codebook

#### Original data set

tBodyAcc-mean()-X

       Time Domain Body Acceleration Mean in the X direction

             -1..1  normalized value in gravity units 'g'


tBodyAcc-mean()-Y

       Time Domain Body Acceleration Mean in the Y direction

             -1..1  normalized value in gravity units 'g'


tBodyAcc-mean()-Z

       Time Domain Body Acceleration Mean in the Z direction

             -1..1  normalized value in gravity units 'g'


tBodyAcc-std()-X

       Time Domain Body Acceleration Standard Deviation in the X direction

             -1..1  normalized value in gravity units 'g'


tBodyAcc-std()-Y

       Time Domain Body Acceleration Standard Deviation in the Y direction

             -1..1  normalized value in gravity units 'g'


tBodyAcc-std()-Z

       Time Domain Body Acceleration Standard Deviation in the Z direction

             -1..1  normalized value in gravity units 'g'


tGravityAcc-mean()-X

       Time Domain Gravity Acceleration Mean in the X direction

             -1..1  normalized value in gravity units 'g'


tGravityAcc-mean()-Y

       Time Domain Gravity Acceleration Mean in the Y direction

             -1..1  normalized value in gravity units 'g'


tGravityAcc-mean()-Z

       Time Domain Gravity Acceleration Mean in the Z direction

             -1..1  normalized value in gravity units 'g'


tGravityAcc-std()-X

       Time Domain Gravity Acceleration Standard Deviation in the X direction

             -1..1  normalized value in gravity units 'g'


tGravityAcc-std()-Y

       Time Domain Gravity Acceleration Standard Deviation in the Y direction

             -1..1  normalized value in gravity units 'g'

tGravityAcc-std()-Z

       Time Domain Gravity Acceleration Standard Deviation in the Z direction

             -1..1  normalized value in gravity units 'g'

tBodyAccJerk-mean()-X

       Time Domain Body Acceleration Jerk Mean in the X direction

             -1..1  normalized value

tBodyAccJerk-mean()-Y

       Time Domain Body Acceleration Jerk Mean in the Y direction

             -1..1  normalized value


tBodyAccJerk-mean()-Z

       Time Domain Body Acceleration Jerk Mean in the Z direction

             -1..1  normalized value


tBodyAccJerk-std()-X

       Time Domain Body Acceleration Jerk Standard Deviation in the X direction  

             -1..1  normalized value 


tBodyAccJerk-std()-Y

       Time Domain Body Acceleration Jerk Standard Deviation in the Y direction

             -1..1  normalized value


tBodyAccJerk-std()-Z

       Time Domain Body Acceleration Jerk Standard Deviation in the Z direction

             -1..1  normalized value


tBodyGyro-mean()-X

       Time Domain Body Gyroscope Mean in X direction

             -1..1  normalized value in radians/second


tBodyGyro-mean()-Y

       Time Domain Body Gyroscope Mean in Y direction

             -1..1  normalized value in radians/second


tBodyGyro-mean()-Z

       Time Domain Body Gyroscope Mean in Z direction

             -1..1  normalized value in radians/second


tBodyGyro-std()-X

       Time Domain Body Gyroscope Standard Deviation in X direction

             -1..1  normalized value in radians/second


tBodyGyro-std()-Y

       Time Domain Body Gyroscope Standard Deviation in Y direction

             -1..1  normalized value in radians/second


tBodyGyro-std()-Z

       Time Domain Body Gyroscope Standard Deviation in Z direction

             -1..1  normalized value in radians/second


tBodyGyroJerk-mean()-X

       Time Domain Body Gyroscope Jerk Mean in X direction

             -1..1  normalized value


tBodyGyroJerk-mean()-Y

       Time Domain Body Gyroscope Jerk Mean in Y direction

             -1..1  normalized value


tBodyGyroJerk-mean()-Z

       Time Domain Body Gyroscope Jerk Mean in Z direction

             -1..1  normalized value


tBodyGyroJerk-std()-X

       Time Domain Body Gyroscope Jerk Standard Deviation in X direction

             -1..1  normalized value


tBodyGyroJerk-std()-Y

       Time Domain Body Gyroscope Jerk Standard Deviation in Y direction

             -1..1  normalized value


tBodyGyroJerk-std()-Z

       Time Domain Body Gyroscope Jerk Standard Deviation in Z direction

             -1..1  normalized value


tBodyAccMag-mean()

       Time Domain Body Acceleration Magnitude Mean

             -1..1  normalized value of Euclidean distance


tBodyAccMag-std()

       Time Domain Body Acceleration Magnitude Standard Deviation

             -1..1  normalized value of Euclidean distance


tGravityAccMag-mean()

       Time Domain Gravity Acceleration Magnitude Mean

             -1..1 normalized value in gravity units 'g'


tGravityAccMag-std()

       Time Domain Gravity Acceleration Magnitude Standard Deviation

             -1..1 normalized value in gravity units 'g'


tBodyAccJerkMag-mean()

       Time Domain Body Acceleration Jerk Magnitude Mean

             -1..1 normalized value


tBodyAccJerkMag-std()

       Time Domain Body Acceleration Jerk Magnitude Standard Deviation

             -1..1 normalized value


tBodyGyroMag-mean()

       Time Domain Body Gyroscope Magnitude Mean

             -1..1  normalized value of Euclidean distance


tBodyGyroMag-std()

       Time Domain Body Gyroscope Magnitude Standard Deviation

             -1..1  normalized value of Euclidean distance


tBodyGyroJerkMag-mean()

       Time Domain Body Gyroscope Jerk Magnitude Mean

             -1..1  normalized value of Euclidean distance


tBodyGyroJerkMag-std()

       Time Domain Body Gyroscope Jerk Magnitude Standard Deviation

             -1..1  normalized value of Euclidean distance


fBodyAcc-mean()-X

       Fast Fourier Transform of Body Acceleration Mean in the X direction

             -1..1 normalized value in gravity units 'g'


fBodyAcc-mean()-Y

       Fast Fourier Transform of Body Acceleration Mean in the Y direction

             -1..1 normalized value in gravity units 'g'


fBodyAcc-mean()-Z

       Fast Fourier Transform of Body Acceleration Mean in the Z direction

             -1..1 normalized value in gravity units 'g'


fBodyAcc-std()-X

       Fast Fourier Transform of Body Acceleration Standard Deviation in the X direction

             -1..1 normalized value in gravity units 'g'


fBodyAcc-std()-Y

       Fast Fourier Transform of Body Acceleration Standard Deviation in the Y direction

             -1..1 normalized value in gravity units 'g'


fBodyAcc-std()-Z

       Fast Fourier Transform of Body Acceleration Standard Deviation in the Z direction

             -1..1 normalized value in gravity units 'g'


fBodyAccJerk-mean()-X

       Fast Fourier Transform of Body Acceleration Jerk Mean in the X direction

             -1..1 normalized value


fBodyAccJerk-mean()-Y

       Fast Fourier Transform of Body Acceleration Jerk Mean in the Y direction

             -1..1 normalized value


fBodyAccJerk-mean()-Z

       Fast Fourier Transform of Body Acceleration Jerk Mean in the Z direction

             -1..1 normalized value


fBodyAccJerk-std()-X

       Fast Fourier Transform of Body Acceleration Jerk Standard Deviation in the X direction

             -1..1 normalized value


fBodyAccJerk-std()-Y

       Fast Fourier Transform of Body Acceleration Jerk Standard Deviation in the Y direction

             -1..1 normalized value


fBodyAccJerk-std()-Z

       Fast Fourier Transform of Body Acceleration Jerk Mean in the Z direction

             -1..1 normalized value


fBodyGyro-mean()-X

       Fast Fourier Transform of Body Gyroscope Mean in the X direction

             -1..1 normalized value in radians/second


fBodyGyro-mean()-Y

       Fast Fourier Transform of Body Gyroscope Mean in the Y direction

             -1..1 normalized value in radians/second


fBodyGyro-mean()-Z

       Fast Fourier Transform of Body Gyroscope Mean in the Z direction

             -1..1 normalized value in radians/second


fBodyGyro-std()-X

       Fast Fourier Transform of Body Gyroscope Standard Deviation in the X direction

             -1..1 normalized value in radians/second


fBodyGyro-std()-Y

       Fast Fourier Transform of Body Gyroscope Standard Deviation in the Y direction

             -1..1 normalized value in radians/second


fBodyGyro-std()-Z

       Fast Fourier Transform of Body Gyroscope Standard Deviation in the Z direction

             -1..1 normalized value in radians/second


fBodyAccMag-mean()

       Fast Fourier Transform of Body Acceleration Magnitude Mean

             -1..1 normalized value of Euclidean distance


fBodyAccMag-std()

       Fast Fourier Transform of Body Acceleration Magnitude Standard Deviation

             -1..1 normalized value of Euclidean distance


fBodyBodyAccJerkMag-mean()

       Fast Fourier Transform of Body Body Acceleration Jerk Magnitude Mean

             -1..1 normalized value


fBodyBodyAccJerkMag-std()

       Fast Fourier Transform of Body Body Acceleration Jerk Magnitude Standard Deviation

             -1..1 normalized value


fBodyBodyGyroMag-mean()

       Fast Fourier Transform of Body Body Gyroscope Magnitude Mean

             -1..1 normalized value of Euclidean distance


fBodyBodyGyroMag-std()

       Fast Fourier Transform of Body Body Gyroscope Magnitude Standard Deviation

             -1..1 normalized value of Euclidean distance


fBodyBodyGyroJerkMag-mean()

       Fast Fourier Transform of Body Body Gyroscope Jerk Magnitude Mean

             -1..1 normalized value of Euclidean distance


fBodyBodyGyroJerkMag-std()

       Fast Fourier Transform of Body Body Gyroscope Jerk Magnitude Standard Deviation

             -1..1 normalized value of Euclidean distance


