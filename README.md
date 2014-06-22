get-data-project
================
Course project for Getting & Cleaning Data course on Coursera

Using 'run_analysis.R' to created a tidy data set of the average of select features for each subject and activity from the Human Activity Recognition Using Smartphones Dataset.

Instructions
================
To begin, download and unzip the source file into your working directory from: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The unzipped source file is a folder called 'UCI HAR Dataset' which contains the raw Human Activity Recognition Using Smartphones Dataset. Learn more about the raw data set by reading 'README.txt' with the 'UCI HAR Dataset' folder.

Run 'run_analysis.R' to create a new tidy data set with the average of select variables (those containing mean or standard deviation features) for each activity and each subject. This new data set is tidy because:

1. Each variable is in its own column
2. Each observation of the variables is in its own row
3. There is only one kind of variable in the table
4. Each variable is labeled with a descriptive name. 

See 'codebook.md' for a description of the process used by 'run_analysis.R' to create the tidy data set and a description of the variables found in the tidy data set.