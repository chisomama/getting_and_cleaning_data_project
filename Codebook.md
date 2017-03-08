

train_set = training data data file
test_set = test data data file
train_label = training labels data file
test_label = test labels data file
test_subjects = test subjects data file
train_subjects = train subjects data file
features = features data file
activity = ativity data file

# Step 1. Create one data set
readtrain = train set data table
readtest = test set data table
merge_observations = readtest, readtrain combined

read_train_label = read.table(train_label)
read_test_label = read.table(test_label)
merge_labels = read_test_label,read_train_label combined

read_train_subjects = read.table(train_subjects)
read_test_subjects = read.table(test_subjects)
merge_subjects = read_test_subjects,read_train_subjects combined


# Step 2 - Get the features file in and look for mean and std values
read_features = read.table(features)

means_and_std = get_means_and_std_cols from read_features 

# Extract only the means and std values from the data
extracted_means_and_std = Extract only the means and std values from the data


# Step 3 - Match activity labels to data labels
read_activity = read.table(activity)
merge_labels =  so that the label s are matched to the activity.


# Put all the data together
all_data = put all the data, activity and subjects together.

# Finally, find the averages of it all
all_averages = averages columns

# functions I use

get_means_and_std_cols: Find rows with mean or std in the columns.
  

get_means_and_std_cols_names: find and clean the column names needed.