## Getting and Cleanning Data Course Project:
## You should create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
run_analisis <- function() {
require("dplyr")
require("tidyr")

syxfiles <- list(s = c("./UCI HAR Dataset/test/subject_test.txt",
                        "./UCI HAR Dataset/train/subject_train.txt"), 
                  y = c("./UCI HAR Dataset/test/y_test.txt",
                        "./UCI HAR Dataset/train/y_train.txt"),
                  x = c("./UCI HAR Dataset/test/x_test.txt",
                        "./UCI HAR Dataset/train/x_train.txt"),
                  activityl = "./UCI HAR Dataset/activity_labels.txt",
                  features = "./UCI HAR Dataset/features.txt")
## read all needed files
activityfile <- read.table(syxfiles$activityl, sep = " ", 
                           header = FALSE, stringsAsFactors = FALSE)
featuresfile <- read.table(syxfiles$features, sep = " ", 
                           header = FALSE, stringsAsFactors = FALSE)$V2
## 
sfile <- as_data_frame(bind_rows(lapply(syxfiles$s, 
                                        read.table, sep = "", header = FALSE, 
                                        col.names = "subject", 
                                        colClasses = numeric())))
yfile <- as_data_frame(bind_rows(lapply(syxfiles$y, 
                                        read.table, sep = "", header = FALSE, 
                                        col.names = "activity", 
                                        colClasses = numeric())))
xfile <- as_data_frame(bind_rows(lapply(syxfiles$x, read.table, sep = "", 
                                        header = FALSE, colClasses = numeric())))
## end of reading files block -------------------------------------------------
syx_df <- as_data_frame(bind_cols(sfile, yfile, xfile))
## add column names to syx_dataframe (this is requested as step 4)
colnames(syx_df)[-c(1,2)] <- featuresfile
## End of request 1
## 2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
syx_df <- syx_df[c(1,2, grep("-mean()[^F]|-std()", names(syx_df)))]
## 3,- Use descriptive activity names to name the activities in the data set
##     will do this by constructing a named list to be used as a lookup table
##      subset colunm 1 from activityfile for the numbers
##      subset column 2 for the activity description
##      asign the names to the activity list
##      use dplyr mutate in syx_df to change activity values to activity description
activitynames <- activityfile$V1
activityvector <- activityfile[,2]
names(activityvector) <- activityfile$V1
syx_df <- syx_df %>% mutate(activity = unname(activityvector[activity]))
## end of request 3
## Clean up - delete unused files
rm(syxfiles, activityfile, featuresfile, sfile, yfile, xfile, activitynames, activityvector)
## 4. Appropriately labels the data set with descriptive variable names.
##      this request was already covered by adding colnames to syx_df at
##      the end of step 1.
##      will just remove "()" and "-" for cleaner variable namess and make all lowercase.
names(syx_df) <- gsub("[\\()-]", "", colnames(syx_df))
names(syx_df) <- tolower(names(syx_df))
## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.
tidydata <-syx_df %>% group_by(subject, activity) %>% summarise_each(funs(mean))%>%
                gather(feature, meanvalue, -(subject:activity))
return(tidydata)
## End of request 5
## tidydata 11880 Obs. 4 Variables
}




