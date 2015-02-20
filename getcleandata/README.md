
#Getting and Cleanning Data
##Course Project  
Tidy dataset with mean values for subset of mean and std features of Human Activity Recognition Using 
Smartphones Dataset Version 1.0  


###This project is composed of three files:

####1. A tidy data set  
This set is arranged according to tidy data recommendations. 
It consists of 11880 observations and 4 variables.  

You can read the file and check the data set with the following R code:  

	tidydata <- read.table("https://s3.amazonaws.com/coursera-uploads/user-6983aa4f5d6760978c587495/973498/asst-3/e70216c0b89111e4a7906f1a39575b95.txt", header = TRUE)
	View(tidydata)
	

####2. A code book 
CodeBook.md 
The code book describes the variables, the data, and transformations or work performed
to clean up the data.   
  
  
####3. A script for performing the analysis: 
run_analysis.R  
This scipt requires the latest version of packages:

- dplyr 0.4.1
- tidyr 0.2.0

The script will 

1. Reads from main directory the Samsung data and Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Assigns descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  

#
Once the file is in your working directory, you can use the following R code to run the script and see the data:  

    source('run_analysis.R')
	tidydata <- run_analisis()
	View(tidydata)


###Notes: 

For more information on tidy data visit the following link:  
[https://class.coursera.org/getdata-011/forum/thread?thread_id=248](https://class.coursera.org/getdata-011/forum/thread?thread_id=248)
