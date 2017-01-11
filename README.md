You should download zip package from link: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Unpack zip package on your computer, open R and set working directory to be extracted folder: ./UCI HAR Dataset
(Data contained in unpacked folder is described in detail in README.md file inside zip package. )

Load script run_analysis.R source("run_analysis.R") and run function run_analysis(). 

Script will do as instructed in task:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



Script will return tidy data set which you can save in variable and it will also save txt file (tidySet.txt) in working directory which will containe data.

