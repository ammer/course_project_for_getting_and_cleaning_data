R script for course project of [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning/home/welcome)

## How to use the script
#### step1: set work directory to parent directory of 'UCI HAR Dataset' which contains the Samsung data
```R
> setwd('directory/of/your/work/dir')
> dir()                               
[1] "UCI HAR Dataset" 
> dir('UCI HAR Dataset')
[1] "activity_labels.txt" "features_info.txt"   "features.txt"        "README.txt"          "test"               
[6] "train"  
```

#### step2: load run_analysis.R
```R
> data <- source('path/to/run_analysis.R')
> head(data, n=1)
$value
Source: local data frame [180 x 68]
Groups: subject [?]

   subject             active tBodyAcc.mean.X tBodyAcc.mean.Y tBodyAcc.mean.Z tBodyAcc.std.X tBodyAcc.std.Y
     <int>             <fctr>           <dbl>           <dbl>           <dbl>          <dbl>          <dbl>
1        1             LAYING       0.2215982    -0.040513953      -0.1132036    -0.92805647   -0.836827406
2        1            SITTING       0.2612376    -0.001308288      -0.1045442    -0.97722901   -0.922618642
3        1           STANDING       0.2789176    -0.016137590      -0.1106018    -0.99575990   -0.973190056
4        1            WALKING       0.2773308    -0.017383819      -0.1111481    -0.28374026    0.114461337
5        1 WALKING_DOWNSTAIRS       0.2891883    -0.009918505      -0.1075662     0.03003534   -0.031935943
6        1   WALKING_UPSTAIRS       0.2554617    -0.023953149      -0.0973020    -0.35470803   -0.002320265
7        2             LAYING       0.2813734    -0.018158740      -0.1072456    -0.97405946   -0.980277399
8        2            SITTING       0.2770874    -0.015687994      -0.1092183    -0.98682228   -0.950704499
9        2           STANDING       0.2779115    -0.018420827      -0.1059085    -0.98727189   -0.957304989
10       2            WALKING       0.2764266    -0.018594920      -0.1055004    -0.42364284   -0.078091253
# ... with 170 more rows, and 61 more variables: tBodyAcc.std.Z <dbl>, tGravityAcc.mean.X <dbl>,
#   tGravityAcc.mean.Y <dbl>, tGravityAcc.mean.Z <dbl>, tGravityAcc.std.X <dbl>, tGravityAcc.std.Y <dbl>,
#   tGravityAcc.std.Z <dbl>, tBodyAccJerk.mean.X <dbl>, tBodyAccJerk.mean.Y <dbl>, tBodyAccJerk.mean.Z <dbl>,
#   tBodyAccJerk.std.X <dbl>, tBodyAccJerk.std.Y <dbl>, tBodyAccJerk.std.Z <dbl>, tBodyGyro.mean.X <dbl>,
#   tBodyGyro.mean.Y <dbl>, tBodyGyro.mean.Z <dbl>, tBodyGyro.std.X <dbl>, tBodyGyro.std.Y <dbl>,
#   tBodyGyro.std.Z <dbl>, tBodyGyroJerk.mean.X <dbl>, tBodyGyroJerk.mean.Y <dbl>, tBodyGyroJerk.mean.Z <dbl>,
#   tBodyGyroJerk.std.X <dbl>, tBodyGyroJerk.std.Y <dbl>, tBodyGyroJerk.std.Z <dbl>, tBodyAccMag.mean <dbl>,
#   tBodyAccMag.std <dbl>, tGravityAccMag.mean <dbl>, tGravityAccMag.std <dbl>, tBodyAccJerkMag.mean <dbl>,
#   tBodyAccJerkMag.std <dbl>, tBodyGyroMag.mean <dbl>, tBodyGyroMag.std <dbl>, tBodyGyroJerkMag.mean <dbl>,
#   tBodyGyroJerkMag.std <dbl>, fBodyAcc.mean.X <dbl>, fBodyAcc.mean.Y <dbl>, fBodyAcc.mean.Z <dbl>,
#   fBodyAcc.std.X <dbl>, fBodyAcc.std.Y <dbl>, fBodyAcc.std.Z <dbl>, fBodyAccJerk.mean.X <dbl>,
#   fBodyAccJerk.mean.Y <dbl>, fBodyAccJerk.mean.Z <dbl>, fBodyAccJerk.std.X <dbl>, fBodyAccJerk.std.Y <dbl>,
#   fBodyAccJerk.std.Z <dbl>, fBodyGyro.mean.X <dbl>, fBodyGyro.mean.Y <dbl>, fBodyGyro.mean.Z <dbl>,
#   fBodyGyro.std.X <dbl>, fBodyGyro.std.Y <dbl>, fBodyGyro.std.Z <dbl>, fBodyAccMag.mean <dbl>,
#   fBodyAccMag.std <dbl>, fBodyBodyAccJerkMag.mean <dbl>, fBodyBodyAccJerkMag.std <dbl>,
#   fBodyBodyGyroMag.mean <dbl>, fBodyBodyGyroMag.std <dbl>, fBodyBodyGyroJerkMag.mean <dbl>,
#   fBodyBodyGyroJerkMag.std <dbl>
```

Or you can run ```get_average_data('UCI HAR Dataset')``` after load the R script:
```R
> data <- get_average_data('UCI HAR Dataset')
> dim(data)
[1] 180  68
```

