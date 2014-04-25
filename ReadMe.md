## ReadMe file for the Assignment with Samsung data
##Files

R script assumes that the following files are present in the working directory:

features.txt file
activity_labels.txt file.
y_train.txt, y_test.txt files.
X_train.txt, X_test.txt files.
subject_train.txt, subject_test.txt files.

##Package Dependencies
 "reshape2" package for melting and dcasting data sets.
 
## System Dependencies
The scripts were developed and tested on Mac OS X.

##Steps
1 Read the Features list data from file into a table
2 read the Acvitiy ID list data from file into a table
3 read the test data files subject_test, X_test, Y_test
4 read the  train data files subject_train, X_traib, Y_train
5 combine test data column wise
6 combine the train data column wise
7 name the columns appropriately for test data set
8 name the columns appropriately for train data set
9 combine the Test data set and train data set as row wise
10 Extract the columns which has the mean and standard deviation measures
11 naming the descriptive activity
12 melt the data
13 create the final tidy dataset
  
##Output data file
captured using the sink command in run_analysisOP.txt. this command is not included in the code.
