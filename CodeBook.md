***
#Code Book
This code book describes the data, variables and transformations performed to clean up the assignement data and generation of tidy_data.txt

## Original Data Set
Original data set contains information about the activities performed by 30 voluteers within a bracket of 19-48 year old, wearing a smartphone device. Gyroscopes and accelerometers from the device were recorded as well as the activities performed by the volunteers. Activities were catalogued as six different activites: walking, walking upstairs, walking downstairs, sitting and laying.

Further information about the experiment can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Sources
Data for this practice is being recovered from the url defined in the assignement https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

### Data Components
Original data set is compound by different files within a directory tree. Following table can be use as a check-list for uncompressing verification.

working directory | +1 Level            | +2 Levels         | +3 Levels
----------------- | ------------------- | ----------------- | ---------------------
UCI HAR Dataset   | __activity_labels.txt__ |                   |  
                  | __features.txt__        |                   |
                  | features_info.txt   |                   |
                  | README.txt          |                   |
                  | test                | __subject_test.txt__  |
                  |                     | __X_test.txt__        |
                  |                     | __y_test.txt__        |
                  |                     | Inertial Signals  | body_acc_x_test.txt
                  |                     |                   | body_acc_y_test.txt
                  |                     |                   | body_acc_z_test.txt
                  |                     |                   | body_gyro_x_test.txt
                  |                     |                   | body_gyro_y_test.txt
                  |                     |                   | body_gyro_z_test.txt
                  |                     |                   | total_acc_x_test.txt
                  |                     |                   | total_acc_y_test.txt
                  |                     |                   | total_acc_z_test.txt
                  | train               | __subject_train.txt__ |
                  |                     | __X_train.txt__       |
                  |                     | __y_train.txt__       |
                  |                     | Inertial Signals  | body_acc_x_train.txt
                  |                     |                   | body_acc_y_train.txt
                  |                     |                   | body_acc_z_train.txt
                  |                     |                   | body_gyro_x_train.txt
                  |                     |                   | body_gyro_y_train.txt
                  |                     |                   | body_gyro_z_train.txt
                  |                     |                   | total_acc_x_train.txt
                  |                     |                   | total_acc_y_train.txt
                  |                     |                   | total_acc_z_train.txt


Following table show the files were used to create tidy data set:

File (in usage order)    | Description
------------------------ | -----------
subject_text.txt | A subject identificator within the range [1..30] for each of the samples in the test data set.
subject_train.txt | Equivalent file for the training data set.
activity_labels_txt | File containing the equivalence between the coded activity [1..6] and the activity [WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING]
y_test.txt | File containint the code of the activity performed by the subject during data recolection.
y_train.txt | Equivalent file for the training data set.
features.txt | This file contains the names of all parameters measured and/or estimated by the original experiment. Information about these features can be found at __features_info.txt__ file.
X_test.txt | This file contains the values readed and/or computed for each of the features indicated on __features.txt__ file. 
X_train.txt | Equivalent file for the training data set.

## Tidy Data Set
File tidy_data.txt contains the result of merging test and training data sets and calculate the mean of the features that are means or standard deviations of the related measures.

For each entry in the file, the following attributes are included per line:

Attribute | Description
--------- | -----------
activity | Label of the activity performed during sensors reading by the subject (volunteer)
subject | Id of the subject. A value within 1 to 30 range.
tBodyAcc.mean.[X-Y-Z] | Mean time to obtain body acceleration by X-Y-Z axis. 
tBodyAcc.std.[X-Y-Z] | Standard deviation of the time to obtain body acceleration by axis.
tGravityAcc.mean.[X-Y-Z] | Mean time to obtain gravity acceleration by axis. 
tGravityAcc.std.[X-Y-Z] | Standard deviation of the time to obtain gravity acceleration by axis.
tBodyAccJerk.mean.[X-Y-Z]
tBodyAccJerk.std.[X-Y-Z]
tBodyGyro.mean.[X-Y-Z]
tBodyGyro.std.[X-Y-Z]
tBodyGyroJerk.mean.[X-Y-Z]
tBodyGyroJerk.std.[X-Y-Z]
tBodyAccMag.mean
tBodyAccMag.std
tGravityAccMag.mean 
tGravityAccMag.std 
tBodyAccJerkMag.mean 
tBodyAccJerkMag.std 
tBodyGyroMag.mean 
tBodyGyroMag.std 
tBodyGyroJerkMag.mean 
tBodyGyroJerkMag.std 
fBodyAcc.mean.[X-Y-Z]
fBodyAcc.std.[X-Y-Z]
fBodyAcc.meanFreq.[X-Y-Z]
fBodyAccJerk.mean.[X-Y-Z]
fBodyAccJerk.std.[X-Y-Z]
fBodyAccJerk.meanFreq.[X-Y-Z]
fBodyGyro.mean.[X-Y-Z]
fBodyGyro.std.[X-Y-Z]
fBodyGyro.meanFreq.[X-Y-Z]
fBodyAccMag.mean 
fBodyAccMag.std 
fBodyAccMag.meanFreq 
fBodyBodyAccJerkMag.mean 
fBodyBodyAccJerkMag.std 
fBodyBodyAccJerkMag.meanFreq 
fBodyBodyGyroMag.mean 
fBodyBodyGyroMag.std 
fBodyBodyGyroMag.meanFreq 
fBodyBodyGyroJerkMag.mean 
fBodyBodyGyroJerkMag.std 
fBodyBodyGyroJerkMag.meanFreq