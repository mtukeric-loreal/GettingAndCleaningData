run_analysis <- function(){


library(tidyr)
library(dplyr)
library(readr)


#get names of columns
features <- read.csv("features.txt",header = FALSE,sep="\t")

#get subject values for training and for testing
subjectTest <- read.csv(".\\test\\subject_test.txt",header = FALSE,sep="\t")
subjectTrain <- read.csv(".\\train\\subject_train.txt",header = FALSE,sep="\t")

#get activity values for test and training	
yTest <- read.csv(".\\test\\y_test.txt",header = FALSE,sep="\t")
yTrain <- read.csv(".\\train\\y_train.txt",header = FALSE,sep="\t")

#get labels for activity and seperate them into id column and label column
labels <- read.csv("activity_labels.txt",header = FALSE,sep="\t")
labels <- separate(data = labels, col = V1, into = c("v1", "label"), sep = " ")

#create vector for fixed column length to read file with 561 columns of fixed width 16 
colWidths <- replicate(561,16)

#load observations test and train
testSet <- read_fwf(".\\test\\x_test.txt", fwf_widths ( colWidths ,as.vector(features$V1)))
trainSet <- read_fwf(".\\train\\x_train.txt", fwf_widths ( colWidths ,as.vector(features$V1)))

#add columns for subject and activity for test and train data 
testSet["subject"] <- subjectTest
activity <- merge(yTest,labels, by.x="V1", by.y="v1")
testSet["activity"] <- activity$label

trainSet["subject"] <- subjectTrain
activity <- merge(yTrain,labels, by.x="V1", by.y="v1")
trainSet["activity"] <- activity$label

#add sets together, filter only columns with mean and std in column name and group by columns, subject and activity 
combinedSet = rbind(testSet,trainSet)
combinedSet <- combinedSet[, grepl("mean|std|subject|activity",colnames(combinedSet ))]

#group by activity and subject and do mean function on each other column 
combinedSet %>%  group_by(activity,subject) %>% summarise_each (funs(mean))
}