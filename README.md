# coursera-getdata-010
Repository for the Getting and Cleaning Data course as part of the Data Science Specialization on Coursera.

NOTE: To run the project for marking/grading purposes, source run_analysis.R and run project()

run_analysis.R contains the following functions
* project() - runs the other functions for fully automatic data processing.
* getdata() - downloads and unpacks zip files from the web
* mergedata() - merges the downloaded data set and saves tidydata.csv to the ./data/temp folder
* testdimensions() - provides an easy way to test the dimensions of the pertinent files in the project

