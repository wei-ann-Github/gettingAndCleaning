#Prep work
library(dpylr)

# Merges the training and the test sets to create one data set.

# get the files names in the train dataset
train.dir <- "./UCI HAR Dataset/train"
train.files <- list.files(train.dir, full.names = TRUE)
train.signal.file <- list.files(train.files[1], full.names = TRUE)

# get the files names in the test dataset
test.dir <- "./UCI HAR Dataset/test"
test.files <- list.files(test.dir, full.names = TRUE)
test.signal.file <- list.files(test.files[1], full.names = TRUE)

# read files in train dataset
train.data <- list( a = "", b = "", c = "")
for (i in 2:4){
        train.data[i - 1] <- tbl_df(read.table(train.files[i])) # convert to dpylr dataframe
}

# merge the train and test data
x.train <- read.table(train.files[3])

# Resulting Tidy Data
# Each variable you measure should be in one column, Each different observation of that variable should be in a different row
# Please upload your data set as a txt file created with write.table() using row.name=FALS
write.table(".txt", row.name=FALSE)