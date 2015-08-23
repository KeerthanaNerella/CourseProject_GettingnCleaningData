## Step 1: Merges the training and the test sets to create one data set.

## Reading column names for training and test data from features.txt file

## For this assignment, the features.txt file is placed at following path in working directory
##     project/

col_names<-read.table("project/features.txt")
col_names<-as.character(col_names$V2)



## For this assignment, the data related to training and test is placed at following path in working directory
##     training data - project/train/
##     test data -  project/test/


## Reading measurements of various training and test variables from X_train and X_test files using read.table()
## we are also providing the names to the variables using col.names attribute of read.table()
## with the column names as read above from features.txt

X_train<-read.table("project/train/X_train.txt",col.names = col_names)
X_test<-read.table("project/test/X_test.txt",col.names = col_names)

## Reading activities of training and test measurements from y_train and y_test files using read.table()
## we are also providing the names to the variables using col.names attribute of read.table()

y_train<-read.table("project/train/y_train.txt",col.names = "activity_no")
y_test<-read.table("project/test/y_test.txt",col.names = "activity_no")

## Reading subjects of training and test measurements from subject_train and subject_test files using read.table()
## we are also providing the names to the variables using col.names attribute of read.table()

subject_train<-read.table("project/train/subject_train.txt",col.names = "subject_id")
subject_test<-read.table("project/test/subject_test.txt",col.names = "subject_id")

## Binding together subject, activity and measurements of training and test data using cbind()

data_train<-cbind(subject_train,y_train,X_train)
data_test<-cbind(subject_test,y_test,X_test)


## loading dplyr package using require
## If dplyr package is not already installed, the following code installs the package and then loads it
## If dplyr packae is installed, it simply loads the package

if(require(dplyr)!=TRUE)
{
        install.packages("dplyr")
        require(dplyr)
}

## Merging training and test data sets using bind_rows() of dplyr package

merged_train_test_data<-bind_rows(data_train,data_test)

##Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 

## Extracting indices of required columns(only mean and standard deviation columns)

mean_col_index<-grep("mean()",col_names,fixed=TRUE)
std_col_index<-grep("std()",col_names,fixed=TRUE)

## Putting together mean and standard deviation column indices

req_col_index<-c(mean_col_index,std_col_index)

## Sorting the mean and standard deviation indices;
## so that the order of variables in the extracted data is same as that of the data provided

req_col_index<-sort(req_col_index)

## since activity_no and subject_id are first two columns,we increase the req_index by 2
req_col_index<-req_col_index+2

req_col_index<-c(1,2,req_col_index)
## Extracting data of only mean and standard deviation from each measurement using
## select() function of dplyr package

data_req<-select(merged_train_test_data,req_col_index)

## Step 3: Uses Descriptive Activity names to the activities in the merged data set


## For this assignment, the activity_labels.txt file is placed at following path in working directory
##     project/

##  Reading labels of activities from activity_labels.txt file using read.table()
##  we are also providing the names to the variables using col.names attribute of read.table()

activity_labels<-read.table("project/activity_labels.txt",col.names = c("activity_no","activity_name"))


## Adding descriptive activity names to activities in the above merged data set

data_req<-merge(activity_labels,data_req,by.x="activity_no",by.y = "activity_no")

## Step 4: Labelling the data set with descriptive variable names

## retreiving names of the variables of extracted dataset
req_col_index<-req_col_index[3:length(req_col_index)]
req_col_index<-req_col_index-2
col_names<-col_names[req_col_index]
col_names<-c("activity_no","activity_name","subject_id",col_names)

## Removing parenthesis from variable names
col_names<-gsub("\\(\\)","",col_names)

## Replacing hyphens(-) and commas(,) with underscorores(_) in variable names
col_names<-gsub("-","_",col_names)
col_names<-gsub(",","_",col_names)

## Expanding 'acc','gyro' in variable names to 'Accelerometer' and 'Gyroscope' respectively
## as these variables are the readings obtained from Accelerometer and Gyroscope respectively
## Expanding 'Mag' in variable names to 'Magnitude' 
## Expanding 'std' in variable names to 'StandardDeviation' as std() stands for Standard Deviation
## Replacing Repeated Ocuurence of 'Body' in column names to a single
## Reference: features_info.txt provided with the data

col_names<-gsub("acc","Accelerometer",col_names,ignore.case = TRUE)
col_names<-gsub("gyro","Gyroscope",col_names,ignore.case = TRUE)
col_names<-gsub("Mag","Magnitude",col_names,ignore.case = TRUE)
col_names<-gsub("_std","_StandaradDeviation",col_names,ignore.case = TRUE)
col_names<-gsub("BodyBody","Body",col_names,ignore.case = TRUE)

## Assigning the descriptive variable names to the dataset

names(data_req)<-col_names


## Step:5 Creating a second, independent tidy data set 
## with the average of each variable for each activity and each subject

## selecting all variables except 'activity_no' using select() of dplyr package
## grouping the data by 'activity_name' and 'subject_id'using group_by() of dplyr package
## calculating the average of each variable using summarise_each() of dplyr package
## pipe (%>%) is made use of to chain the relevant statements together.

tidy_data_set<-select(data_req,-activity_no)%>%
        group_by(activity_name,subject_id)%>%
        summarise_each(funs(mean))


write.table(tidy_data_set,file="project/Tidy_DataSet.txt",row.names = FALSE)

## To read the Tidy_DataSet.txt file created above into a variable tidy_data,
## use the below statement
## tidy_data_set<-read.table("project/Tidy_DataSet.txt",header=TRUE,check.names=FALSE)
