# Run Analysis
library(dplyr)
# Part 1. Join all the data.
source('~/Coursera/run_func.r')

train_set = "./UCI/train/X_train.txt"
test_set = "./UCI/test/X_test.txt"
train_label = "./UCI/train/y_train.txt"
test_label = "./UCI/test/y_test.txt"
test_subjects = "./UCI/test/subject_test.txt"
train_subjects = "./UCI/train/subject_train.txt"
features = "./UCI/features.txt"
activity = "./UCI/activity_labels.txt"

# Step 1. Create one data set
readtrain = read.table(train_set)
readtest = read.table(test_set)
merge_observations = rbind(readtest, readtrain)

read_train_label = read.table(train_label)
read_test_label = read.table(test_label)
merge_labels = rbind(read_test_label,read_train_label)

read_train_subjects = read.table(train_subjects)
read_test_subjects = read.table(test_subjects)
merge_subjects = rbind(read_test_subjects,read_train_subjects)


# Step 2 - Get the features file in and look for mean and std values
read_features = read.table(features)

means_and_std = get_means_and_std_cols(read_features)

# Extract only the means and std values from the data
extracted_means_and_std = merge_observations[,means_and_std]


# Step 3 - Match activity labels to data labels
read_activity = read.table(activity)
merge_labels = read_activity[match(merge_labels[,1],read_activity[,1]),2]

# Put all the data together
all_data = cbind(merge_subjects, extracted_means_and_std, merge_labels)
names(all_data) = c("subjects", get_means_and_std_cols_names(read_features),"activity")


# Finally, find the averages of it all. This is the needed tidy data set
all_averages = all_data %>% group_by(activity,subjects) %>% summarize_all(funs(mean))