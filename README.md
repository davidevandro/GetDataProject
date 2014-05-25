GetDataProject
==============

Project for Getting and Cleaning Data Course
--------------------------------------------

The script run_analys.R download the zipped data set (if there isn't a file called dataset.zip in the working directory) and unzip it (if there isn't a directory called UCI HAR Dataset in the working directory). All the files are read assuming that this directory structure will be maintaned.

It may take a while to run, since the dataset.zip has almost 60 Mb to download and the files to read are big too. But it doesn't take more than 1 minute to run, depending on your machine configuration.

After this, the script join the data in a data frame with this rule (joining train data and test data by rows):

Train Subject ID + Train Activity + Train Other Variables
Test Subject ID + Test Activity + Test Other Variables

The script, then, put descriptive names in the variables with these rules:

* t - timedomain
* f - frequencydomain
* acc - acceleration
* gyro - angular velocity
* mag - magnitude
* std - standard deviation
* x - xaxis
* y - yaxis
* z - zaxis
* bodybody - body (this was necessary since the last variables has bodybody but the original codebook don't tell about it)

Then it rearranges the cleaned data set in a tidy data set with the average of each variable for each activity and each subject. For this, it assumes that you have the package reshape2, presented in the course. The last thing it does is to save the tidy data set in a file called tidyData.txt using as separator a tabular.
