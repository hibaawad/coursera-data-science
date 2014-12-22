x_test = read.table("UCI HAR Dataset/test/X_test.txt")
y_test = read.table("UCI HAR Dataset/test/y_test.txt")
x_train = read.table("UCI HAR Dataset/train/X_train.txt")
y_train = read.table("UCI HAR Dataset/train/y_train.txt")
features <- read.table("UCI HAR Dataset/features.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
activity_labels <-  read.table("UCI HAR Dataset/activity_labels.txt")

data <- rbind(x_test, x_train)
feature_name <- features[,2]
colnames(data) <- feature_name 

#use only mean or standard deviation
mean <- grepl("mean", feature_name)
std <- grepl("std", feature_name)
mean_std <- mean | std
data_mean_std = data[mean_std]

# add the acitivity to data
activity <- rbind (y_test, y_train)
complete = cbind(data_mean_std, activity)

# add subject to the data 
subject <- rbind(subject_test, subject_train)
final_data <- cbind (complete, subject)


#set the last two meaningful column names 
colNames <- colnames(final_data)
ncol <- ncol(final_data)
colNames[ncol-1] <- "activity"
colNames[ncol] <- "subject"
colnames(final_data) <- colNames

# label with the descriptive activity
colnames(activity_labels) <- c("activity", "activity_description")
mergedData <- merge(final_data, activity_labels, by.x = "activity", by.y =  "activity")


by_activity_subject <- mergedData %>% group_by(activity_description, subject)
result<- by_activity_subject %>% summarise_each(funs(mean))
#remove activity since we have acitivty description
result$activity <- NULL
write.table(result, file="result.txt", row.name = FALSE)
