## Download the UCI HAR Dataset
## Unzip the UCI HAR Dataset into the same folder as the run_analysis.R script.
## Include instruction to put data in wd.
## Install: plyr and dplyr, install plyr first

install.packages("plyr")
library(plyr)
install.packages("dplyr")
library(dplyr)

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

## Create descriptive names that show if the data is Test Data or Training Data.

TestLabel <- c(rep("Test Data", 2947))
TrainingLabel <- c(rep("Training Data", 7352))

## Rename Columns
ColumnNames <- as.character(MeasurementLabelsIndexed)
colnames(TestDataMeasurements) <- ColumnNames
colnames(TrainDataMeasurements) <- ColumnNames

## Create descriptive names for Activities.

ActivityName <- as.factor(ActivityLabels$V2)
ActivityNumber <- as.factor(1:6)

## Create the factors labels for the Test Data

factorTestDataActivity <- factor(TestDataActivity$V1)
levels(factorTestDataActivity) <- ActivityName

## Create the factor labels for the Training Data

factorTrainDataActivity <- factor(TrainDataActivity$V1)
levels(factorTrainDataActivity) <- ActivityName

## Combine the data together

AllTestData <- cbind("TestSession" = TestLabel, "Activity" = factorTestDataActivity, "Subject" = as.numeric(TestDataSubjects$V1), "Measurement" = TestDataMeasurements)
AllTrainData <- cbind("TestSession" = TrainingLabel, "Activity" = factorTrainDataActivity, "Subject" = as.numeric(TrainDataSubjects$V1), "Measurement" = TrainDataMeasurements)
AllData <- rbind(AllTrainData, AllTestData)

## Convert Data table to dplyr format table

AllDataDT <- tbl_df(AllData)

## Select only means and std.

FinalTable <- select(AllDataDT, 1:3, contains("mean"), contains("std"))

FinalTableDT <- tbl_df(FinalTable)

## Calculate the average of each variable categorized by Subject and Activity Group.

SummTable <- FinalTableDT %>%
      group_by(Subject, Activity) %>%
      summarise_each(funs(mean), 4:89) %>%
      arrange(Subject, Activity)

View(SummTable)

## Create the Final Summary Table as a file called "Final Summary Table.txt"

write.table(SummTable, file = "Final Summary Table.txt", row.names = FALSE)

