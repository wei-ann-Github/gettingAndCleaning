---
title: "README.md"
output: html_document
---

README for excuting run_analysis.R

# Preparation work before running the R program
Before starting the R program, please make sure the following data csv files are stored in the respective folders in thw working directory:
train data set:
1. ./UCI HAR Dataset/train/subject_train.txt
2. ./UCI HAR Dataset/train/X_train.txt
3. ./UCI HAR Dataset/train/y_train.txt
4. ./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt
5. ./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt
6. ./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt
7. ./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt
8. ./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt
9 ./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt
10 ./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt
11. ./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt
12. ./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt
test data set:
1. ./UCI HAR Dataset/test/subject_test.txt
2. ./UCI HAR Dataset/test/X_test.txt
3. ./UCI HAR Dataset/test/y_test.txt
4. ./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt
5. ./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt
6. ./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt
7. ./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt
8. ./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt
9 ./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt
10 ./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt
11. ./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt
12. ./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt

The whole "UCI HAR Dataset" folder must be kept original in the working directory

# Package to install prior to running the R program
The following packages are required:
1. dplyr
2. data,table


# Output of the R program
The file resulting from running the script is save as tidy_set.txt in the working directory. The first column of the data shows the index of the text subject. Test subjects are labelled from index 1 to 30 (There are 30 test subjects in total). The last column shows the activity each tect subjects were doing when the data was recorded. The rest of the columns indicates the mean average and the mean standard deviation of the test subject during the whole period of the activity.
