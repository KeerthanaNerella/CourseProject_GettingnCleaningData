## Code Book - Getting and Cleaning Data_Course Project         

___

The variables included in the Tidy Data Set created as part of this project are a result of extraction of mean() and std() variables from [Project Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

A detailed description of features for the original data is presented in the features_info.txt file and the complete list of variables of each feature vector is available in 'features.txt' file of the above project data.

___

#### The variables of the Tidy Data Set of this project are as follows:

**Note:** 
The variables with prefix 't' denote time domain signals and those with prefix 'f' denote frequency domain signals.

1. activity_name - activity_name tells about the activity for which the observation was recorded.

    * The following Set constitutes the value domain for activity_name                (WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING)

   
2. subject_id - Subject_id tells about the identity of the subject who performed         the observation. The values of subject_id are integers from 1 to 30.

3. tBodyAccelerometer_mean_X - This variable is mean of mean values of the body signals from accelerometer in direction X

4. tBodyAccelerometer_mean_Y - This variable is mean of mean values of the body signals from accelerometer in direction Y

5. tBodyAccelerometer_mean_Z - This variable is mean of mean values of the body signals from accelerometer in direction Z

6. tBodyAccelerometer_StandaradDeviation_X - This variable is mean of standard deviation values of the body signals from accelerometer in direction X

7. tBodyAccelerometer_StandaradDeviation_Y - This variable is mean of standard deviation values of the body signals from accelerometer in direction Y

8. tBodyAccelerometer_StandaradDeviation_Z - This variable is mean of standard deviation values of the body signals from accelerometer in direction Z

9. tGravityAccelerometer_mean_X - This variable is mean of mean values of the gravity signals from accelerometer in direction X

10. tGravityAccelerometer_mean_Y - This variable is mean of mean values of the gravity signals from accelerometer in direction Y

11. tGravityAccelerometer_mean_Z - This variable is mean of mean values of the gravity signals from accelerometer in direction Z

12. tGravityAccelerometer_StandaradDeviation_X - This variable is mean of standard deviation values of the gravity signals from accelerometer in direction X

13. tGravityAccelerometer_StandaradDeviation_Y - This variable is mean of standard deviation values of the gravity signals from accelerometer in direction Y

14. tGravityAccelerometer_StandaradDeviation_Z - This variable is mean of standard deviation values of the gravity signals from accelerometer in direction Z

15. tBodyAccelerometerJerk_mean_X - This variable is mean of mean values of the body jerk signals from accelerometer in direction X

16. tBodyAccelerometerJerk_mean_Y - This variable is mean of mean values of the body jerk signals from accelerometer in direction Y

17. tBodyAccelerometerJerk_mean_Z - This variable is mean of mean values of the body jerk signals from accelerometer in direction Z

18. tBodyAccelerometerJerk_StandaradDeviation_X - This variable is mean of standard deviation values of the body jerk signals from accelerometer in direction X

19. tBodyAccelerometerJerk_StandaradDeviation_Y - This variable is mean of standard deviation values of the body jerk signals from accelerometer in direction Y

20. tBodyAccelerometerJerk_StandaradDeviation_Z - This variable is mean of standard deviation values of the body jerk signals from accelerometer in direction Z

21. tBodyGyroscope_mean_X - This variable is mean of mean values of the body signals from gyroscope in direction X

22. tBodyGyroscope_mean_Y - This variable is mean of mean values of the body signals from gyroscope in direction Y

23. tBodyGyroscope_mean_Z - This variable is mean of mean values of the body signals from gyroscope in direction X

24. tBodyGyroscope_StandaradDeviation_X - This variable is mean of standard deviation values of the body signals from gyroscope in direction X

25. tBodyGyroscope_StandaradDeviation_Y - This variable is mean of standard deviation values of the body signals from gyroscope in direction Y

26. tBodyGyroscope_StandaradDeviation_Z - This variable is mean of standard deviation values of the body signals from gyroscope in direction Z

27. tBodyGyroscopeJerk_mean_X - This variable is mean of mean values of the body jerk signals from gyroscope in direction X

28. tBodyGyroscopeJerk_mean_Y - This variable is mean of mean values of the body jerk signals from gyroscope in direction Y

29. tBodyGyroscopeJerk_mean_Z - This variable is mean of mean values of the body jerk signals from gyroscope in direction Z

30. tBodyGyroscopeJerk_StandaradDeviation_X - This variable is mean of standard deviation values of the body jerk signals from gyroscope in direction X

31. tBodyGyroscopeJerk_StandaradDeviation_Y - This variable is mean of standard deviation values of the body jerk signals from gyroscope in direction Y

32. tBodyGyroscopeJerk_StandaradDeviation_Z - This variable is mean of standard deviation values of the body jerk signals from gyroscope in direction Z

33. tBodyAccelerometerMagnitude_mean - This variable is mean of mean values of the  magnitude of the body signals from accelerometer

34. tBodyAccelerometerMagnitude_StandaradDeviation - This variable is mean of standard deviation values of the  magnitude of the body signals from accelerometer

35. tGravityAccelerometerMagnitude_mean - This variable is mean of mean values of the  magnitude of the gravity signals from accelerometer

36. tGravityAccelerometerMagnitude_StandaradDeviation - This variable is mean of standard deviation values of the  magnitude of the gravity signals from accelerometer

37. tBodyAccelerometerJerkMagnitude_mean - This variable is mean of mean values of the  magnitude of the body jerk signals from accelerometer

38. tBodyAccelerometerJerkMagnitude_StandaradDeviation - This variable is mean of standard deviation values of the  magnitude of the body jerk signals from accelerometer

39. tBodyGyroscopeMagnitude_mean - This variable is mean of mean values of the  magnitude of the body signals from gyroscope

40. tBodyGyroscopeMagnitude_StandaradDeviation - This variable is mean of standard deviation values of the  magnitude of the body signals from gyroscope

41. tBodyGyroscopeJerkMagnitude_mean - This variable is mean of mean values of the  magnitude of the body jerk signals from gyroscope

42. tBodyGyroscopeJerkMagnitude_StandaradDeviation - This variable is mean of standard deviation values of the  magnitude of the body jerk signals from gyroscope

43. fBodyAccelerometer_mean_X -  This variable is mean of mean values of the body signals from accelerometer in direction X

44. fBodyAccelerometer_mean_Y -  This variable is mean of mean values of the body signals from accelerometer in direction Y

45. fBodyAccelerometer_mean_Z -  This variable is mean of mean values of the body signals from accelerometer in direction Z

46. fBodyAccelerometer_StandaradDeviation_X -  This variable is mean of standard deviation values of the body signals from accelerometer in direction X

47. fBodyAccelerometer_StandaradDeviation_Y -  This variable is mean of standard deviation values of the body signals from accelerometer in direction Y

48. fBodyAccelerometer_StandaradDeviation_Z -  This variable is mean of standard deviation values of the body signals from accelerometer in direction Z

49. fBodyAccelerometerJerk_mean_X -  This variable is mean of mean values of the body jerk signals from accelerometer in direction X

50. fBodyAccelerometerJerk_mean_Y -  This variable is mean of mean values of the body jerk signals from accelerometer in direction Y

51. fBodyAccelerometerJerk_mean_Z -  This variable is mean of mean values of the body jerk signals from accelerometer in direction Z

52. fBodyAccelerometerJerk_StandaradDeviation_X -  This variable is mean of standard deviation values of the body jerk signals from accelerometer in direction X

53. fBodyAccelerometerJerk_StandaradDeviation_Y -  This variable is mean of standard deviation values of the body jerk signals from accelerometer in direction Y

54. fBodyAccelerometerJerk_StandaradDeviation_Z -  This variable is mean of standard deviation values of the body jerk signals from accelerometer in direction Z

55. fBodyGyroscope_mean_X -  This variable is mean of mean values of the body signals from gyroscope in direction X

56. fBodyGyroscope_mean_Y -  This variable is mean of mean values of the body signals from gyroscope in direction Y

57. fBodyGyroscope_mean_Z -  This variable is mean of mean values of the body signals from gyroscope in direction Z

58. fBodyGyroscope_StandaradDeviation_X -  This variable is mean of standard deviation values of the body signals from gyroscope in direction X

59. fBodyGyroscope_StandaradDeviation_Y -  This variable is mean of standard deviation values of the body signals from gyroscope in direction Y

60. fBodyGyroscope_StandaradDeviation_Z -  This variable is mean of standard deviation values of the body signals from gyroscope in direction Z

61. fBodyAccelerometerMagnitude_mean -  This variable is mean of mean values of the magnitude of body signals from accelerometer

62. fBodyAccelerometerMagnitude_StandaradDeviation -  This variable is mean of standard deviation values of the magnitude of body signals from accelerometer

63. fBodyAccelerometerJerkMagnitude_mean -  This variable is mean of mean values of the magnitude of body jerk signals from accelerometer

64. fBodyAccelerometerJerkMagnitude_StandaradDeviation -  This variable is mean of standard deviation values of the magnitude of body jerk signals from accelerometer

65. fBodyGyroscopeMagnitude_mean -  This variable is mean of mean values of the magnitude of body signals from gyroscope

66. fBodyGyroscopeMagnitude_StandaradDeviation -  This variable is mean of standard deviation values of the magnitude of body signals from gyroscope

67. fBodyGyroscopeJerkMagnitude_mean -  This variable is mean of mean values of the magnitude of body jerk signals from gyroscope

68. fBodyGyroscopeJerkMagnitude_StandaradDeviation -  This variable is mean of standard deviation values of the magnitude of body jerk signals from gyroscope

**Note:**

The domain values(range) of all the above variables except for activity_name and subject_id is -1 to +1