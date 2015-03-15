Getting and Cleaning Data Project
=================================

Script Execution
----------------

Download and unzip "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 

Set working directory to "UCI HAR Dataset" directory within the unzipped folders

Place "run_analysis.R" in the working directory

Execute in r: source("run_analysis.R")

Assumptions
-----------

This script assumes that the uncompressed UCI HAR data files reside in
the current working directory with the following subdirectories

"./test/" - contains the test data

"./train/" - contains the training data

And that the following packages have been installed

-   stringr
-   dplyr
-   reshape2

Script processing steps
-----------------------

This script does the following:

1.  Reads in the list of features from "feature.txt", converts
    processing unfriendly characters ('(', ')', '-') into underscores
    '_' and compacts multiple underscores.

2.  Reads in the test ("./test/x_test.txt", "./test/y_test.txt",
    "./test/subject_test.txt") and train data sets
    ("./train/x_train.txt", "./train/y_train.txt",
    "./train/subject_train.txt") and row binds each type of data (x, y,
    subject). For the x data set, the compacted features list defined in
    Step 1 as variable names is used to extract a reduced subset of
    variables for the mean and standard deviation of each measurement.

3.  Reads in the activity lables from "./activity_labels.txt" and
    converts the y activity identifier into an activity label.

4.  Column binds the x, y and subject data sets into a combined data set

5.  Copies the data set from step 4 and creates a data set containing
    the averages of all measurements in the reduce mean and standard
    deviation dataset.

6.  Write the averaged data into "average_HAR_data.txt" in a wide data
    format
