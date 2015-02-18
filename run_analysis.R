run_analysis<-function() {

## 1.Merge training and test sets to create one data set
  
  ## 1.1 build complete training data set including fields for subject, activity, and featuress
  train_data_subjects<-read.table("subject_train.txt",sep="")
  train_data_activities<-read.table("y_train.txt",sep="")
  train_data_set<-read.table("X_train.txt",sep="")
  train_data_set_complete<-cbind(train_data_subjects,train_data_activities,train_data_set,deparse.level=1)

  ## 1.2 build complete test data set including fields for subject, activity, and featuress
  test_data_subjects<-read.table("subject_test.txt",sep="")
  test_data_activities<-read.table("y_test.txt",sep="")
  test_data_set<-read.table("X_test.txt",sep="")
  test_data_set_complete<-cbind(test_data_subjects,test_data_activities,test_data_set,deparse.level=1)
 
  ## 1.3 merge complete training and test and data set
  merged_data_set_complete<-rbind(train_data_set_complete,test_data_set_complete,deparse.level=1)  

  
## 2. Appropriately labels the data set with descriptive variable names.
  features<-read.table("features.txt",sep="")
  headers<-c("subject","activity",as.character(features[,2]))
  colnames(merged_data_set_complete)<-headers

## 3. Extracts only the measurements on the mean and standard deviation for each measurement
  mean_features<-grep("mean",features$V2,value=TRUE)
  std_features<-grep("std",features$V2,value=TRUE)
  mean_std_features<-c("subject","activity",mean_features,std_features)
  merged_mean_std_data_set_complete<-merged_data_set_complete[,mean_std_features]

## 4. Uses descriptive activity names to name the activities in the data set

  activities<-read.table("activity_labels.txt",sep="")
  for(i in 1:nrow(merged_mean_std_data_set_complete)){
    merged_mean_std_data_set_complete$activity[i]=as.character(activities[merged_mean_std_data_set_complete$activity[i],2])
  }
  
## 5. Data set with the average of each variable for each activity and subject

  ## Load libraries for gather(), group_by() and summarize() functions
  install.packages("dplyr")
  library(dplyr)

  install.packages("tidyr")
  library(tidyr)

  ## 5.1 Data set is grouped by subject, activity and features
  
  ## feature columns are gathered on feature and measure columns
  grouped_set<-gather(merged_mean_std_data_set_complete,feature,measure,-subject,-activity)
      
  ## rows are grouped subject, activity and feature to calculate the average
  grouped_set<-group_by(grouped_set,subject,activity,feature)
  Data_set_summary<-summarize(grouped_set,average=mean(measure))
  
  ## feature column is spread by columns
  Data_set_summary<-spread(Data_set_summary,feature,average)
  
  ## tiny data is saved in a text file
  write.table(Data_set_summary,"tidy_data_set",row.name=FALSE)
  return(Data_set_summary)

}