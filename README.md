You should download zip package from link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Unpack package into folder, open folder and set working directory to be extracted folder:
../UCI HAR Dataset

Load script run_analysis.R 
  source("run_analysis.R")
and run function run_analysis() saving results into variable.
Example:
  df <- run_analysis()