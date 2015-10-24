# Getting and Cleaning Data - course project

# 1. Merge the training and test sets to create one data set.

# First import from the relevant files

# test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
# training data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
# activity labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Next stitch the files back together so they are a series of observations for each subject.

test_data <- cbind(x_test, y_test)
test_data <- cbind(test_data, subject_test)

train_data <- cbind(x_train, y_train)
train_data <- cbind(train_data, subject_train)

# get the description for each of the measurements (columns 1-561 of the data)
# so we can find out what each relates to

features <- read.table("UCI HAR Dataset/features.txt")

# finally merge the training and test data sets into a single one

all_data <- rbind(train_data, test_data)


# 2. Extract only the measurements for mean and standard deviation for each measurement

# First re-name the columns based on the features data we imported, the remaining columns are activity (562) and subject (563)
names(all_data) <- features$V2
colnames(all_data)[562] <- "activity_name"
colnames(all_data)[563] <- "subject_name"

# so now just get the relevant columns into a new dataframe
# only those for mean i.e. mean(..... and standard deviation i.e. std(.... are relevant here
# and need to "escape" those opening brackets
# plus the activity and subject we just added

mean_std_data <- all_data[,grepl("mean\\(|std\\(|activity_name|subject_name", names(all_data))]



# 3. Use descriptive activity names to name the activities in the dataset

# So let's use the activity_labels we imported earlier, to give the activity_name by number into a meaningful name

mean_std_data <- merge(mean_std_data, activity_labels, by.x="activity_name", by.y = "V1")
names(mean_std_data)[names(mean_std_data)=="V2"] <- "activity_name"

# now we have activity_name as WALKING etc as relevant to the activity


# 4. "Appropriately label the dataset with descriptive variable names" - These are labelled according to the features file...
names(mean_std_data) <- gsub("-std\\(\\)", " St. Dev.", names(mean_std_data))
names(mean_std_data) <- gsub("-mean\\(\\)", " Mean", names(mean_std_data))

# 5. From the step 4 create an independent tidy dataset with average of each variable per activity and subject

# now create the averages per activity and subject
library(reshape)
# "melt" the data into a suitable format to aggregate
m <- melt(mean_std_data, id=c("subject_name","activity_name"))
# now aggregate by subject and activity
averages <- cast(m, subject_name+activity_name~variable, mean)

# write to a text file
# write.table(averages, file="averages.txt", row.names=FALSE)
averages