# run_analysis.R
# Author: Alamgir Mohammed
# Purpose: Data cleaning project for Coursera couse
# Tasks:
# This script takes the data file from HAR project 
# (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
# and produces a clean dataset with fewer/selected featers
# a second dataset is created with the mean values of slected features
# cleated datasets are stored in clean_data.txt, mean_data.txt files
# in CleanDataset/ folder.
#
# The script expects that the original dataset is available under Dataset folder with
# the same file/folder structure as the original dataset.

library(plyr)
library(reshape2) #needed for melt

#
# read in the features.txt file
# use space as separator, avoid string as factor
# also there is no header present in the file features.txt
features <- read.csv('Dataset/features.txt', header = FALSE, stringsAsFactors = FALSE, sep= ' ')

# drop column 1, since its just numeric index
features <- features[,2]

# select only features with mean and standard deviation
sel_features <- grep(".*mean.*|.*std.*", features)

# for each feature name
# -- make lower case
# -- strip any leading or traling space characters
# -- remove non-alphabetic characters e.g, -, (, ), and comma(,)
names(sel_features) <- lapply( features[sel_features], 
                    function (x) {
                        y <- tolower(x)
                        y <- trimws(y, which="both")
                        y <- gsub('-|,|\\(|\\)','', y)
                    }
                   )

# read train data set
xtrain <- read.table("Dataset/train/X_train.txt")[sel_features]
names(xtrain) <- names(sel_features)
ytrain <- read.table("Dataset/train/y_train.txt")
names(ytrain) <- "activity"
strain <- read.table("Dataset/train/subject_train.txt")
names(strain) <- "subject"

# now combine these three sets
# train has the complete train data (both input and output)
train <- cbind(xtrain, ytrain, strain)

# read test data set
xtest <- read.table("Dataset/test//X_test.txt")[sel_features]
names(xtest) <- names(sel_features)
ytest <- read.table("Dataset/test/y_test.txt")
names(ytest) <- "activity"
stest <- read.table("Dataset/test/subject_test.txt")
names(stest) <- "subject"
# now combine these three sets
# test has the complete test data (both input and output)
test <- cbind(xtest, ytest, stest)


# train and test set now have same number of colum, and same labels
# so combine them in rows to produce the agregate set
clean_data <- rbind(train, test)

act_labels <- read.table("Dataset/activity_labels.txt")
# map activity values to label
clean_data$activity <- factor(clean_data$activity, levels = act_labels[,1], labels = act_labels[,2])

# subject data as factor
clean_data$subject <- as.factor(clean_data$subject)

# write the data to disk
write.table(clean_data, "CleanDataset/clean_data.txt", row.names = FALSE, quote = FALSE)

# step 5 of project task
melted_data <- melt(clean_data, id = c("subject", "activity"))
mean_data <- dcast(melted_data, subject + activity ~ variable, mean)

# write to disk
write.table(mean_data, "CleanDataset/mean_data.txt", row.names = FALSE, quote = FALSE)



