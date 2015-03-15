# Assumes that the uncompressed UCI HAR data files reside in the current 
# working directory with the following structure:
# ./test/ - contains the test data
# ./train/ - contains the training data

# Assumes that the stringr and dplyr packages are installed
library(stringr)
library(dplyr)
library(reshape2)

# Read in the feature list to use as column names
# This is Step 4 in the course assignment but it is easier to tackle
# the column naming issues early
features <- read.table("features.txt", header=FALSE, sep = "", 
                     col.names = c("id", "name"), stringsAsFactors=FALSE)
featureCount <- length(unique(features$name))
# Clean up the feature names to be useful in a data frame
# Change all parentheses, commas and dashes to underscores 
features$name <- gsub("\\(|\\)|,|-", "_", features$name)
# Condense multiple underscores in one
features$name <- gsub("_+", "_", features$name)
# Remove underscores at the end of the string
features$name <- gsub("_$", "", features$name)

# Making sure that gsub did not duplicate a unique feature name
if (featureCount != length(unique(features$name))) {
        stop("Processing error: Duplication of feature names in features.txt")
}

# Read in the data and merge the test and training data sets using the cleaned
# up column names.  This is Step 1 of the assignment
xdata <- read.table("./test/x_test.txt", header=FALSE, sep="", 
                    col.names=features$name, stringsAsFactors = FALSE)
xtrain <- read.table("./train/x_train.txt", header=FALSE, sep="", 
                     col.names=features$name, stringsAsFactors = FALSE)
xdata <- rbind(xdata, xtrain) 
# Extract only the measurements on the mean and standard deviation for 
# each measurement.  This is Step 2 of the assignment

xdata <- select(xdata, grep("*[mM]ean|[sS]td", features$name))

ydata <- read.table("./test/y_test.txt", header=FALSE, col.names = "activity", 
                  stringsAsFactors = FALSE)
ytrain <- read.table("./train/y_train.txt", header=FALSE, col.names = "activity", 
                   stringsAsFactors = FALSE)
ydata <- rbind(ydata, ytrain)

subjects <- read.table("./test/subject_test.txt", header=FALSE, 
                     col.names = "subject", stringsAsFactors = FALSE)
subjtrain <- read.table("./train/subject_train.txt", header=FALSE, 
                      col.names = "subject", stringsAsFactors = FALSE)
subjects <- rbind(subjects, subjtrain)

# Read in the activity labels.  This is Step 3 of the assignment
labels <- read.table("./activity_labels.txt", header=FALSE, sep="", 
                   col.names = c("id", "activity"), stringsAsFactors = FALSE)
# Just my preference of lower case labels for readability
labels$activity <- tolower(labels$activity)
# Mutate the activity column from an id to a descriptive name
ydata <- mutate(ydata, activity = labels$activity[ydata$activity])

# Column bind the data and arrange
data <- cbind(subjects, ydata, xdata)
data <- arrange(data, subject, activity)

# Melt the data and calculate average of each variable
dataCast <- data %>% 
        melt(id=c("subject","activity"),measure.vars=3:88) %>%
        dcast(subject + activity ~ variable, mean) 

write.table(dataCast, "averaged_HAR_data.txt", row.names = FALSE)

# Tidy up the work space
rm(xdata,ydata,xtrain,ytrain, subjtrain, labels, subjects, data)