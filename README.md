***
# Read Me - Getting and Cleaning Data Course Project

This is the Readme file for the peer assesment grading project of "Getting and Cleaning Data" course by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD 
In the following sections 

## Project Assignement  

This project assignement is seeking to demostrate the student capability to collect, work with and cleaning a data set. Tidy dataset will be used later for analysis.  

Original data should be found at working directory.

## Repo content

You should find the following files in the repository:

1. __Readme.md__ -- This file
2. __CodeBook.md__ -- The code book describing the variables, data and transformations/operations performed to clean up the data.
3. __run_analysis.R__ -- The R script that processes the original data to create the tidy data set. 

***
## Execution steps
In order to process the original data into the tidy data set, following steps should be follow:

### Prerequisites
1. __run_analysis.R__ requires the following to be executed:
    + A valid instalation of R (v3.x.x). Please refer to _http://cran.r-project.org/_ for it.
    + An updated version of __data.table__ and __plyr__ libraries. If any of these libraries is not installed, script will automatically install it and loaded for convenience. 
2. __Download compresed original data from its source__ -- Original data is located at _https://d396gusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip_. 
    + Once the data is downloaded, __extract compresed data into the working directory__ -- Zip file has to be unzipped to have the complete dataset. 
    + Please verify that all files are unzipped. A directory called _UCI HAR Dataset_ has to be created. 
    + Please refer to __CodeBook__ to veriry the completion of this step.

### Execution
1. __Init a R session on your working directory__ or change to the working directory (__setwd()__) to execute script.
2. At session prompt, type ___source ("run_analysis.R")___. 
```{r}
source("run_analysis.R")
```
This will load and launch the execution of the script.
3. If everything it's ok, a file __tidy_data.txt__ has been added to the working directory.