### Filename - run_analysis.R
### Course Project - Getting and Cleaning Data
### Description of tasks to be done in the script - 
# Merge the training and the test sets to create one data set.
# Extract only the measurements on the mean and standard deviation for each measurement. 
# Use descriptive activity names to name the activities in the data set
# Appropriately label the data set with descriptive variable names. 
# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. Write this data set to file.   

library(plyr)

#Define path for data files
data_path <-  ".//gettingdata//UCI_HAR_Dataset//"
#define path where output file will be created
output_path <- ""

#Read Feature Names
df_features <- read.table(paste(data_path,"features.txt", sep=""),header=FALSE)

#Read Activity Labels
df_activities <- read.table(paste(data_path,"activity_labels.txt",sep=""), header=FALSE, stringsAsFactors=F)

#Read Test Data 
df_activities_test <- read.table(paste(data_path,"y_test.txt",sep=""), header=FALSE, col.names="Activities", colClasses="character")

df_subjects_test <- read.table(paste(data_path,"subject_test.txt",sep=""), header=FALSE, col.names="Subjects")

df_test <- read.table(paste(data_path,"X_test.txt", sep=""), header=FALSE,col.names=df_features[,2])

#Extract columns with measurements for mean and standard deviation using regex. Only take columns which represent mean measurements. Do not take columns with Mean in the measured variable's name e.g. angle(X,gravityMean) or fBodyAccJerk-meanFreq()-X 
df_test <- subset(df_test, select=c(grep("mean[^Freq]", names(df_test),ignore.case=F, value=T),grep("std()", names(df_test),ignore.case=F, value=T) ))

#Combine Subjects, Activities and Feature data into one data frame
df_test_data <- cbind(df_subjects_test, df_activities_test, df_test)

#Read Training Data 
df_activities_train <- read.table(paste(data_path,"y_train.txt", sep=""), header=FALSE, col.names="Activities",colClasses="character")

df_subjects_train <- read.table(paste(data_path,"subject_train.txt", sep=""), header=FALSE, col.names="Subjects")

df_train <- read.table(paste(data_path,"X_train.txt", sep=""), header=FALSE,col.names=df_features[,2] )

#Extract columns with measurements for mean and standard deviation using regex 
df_train <- subset(df_train, select=c(grep("mean[^Freq]", names(df_train),ignore.case=F, value=T),grep("std()", names(df_train),ignore.case=F, value=T) ))

#Combine Subjects, Activities and Feature data into one data frame
df_train_data <- cbind(df_subjects_train, df_activities_train, df_train)

#Combine (Merge) the test and training data into one data frame
df_test_and_train <- rbind(df_test_data,df_train_data)


#Replace activity numbers with descriptive names
df_test_and_train[,2] <- revalue(df_test_and_train[,2], c("1"=df_activities[1,2], "2"=df_activities[2,2], "3"=df_activities[3,2],"4"=df_activities[4,2],"5"=df_activities[5,2], "6"=df_activities[6,2]))

#Give Descriptive Variable Names for columns
names(df_test_and_train) <- sub("tBody","TimeBody", names(df_test_and_train))
names(df_test_and_train) <- sub("tGravity", "TimeGravity", names(df_test_and_train))
names(df_test_and_train) <- sub("fBody","FrequencyBody", names(df_test_and_train))
names(df_test_and_train) <- sub("Acc", "Accel", names(df_test_and_train))
names(df_test_and_train) <- sub("mean.{2,3}","Mean.", names(df_test_and_train))
names(df_test_and_train) <- sub("std.{2,3}","StdDev.", names(df_test_and_train))

#Average measurements over subject and activity
df_result <- aggregate(df_test_and_train[,c(-1,-2)], list(Subjects=df_test_and_train[,1],Activities=df_test_and_train[,2]), mean)

#write data set to file 
write.table(df_result,file=paste(output_path, "run_analysis_output.txt"))
