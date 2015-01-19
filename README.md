##Readme

Data was taken from [Data Source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  

The R scripts assume that the data zip file is unzipped into a folder one level below the folder containing the R scripts.  

There are two R scripts present:

+ run\_analysis\.R
+ loadUCIdata\.R

----------

__run\_analysis\.R:__  

This is the main script calling loadUCIdata\.R to load the test and train dataset. It merges these datasets and performs the data analysis
mentioned in the CodeBook\.md file.

---------

__loadUCIdata\.R:__  

This script loads the activity labels, the feature names, the x data, the y data and the proband identifier.
All this data is combined into one dataframe and returned.   

----------

__CodeBook\.md:__

Contains a description about the applied variables and about data analysis steps 