##load and merge X data
test_X <- read.table("X_test.txt")
train_X <- read.table("X_train.txt")
data_X <- rbind(test_X,train_X)

##load and merge Y data
test_Y <- read.table("y_test.txt")
train_Y <- read.table("y_train.txt")
data_Y <- rbind(test_Y,train_Y)

##load and merge subject data
test_subject <- read.table("subject_test.txt")
train_subject <- read.table("subject_train.txt")
data_subject <- rbind(test_subject,train_subject)
names(data_subject) <- c("Subject")

##give meaningful names to columns in X
features <- read.table("features.txt")
features$V2 <- as.character(features$V2)
names(data_X) <- c(features$V2)

##only keep mean and std variables in X
data_X <- data_X[grepl("mean\\(\\)|std\\(\\)",names(data_X))]

##give meaningful description to Y values using activity file
library(plyr)
activity_labels <- read.table("activity_labels.txt")
activity_labels$V2 <- as.character(activity_labels$V2)
data_Y <- join(data_Y,activity_labels,by="V1")
names(data_Y) <- c("Nr","Activity")

##combine all data into one data frame
alldata <- cbind(data_subject,data_Y,data_X)
alldata[,2] <- NULL

##averages by subject and activity
library(dplyr)
summary_data <- alldata %>% group_by(Subject,Activity) %>% summarise_each(funs(mean))
