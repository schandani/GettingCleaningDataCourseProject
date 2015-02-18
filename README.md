This document describes how the run_analysis.R script works.

Installs the "plyr" package.
Installs the "dplyr" package.
Loads the plyr library first.
Loads the dplyr library second.
Downloads the raw data for analysis from the file URL specified.
Unzips the file.
Creates the labels for the Measurments.
Creates the labels for the Activities.
Adds an index number onto the Measurements to avoid duplicate entries.
Reads in the Test Data for the Subjects, Measurements and Activities into 3 separate data frames.
Reads in the Training Data for the Subjects, Measurements and Activities. into 3 separate data frames.
Creates a Test Data vector the same length as the number of Test Data measurements.
Creates a Training Data Label vector the same length as the number of Training Data measurements.
Renames the Test Data Measurment columns to recognizable and unique names.
Renames the Training Data Measurment columns to recognizable and unique names.
Reclassifies the Activity names as factors
Renames the Activities labels to useful, recognizable names.
Combines the Test Data columns into one data frame.
Combines the Training Data columns into one data frame.
Combines the Test Data data frame with the Training Data data frame.
Selects the columns with mean and std in the name.
Groups the data by Subject and Activity.
Calculates the Average of the Groups and assigns it to a data frame called SummaryTable.
Outputs the SummaryTable into a file in the working directory called "Final Summary Table.txt".
