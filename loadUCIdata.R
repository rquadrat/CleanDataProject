loadUCIdata<-function(path, type)
{
    ## Load the feature names and search for all features with mean() and std() in their names
    datafile<-paste(path, "../features.txt",sep="/")
    ColumnLabel<-read.table(datafile, colClasses = "character")[,2]
    ColumnLabelIndex<-grep("mean\\(\\)|std\\(\\)", ColumnLabel)
    
    ## Load the table with activity descriptions
    datafile<-paste(path, "../activity_labels.txt",sep="/")
    activitylabel<-read.table(datafile)
    
    ## Load test/train X data
    datafile<-paste(path, "/X_", type, ".txt",sep="")
    data<-read.table(datafile, col.names = ColumnLabel)
    
    ## Load test/train Y data (kind of activity)
    datafile<-paste(path, "/y_", type, ".txt",sep="")
    ylabel<-read.table(datafile)
    
    ## Name the activities with descriptive names instead of numbers
    ylabel<-factor(ylabel[[1]], levels = activitylabel[,1], labels = activitylabel[,2])
    
    ## Load data with proband numbers 
    datafile<-paste(path, "/subject_", type, ".txt",sep="")
    subject<-read.table(datafile, col.names = "Person")
    
    library("dplyr")
    
    ## Select only data features with mean() and std() in its column name 
    data<-select(data, ColumnLabelIndex)
    
    ## Bind proband, X data and Y data together into one dataframe
    data<-cbind(subject,data,ylabel)
    
    ## Return the data
    data
}