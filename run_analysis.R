run_analysis <- function() {
  ## Assume all the filesExists and read them into a list
  filelist = list("features.txt","activity_labels.txt","subject_test.txt","X_test.txt","y_test.txt")
  
  ## Read the Features list data from file into a table
  featurelist = read.table("features.txt", header= F, sep="")
  ## read the Acvitiy ID list data from file into a table
  activitylist = read.table("activity_labels.txt", header = F, sep="")
  
  ## read the test data files subject_test, X_test, Y_test
  test_s = read.table("subject_test.txt", header=T, sep="")
  test_y = read.table("y_test.txt", header =T, sep="")
  test_x = read.table("X_test.txt", header=T, sep="")
  
  ## read the  train data files subject_train, X_traib, Y_train
  train_s = read.table("subject_train.txt", header=T, sep="")
  train_y = read.table("y_train.txt", header =T, sep="")
  train_x = read.table("X_train.txt", header=T, sep="")
  
  ## combine test data column wise
  testdata = cbind(test_s, test_y, test_x)

  ## combine the train data column wise
  traindata = cbind(train_s, train_y, train_x)
  
  ## name the columns appropriately for test data set
  colnames(testdata)[1:2] = c("Subject", "Activity")
  colnames(testdata)[3:563] = c(as.character(featurelist[1:561,2]))
 
  ## name the columns appropriately for train data set
  colnames(traindata)[1:2] = c("Subject", "Activity")
  colnames(traindata)[3:563] = c(as.character(featurelist[1:561,2]))
  
  ## combine the Test data set and train data set as row wise
  totaldata = rbind(testdata, traindata)
  
  ## Extract the columns which has the mean and standard deviation measures
  stdmeandata= totaldata[, c("Subject","Activity",grep("mean\\()", colnames(totaldata), value=T),grep("std\\()", colnames(totaldata), value=T))]
  
  ## naming the descriptive activity
  stdmeandata$Activity = factor(stdmeandata$Activity, labels=c(as.character(activitylist[1:6,2])))
  
  ## melt the data
  stdmeanmelt = melt(stdmeandata, id=c("Subject", "Activity"))
  ## create the final tidy dataset
  tidyData = dcast(stdmeanmelt, Subject + Activity ~ variable, mean)
  
  return(tidyData)
  
}