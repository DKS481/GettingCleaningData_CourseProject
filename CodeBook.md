Getting and Cleaning Data Course Project CodeBook
=================================================


This Code book explains the data, variables, transformations, and work performed to clean up data from the following source:

Site and Descriptions: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Notes
-----
For how to access the final dataset refer the README file.


Variables
---------
For descriptions and information about the original data set refer to the README, features.txt file, and features_info.txt file within the data folder.


Transformations and Work Performed
-------------------------

Part 1: Read the training sets.
*trainData 
*trainLabel
*TrainSubject

Part 2: Read the testing sets.
*testData
*testLabel
*testSubject

Part 3: Merge the Training and Testing Sets
*joinData

Part 4: Extract means and standard deviations for each measurement.
*features
*joinData

Part 5: Clean data set labels by removing symbols and capitilizing names.

Part 6: Read activity label set
*activity

Part 7: Clean activity labels by removing symbols and capitilizing names

Part 8: Transform the joined label set based on the activity labels

Part 9: Fix names of the joined label and subject sets

Part 10: Combine the data, labels, and subject sets to one Cleaned Data Set.
*cleanedData

Part 11: Creates independent tidy data set of averages
*results

Part 12: Output the merged  and the independent tidy data sets. 
*combined_data.txt 
*means_data.txt


About
---------------
Author: D Smith
Project: Johns Hopkins Getting and Cleaning Data Coursera Course Project
Date: 22 Fenruary 2015