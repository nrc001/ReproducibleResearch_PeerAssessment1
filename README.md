# ReproducibleResearch_PeerAssessment1
Peer Assigment 1 of Reproducible Research Course

## Introduction
This assignment makes use of data from a personal activity monitoring device. This device collects data at 5 minute intervals through out the day. The data consists of two months of data from an anonymous individual collected during the months of October and November, 2012 and include the number of steps taken in 5 minute intervals each day.

## Data
The data for this assignment is available on this directory: activity.csv
Dataset: Activity monitoring data [52K]
The variables included in this dataset are:
- steps: Number of steps taking in a 5-minute interval (missing values are coded as NA)
- date: The date on which the measurement was taken in YYYY-MM-DD format
- interval: Identifier for the 5-minute interval in which measurement was taken
The dataset is stored in a file and there are a total of 17,568 observations in this dataset.

## Assignment

This assignment will be described in multiple parts
In this directory you can find:
PA1_template.Rmd: R markdow file including the coding and the analysis explanations
PA1_template.md: markdow file obtained once processed PA1_template.Rmd by knitr
PA1_template.html: HTML file showing the code and the different plots supporting the analysis

### Loading and preprocessing the data
1. Load the data (i.e. read.csv())
2. Process/transform the data into a format suitable for the analysis

### What is mean total number of steps taken per day?
For this part of the assignment missing values were ignored
1. Calculate the total number of steps taken per day
2. Histogram of the total number of steps taken each day
2. Calculate and report the mean and median total number of steps taken per day

### What is the average daily activity pattern?
1. Time series plot of the 5-minute interval and the average number of steps taken, averaged across all days
2. Which 5-minute interval, on average across all the days in the dataset, contains the maximum number of steps?

### Imputing missing values
1. Calculate and report the total number of missing values in the dataset
2. Devise a strategy for filling in all of the missing values in the dataset. In this case, the mean for that 5-minute interval was used to fill missing values
3. Create a new dataset with the missing data filled in.
4. Histogram of the total number of steps taken each day and Calculate and report the mean and median total number of steps taken per day. Do these values differ from the estimates from the first part of the assignment? What is the impact of imputing missing data on the estimates of the total daily number of steps?

### Are there differences in activity patterns between weekdays and weekends?
Using filled-in missing values for this part
1. Create a new factor variable in the dataset with two levels ("weekday" and "weekend")
2. Panel plot containing a time series plot of the 5-minute interval and the average number of steps taken, averaged across all weekday days or weekend days.
