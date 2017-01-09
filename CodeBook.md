libraries used in code:
tidyr
dplyr
readr

features - column names for observations, vector with length of 561 
subjectTest - list of test subjects loaded from file
subjectTrain - list of train subjects loaded from file
yTest - list of test activity numbers
yTrain - list of train activity numbers
labels - codebook for activity, number and label
testSet - test observations
trainSet - train obesrvations
activity - temp variable used to add activity label into testSet and trainSet
combinedSet - dataset returned combined of testSet and trainSet grouped by subject and activity and each column presenting mean of values for group
