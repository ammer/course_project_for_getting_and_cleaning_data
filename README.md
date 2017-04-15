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

## Data book
There's 68 columns in the result data set:
#### 1. subject
One of the 30 volunteers, represented by number between 1 ~ 30
#### 2. active   
One of the 6 activities:         
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING   
#### 3. tBodyAcc.mean.X     
Average of *tBodyAcc-mean()-X* of *subject* and *active*, refer to file *features_info.txt*.  

#### 4. tBodyAcc.mean.Y      
Average of *tBodyAcc-mean()-Y* of *subject* and *active*, refer to file *features_info.txt*. 

#### 5. tBodyAcc.mean.Z     
Average of *tBodyAcc-mean()-Z* of *subject* and *active*, refer to file *features_info.txt*.        
#### 6. tBodyAcc.std.X    
Average of *tBodyAcc-std()-X* of *subject* and *active*, refer to file *features_info.txt*.          
#### 7. tBodyAcc.std.Y   
Average of *tBodyAcc-std()-Y* of *subject* and *active*, refer to file *features_info.txt*.           
#### 8. tBodyAcc.std.Z   
Average of *tBodyAcc-std()-Z* of *subject* and *active*, refer to file *features_info.txt*.          
#### 9. tGravityAcc.mean.X 
Average of *tGravityAcc-mean()-X* of *subject* and *active*, refer to file *features_info.txt*.         
#### 10. tGravityAcc.mean.Y   
Average of *tGravityAcc-mean()-Y* of *subject* and *active*, refer to file *features_info.txt*.       
#### 11. tGravityAcc.mean.Z  
Average of *tGravityAcc-mean()-Z* of *subject* and *active*, refer to file *features_info.txt*.        
#### 12. tGravityAcc.std.X   
Average of *tGravityAcc-std()-X* of *subject* and *active*, refer to file *features_info.txt*.       
#### 13. tGravityAcc.std.Y    
Average of *tGravityAcc-std()-Y* of *subject* and *active*, refer to file *features_info.txt*.       
#### 14. tGravityAcc.std.Z    
Average of *tGravityAcc-std()-Z* of *subject* and *active*, refer to file *features_info.txt*.       
#### 15. tBodyAccJerk.mean.X  
Average of *tBodyAccJerk-mean()-X* of *subject* and *active*, refer to file *features_info.txt*.       
#### 16. tBodyAccJerk.mean.Y   
Average of *tBodyAccJerk-mean()-Y* of *subject* and *active*, refer to file *features_info.txt*.     
#### 17. tBodyAccJerk.mean.Z   
Average of *tBodyAccJerk-mean()-Z* of *subject* and *active*, refer to file *features_info.txt*.      
#### 18. tBodyAccJerk.std.X   
Average of *tBodyAccJerk-std()-X* of *subject* and *active*, refer to file *features_info.txt*.       
#### 19. tBodyAccJerk.std.Y   
Average of *tBodyAccJerk-std()-Y* of *subject* and *active*, refer to file *features_info.txt*.       
#### 20. tBodyAccJerk.std.Z   
Average of *tBodyAccJerk-std()-Z* of *subject* and *active*, refer to file *features_info.txt*.   

#### 21. tBodyGyro.mean.X    
Average of *tBodyGyro-mean()-X* of *subject* and *active*, refer to file *features_info.txt*.        
#### 22. tBodyGyro.mean.Y    
Average of *tBodyGyro-mean()-X* of *subject* and *active*, refer to file *features_info.txt*.        
#### 23. tBodyGyro.mean.Z    
Average of *tBodyGyro-mean()-X* of *subject* and *active*, refer to file *features_info.txt*.        
#### 24. tBodyGyro.std.X     
Average of *tBodyGyro-std()-X* of *subject* and *active*, refer to file *features_info.txt*.       
#### 25. tBodyGyro.std.Y     
Average of *tBodyGyro-mean()-Y* of *subject* and *active*, refer to file *features_info.txt*.        
#### 26. tBodyGyro.std.Z     
Average of *tBodyGyro-mean()-Z* of *subject* and *active*, refer to file *features_info.txt*.        

#### 27. tBodyGyroJerk.mean.X   
Average of *tBodyGyroJerk-mean()-X* of *subject* and *active*, refer to file *features_info.txt*.     
#### 28. tBodyGyroJerk.mean.Y     
Average of *tBodyGyroJerk-mean()-Y* of *subject* and *active*, refer to file *features_info.txt*.  
#### 29. tBodyGyroJerk.mean.Z    
Average of *tBodyGyroJerk-mean()-Z* of *subject* and *active*, refer to file *features_info.txt*.    
#### 30. tBodyGyroJerk.std.X      
Average of *tBodyGyroJerk-std()-X* of *subject* and *active*, refer to file *features_info.txt*.   
#### 31. tBodyGyroJerk.std.Y      
Average of *tBodyGyroJerk-std()-Y* of *subject* and *active*, refer to file *features_info.txt*.   
#### 32. tBodyGyroJerk.std.Z      
Average of *tBodyGyroJerk-mean()-Z* of *subject* and *active*, refer to file *features_info.txt*.  

#### 33. tBodyAccMag.mean        
Average of *tBodyAccMag-mean()* of *subject* and *active*, refer to file *features_info.txt*.    
#### 34. tBodyAccMag.std           
Average of *tBodyAccMag-std()* of *subject* and *active*, refer to file *features_info.txt*.  
#### 35. tGravityAccMag.mean       
Average of *tGravityAccMag-mean()* of *subject* and *active*, refer to file *features_info.txt*.  
#### 36. tGravityAccMag.std       
Average of *tGravityAccMag-std()* of *subject* and *active*, refer to file *features_info.txt*.  

