
# file names

train_set = training data data file

test_set = test data data file

train_label = training labels data file

test_label = test labels data file

test_subjects = test subjects data file

train_subjects = train subjects data file

features = features data file

activity = ativity data file

# Datatable names
readtrain = train set data table

readtest = test set data table

merge_observations = readtest, readtrain combined

read_train_label = train_label table
read_test_label = test_label table
merge_labels = read_test_label, read_train_label combined

read_train_subjects = train_subjects table
read_test_subjects = test_subjects table
merge_subjects = read_test_subjects,read_train_subjects combined
read_features = features table

# transformations on the data
means_and_std = gets means and std cols from read_features 
extracted_means_and_std:  Extract only the means and std values from the data


# Step 3 - Match activity labels to data labels
read_activity = activity table
merge_labels =  match the labels in train and test to activity variables


# Put all the data together
all_data = column bind of observations, activity labels and subject numbers

# Finally, find the averages of it all
all_averages = averages columns obtained by using dplyr library and chaining the functions groupby and summarize_each

# functions I use

get_means_and_std_cols: Find rows with  the words mean or std in the columns.

get_means_and_std_cols_names: find and clean the column names needed.
