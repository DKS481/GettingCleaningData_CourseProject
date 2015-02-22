
Johns Hopkins Getting and Cleaning Data Coursera Course Project
===============================================================

This repo contains the files and folders for the course project turn in.

Descritions:
* CodeBook: Explains the data, variables, transformations, and work performed to clean up data
* Run_Analysis: The R script used to perform the reading, writing, and cleaning of the data. 
* Combined_data.txt: A cleaned data set from the original data source
* Means_data.txt: The file for submission for the project. A tidy data file of the means and standard deviations of the combined data


How To Read Data
------------------

1) Unzip data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and rename as "data".

2) Ensure "data" and  run_analysis.R script are in the current working directory.

3) Use source("run_analysis.R") command in RStudio.

4) Find the two output files generated in the current working directory:combined_data.txt and means_data.txt
*  combined_data.txt contains a data frame called cleanedData.
*  means_data.txt contains a data frame called result.

4) Use data <- read.table("means_data.txt") command in RStudio to read the file. 
 
About
-----
Author: D Smith

Project: Johns Hopkins Getting and Cleaning Data Coursera Course Project

Date: 22 February 2015
