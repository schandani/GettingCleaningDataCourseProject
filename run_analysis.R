## Install the "plyr" package.
## Install the "dplyr" package.
## Load the plyr library first.
## Load the dplyr library second.

install.packages("plyr")
library(plyr)

install.packages("dplyr")
library(dplyr)

## Download the raw data for analysis from the file URL specified.

fileURL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(fileURL, destfile = "UCI HAR Dataset.zip", method = "internal")

unzip("UCI HAR Dataset.zip", unzip = "internal")

MeasurementLabels <- read.table("./UCI HAR Dataset/features.txt")
ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

## Add an index number onto measurments list because there are duplicates
## to avoid duplicate column names

MeasurementLabelsIndexed <- paste(as.character(MeasurementLabels$V1), MeasurementLabels$V2)

## Read in Test Data and Training Data
## use relative path /

TestDataSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
TestDataMeasurements <- read.table("./UCI HAR Dataset/test/X_test.txt")
TestDataActivity <- read.table("./UCI HAR Dataset/test/y_test.txt")

TrainDataSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
TrainDataMeasurements <- read.table("./UCI HAR Dataset/train/X_train.txt")
TrainDataActivity <- read.table("./UCI HAR Dataset/train/y_train.txt")

TestLabel <- c(rep("Test Data", 2947))
TrainingLabel <- c(rep("Training Data", 7352))

## Rename Columns
ColumnNames <- as.character(MeasurementLabelsIndexed)
colnames(TestDataMeasurements) <- ColumnNames
colnames(TrainDataMeasurements) <- ColumnNames

ActivityName <- as.factor(ActivityLabels$V2)
ActivityNumber <- as.factor(1:6)

factorTestDataActivity <- factor(TestDataActivity$V1)
levels(factorTestDataActivity) <- ActivityName

factorTrainDataActivity <- factor(TrainDataActivity$V1)
levels(factorTrainDataActivity) <- ActivityName

AllTestData <- cbind("TestSession" = TestLabel, "Activity" = factorTestDataActivity, 
      "Subject" = as.numeric(TestDataSubjects$V1), "Measurement" = TestDataMeasurements)
AllTrainData <- cbind("TestSession" = TrainingLabel, "Activity" = factorTrainDataActivity, 
      "Subject" = as.numeric(TrainDataSubjects$V1), "Measurement" = TrainDataMeasurements)
AllData <- rbind(AllTrainData, AllTestData)

## Convert Data table to dplyr format table

AllDataDT <- tbl_df(AllData)

## Select only means and std.

FinalTable <- select(AllDataDT, 1:3, contains("mean"), contains("std"))

FinalTableDT <- tbl_df(FinalTable)

## Calculate the average of each variable categorized by Subject and Activity Group.

SummaryTable <- FinalTableDT %>%
      group_by(Subject, Activity) %>%
      summarise_each(funs(mean), 4:89) %>%
      arrange(Subject, Activity)

View(SummaryTable)

## Write Final Summary Table as output

write.table(SummaryTable, file = "Final Summary Table.txt", row.names = FALSE)
