## This script contains five parts 
## 1. binding of multiple data into one large dataset
## 2. using the dplyr package to select target variables (mean and std)
## 3. Using descriptive activity names to name the activities in the data set
## 4. labeling the data with descriptive variable names
## 5. creating an independent tidy data set with the average of each variable 
##    for each activity and each subject

## 1. binding of multiple data into one large dataset
## read required files into R
x_test <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_test <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
x_train <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", header = FALSE)
subject_train <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
features <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt", header = FALSE)
labels <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", header = FALSE)
## rbind the measurements of "test" and "train"
data <- rbind(x_test, x_train)
## set column names from the feature.txt file
colnames(data) <- as.vector(features[,2])
## columns 461 to 502 are removed because there are duplicated column names that cause troubles
mod_data <- data[,-(461:502)]
## rbind y_test and y_train that contain data of activity types, name the column 
Y <- rbind(y_test, y_train)
colnames(Y) <- c("activity")
## rbind subject_test and subject_train that contain data of subject id, name the column
sub <- rbind(subject_test, subject_train)
colnames(sub) <- c("subject")
## cbind the subject and activity columns
sub_Y <- cbind(sub, Y)

## 2. using the dplyr package to select target variables (mean and std)
library(dplyr)
## means and std of the measurements but not the average of  
## two variables [eg.fBodyBodyGyroJerkMag-mean()] are selected
mean_std <- select(mod_data, contains("mean()"), contains("std"), -contains("BodyBody"))
## cbind the selected measurements with subject and activity 
full_data <- cbind(sub_Y, mean_std)

## 3. Using descriptive activity names to name the activities in the data set
## name the table containing activities with corresponding code numbers
colnames(labels) <- c("activity", "names")
## merge the table with our data to replace activity codes with names
full_data <- full_data %>% inner_join(labels) %>% mutate(activity = names) %>% select(-names)

## 4. labeling the data with descriptive variable names
## Replace "-" with "_" for easy reading. Remove"()". variable lables otherwise stay unchanged
## as they are already clear and concise.
char <- as.vector(colnames(full_data))
char <- gsub("-", "_", char)
char <- gsub("\\()", "", char)
colnames(full_data) <- char

## 5. creating an independent tidy data set with the average of each variable 
##    for each activity and each subject
group <- full_data %>% group_by(subject, activity)
tidy <- group %>% summarise_each(funs(mean))
write.table(tidy, file = "tidy.txt", row.names = FALSE)
