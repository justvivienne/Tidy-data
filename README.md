### This script contains five parts 
### 1. binding of multiple data into one large dataset
### 2. using the dplyr package to select target variables (mean and std)
### 3. Using descriptive activity names to name the activities in the data set
### 4. labeling the data with descriptive variable names
### 5. creating an independent tidy data set with the average of each variable 
###    for each activity and each subject

### 1. binding of multiple data into one large dataset
First required files were read into R by "read.table"
Then, measurement tables of "test" and "train" are combined by row. using "rbind 
The test and train activity types, subjects were also respectivtly combined by rows.

### 2. using the dplyr package to select target variables (mean and std)
The dplyr package was used to select means and std of the measurements, using the "select" function.
Then the selected measurements were cbind with subject and activity.
To this point the entire data is truly combined all together.

### 3. Using descriptive activity names to name the activities in the data set
This was achieved using the "join" function in dplyr, merging the file containing activity lables with 
corresponding names into our data file.

### 4. labeling the data with descriptive variable names
I replaced "-" with "_" for easy reading. I also removed "()". 
Variable lables otherwise were minimally changed as they are already clear and concise.


### 5. creating an independent tidy data set with the average of each variable for each activity and each subject
This was achieved by the "group_by" and "summarise_each" function.
Lastly, using the write.table function the output table is stored in a text file named "tidy.txt" 

