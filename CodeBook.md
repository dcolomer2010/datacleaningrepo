***
#Code Book
This code book describes the data, variables and transformations performed to clean up the assignement data and generation of tidy_data.txt

## Original Data Set
Original data set contains information about the activities performed by 30 voluteers within a bracket of 19-48 year old, wearing a smartphone device. Gyroscopes and accelerometers from the device were recorded as well as the activities performed by the volunteers. Activities were catalogued as six different activites: walking, walking upstairs, walking downstairs, sitting and laying.

Further information about the experiment can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Sources
Data for this practice is being recovered from the url defined in the assignement https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

### Data Components
Original data set is compound by different files within a directory tree

working directory | +1 Level            | +2 Levels        | +3 Levels
----------------- | ------------------- | ---------------- | ---------------------
UCI HAR Dataset   | activity_labels.txt |                  |  
                  | features.txt        |                  |
                  | features_info.txt   |                  |
                  | README.txt          |                  |
                  | test                | subject_test.txt |
                  |                     | X_test.txt       |
                  |                     | y_test.txt       |
                  |                     | Inertial Signals | body_acc_x_test.txt
                  |                     |                  | body_acc_y_test.txt
                  |                     |                  | body_acc_z_test.txt
                  |                     |                  | body_gyro_x_test.txt
                  |                     |                  | body_gyro_y_test.txt
                  |                     |                  | body_gyro_z_test.txt
                  |                     |                  | total_acc_x_test.txt
                  |                     |                  | total_acc_y_test.txt
                  |                     |                  | total_acc_z_test.txt
                  | train

