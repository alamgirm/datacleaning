# datacleaning
Data cleaning project as part of coursera course

Given the *Human Activity Recognition (HAR)* dataset this project aims to clean up the
data and produce a neater dataset suitable for further processing.

The HAR project is described in this [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

In a nuttshell the project aims to detect human activity (Walking, Walking upstair, Walking downstair,
Sitting, Standing and Laying) from data read off a wearable device. On technical side, it uses 561 features
of data to decide of those activity. A total of 30 people (subject) had been used in the experiment having them
split into a train and test group. All data are numerical and normalized except activity and subject labels which 
are categorical labels.

_Tasks:_
At the core of this project is the R script run_analysis.R file. This script performs
the following tasks:
1. Reads both X and y data for train and test group and merges them to a single dataset
2. Only a handful of the 561 features are selected
3. Column names for the selected features are derived from featreus.txt file of the origianl dataset.
   But special characters, such as -, comma, parenthesis are removed. All characters are forced to lower case.
4. Descriptive column names are added for missing names.
5. Activity and Subject data are converted to factor/category format.
6. The resulting clean data is then written into disk.
7. A second dataset is produced with just mean of each feature for each activity and each subject.
8. The second dataset is written into disk.  

_Folder/file structure:_
--Dataset/
--CleanDataset/
--CleanDataset/clean_data.txt
--CleanDataset/mean_data.txt
--README.md
--CodeBook.md
--run_analysis.R

The original dataset is stored in *Dataset* folder. This was done to avoid any issues 
related to space character in file/folder name. All the files and folders within this
are left untouched. The *README.txt* file within Dataset has a description of what is inside.

*CleanDataset* folder contains two files produced as the output of this project. Purposes of 
each file are detailed later on.

*README.md* is this file. It gives an overview of the project, and the files contained
in this project.

*CodeBook.md* describes any data dictionary used.

*run_analysis.R* an R-language script that, when run, produces clean_data data.
