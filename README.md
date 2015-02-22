
Johns Hopkins Getting and Cleaning Data Coursera Course Project

This repo explains how all of the scripts work and how they are connected

1) Unzip data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and rename as "data".
  Ensure "data" and  run_analysis.R script are in the current working directory.
2) Use source("run_analysis.R") command in RStudio.
3) Find the two output files generated in the current working directory:merged_data.txt and data_with_Means.txt
  merged_data.txt contains a data frame called cleanedData.
  data_with_means.txt contains a data frame called result.
4) Use data <- read.table("data_with_means.txt") command in RStudio to read the file. 
 
