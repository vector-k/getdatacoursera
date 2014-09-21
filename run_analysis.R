#Course Project
#0 Get the data and change path to its directory
#setwd("/Users/kevin/Dropbox/Coursera/3 - Getting Data/Course Project/")
#unzip(zipfile = "getdata-projectfiles-UCI HAR Dataset.zip")
#setwd("/Users/kevin/Dropbox/Coursera/3 - Getting Data/Course Project/UCI HAR Dataset/")

## NOTE ##
# Set your working directory to that with the data ("UCI HAR Dataset/")

#######
#1 Merges the training and the test sets to create one data set.

#Read in all data
features_table <- read.table(file="features.txt",header=FALSE)
X_train_table <- read.table(file="train/X_train.txt",header=FALSE)
subject_train_table <- read.table(file="train/subject_train.txt",header=FALSE)
y_train_table <- read.table(file="train/y_train.txt",header=FALSE)
X_test_table <- read.table(file="test/X_test.txt",header=FALSE)
subject_test_table <- read.table(file="test/subject_test.txt",header=FALSE)
y_test_table <- read.table(file="test/y_test.txt",header=FALSE)
activity_labels<- read.table(file="activity_labels.txt")

#Bind train data into one table, test into another
train_table = cbind(X_train_table,subject_train_table,y_train_table)
test_table = cbind(X_test_table,subject_test_table,y_test_table)

#Bind train and test data
complete_table <- rbind(train_table,test_table)


#######
#4 Add column names now for sanity and ease of manipulation
colnames(complete_table) <- c(as.character(features_table$V2),'tmp_subject','tmp_activity');


#######
#2 Make means and st. dev. table (79 measured obs, subject, and activity)
means_and_stds_table <- complete_table[, grepl("mean|std|tmp_subject|tmp_activity", colnames(complete_table))]


#######
#3 Replace activity Ids with descriptive names from
for(iRow in 1:nrow(activity_labels)) {
  means_and_stds_table$tmp_activity[means_and_stds_table$tmp_activity==iRow] <- as.character(activity_labels$V2[iRow])
}


#######
#5 Summarize the data
tidy_data <- aggregate(x = means_and_stds_table, by = list(means_and_stds_table$tmp_subject, means_and_stds_table$tmp_activity), FUN = "mean")
require(data.table)
setnames(tidy_data,"Group.1","Subject")
setnames(tidy_data,"Group.2","Activity")
tidy_data$tmp_subject <- NULL
tidy_data$tmp_activity <- NULL


#Write out the data
write.table(tidy_data,file = "getdata_crsprj_tidy_data.txt",row.names = FALSE)
