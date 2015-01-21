# You should create one R script called run_analysis.R that does the following.
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names.
# From the data set in step 4, creates a second, independent tidy data set with the average of
# each variable for each activity and each subject.

##original codebook http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

getprojectdata <- function () {
     #download the data from the remote location and unzip the files
     #return a vector of the filename

     if (!file.exists("data")){
          dir.create("data")
     }

     fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"


     myZip = "./data/projectdata.zip"

     download.file (fileUrl, destfile=myZip)


     unzip(myZip, exdir="./data/temp")
     print(list.files(path="./data/temp/UCI HAR Dataset/train"))
     dateDownloaded <- date()
     print (dateDownloaded)




}


makemytable <- function(xfile="trainxfile", yfile="trainyfile"){


}

project <- function() {

     #tell the program where file is found
     trainxfile = "./data/temp/UCI HAR Dataset/train/X_train.txt"
     #read the file into an R table
     trainxdata <- read.delim(trainxfile, sep=" ", header=FALSE, dec = ".")
     #print out the dimensions for analysis
     print(dim(trainxdata))


     #same for the Y training file
     trainyfile = "./data/temp/UCI HAR Dataset/train/Y_train.txt"
     trainydata <- read.table(trainyfile, sep=" ", header=FALSE)
     print(dim(trainydata))

     #merge the training data
     traindata <- merge(trainxdata, trainydata)
     print(dim(traindata))

     #X Test File
     testxfile = "./data/temp/UCI HAR Dataset/test/X_test.txt"
     testxdata <- read.delim(testxfile, sep=" ", header=FALSE, dec = ".")
     print(dim(testxdata))

     #Y Test File
     testyfile = "./data/temp/UCI HAR Dataset/test/Y_test.txt"
     testydata <- read.table(testyfile, sep=" ", header=FALSE)
     print(dim(testydata))


     traintable <- makemytable(trainxfile, trainyfile)
     testtable <- makemytable(trainxfile, trainyfile)

}