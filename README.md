# Getting and Cleaning Data Course Project

The analysis script, run_analysis.R, takes a dataset on human activity recognition using smartphones and calculates the average of a series of Mean and Standard Deviation readings per subject and activity.

This is carried out in the following steps:

## 1. Merge the training and test datasets to create one dataset

The source data is divided into two chunks: a "training" dataset for training the algorithm (approx. 70% of the data) and a "test" dataset for comparing results once the algorithm has run (the remaining 30%).

In addition there is a separate "activity_labels.txt" which gives the description (e.g. WALKING) that relates to the numeric code in the supplied training and test data.

The last file to be imported is "features.txt" which relates the columns in the source dataset to their description. This is the description of the specific measurement that the reading relates to.

## 2. Extract only the measurements for the mean and standard deviation

The source data includes many types of calculated measurements but for this analysis we are only interested in the mean and standard deviation.

This step names the columns of the imported data according to the features.txt (mentioned above) and subject and activity number.

We then search for the text "mean(" or "std(" in the column name, and pull through only those columns that match for further analysis.

## 3. Name the activities in the dataset

In this step we match the imported activity descriptions such as WALKING to their numeric code found in the raw data.

## 4. Label the dataset with descriptive variable names

We tidy up the names in the imported dataset giving the text "Mean" or "St. Dev" in place of mean() and std().

## 5. Create a tidy dataset from the source data with averages of each variable per activity and subject

In this final step, the average (mean) of each variable is taken, for each combination of activity and subject.