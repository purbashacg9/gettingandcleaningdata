Codebook for run_analysis.r
========================================================

Overview
--------------------
run_analysis.R script produces a data set with 180 records for 66 measured variables. This data set is formed by combining data from test and trainig data sets. This is a tidy data set because each measured variable has it's own column and each observation for each subject and the activity performed by the subject forms a record in the data set.   
The data set has the following characteristics -   
1. It has data arranged by Subject Identifier and activities performed by each subject.       
2. Subjects data was read from train/subject_train.txt and test/subject_test.txt.       
3. Activities data was read from train/y_train.txt and test/y_test.txt. Labels for Activities was read from the file activity_labels.txt.      
4. The variables used to compute the dataset are Mean and Standard Deviation measurements taken from the 561 variable feature vector of time and frequency variables given in files train/ X_train.txt and test/X-test.txt.     
5. The data in columns 3 - 68 are average of each Mean/Standard Deviation variable, averaged over each subject and activity.     


Variable Description
--------------------
Below is a description of each column in the data set are -   
1. Subjects - This is a numeric identifier ranging from 1-30. It identifies the subject to whom the measurements belong. The data for this variable was in subject_train.txt and subject_test.txt of the raw data set.  
2. Activities - This column is a categorical variable. It has 6 different values - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. The activities for each subject are in alphabetical order.   
3. TimeBodyAccel.Mean.X - This variable is the average of all tBodyAcc-mean()-X observations for the subject in column Subjects and his/her activity in column Activities.   
4. TimeBodyAccel.Mean.Y - This variable is the average of all tBodyAcc-mean()-Y observations for the subject in column Subjects and his/her activity in column Activities.   
5. TimeBodyAccel.Mean.Z - This variable is the average of all tBodyAcc-mean()-Z observations for the subject in column Subjects and his/her activity in column Activities.   
6. TimeGravityAccel.Mean.X - This variable is the average of all tGravityAcc-mean()-X observations for the subject in column Subjects and his/her activity in column Activities.   
7. TimeGravityAccel.Mean.Y - This variable is the average of all tGravityAcc-mean()-Y observations for the subject in column Subjects and his/her activity in column Activities.   
8. TimeGravityAccel.Mean.Z - This variable is the average of all tGravityAcc-mean()-Z observations for the subject in column Subjects and his/her activity in column Activities.   
9. TimeBodyAccelJerk.Mean.X - This variable is the average of all tBodyAccJerk-mean()-X observations for the subject in column Subjects and his/her activity in column Activities.  
10. TimeBodyAccelJerk.Mean.Y - This variable is the average of all tBodyAccJerk-mean()-Y observations for the subject in column Subjects and his/her activity in column Activities.  
11. TimeBodyAccelJerk.Mean.Z - This variable is the average of all tBodyAccJerk-mean()-Z observations for the subject in column Subjects and his/her activity in column Activities.  
12. TimeBodyGyro.Mean.X - This variable is the average of all tBodyGyro-mean()-X observations for the subject in column Subjects and his/her activity in column Activities.  
13. TimeBodyGyro.Mean.Y - This variable is the average of all tBodyGyro-mean()-Y observations for the subject in column Subjects and his/her activity in column Activities.  
14. TimeBodyGyro.Mean.Z - This variable is the average of all tBodyGyro-mean()-Z observations for the subject in column Subjects and his/her activity in column Activities.  
15. TimeBodyGyroJerk.Mean.X - This variable is the average of all tBodyGyroJerk-mean()-X observations for the subject in column Subjects and his/her activity in column Activities.  
16. TimeBodyGyroJerk.Mean.Y - This variable is the average of all tBodyGyroJerk-mean()-Y observations for the subject in column Subjects and his/her activity in column Activities.  
17. TimeBodyGyroJerk.Mean.Z - This variable is the average of all tBodyGyroJerk-mean()-Z observations for the subject in column Subjects and his/her activity in column Activities.  
18. TimeBodyAccelMag.Mean. - This variable is the average of all tBodyAccMag-mean() observations for the subject in column Subjects and his/her activity in column Activities.    
19. TimeGravityAccelMag.Mean. - This variable is the average of all tGravityAccMag-mean() observations for the subject in column Subjects and his/her activity in column Activities.     
20. TimeBodyAccelJerkMag.Mean. - This variable is the average of all tBodyAccJerkMag-mean() observations for the subject in column Subjects and his/her activity in column Activities.     
21. TimeBodyGyroMag.Mean. - This variable is the average of all tBodyGyroMag-mean() observations for the subject in column Subjects and his/her activity in column Activities.    
22. TimeBodyGyroJerkMag.Mean. - This variable is the average of all tBodyGyroJerkMag-mean() observations for the subject in column Subjects and his/her activity in column Activities.    
23. FrequencyBodyAccel.Mean.X - This variable is the average of all fBodyAcc-mean()-X observations for the subject in column Subjects and his/her activity in column Activities.    
24. FrequencyBodyAccel.Mean.Y - This variable is the average of all fBodyAcc-mean()-Y observations for the subject in column Subjects and his/her activity in column Activities.    
25. FrequencyBodyAccel.Mean.Z - This variable is the average of all fBodyAcc-mean()-Z observations for the subject in column Subjects and his/her activity in column Activities.    
26. FrequencyBodyAccelJerk.Mean.X - This variable is the average of all fBodyAccJerk-mean()-X observations for the subject in column Subjects and his/her activity in column Activities.    
27. FrequencyBodyAccelJerk.Mean.Y - This variable is the average of all fBodyAccJerk-mean()-Y observations for the subject in column Subjects and his/her activity in column Activities.    
28. FrequencyBodyAccelJerk.Mean.Z - This variable is the average of all fBodyAccJerk-mean()-Z observations for the subject in column Subjects and his/her activity in column Activities.    
29. FrequencyBodyGyro.Mean.X - This variable is the average of all fBodyGyro-mean()-X observations for the subject in column Subjects and his/her activity in column Activities.    
30. FrequencyBodyGyro.Mean.Y - This variable is the average of all fBodyGyro-mean()-Y observations for the subject in column Subjects and his/her activity in column Activities.   
31. FrequencyBodyGyro.Mean.Z - This variable is the average of all fBodyGyro-mean()-Z observations for the subject in column Subjects and his/her activity in column Activities.   
32. FrequencyBodyAccelMag.Mean. - This variable is the average of all fBodyAccMag-mean() observations for the subject in column Subjects and his/her activity in column Activities.     
33. FrequencyBodyBodyAccelJerkMag.Mean. - This variable is the average of all fBodyBodyAccJerkMag-mean() observations for the subject in column Subjects and his/her activity in column Activities.    
34. FrequencyBodyBodyGyroMag.Mean. - This variable is the average of all fBodyBodyGyroMag-mean() observations for the subject in column Subjects and his/her activity in column Activities.     
35. FrequencyBodyBodyGyroJerkMag.Mean. - This variable is the average of all fBodyBodyGyroJerkMag-mean() observations for the subject in column Subjects and his/her activity in column Activities.    
36. TimeBodyAccel.StdDev.X - This variable is the average of all tBodyAcc-std()-X observations for the subject in column Subjects and his/her activity in column Activities.    
37. TimeBodyAccel.StdDev.Y - This variable is the average of all tBodyAcc-std()-Y observations for the subject in column Subjects and his/her activity in column Activities.    
38. TimeBodyAccel.StdDev.Z - This variable is the average of all tBodyAcc-std()-Z observations for the subject in column Subjects and his/her activity in column Activities.    
39. TimeGravityAccel.StdDev.X - This variable is the average of all tGravityAcc-std()-X observations for the subject in column Subjects and his/her activity in column Activities.    
40. TimeGravityAccel.StdDev.Y - This variable is the average of all tGravityAcc-std()-Y observations for the subject in column Subjects and his/her activity in column Activities.     
41. TimeGravityAccel.StdDev.Z - This variable is the average of all tGravityAcc-std()-Z observations for the subject in column Subjects and his/her activity in column Activities.  
42. TimeBodyAccelJerk.StdDev.X - This variable is the average of all tBodyAccJerk-std()-X observations for the subject in column Subjects and his/her activity in column Activities.  
43. TimeBodyAccelJerk.StdDev.Y - This variable is the average of all tBodyAccJerk-std()-Y observations for the subject in column Subjects and his/her activity in column Activities.  
44. TimeBodyAccelJerk.StdDev.Z - This variable is the average of all tBodyAccJerk-std()-X observations for the subject in column Subjects and his/her activity in column Activities.    
45. TimeBodyGyro.StdDev.X - This variable is the average of all  tBodyGyro-std()-X observations for the subject in column Subjects and his/her activity in column Activities.   
46. TimeBodyGyro.StdDev.Y - This variable is the average of all  tBodyGyro-std()-Y observations for the subject in column Subjects and his/her activity in column Activities.    
47. TimeBodyGyro.StdDev.Z - This variable is the average of all  tBodyGyro-std()-Z observations for the subject in column Subjects and his/her activity in column Activities.    
48. TimeBodyGyroJerk.StdDev.X - This variable is the average of all  tBodyGyroJerk-std()-X observations for the subject in column Subjects and his/her activity in column Activities.    
49. TimeBodyGyroJerk.StdDev.Y - This variable is the average of all  tBodyGyroJerk-std()-Y observations for the subject in column Subjects and his/her activity in column Activities.    
50. TimeBodyGyroJerk.StdDev.Z - This variable is the average of all  tBodyGyroJerk-std()-Z observations for the subject in column Subjects and his/her activity in column Activities.    
51. TimeBodyAccelMag.StdDev. -  This variable is the average of all  tBodyAccMag-std() observations for the subject in column Subjects and his/her activity in column Activities.  
52. TimeGravityAccelMag.StdDev. - This variable is the average of all  tGravityAccMag-std() observations for the subject in column Subjects and his/her activity in column Activities.  
53. TimeBodyAccelJerkMag.StdDev. - This variable is the average of all  tBodyAccJerkMag-std() observations for the subject in column Subjects and his/her activity in column Activities.  
54. TimeBodyGyroMag.StdDev. -  This variable is the average of all  tBodyGyroMag-std() observations for the subject in column Subjects and his/her activity in column Activities.  
55. TimeBodyGyroJerkMag.StdDev. -  This variable is the average of all   tBodyGyroJerkMag-std() observations for the subject in column Subjects and his/her activity in column Activities.  
56. FrequencyBodyAccel.StdDev.X - This variable is the average of all  fBodyAcc-std()-X observations for the subject in column Subjects and his/her activity in column Activities.    
57. FrequencyBodyAccel.StdDev.Y - This variable is the average of all  fBodyAcc-std()-Y observations for the subject in column Subjects and his/her activity in column Activities.    
58. FrequencyBodyAccel.StdDev.Z - This variable is the average of all  fBodyAcc-std()-Z observations for the subject in column Subjects and his/her activity in column Activities.    
59. FrequencyBodyAccelJerk.StdDev.X - This variable is the average of all  fBodyAccJerk-std()-X observations for the subject in column Subjects and his/her activity in column Activities.   
60. FrequencyBodyAccelJerk.StdDev.Y - This variable is the average of all  fBodyAccJerk-std()-Y observations for the subject in column Subjects and his/her activity in column Activities.   
61. FrequencyBodyAccelJerk.StdDev.Z - This variable is the average of all  fBodyAccJerk-std()-Z observations for the subject in column Subjects and his/her activity in column Activities.   
62. FrequencyBodyGyro.StdDev.X -  This variable is the average of all  fBodyGyro-std()-X observations for the subject in column Subjects and his/her activity in column Activities.   
63. FrequencyBodyGyro.StdDev.Y -  This variable is the average of all  fBodyGyro-std()-Y observations for the subject in column Subjects and his/her activity in column Activities.      
64. FrequencyBodyGyro.StdDev.Y -  This variable is the average of all  fBodyGyro-std()-Z observations for the subject in column Subjects and his/her activity in column Activities.      
65. FrequencyBodyAccelMag.StdDev. - This variable is the average of all   fBodyAccMag-std() observations for the subject in column Subjects and his/her activity in column Activities.   
66. FrequencyBodyBodyAccelJerkMag.StdDev. - This variable is the average of all fBodyBodyAccJerkMag-std() observations for the subject in column Subjects and his/her activity in column Activities.      
67. FrequencyBodyBodyGyroMag.StdDev. - This variable is the average of all fBodyBodyGyroMag-std() observations for the subject in column Subjects and his/her activity in column Activities.     
68. FrequencyBodyBodyGyroJerkMag.StdDev. - This variable is the average of all fBodyBodyGyroJerkMag-std() observations for the subject in column Subjects and his/her activity in column Activities.   

Transformation 
--------------
1. Subset function is used to select measurements for mean and standard deviation from the feature vector.   
2. Activity Ids changed to activity names
3. Column names of measurements changed to descriptive names.   

Summary Choices
---------------
The data is summarized using average of each measurement for mean and standard deviation taken for each activity for each subject. 
