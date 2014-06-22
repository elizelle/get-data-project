##download and unzip source file
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "source.zip", method = "curl")
unzip("source.zip")

##read features file and use grep to identify features with mean or std in name. 
##Remove those with meanFreq in name (meanFreq was picked up even though used mean() in grep).
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
meanstdCols <- grep('mean()|std()', x = features[, 2], value = FALSE) 
meanFreqCols <- grep('meanFreq', x = features[, 2], value = FALSE)
Cols <- setdiff(meanstdCols, meanFreqCols)

##create a list of column classes which assigns the features identified above 
##as character. all others are NULL
mycols <- rep("NULL", 561)
mycols[Cols] <- "character"

##read test data (only mean & std columns identified above), subject, and activity files 
## & combine using cbind.
Xtest <- read.table('./UCI HAR Dataset/test/X_test.txt', header = FALSE, colClasses = mycols)
subject <- read.csv('./UCI HAR Dataset/test/subject_test.txt', header = FALSE)
activity <- read.csv('./UCI HAR Dataset/test/y_test.txt', header = FALSE)
testDat <- cbind(subject, activity, Xtest)

##read train data (only mean & std columns identified above), subject, and activity files 
## & combine using cbind.
Xtrain <- read.table('./UCI HAR Dataset/train/X_train.txt', header = FALSE, colClasses = mycols)
subject <- read.csv('./UCI HAR Dataset/train/subject_train.txt', header = FALSE)
activity <- read.csv('./UCI HAR Dataset/train/y_train.txt', header = FALSE)
trainDat <- cbind(subject, activity, Xtrain)

##combine test and train data & rename columns using the feature descriptions from 'features.txt'.
combinedDat <- rbind(testDat, trainDat)
meanstdCols <- grep('mean()|std()', x = features[, 2], value = TRUE) 
meanFreqCols <- grep('meanFreq', x = features[, 2], value = TRUE)
f <- setdiff(meanstdCols, meanFreqCols)
featureNames <- gsub("[[:punct:]]","",f)
colNames <- c('subject', 'activity_code', featureNames)
colnames(combinedDat) <- colNames

##read activity labels and replace activity codes with descriptive labels
combinedDat[,2] <- as.factor(combinedDat[,2])
activityLabels <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE)
allDat <- merge(combinedDat, activityLabels, by.x = "activity_code", by.y = 'V1', all = TRUE)
allDat <- allDat[ ,c(2,69,3:68)]
colNames <- c('subject', 'activity', featureNames)
colnames(allDat) <- colNames
for (i in 3:68) {
  allDat[,i] <- as.numeric(allDat[,i])
}

##create new data set with average of each variable for each subject and activity
library(reshape)
meltDat <- melt(allDat, id = c("subject","activity"), measure.vars = featureNames)
library(reshape2)
newDat <- dcast(meltDat, subject + activity ~ variable, mean)

##rename columns to signify that these are now averages of the features
Average <- rep("Average_", 66)
AvgFeatures <- paste(Average,featureNames, sep = "")
colNames <- c('subject', 'activity', AvgFeatures)
colnames(newDat) <- colNames

## write the output file
write.table(newDat,"Means_of_features.txt",row.names=FALSE)