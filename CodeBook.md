Codebook
========

Getting Data
---------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Cleaning Data
-------------
Since we are just interested about the mean and standard deviation variables, we excluded all variables that are about these others measures:
* Median absolute deviation 
* Largest value in array
* Smallest value in array
* Signal magnitude area
* Energy measure. Sum of the squares divided by the number of values. 
* Interquartile range 
* Signal entropy
* Autorregresion coefficients with Burg order equal to 4
* correlation coefficient between two signals
* index of the frequency component with largest magnitude
* Weighted average of the frequency components to obtain a mean frequency
* skewness of the frequency domain signal 
* kurtosis of the frequency domain signal 
* Energy of a frequency interval within the 64 bins of the FFT of each window.
* Angle between to vectors.

Including the subject identifier and the activity performed by him, the cleaned data has 68 variables. All these variable names was changed to make them more descriptive. 

Since there aren't constraints about join training and test datasets, they are concatenated in the clean data.

At last, the clean data was used to build a tidy data set with the average of each variable for each activity and each subject, which is saved like tidyData.txt.

Variables
---------
1. **subject** - an identifier of the subject who carried out the experiment. *Values:* [1,30]
2. **activity** - an activity performed by each subject. *Values:* WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3. **timedomainbodyaccelerationmeanxaxis** - the acceleration mean of a subject in X axis (time domain). *Values:* [-1,1]
4. **timedomainbodyaccelerationmeanyaxis** - the acceleration mean of a subject in Y axis (time domain). *Values:* [-1,1]
5. **timedomainbodyaccelerationmeanzaxis** - the acceleration mean of a subject in Z axis (time domain). *Values:* [-1,1]
6. **timedomainbodyaccelerationstandarddeviationxaxis** - the acceleration standard deviation of a subject in X axis (time domain). *Values:* [-1,1]
7. **timedomainbodyaccelerationstandarddeviationyaxis** - the acceleration standard deviation of a subject in Y axis (time domain). *Values:* [-1,1]
8. **timedomainbodyaccelerationstandarddeviationzaxis** - the acceleration standard deviation of a subject in Z axis (time domain). *Values:* [-1,1]
9. **timedomaingravityaccelerationmeanxaxis** - the acceleration mean of the gravity in X axis (time domain). *Values:* [-1,1]
10. **timedomaingravityaccelerationmeanyaxis** - the acceleration mean of the gravity in Y axis (time domain). *Values:* [-1,1]
11. **timedomaingravityaccelerationmeanzaxis** - the acceleration mean of the gravity in Z axis (time domain). *Values:* [-1,1]
12. **timedomaingravityaccelerationstandarddeviationxaxis** - the acceleration standard deviation of the gravity in X axis (time domain). *Values:* [-1,1]
13. **timedomaingravityaccelerationstandarddeviationyaxis** - the acceleration standard deviation of the gravity in Y axis (time domain). *Values:* [-1,1]
14. **timedomaingravityaccelerationstandarddeviationzaxis** - the acceleration standard deviation of the gravity in Z axis (time domain). *Values:* [-1,1]
15. **timedomainbodyaccelerationjerkmeanxaxis** - the acceleration jerk mean of a subject in X axis (time domain). *Values:* [-1,1]
16. **timedomainbodyaccelerationjerkmeanyaxis** - the acceleration jerk mean of a subject in Y axis (time domain). *Values:* [-1,1]
17. **timedomainbodyaccelerationjerkmeanzaxis** - the acceleration jerk mean of a subject in Z axis (time domain). *Values:* [-1,1]
18. **timedomainbodyaccelerationjerkstandarddeviationxaxis** - the acceleration jerk standard deviation of a subject in X axis (time domain). *Values:* [-1,1]
19. **timedomainbodyaccelerationjerkstandarddeviationyaxis** - the acceleration jerk standard deviation of a subject in Y axis (time domain). *Values:* [-1,1]
20. **timedomainbodyaccelerationjerkstandarddeviationzaxis** - the acceleration jerk standard deviation of a subject in Z axis (time domain). *Values:* [-1,1]
21. **timedomainbodyangularvelocitymeanxaxis** - the angular velocity mean of a subject in X axis (time domain). *Values:* [-1,1]
22. **timedomainbodyangularvelocitymeanyaxis** - the angular velocity mean of a subject in Y axis (time domain). *Values:* [-1,1]
23. **timedomainbodyangularvelocitymeanzaxis** - the angular velocity mean of a subject in Z axis (time domain). *Values:* [-1,1]
24. **timedomainbodyangularvelocitystandarddeviationxaxis** - the angular velocity standard deviation of a subject in X axis (time domain). *Values:* [-1,1]
25. **timedomainbodyangularvelocitystandarddeviationyaxis** - the angular velocity standard deviation of a subject in Y axis (time domain). *Values:* [-1,1]
26. **timedomainbodyangularvelocitystandarddeviationzaxis** - the angular velocity standard deviation of a subject in Z axis (time domain). *Values:* [-1,1]
27. **timedomainbodyangularvelocityjerkmeanxaxis** - the angular velocity jerk mean of a subject in X axis (time domain). *Values:* [-1,1]
28. **timedomainbodyangularvelocityjerkmeanyaxis** - the angular velocity jerk mean of a subject in Y axis (time domain). *Values:* [-1,1]
29. **timedomainbodyangularvelocityjerkmeanzaxis** - the angular velocity jerk mean of a subject in Z axis (time domain). *Values:* [-1,1]
30. **timedomainbodyangularvelocityjerkstandarddeviationxaxis** - the angular velocity jerk standard deviation of a subject in X axis (time domain). *Values:* [-1,1]
31. **timedomainbodyangularvelocityjerkstandarddeviationyaxis** - the angular velocity jerk standard deviation of a subject in Y axis (time domain). *Values:* [-1,1]
32. **timedomainbodyangularvelocityjerkstandarddeviationzaxis** - the angular velocity jerk standard deviation of a subject in Z axis (time domain). *Values:* [-1,1]
33. **timedomainbodyaccelerationmagnitudemean** - the acceleration magnitude mean of a subject (time domain). *Values:* [-1,1]
34. **timedomainbodyaccelerationmagnitudestandarddeviation** - the acceleration magnitude standard deviation of a subject (time domain). *Values:* [-1,1]
35. **timedomaingravityaccelerationmagnitudemean** - the acceleration magnitude mean of the gravity (time domain). *Values:* [-1,1]
36. **timedomaingravityaccelerationmagnitudestandarddeviation** - the acceleration magnitude standard deviation of the gravity (time domain). *Values:* [-1,1]
37. **timedomainbodyaccelerationjerkmagnitudemean** - the acceleration jerk magnitude mean of a subject (time domain). *Values:* [-1,1]
38. **timedomainbodyaccelerationjerkmagnitudestandarddeviation** - the acceleration jerk magnitude standard deviation of a subject (time domain). *Values:* [-1,1]
39. **timedomainbodyangularvelocitymagnitudemean** - the angular velocity magnitude mean of a subject (time domain). *Values:* [-1,1]
40. **timedomainbodyangularvelocitymagnitudestandarddeviation** - the angular velocity magnitude standard deviation of a subject (time domain). *Values:* [-1,1]
41. **timedomainbodyangularvelocityjerkmagnitudemean** - the angular velocity jerk magnitude mean of a subject (time domain). *Values:* [-1,1]
42. **timedomainbodyangularvelocityjerkmagnitudestandarddeviation** - the angular velocity jerk magnitude standard deviation of a subject (time domain). *Values:* [-1,1]
43. **frequencydomainbodyaccelerationmeanxaxis** -  the acceleration mean of a subject in X axis (frequency domain). *Values:* [-1,1]
44. **frequencydomainbodyaccelerationmeanyaxis** - the acceleration mean of a subject in Y axis (frequency domain). *Values:* [-1,1]
45. **frequencydomainbodyaccelerationmeanzaxis** - the acceleration mean of a subject in Z axis (frequency domain). *Values:* [-1,1]
46. **frequencydomainbodyaccelerationstandarddeviationxaxis** -  the acceleration standard deviation of a subject in X axis (frequency domain). *Values:* [-1,1]
47. **frequencydomainbodyaccelerationstandarddeviationyaxis** - the acceleration standard deviation of a subject in Y axis (frequency domain). *Values:* [-1,1]
48. **frequencydomainbodyaccelerationstandarddeviationzaxis** - the acceleration standard deviation of a subject in Z axis (frequency domain). *Values:* [-1,1]
49. **frequencydomainbodyaccelerationjerkmeanxaxis** -  the acceleration jerk mean of a subject in X axis (frequency domain). *Values:* [-1,1]
50. **frequencydomainbodyaccelerationjerkmeanyaxis** - the acceleration jerk mean of a subject in Y axis (frequency domain). *Values:* [-1,1]
51. **frequencydomainbodyaccelerationjerkmeanzaxis** - the acceleration jerk mean of a subject in Z axis (frequency domain). *Values:* [-1,1]
52. **frequencydomainbodyaccelerationjerkstandarddeviationxaxis** -  the acceleration jerk standarddeviation of a subject in X axis (frequency domain). *Values:* [-1,1]
53. **frequencydomainbodyaccelerationjerkstandarddeviationyaxis** - the acceleration jerk standard deviation of a subject in Y axis (frequency domain). *Values:* [-1,1]
54. **frequencydomainbodyaccelerationjerkstandarddeviationzaxis** - the acceleration jerk standard deviation of a subject in Z axis (frequency domain). *Values:* [-1,1]
55. **frequencydomainbodyangularvelocitymeanxaxis** -  the angular velocity mean of a subject in X axis (frequency domain). *Values:* [-1,1]
56. **frequencydomainbodyangularvelocitymeanyaxis** - the angular velocity mean of a subject in Y axis (frequency domain). *Values:* [-1,1]
57. **frequencydomainbodyangularvelocitymeanzaxis** - the angular velocity mean of a subject in Z axis (frequency domain). *Values:* [-1,1]
58. **frequencydomainbodyangularvelocitystandarddeviationxaxis** -  the angular velocity standard deviation of a subject in X axis (frequency domain). *Values:* [-1,1]
59. **frequencydomainbodyangularvelocitystandarddeviationyaxis** - the angular velocity standard deviation of a subject in Y axis (frequency domain). *Values:* [-1,1]
60. **frequencydomainbodyangularvelocitystandarddeviationzaxis** - the angular velocity standard deviation of a subject in Z axis (frequency domain). *Values:* [-1,1]
61. **frequencydomainbodyaccelerationmagnitudemean** -  the acceleration magnitude mean of the gravity (frequency domain). *Values:* [-1,1]
62. **frequencydomainbodyaccelerationmagnitudestandarddeviation** -  the acceleration magnitude standard deviation of the gravity (frequency domain). *Values:* [-1,1]
63. **frequencydomainbodyaccelerationjerkmagnitudemean** -  the acceleration jerk magnitude mean of the gravity (frequency domain). *Values:* [-1,1]
64. **frequencydomainbodyaccelerationjerkmagnitudestandarddeviation** -  the acceleration jerk magnitude standard deviation of the gravity (frequency domain). *Values:* [-1,1]
65. **frequencydomainbodyangularvelocitymagnitudemean** -  the angular velocity magnitude mean of the gravity (frequency domain). *Values:* [-1,1]
66. **frequencydomainbodyangularvelocitymagnitudestandarddeviation** -  the angular velocity magnitude standard deviation of the gravity (frequency domain). *Values:* [-1,1]
67. **frequencydomainbodyangularvelocityjerkmagnitudemean** -  the angular velocity jerk magnitude mean of the gravity (frequency domain). *Values:* [-1,1]
68. **frequencydomainbodyangularvelocityjerkmagnitudestandarddeviation** -  the angular velocity jerk magnitude standard deviation of the gravity (frequency domain). *Values:* [-1,1]
