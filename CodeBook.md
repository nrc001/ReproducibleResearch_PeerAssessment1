
DESCRIPTION OF THE SOURCE DATA:

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

DESCRIPTION OF DATA, VARIABLES AND TRANSFORMATIONS PERFORMED TO CLEAN UP THE DATA:

- train_data_subjects (data frame: 7352 obs. x 1 var.)

		Identifier of subjects involved in the training
		Values: 1..30           

- train_data_activities (data frame: 7352 obs. x 1 var.)

		Identifier of activity
		Values: 1..6           
  		    1 WALKING
  		    2 WALKING_UPSTAIRS
  		    3 WALKING_DOWNSTAIRS
  		    4 SITTING
  		    5 STANDING
  		    6 LAYING

- train_data_set (data frame: 7352 obs. x 561 var.)

		Value of the different (561) features register for each training observation
	
- train_data_set_complete (data frame: 7352 obs. x 563 var.)

		Subject Id, Activity Id and 561 features registered by training observation

- test_data_subjects (data frame: 2947 obs. x 1 var.) 
	
		Identifier of subjects involved in the test
		Values: 1..30           

- test_data_activities (data frame: 2947 obs. x 1 var.)
	
		Identifier of activity
		Values: 1..6
  		    1 WALKING
  		    2 WALKING_UPSTAIRS
  		    3 WALKING_DOWNSTAIRS
  		    4 SITTING
  		    5 STANDING
  		    6 LAYING
    
- test_data_set (data frame: 2947 obs. x 561 var.)
	
		Value of the different (561) features register for each test observation
	
- test_data_set_complete (data frame: 2947 obs. x 563 var.)

		Subject Id, Activity Id and 561 features registered by test observation

- merged_data_set_complete (data frame: 10299 obs. x 563 var.)

		Subject Id, Activity Id and 561 features registered by observation (test and training)

- features (data frame: 561 rows x 2 var.)

		Sequential number and name of the 561 features registered

- headers (character: 563 length)
  
		Names of the columns
		    Subject: 1..30
		    Activity: 1..6
		    Features (561 characters): tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z, tBodyAcc-std()-X, etc.

- mean_std_features (character: 81 length)

		Names of the columns
		    Subject: 1..30
		    Activity: 1..6
		    Features (79 character: measurement of mean and standard deviation features)

- merged_mean_std_data_set_complete (data frame: 10299 obs. x 81 var.)

		Subject Id, Activity Id and 79 mean and standard deviation features by observation (test and training)

- Data_set_summary (data frame: 180 obs. x 81 var.)
    
		180 observations: 30 subjects x 6 activities
		81 variables: Subject Id, Activity Id and 79 mean and standard deviation features average


