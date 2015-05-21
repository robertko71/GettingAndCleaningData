# GettingAndCleaningData
Repository for Coursera GettingAndCleaningData project

The R script reads data collected from the accelerometers from the Samsung Galaxy S smartphone and creates a tidy data set.

The following actions are performed by the script:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

This folder also contains an explanation (features_info.txt) describing the variables used in the data set.

To be able to run the R script, it's necessary to install the following
packages:
* plyr
* dplyr
