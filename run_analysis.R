# DKS481's Course Project for Johns Hopkins Getting and Cleaning Data Coursera Course
# 22 February 2014
getwd()
# Part 1: Read the training sets.
trainData <- read.table("./data/train/X_train.txt")
trainLabel <- read.table("./data/train/y_train.txt")
trainSubject <- read.table("./data/train/subject_train.txt")

# Part 2: Read the testing sets.
testData <- read.table("./data/test/X_test.txt")
testLabel <- read.table("./data/test/y_test.txt") 
testSubject <- read.table("./data/test/subject_test.txt")

# Part 3: Merge the Training and Testing Sets
joinData <- rbind(trainData, testData)
joinLabel <- rbind(trainLabel, testLabel)
joinSubject <- rbind(trainSubject, testSubject)


# Part 4: Extract means and standard deviations for each measurement.
features <- read.table("./data/features.txt")
meanStdIndices <- grep("mean\\(\\)|std\\(\\)", features[, 2])
joinData <- joinData[, meanStdIndices]

# Part 5: Clean data set labels by removing symbols and capitilizing names.
names(joinData) <- gsub("\\(\\)", "", features[meanStdIndices, 2])
names(joinData) <- gsub("mean", "Mean", names(joinData)) 
names(joinData) <- gsub("std", "Std", names(joinData)) 
names(joinData) <- gsub("-", "", names(joinData))

# Part 6: Read activity label set 
activity <- read.table("./data/activity_labels.txt")

# Part 7: Clean activity labels by removing symbols and capitilizing names  
activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
substr(activity[2, 2], 8, 8) <- toupper(substr(activity[2, 2], 8, 8))
substr(activity[3, 2], 8, 8) <- toupper(substr(activity[3, 2], 8, 8))
activityLabel <- activity[joinLabel[, 1], 2]

# Part 8: Transform the joined label set based on the activity labels
joinLabel[, 1] <- activityLabel

# Part 9: Fix names of the joined label and subject sets
names(joinLabel) <- "activity"
names(joinSubject) <- "subject"

# Part 10: Combine the data, labels, and subject sets to one Cleaned Data Set.
cleanedData <- cbind(joinSubject, joinLabel, joinData)

# Part 11: Creates independent tidy data set of averages 
subjectLen <- length(table(joinSubject)) 
activityLen <- dim(activity)[1]
columnLen <- dim(cleanedData)[2]
result <- matrix(NA, nrow=subjectLen*activityLen, ncol=columnLen) 
result <- as.data.frame(result)
colnames(result) <- colnames(cleanedData)
row <- 1
for(i in 1:subjectLen) {
  for(j in 1:activityLen) {
    result[row, 1] <- sort(unique(joinSubject)[, 1])[i]
    result[row, 2] <- activity[j, 2]
    bool1 <- i == cleanedData$subject
    bool2 <- activity[j, 2] == cleanedData$activity
    result[row, 3:columnLen] <- colMeans(cleanedData[bool1&bool2, 3:columnLen])
    row <- row + 1
  }
}

# Part 12: Output the merged data set as combined_data.txt and the independent tidy data set of averages as means_data.txt
write.table(cleanedData, "combined_data.txt", row.names=FALSE)
write.table(result, "means_data.txt", row.names=FALSE)


# Example of how to read in the text files
# example <- read.table("./means_data.txt")
# example[1:12, 1:5]
