# Getting and Cleaning Data Course Project - Code Book

## Data

The result set shows the average of each measurement (where measurement can be a mean or standard deviation as shown by the variable name), per activity and subject.

Subjects are given a numerical reference and anonymised.

Activity names are as follows:

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

In the source data, each record represents a series of measurements taken for a subject carrying out one of these activities.

## Variables in the results data set

subject_name: the 'name' (i.e. numerical reference) of the study participant that the value relates to.
activity_name: the type of activity (e.g. walking) that the value relates to.

The remaining variables show the measured value for that observation. The conventions are the letter X/Y/Z to show the 'axis' of movement, Mean/St.Dev to show whether the measured value is a mean or a standard deviation, with a prefix such as tBodyAcc to show the specific sensor being measured: accelerometer, gyroscope. The full list is:

1. tBodyAcc Mean-X
2. tBodyAcc Mean-Y
3. tBodyAcc Mean-Z
4. tBodyAcc St. Dev.-X
5. tBodyAcc St. Dev.-Y
6. tBodyAcc St. Dev.-Z
7. tGravityAcc Mean-X
8. tGravityAcc Mean-Y
9. tGravityAcc Mean-Z
10. tGravityAcc St. Dev.-X
11. tGravityAcc St. Dev.-Y
12. tGravityAcc St. Dev.-Z
13. tBodyAccJerk Mean-X
14. tBodyAccJerk Mean-Y
15. tBodyAccJerk Mean-Z
16. tBodyAccJerk St. Dev.-X
17. tBodyAccJerk St. Dev.-Y
18. tBodyAccJerk St. Dev.-Z
19. tBodyGyro Mean-X
20. tBodyGyro Mean-Y
21. tBodyGyro Mean-Z
22. tBodyGyro St. Dev.-X
23. tBodyGyro St. Dev.-Y
24. tBodyGyro St. Dev.-Z
25. tBodyGyroJerk Mean-X
26. tBodyGyroJerk Mean-Y
27. tBodyGyroJerk Mean-Z
28. tBodyGyroJerk St. Dev.-X
29. tBodyGyroJerk St. Dev.-Y
30. tBodyGyroJerk St. Dev.-Z
31. tBodyAccMag Mean
32. tBodyAccMag St. Dev.
33. tGravityAccMag Mean
34. tGravityAccMag St. Dev.
35. tBodyAccJerkMag Mean
36. tBodyAccJerkMag St. Dev.
37. tBodyGyroMag Mean
38. tBodyGyroMag St. Dev.
39. tBodyGyroJerkMag Mean
40. tBodyGyroJerkMag St. Dev.
41. fBodyAcc Mean-X
42. fBodyAcc Mean-Y
43. fBodyAcc Mean-Z
44. fBodyAcc St. Dev.-X
45. fBodyAcc St. Dev.-Y
46. fBodyAcc St. Dev.-Z
47. fBodyAccJerk Mean-X
48. fBodyAccJerk Mean-Y
49. fBodyAccJerk Mean-Z
50. fBodyAccJerk St. Dev.-X
51. fBodyAccJerk St. Dev.-Y
52. fBodyAccJerk St. Dev.-Z
53. fBodyGyro Mean-X
54. fBodyGyro Mean-Y
55. fBodyGyro Mean-Z
56. fBodyGyro St. Dev.-X
57. fBodyGyro St. Dev.-Y
58. fBodyGyro St. Dev.-Z
59. fBodyAccMag Mean
60. fBodyAccMag St. Dev.
61. fBodyBodyAccJerkMag Mean
62. fBodyBodyAccJerkMag St. Dev.
63. fBodyBodyGyroMag Mean
64. fBodyBodyGyroMag St. Dev.
65. fBodyBodyGyroJerkMag Mean
66. fBodyBodyGyroJerkMag St. Dev.

## Data transformations

Compared to the source datasets, the following transformations were carried out:

1. Merged the "training" and "test" datasets into a single dataset
2. Named the variables in a more accessible format and selected only the variables relating to mean and standard deviation.
3. Averaged the variable values per subject and activity.