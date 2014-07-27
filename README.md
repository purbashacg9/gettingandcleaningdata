README
========================================================

Setup 
----------------------------
1. Unzip the zip file getdata-projectfiles-UCI HAR Dataset.zip into folder of same name.    
2. Create a folder UCI_HAR_Dataset in your R working directory and copy the following files from folder in step 1 to UCI_HAR_Dataset --    
### features.txt  
### activity_labels.txt  
### X_train.txt   
### y_train.txt   
### subject_train.txt  
### X_test.txt   
### y_test.txt   
### subject_test.txt   
3. Open run_analysis.R and change the data_path to point to the folder containing the data files. Change output_path to point to the folder where you want to generate the file containing the output data set.   
4. Copy run_analysis.R to your R working directory.   
5. Run the script. A file 'run_analysis_output.txt' is created containing  the output tidy data set in the folder designated in outout_path variable.   


Algorithm   
-------------------------  
1. Read features and activity names into data frames.    
2. Read test data for activities, subjects and time and frequency domain variables.   
3. Extract columns with measurements for mean and standard deviation using regex. There are some measurements with the phrase meanFreq in their names. To take out this column the regex for mean should exclude Freq. The regex is case sensitive to take out columns with Mean in their names like angle(X,gravityMean).   
4. Use cbind to combine subjects, activities and mean and std dev measurement data into one data frame.   
5. Repeat steps 2-4 for training data.   
6. Combine test and training data into one data frame using rbind. 
7. Replace activity numbers with descriptive names using revalue function.
8. Give Descriptive Variable Names for columns by substituting column names with descriptive names.
9. Average measurements over subject and activity using aggregate function. 
10. Write output data set to a txt file using write.table. 

