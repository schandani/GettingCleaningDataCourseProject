This document describes how the run_analysis.R script works.

1. Installs the "plyr" package.
2. Installs the "dplyr" package.
3. Loads the plyr library first.
4. Loads the dplyr library second.
5. Downloads the raw data for analysis from the file URL specified.
6. Unzips the file.
7. Creates the labels for the Measurments.
8. Creates the labels for the Activities.
9. Adds an index number onto the Measurements to avoid duplicate entries.
10. Reads in the Test Data for the Subjects, Measurements and Activities into 3 separate data frames.
11. Reads in the Training Data for the Subjects, Measurements and Activities. into 3 separate data frames.
12. Creates a Test Data vector the same length as the number of Test Data measurements.
13. Creates a Training Data Label vector the same length as the number of Training Data measurements.
14. Renames the Test Data Measurment columns to recognizable and unique names.
15. Renames the Training Data Measurment columns to recognizable and unique names.
16. Reclassifies the Activity names as factors
17. Renames the Activities labels to useful, recognizable names.
18. Combines the Test Data columns into one data frame.
19. Combines the Training Data columns into one data frame.
20. Combines the Test Data data frame with the Training Data data frame.
21. Selects the columns with mean and std in the name.
22. Groups the data by Subject and Activity.
23. Calculates the Average of the Groups and assigns it to a data frame called SummaryTable.
24. Outputs the SummaryTable into a file in the working directory called "Final Summary Table.txt".