#### 37. tBodyAccJerkMag.mean      
Average of *tBodyAccJerkMag-mean()* of *subject* and *active*, refer to file *features_info.txt*.  
#### 38. tBodyAccJerkMag.std       
Average of *tBodyAccJerkMag-mean()* of *subject* and *active*, refer to file *features_info.txt*.  
#### 39. tBodyGyroMag.mean         
Average of *tBodyGyroMag-mean()* of *subject* and *active*, refer to file *features_info.txt*.  
#### 40. tBodyGyroMag.std         
Average of *tBodyGyroMag-std()* of *subject* and *active*, refer to file *features_info.txt*.  
#### 41. tBodyGyroJerkMag.mean     
Average of *tBodyGyroJerkMag-mean()* of *subject* and *active*, refer to file *features_info.txt*.  
#### 42. tBodyGyroJerkMag.std      
Average of *tBodyGyroJerkMag-std()* of *subject* and *active*, refer to file *features_info.txt*.  
#### 43. fBodyAcc.mean.X           
Average of *fBodyAcc-mean()-X* of *subject* and *active*, refer to file *features_info.txt*.  
#### 44. fBodyAcc.mean.Y          
Average of *fBodyAcc-mean()-Y* of *subject* and *active*, refer to file *features_info.txt*.  
#### 45. fBodyAcc.mean.Z           
Average of *fBodyAcc-mean()-Z* of *subject* and *active*, refer to file *features_info.txt*.  
#### 46. fBodyAcc.std.X            
Average of *fBodyAcc-std()-X* of *subject* and *active*, refer to file *features_info.txt*.  
#### 47. fBodyAcc.std.Y            
Average of *fBodyAcc-std()-Y* of *subject* and *active*, refer to file *features_info.txt*.  
#### 48. fBodyAcc.std.Z           
Average of *fBodyAcc-std()-Z* of *subject* and *active*, refer to file *features_info.txt*.  

#### 49. fBodyAccJerk.mean.X       
Average of *fBodyAccJerk-mean()-X* of *subject* and *active*, refer to file *features_info.txt*.  
#### 50. fBodyAccJerk.mean.Y       
Average of *fBodyAccJerk-mean()-Y* of *subject* and *active*, refer to file *features_info.txt*.  
#### 51. fBodyAccJerk.mean.Z      
Average of *fBodyAccJerk-mean()-Z* of *subject* and *active*, refer to file *features_info.txt*.   
#### 52. fBodyAccJerk.std.X      
Average of *fBodyAccJerk-std()-X* of *subject* and *active*, refer to file *features_info.txt*.   
#### 53. fBodyAccJerk.std.Y      
Average of *fBodyAccJerk-std()-Y* of *subject* and *active*, refer to file *features_info.txt*.    
#### 54. fBodyAccJerk.std.Z      
Average of *fBodyAccJerk-std()-Z* of *subject* and *active*, refer to file *features_info.txt*.    
#### 55. fBodyGyro.mean.X        
Average of *fBodyGyro-mean()-X* of *subject* and *active*, refer to file *features_info.txt*.    
#### 56. fBodyGyro.mean.Y        
Average of *fBodyGyro-mean()-Y* of *subject* and *active*, refer to file *features_info.txt*.   
#### 57. fBodyGyro.mean.Z        
Average of *fBodyGyro-mean()-Z* of *subject* and *active*, refer to file *features_info.txt*.    
#### 58. fBodyGyro.std.X         
Average of *fBodyGyro-std()-X* of *subject* and *active*, refer to file *features_info.txt*.    
#### 59. fBodyGyro.std.Y         
Average of *fBodyGyro-std()-Y* of *subject* and *active*, refer to file *features_info.txt*.    
#### 60. fBodyGyro.std.Z         
Average of *fBodyGyro-std()-Z* of *subject* and *active*, refer to file *features_info.txt*.  

#### 61. fBodyAccMag.mean        
Average of *fBodyAccMag-mean()* of *subject* and *active*, refer to file *features_info.txt*.    
#### 62. fBodyAccMag.std         
Average of *fBodyAccMag-mean()* of *subject* and *active*, refer to file *features_info.txt*.    
#### 63. fBodyBodyAccJerkMag.mean  
Average of *fBodyBodyAccJerkMag-mean()* of *subject* and *active*, refer to file *features_info.txt*.  
#### 64. fBodyBodyAccJerkMag.std  
Average of *fBodyBodyAccJerkMag-std()* of *subject* and *active*, refer to file *features_info.txt*.  
#### 65. fBodyBodyGyroMag.mean     
Average of *fBodyBodyGyroMag-mean()* of *subject* and *active*, refer to file *features_info.txt*.  
#### 66. fBodyBodyGyroMag.std      
Average of *fBodyBodyGyroMag-std()* of *subject* and *active*, refer to file *features_info.txt*.  
#### 67. fBodyBodyGyroJerkMag.mean 
Average of *fBodyBodyGyroJerkMag-mean()* of *subject* and *active*, refer to file *features_info.txt*.  
#### 68. fBodyBodyGyroJerkMag.std
Average of *fBodyBodyGyroJerkMag-std()* of *subject* and *active*, refer to file *features_info.txt*.  
