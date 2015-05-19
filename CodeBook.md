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
