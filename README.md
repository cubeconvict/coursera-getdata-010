# coursera-getdata-010
Repository for the Getting and Cleaning Data course as part of the Data Science Specialization on Coursera.

NOTE: To run the analysis for marking/grading purposes, source run_analysis.R and run project().

run_analysis.R contains the following functions
* project() - runs the other functions for fully automatic data processing.
* getdata() - downloads and unpacks zip files from the web
* mergedata() - merges the downloaded data set and saves tidydata.csv to the ./data/temp folder
* summarizedata() - if give the results from mergedata() it will create a second, independent tidy data set with the average of each variable for each activity and each subject. will not work independently unless you first run results <- mergedata().
* testdimensions() - provides an easy way to test the dimensions of the pertinent files in the project



