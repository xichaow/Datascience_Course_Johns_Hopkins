run_analysis.R <- function(){
  #read datasets
  dttest <- read.table("./test/X_test.txt")
  dttrain <- read.table("./train/X_train.txt")
  dtsubject_train<- read.table("./train/subject_train.txt")
  dtsubject_test <- read.table("./test/subject_test.txt")
  dtlable_train <- read.table("./train/y_train.txt")
  dtlable_test <- read.table("./test/y_test.txt")
  activity <- read.table("./activity_labels.txt")
  
  #combine datasets and change column names
  dttest_train <- rbind(dttest, dttrain)
  dtsubjecttest_train <- rbind(dtsubject_test, dtsubject_train)
  dtlabletest_train <- rbind(dtlable_test,dtlable_train)
  names(dtsubjecttest_train) <- "Subject"
  names(dtlabletest_train) <- "Activity"
  dtlabletest_train[,1] <- activity[dtlabletest_train[,1],2]
  
  # extract mean and standard deviation
  features <- read.table("./features.txt")
  index <- grep("mean\\(\\)|std\\(\\)",features[,2])
  dttest_train_new <- dttest_train[,c(index)]
  dt_names<- features[index,2]
  names(dttest_train_new) <- dt_names
  dt <- cbind(dtsubjecttest_train,dtlabletest_train,dttest_train_new)
  
  #new tidy dataset with average value
  newdt <- dt
  tidydt <- newdt %>% group_by(Subject, Activity) %>% summarise_all(funs(mean),na.rm=TRUE)
  write.table(tidydt,file = "tidydt.txt",row.names = FALSE)
}