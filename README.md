# Getting-and-Cleaning-Data-project
Repository for Getting and Cleaning Data Project

INTRODUCTION

The current assignment provides a code 'run_analysis.R' that collects, works with and cleans a data set collected from Samsung Galaxy S smartphone accelerometers used by 30 volunteers

The objective of this assignment is provide a code (run_analysis.R) able to:
-	Take data collected from accelerometers from Samsung Galaxy S smartphones used by 30 volunteers performing 6 different types of activities (walking, walking upstairs, walking downstairs, sitting, standing and laying). The volunteers were divided in two different groups: training data from 21 voluntiers and test data from 9 volunteers. Each observation of each volunteer and activity provides 561 features.
-	Prepare tiny data with the average of a subset of features (79 mean and standard deviation features) for each subject and activity combination

SOURCE DATA SET PROVIDED (all the files in the work directory) is fragmented in the following files:

-	'features.txt': List of 561 features measured in each observation(described in the 'features_info.txt')
-	'activity_labels.txt': Links the 6 class labels with their activity name.
Training data set:
-	'subject_train.txt': Subset of identifiers (1:30) of subjects involved in the training (7351 training observations)
-	'X_train.txt': Training set of 7351 observations of the 561 features measured
-	'y_train.txt': Training labels. Code of the activity (1:6) for the 7351 observations
Test data set:
-	'subject_test.txt': Subset of identifiers (1:30) of subjects involved in the test (2947 observations)
-	'X_train.txt': Test set of 2947 observations of the 561 features measured
-	'y_train.txt': Test labels. Code of the activity (1:6) for the 2947 observations


TIDY DATA GENERATION:

The process to provide the tidy data is summarized in the following steps:

1. Merge training and test data sets to create a unique data set

	1.1	Training data set is built joining subject Id, activity and features measure (561) for each training observation (7352) and stored in a data frame named 'train_data_set_complete' (7351 observations x 563 variables)
	
	1.2	Test data set is built joining subject Id, activity and features measure (561) for each test observation (2947) and stored in a data frame named 'test_data_set_complete' (2947 observations x 563 variables)
	
	1.3	Training and test data set are merged and stored in a data frame named 'merged_data_set_complete' (10299 observations x 563 variables)

2. Appropriately labels the data set with descriptive variable names
	
	2.1	A character vector is built joining 'subject' and 'activity' to the 561 features included in the features.text file
	
	2.2	The resulting 563 strings are added as colnames to 'merged_data_set_complete'

3. Extracts only the measurements on the mean and standard deviation for each measurement
	
	3.1	A subset of features is built considering only those including 'mean' or 'std' characters and stored in a character vector named 'mean_std_features' (only 79 of the 561 features meet this condition)
	
	3.2	A new data set is built only including the subset of features considered in the previous step and stored in a data frame named 'merged_mean_std_data_set_complete' (10299 observations x 81 variables)

4. Uses descriptive activity names to name the activities in the data set
	
	4.1	Activity code of column 'activity' is substituted by the corresponding activity name

5. Data set with the average of each variable for each activity and subject:
	
	5.1	Feature columns of 'merged_mean_std_data_set_complete' data frame are gathered on 'feature' and 'measure' columns and the resulting data frame (10299x79 rows of 4 variables: subject, activity, feature and measure) saved as 'grouped_set' 
	
	5.2	Rows of 'grouped_set' are grouped subject, activity and feature and the average of each group calculated and stored in the data frame named 'Data_set_summary' 
	
	5.3	Feature column is then spread by columns and stored in the data frame named 'Data_set_summary' resulting in a 180 rows (30 subjects x 6 activities) of 81 variables (subject, activity and the 79 features)
	
	5.4	Tiny data set (Data_set_summary) is saved in the 'tiny_data_set.txt' file

