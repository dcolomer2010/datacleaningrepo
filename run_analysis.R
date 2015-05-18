# 
# run_analysis.R
#
# author: David Colomer Rosel
# date:   May, 2015
#
# Remarks
#  This script performs the following actions:
#     OBJECTIVE 1 - Merges training and testing data sets into a unique one.
#     OBJECTIVE 2 - Extracts only the measurements on the mean and standard deviation for each measurment.
#                   NOTE: This has been interpreted as that mean and std data has to be in the final result
#                         so other data can be kept during intermediate states for convenience.
#     OBJECTIVE 3 - Activity names has to be descriptive
#     OBJECTIVE 4 - Data set has to have descriptive columns data names.
#     OBJECTIVE 5 - Tidy Data Set has to be generated with the average value for each column by activity and
#                   subject.
#
#

# First, we clean up the workspace, just in case.
rm(list=ls())

# Importing required libraries
if (!require("data.table")) {
  install.packages("data.table")
}

if (!require("plyr")) {
  install.packages("plyr")
}

require("data.table")
require("plyr")


## For error containement training and data sets will be procesed separately and then joined.
## Test set is smaller than training, so it will be used first to reduce time in error detection.
## 

## OBJECTIVE 1 - CREATING A CONSOLIDATED DATA SET FROM TRAINING AND TESTING DATA SETS

## TEST SET ROUND
## First, subject identification is loaded.
S_data_test <- read.table("UCI HAR Dataset/test/subject_test.txt",col.names=c("subject"))

# Now it is time for activities.
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt",col.names=c("code","activity"))
Y_data_test <- read.table("UCI HAR Dataset/test/y_test.txt",col.names=c("activity"))
Y_data_test$activity<-activity_labels$activity[Y_data_test$activity] # OBJECTIVE 3 - DESCRIPTIVE ACTIVITY NAMES 


# Now features list is loaded. It will be used to create 
features <- read.table("UCI HAR Dataset/features.txt",col.names=c("code","label"))

# Some munging to be performed to create a list of features.
features$label.munged <- gsub("\\(\\)","",features$label) #Function parenthesis off
features$label.munged <- gsub("-",".",features$label.munged)       #hyphen replaced by dot
features$label.munged <- gsub(",",".",features$label.munged)       #comma replaced by dot
features$label.munged <- gsub("\\(",".",features$label.munged)     #open parenthesis replaced by dot
features$label.munged <- gsub("\\)","",features$label.munged)      #closing parenthesis off


# Features data test loading, plus OBJECTIVE 4
X_data_test <- read.table("UCI HAR Dataset/test/X_test.txt",col.names=features$label.munged)


## TRAINING SET ROUND
## Loading the subjects
S_data_train <- read.table("UCI HAR Dataset/train/subject_train.txt",col.names=c("subject"))
## Loading the activity
Y_data_train <- read.table("UCI HAR Dataset/train/y_train.txt",col.names=c("activity"))
Y_data_train$activity<-activity_labels$activity[Y_data_train$activity]
## Loading the features
X_data_train <- read.table("UCI HAR Dataset/train/X_train.txt",col.names=features$label.munged)

## Combining columns into an integrated test data set
data_test <- cbind(S_data_test,Y_data_test,X_data_test)

## Combining columns into an integrated training data set
data_train <- cbind(S_data_train,Y_data_train,X_data_train)

## Combining training and test data sets.
data <- rbind(data_test,data_train)

## OBJECTIVE 2 - EXTRACT ONLY MEASUREMENTS ON THE MEAN AND SD FOR EACH MEASUREMENT.

clean_data <- data[,sort(c(c(1,2),features$code[grep("mean",features$label.munged)+2]
                           ,features$code[grep("std",features$label.munged)+2]
))] # +2 offset added as features data starts on column 3

#apply mean to all columns grouping by activity and suject
tidy_data <- ddply(clean_data, .(activity,subject), colwise(mean))

# OBJECTIVE 5 - SAVE DATA
write.table(tidy_data,file="tidy_data.txt")

# Cleaning intermediate objects and collecting memory
rm(list=c("S_data_test","S_data_train","X_data_test","X_data_train","Y_data_test","Y_data_train",
          "activity_labels","data","data_test","data_train","features"))

gc()

### END OF SCRIPT
