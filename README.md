# getting_and_cleaning_data_project

Code book contains variable name definitions.
run_func has functions called in run_analysis.
run_analysis produces the needed tidy data set

Dataset description on Samsung Smartphones can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Script breakdown
Run_analysis.R
This script calls and tidies the data set.
It follows the steps below:
  Merge test and training data set
  Extract only mean and std for each measurement
  Use activity description labels from the activity table to name the activities in the data set.
  Find the average of each variable and put that into a new tidy data set.
 Data used here was unzipped and put into the working directory before being called.


run_func.R
A supporting Script to get the mean and std columns from a table
