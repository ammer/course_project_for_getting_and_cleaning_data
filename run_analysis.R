# R script file for course project of "Getting and Cleaning Data"

library(dplyr)

## load data from file and select the required columns
#
# @params
#         data_file: data file path in the database, e.g.: '../UCI HAR Dataset/test/X_test.txt'
#      subject_file: subject file path in the database, e.g.: '../UCI HAR Dataset/test/subject_test.txt'
#        label_file: label file path in the database, e.g.: '../UCI HAR Dataset/test/y_test.txt'
#          features: load feature data-frame, from database file 'UCI HAR Dataset/features.txt'
#   activity_labels: activity names loaded from database file 'UCI HAR Dataset/activity_labels.txt'
# @ returns:
#   loaded data, with required vaviables and beatified column names
load_data <- function(data_file,
                      subject_file,
                      label_file,
                      features,
                      activity_labels) {
  # load subjects
  subject <- read.csv(subject_file, header = FALSE)
  # load active labels
  label <- read.csv(label_file, header = FALSE)
  # load raw data from sepcified file
  data <- read.table(data_file, col.names = features$V2)
  
  # get required variable names, they are the names include mean() or std()
  selected_features <-
    grep("(mean|std)[:(:][:):]", features$V2, value = FALSE)
  
  data %>%
    select(selected_features) %>%       # select columns
    mutate(subject = subject[[1]], active = activity_labels$V2[label[[1]]]) %>%  # add action and subject column
    (function(data) {                                                            # beatify column names
      names(data) = gsub("[:(:]|[:):]", '', names(data))                         # remove '()'
      names(data) = gsub("[:.:]{2,}", '.', names(data))                          # convert '...' or '..' to '.'
      names(data) = gsub("[:.:]$", '', names(data))                              # remove '.' at the end of name
      data
    })()
}

## load test data
#
# @params
#         db_root: root directory of database 'UCI HAR Dataset'
#        features: refer to function 'load_data'
# activity_labels: refer to function 'load_data'
# @returns
#    loaded 'test' data
load_test_data <- function(db_root, features, activity_labels) {
  # build path of needed files, according to structure of database 'UCI HAR Dataset'
  label_file <- file.path(db_root, "test", "y_test.txt")
  subject_file <- file.path(db_root, "test", "subject_test.txt")
  data_file <- file.path(db_root, "test", "X_test.txt")
  
  # load by function load_data
  load_data(
    data_file = data_file,
    subject_file = subject_file,
    label_file = label_file,
    features,
    activity_labels
  )
}

## load train data, refer to function load_test_data
load_train_data <- function(db_root, features, activity_labels) {
  label_file = file.path(db_root, "train", "y_train.txt")
  subject_file = file.path(db_root, "train", "subject_train.txt")
  data_file = file.path(db_root, "train", "X_train.txt")
  
  
  load_data(
    data_file = data_file,
    subject_file = subject_file,
    label_file = label_file,
    features,
    activity_labels
  )
}

## merge test and train data
merge_and_select_data <- function(db_root) {
  features <- read.table(file.path(db_root, "features.txt"))
  activity_labels <-
    read.table(file.path(db_root, "activity_labels.txt"))
  
  test <- load_test_data(db_root, features, activity_labels)
  train <- load_train_data(db_root, features, activity_labels)
  
  rbind(train, test)
}

## entry function of this script
#
# @params
#     db_root: root directory of the database 'UCI HAR Dataset'
#   out_file1: file which 'mean and standard deviation for each measurement' saved to
#   out_file2: file whith 'average of each variable for each activity and each subject' saved to
save_result_to_files <- function(db_root, out_file1, out_file2) {
  data <- merge_and_select_data(db_root)
  write.table(data, file = out_file1, row.names = FALSE)  # save file1
  
  data %>%
    group_by(subject, active) %>%   # group with subject and active
    summarize_all(mean) %>%         # caculate average of variables
    write.table(file = out_file2, row.names = FALSE)     # save file 2
}


## average of each variable for each activity and each subject
get_average_data <- function(db_root) {
  merge_and_select_data(db_root)  %>%
    group_by(subject, active) %>%   # group with subject and active
    summarize_all(mean)             # caculate average of variables
}

## call main to create the 2 required files
# Structure of directory should be:
#   ./--WorkDir
#     |--UCI HAR Dataset
#     |--test
#     |--train
#     |--...
#save_result_to_files (
#  "UCI HAR Dataset",
#  file.path(".", "merged_data.txt"),
#  file.path(".", "merged_data_average.txt")
#)

## Return data set required by part2
get_average_data('UCI HAR Dataset')

