## Load the test and training data
testdata<-loadUCIdata("../UCI HAR Dataset/test", "test")
traindata<-loadUCIdata("../UCI HAR Dataset/train", "train")

## Merge both datasets into one lareg dataset 
alldata<-rbind(testdata, traindata)

## Group the dataset by proband and activity and sum all other variables
res<-alldata %>%
    group_by(ylabel, Person) %>%
    summarise_each(c("mean"))

library("tidyr")

## Prepare columnnames for splitting by separate
colnames(res)<-gsub("\\.\\.\\.","__",colnames(res))
colnames(res)<-gsub("\\.\\.","__NA",colnames(res))
colnames(res)<-gsub("\\.","_",colnames(res))

tidydata<-res %>%
    ## Gather all variables except Person and activity
    gather(Variable_quantity_axis, Mean, tBodyAcc_mean__X:fBodyBodyGyroJerkMag_std__NA) %>%
    ## Separate the true variables from axis and measurement quantity  
    separate(Variable_quantity_axis, c("Variable_Quantity","Axis"), sep="__") %>%
    separate(Variable_Quantity, c("Variable", "Quantity")) %>%
    ## Spread the real variables out
    spread(Variable, Mean)

## Write the tidy data into a file
write.table(tidydata, "tidy_data.txt", row.names = F)