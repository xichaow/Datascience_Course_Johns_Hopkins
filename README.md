## This is uploading codes written for assingment in Getting and Cleaning Data Course Project by Johns Hopkins University
In the first part of the codes, I read data from existing files; 
Then in the second part, combine training dataset and test dataset to generate one whole dataset; 
After that, extract mean and standart deviation function from feature dataset and use the result to filter the whole dataset;
Then subject and activity value are added to dataset;
To develop a tidy dataset with mean value, I use summarise function in library dplyr. Then write.table produces the expected txt file.
