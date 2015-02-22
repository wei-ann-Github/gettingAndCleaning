## Codebook

### Step 1:
1. All file names in the train/test folder is extracted and stored into variable train/test.files
2. The train/test datasets are then merged by cbind separately and stored into 'merged_train_dt' and 'merged_test_dt' respectively. They are in data.table format for faster processing
3. 'merged_train_dt' and 'merged_test_dt' are rbind to form a new variable 'merged_all_dt'. 'merged_test_dt' and 'merged_train_dt' are then removed from memory

### Step 2:
1. Features of the dataset is extracted and stored into 'features'
2. The rows number contain "mean" and "std" are extracted from features and stored into 'mean_ind' and 'sd_ind' respectively before rbind and sorted to mean_sd_ind
3. the mean and sd data are sorted and extracted from 'merged_train_dt' using select() from dplyr, stored into mean_and_sd data.table

### Step 3:
1. Activity index is replace by the respective activity names from 'activity_labels.txt"

### Step 4:
1. the 'mean_sd_ind' is used to extract mean and std feature labels from 'features'
2. The extracted feature labels, are used to rename the column headers of 'mean_and_sd' (it is the extracted dataset from the merged data in step 1).

### Step 5:
1. 'mean_and_sd' is converted to data.frame for easier data manuipulation.
2. The "subject column is transformed to a factor.
3. A chain operation is performed on 'mean_and_sd' to group the data by Subject and Activity and summarise each column by mean() and store the result in tidy_set data.frame.
4. Final 'tidy_set' is saved in a text file in the working directory via write.table()

