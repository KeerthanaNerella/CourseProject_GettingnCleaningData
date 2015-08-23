## Getting and Cleaning Data Course Project
___

This project is a part of 'Getting and Cleaning Data' course offered by John Hopkins University on Coursera.The objective being the demonstration of the ability to collect, and clean the data.

The data for the project is taken from this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

This data is collected during experiments conducted under **Human Activity Recognition Using Smartphones** 

The detailed description of the data is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

___

#### For each observation,the following details are provided:

* Name of the activity
* Identity of the Subject
* Average of Measurements for each activity and for each subject

The details pertaining to the variables are available in CookBook.md file.

Also, detailed descriptions of these variables can be found in **features.txt,features_info.txt** files of the [Project Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

___

#### The file set includes the following files:

* README.md

* CodeBook.md - This file contains the details of the variables for each observation of the transformed Data Set.

* run_analysis.R - This file contains the R Script that contains the steps to transform the original Data Set into a Tidy Data Set.The steps followed are also listed under **Transformatin Steps** section of this file.

___

#### Transformation Steps:


During this project, the data collected from the above mentioned source is tranformed into a Tidy Data Set using following steps:

1. Training and Test Data is merged into a single Data Set.
  * Measurements, Identities of the subjects, Activity numbers are bound column-wise.
    * Measurements are fetched from X_train.txt and X_test.txt;
    * Subject identities are fetched from subject_train.txt and subject_test.txt;
    * Activitity numbers are fetched from y_train.txt and y_test.txt;
  * Training and Test details modified above are then bound/merged together row-wise.
  
2. Measurements of only mean and standard deviation variables are extracted from the above Data Set.
  * Fetch the variables with 'mean()' and 'std()' in their names.
    * Even though there are other variables with 'mean' and 'std' in their names, some of them are weighted means and some are angles and hence these are not considered.
      Reference:[Which features to include discussion from Coursera](https://class.coursera.org/getdata-031/forum/thread?thread_id=305)
      
3. Activities in the above Data Set are named using Descriptive names.
  * Activity numbers in the above Data Set are replaced with corresponding Activity Names fetched from Activity_Labels.txt;
  
4. Variables of this Data Set are named Descriptively.
  * To make the variables more understandable/Descriptive,
    * commas(,) and hyphens(-) are replaced with underscores(_);
    * parenthesis are removed;
    * Abbreviations like acc,gyro,std are replaced with accelerometer, gyroscope respectively as those are the measurements taken from these instruments.
  
5. An independent Tidy Data Set is created from the above Data Set with the average of each variable for each activity and subject.
  * Data from the above Data Set is grouped by activity name and subject;
  * On this grouped Data Set, mean of the measurement variables is calculated;
  * Activity Number variable is removed from this data set as having both Activity Numbers and Activity Names is redundant and Activity Names are far more descriptive.
 

The resulting Data Set from the above steps is a Tidy Data Set as it adheres to the following Principles that marks a Tidy Data Set:

* Each variable measured should be in one column.
* Each different observation of that row should be in a different row.
* There should be different tables for different types of observations
* If there are multiple tables of related data, they should include a column in the tables that allows theese tables to be linked.

References:
[Hadley Wickham's Paper on Tidy Data](http://www.jstatsoft.org/v59/i10/paper),
[Tidy Data - Coursera Forum Discussion](https://class.coursera.org/getdata-031/forum/thread?thread_id=113),
[Getting and Cleaning Data week1 - Coursera tutorial](https://class.coursera.org/getdata-031/lecture/7).

6. This Tidy Data Set is written to a file called Tidy_DataSet.txt


The R Script corresponding to these steps is also available in run_analysis.R file provided.

___

#### Note: 

* The Tidy Data Set created as part of this project is a **Wide form** of data.
* Wide form of data is chosen following the discussions at
    1) [Tidy Data - Coursera Forum Discussion](https://class.coursera.org/getdata-031/forum/thread?thread_id=113),
    2) [Detailed Project FAQ -Coursera Forum Discussion](https://class.coursera.org/getdata-031/forum/thread?thread_id=28),
    3) [Getting and Cleaning Data week3 - Coursera tutorial](https://class.coursera.org/getdata-031/lecture/37)

* The R Script run_analysis.R can be run/executed using the following R code:

     `source("run_analysis.R")`
     
     * Please Note the above line of code works only when **run_analysis.R is in R Working Directory. Also, the project data should be under "project" folder in working directory.**
    
* The data written to Tidy_DataSet.txt can be read into a Data Set in R using the following R code:

     `tidy_data<-read.table("project/Tidy_DataSet.txt",header=TRUE,check.names=FALSE)`

 