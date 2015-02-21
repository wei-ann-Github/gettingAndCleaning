#Prep work
library(dplyr)
library(tidyr)
library(data.table)

# Step 1 -------------------------------
# Merge the training and the test sets to create one data set.

# get the files names in the train dataset
train.dir <- "./UCI HAR Dataset/train"
train.files <- list.files(train.dir, full.names = TRUE)
train.signal.file <- list.files(train.files[1], full.names = TRUE)

# get the files names in the test dataset
test.dir <- "./UCI HAR Dataset/test"
test.files <- list.files(test.dir, full.names = TRUE)
test.signal.file <- list.files(test.files[1], full.names = TRUE)

# read files in train dataset
merged_train_dt <- data.table
merged_train_dt <- data.table(read.table(train.files[2]))
dim(merged_train_dt)
for (i in 3:4){
  merged_train_dt <- cbind(merged_train_dt, 
                           data.table(read.table(train.files[i])))
}
dim(merged_train_dt)

# read files in test dataset
merged_test_dt <- data.table
merged_test_dt <- data.table(read.table(test.files[2]))
dim(merged_test_dt)
for (i in 3:4){
        merged_test_dt <- cbind(merged_test_dt, 
                                data.table(read.table(test.files[i])))
}

# rbind merged_train_dt and merged_test_dt to form merged_all_dt
merged_all_dt <- rbind(merged_train_dt, merged_test_dt)
# clear merged_train_dt and merged_test_dt from memory
rm(merged_train_dt)
rm(merged_test_dt)

# rename the first and last columns
setnames(merged_all_dt, 
         names(merged_all_dt)[c(1, 563)], 
         c("Subject","Activity"))
names(merged_all_dt)

# Step 2 -------------------------------
# Extracts only the measurements on the mean and standard deviation for each 
# measurement.

# load features.txt
feat.txt <- "./UCI HAR Dataset/features.txt"
features <- read.table(feat.txt)
# find the rows number that contains "mean" and "std",
# then add 1 to it, so that the vector can be used to 
# subset the merge data set
mean_ind <- grep("mean", features[,2]) + 1
sd_ind <- grep("std", features[,2]) + 1

# combine mean_ind and sd_ind to 1 vector and sort
mean_sd_ind <- combine(mean_ind,sd_ind)
mean_sd_ind <- sort(mean_sd_ind)
mean_sd_ind

# Extraction only the required data in step 2
mean_and_sd <- select(merged_all_dt, c(1, mean_sd_ind, 563))
names(mean_and_sd)

# Step 3 -------------------------------
# 3. Uses descriptive activity names to name the activities in the data set

# Step 4 -------------------------------
# 4. Appropriately labels the data set with descriptive variable names. 

# Step 5 -------------------------------
# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

# Resulting Tidy Data
# Each variable you measure should be in one column, Each different observation 
# of that variable should be in a different row. Please upload your data set as 
# a txt file created with write.table() using row.name=FALS
write.table(".txt", row.name=FALSE)