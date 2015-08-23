## Getting and Cleaning Data Course Project
___

This project is a part of 'Getting and Cleaning Data' course offered by John Hopkins University on Coursera.The objective being the demonstration of the ability to collect, and clean the data.

The data for the project is taken from this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

During this project, the data collected from the above mentioned source is tranformed into a Tidy Data Set using following steps:

* Training and Test Data is merged into a single Data Set.
* Measurements of only mean and standard deviation variables are extracted from this Data Set.
* Activities in the Data Set are named using Descriptive names.
* Variables of this Data Set are named Descriptively.
* An independent Tidy Data Set is created from the above Data Set with the average of each variable for each activity and subject.

A Tidy Data Set adheres to the following Principles:

* Each variable measured should be in one column.
* Each different observation of that row should be in a different row.
* There should be different tables for different types of observations
* If there are multiple tables of related data, they should include a column in the tables that allows theese tables to be linked.

References:
[Hadley Wickham's Paper on Tidy Data](http://www.jstatsoft.org/v59/i10/paper),
[Tidy Data - Coursera Forum Discussion](),
[Getting and Cleaning Data week1 - Coursera tutorial]().

___

#### For each observation,the following details are provided:

* Name of the activity -
* Subject Identity -
* Average of Measurements for each activity and for each subject

___

#### The file set includes the following files:

* README.md

* CodeBook.md - This file contains the details of the variables for each observation of the transformed Data Set.

* run_analysis.R - This file contains the R Script that transforms the original Data Set into a Tidy Data Set.

___

#### Note: 

* The Tidy Data Set created as part of this project is a **Wide form** of data.
  [Wide Data - Coursera Forum Discussion]()
 