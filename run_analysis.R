## Downloading and unzipping the dataset if it's not already done
if(!file.exists("dataset.zip")){
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "dataset.zip")
}
if(!file.exists("UCI HAR Dataset")){
    unzip("dataset.zip")
}

##Reading data
features <- read.table("./UCI HAR Dataset/features.txt")
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test <- read.table("./UCI HAR Dataset/test//X_test.txt")
train <- read.table("./UCI HAR Dataset/train//X_train.txt")
activityTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
activityTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")



##Structuring a raw dataset
rawData <- rbind(cbind(subjectTrain, activityTrain,train), cbind(subjectTest, activityTest,test))
names(rawData) <- c("subject","activity",as.character(features[,2]))

##Finding the relevant columns: just that ones with mean and std data
##Caution about that columns that have gravityMean and meanFreq
##These doesn't interest
columnSubset <- grep("mean\\(\\)|std|subject|activity", names(rawData))
cleanData <- rawData[,columnSubset]

##Using descriptive names to the activities
cleanData$activity <- activityLabels[cleanData$activity,2]

##Setting appropriate labels to columns
newNames <- tolower(names(cleanData))
newNames <- gsub("-","", newNames)
newNames <- gsub("\\(\\)","", newNames)
newNames <- gsub("^t", "timedomain",newNames)
newNames <- gsub("^f", "fastfourier",newNames)
newNames <- gsub("std", "standarddeviation",newNames)
newNames <- gsub("mag", "magnitude",newNames)
newNames <- gsub("acc", "acceleration",newNames)
newNames <- gsub("gyro", "angularvelocity",newNames)
newNames <- gsub("x$", "xaxis",newNames)
newNames <- gsub("y$", "yaxis",newNames)
newNames <- gsub("activityaxis", "activity", newNames)
newNames <- gsub("z$", "zaxis",newNames)
names(cleanData) <- newNames

library(reshape2)
auxiliaryData <- melt(cleanData, id = c("subject","activity"), measure.vars = newNames[-1:-2])
tidyData <- dcast(auxiliaryData, subject + activity ~ variable, mean)