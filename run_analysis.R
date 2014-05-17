# 
#
# Style guide reference:
# ----------------------
# https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml
require(stringr)

# Reset R environment
# http://stackoverflow.com/questions/14187048/r-language-clean-variables-and-close-connections
closeAllConnections()
rm(list=ls())

# Set the URL to the compressed UCI Human Activity Recognition (HAR)
# Using Smartphones data set
fileUrl <- paste("https://d396qusza40orc.cloudfront.net",
                 "/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                 sep="")

capitalizeVariableName <- function(inVariableName) {
  # Capatilizes the first letter of a variable name (i.e. "mean)
  #
  # Args:
  #   inVariableName: UCI HAR Smartphones data set variable name
  #                   (i.e. "mean")
  #
  # Returns:
  #   outVariableName: UCI HAR Smartphones data set variable name
  #                    with the 1st letter capatilized (i.e. "Mean")
  fields <- str_match(inVariableName,"([a-z])([A-Za-z]+)")  
  
  outVariableName <- paste(toupper(fields[1,2]),fields[1,3],sep="")
  
  return(outVariableName)
}

reformatVariableNames <- function(inFeatures) {
  # Reformats the UCI HAR Smartphones data set variable names using 
  # the following transformation rules:
  #
  # - "tBodyAcc-mean()-X" to "tBodyAccXMean"
  # - "tBodyAcc-arCoeff()-X,2" to "tBodyAccArCoeffX2"
  # - "tBodyAcc-correlation()-X,Y" to "tBodyAccXYCorrelation"
  # - "tBodyGyroJerkMag-arCoeff()2" to "tBodyGyroJerkMagArCoeff2"
  # - "fBodyAcc-bandsEnergy()-25,48" to "fBodyAccBandsEnergy.25.48"
  # - "angle(tBodyGyroMean,gravityMean)" to 
  #   "angle.tBodyGyroMean.gravityMean"
  # - "fBodyBodyGyroJerkMag-skewness()" to 
  #   "fBodyBodyGyroJerkMagSkewness"
  # - "fBodyAccJerk-maxInds-Y" to "fBodyAccJerkYMaxInds"
  #
  # Technical references:
  # --------------------
  # http://stackoverflow.com/questions/5633533/regular-expression-for-matching-parentheses
  # http://stackoverflow.com/questions/952275/regex-group-capture-in-r
  outFeatures <- inFeatures
  
  for (n in seq(1,length(outFeatures))) {
    matchFound <- FALSE
  
    strings <- str_match(outFeatures[n],
                        "([A-Za-z]+)-([A-Za-z]+)[(][)]-([A-Z])")
  
    # Transform "tBodyAcc-mean()-X" to "tBodyAccXMean"
    if (!is.na(strings[1,1])) {
      matchFound = TRUE
      
      functionName <- capitalizeVariableName(strings[1,3])
      
      outFeatures[n] <- paste(strings[1,2],
                              strings[1,4],
                              functionName,sep="")
    }
    
    # Transform "tBodyAcc-arCoeff()-X,2" to "tBodyAccArCoeffX2"
    if (!matchFound) {
      strings <- str_match(outFeatures[n],
                           "([A-Za-z]+)-([A-Za-z]+)[(][)]-([A-Z]),([0-9])")
      
      if (!is.na(strings[1,1])) {
        matchFound = TRUE
        
        functionName <- capitalizeVariableName(stringsFormat2[1,3])  
        
        outFeatures[n] <- paste(strings[1,2],
                                functionName,
                                strings[1,4],
                                strings[1,5],sep="")
      }
    }
    
    # Transform "tBodyAcc-correlation()-X,Y" to "tBodyAccXYCorrelation"
    if (!matchFound) {
      strings <- str_match(outFeatures[n],
                           "([A-Za-z]+)-([A-Za-z]+)[(][)]-([A-Z]),([A-Z])")    
      
      if (!is.na(strings[1,1])) {
        matchFound = TRUE
        
        functionName <- capitalizeVariableName(strings[1,3])
        
        outFeatures[n] <- paste(strings[1,2],
                                strings[1,4],
                                strings[1,5],
                                functionName,sep="")
      }
    }
    
    # Transform "tBodyGyroJerkMag-arCoeff()2" to "tBodyGyroJerkMagArCoeff2"
    if (!matchFound) {
      strings <- str_match(outFeatures[n],
                           "([A-Za-z]+)-([A-Za-z]+)[(][)]([0-9])")
      
      if (!is.na(strings[1,1])) {
        matchFound = TRUE
        
        functionName <- capitalizeVariableName(strings[1,3])
        
        outFeatures[n] <- paste(strings[1,2],
                                functionName,
                                strings[1,4],sep="")
      }
    }
    
    # Transform "fBodyAcc-bandsEnergy()-25,48" to "fBodyAccBandsEnergy.25.48"
    if (!matchFound) {
      strings <- str_match(outFeatures[n],
                           "([A-Za-z]+)-([A-Za-z]+)[(][)]-([0-9]+),([0-9]+)")
      
      if (!is.na(strings[1,1])) {
        matchFound = TRUE
        
        functionName <- capitalizeVariableName(strings[1,3])
        
        outFeatures[n] <- paste(strings[1,2],
                                functionName,
                                ".",
                                strings[1,4],
                                ".",
                                strings[1,5],sep="")
      }
    }
    
    # Transform "angle(tBodyGyroMean,gravityMean)" to 
    # "angle.tBodyGyroMean.gravityMean"
    if (!matchFound) {
      strings <- str_match(outFeatures[n],
                           "([a-z]+)[(]([A-Za-z]+)[)]*,([A-Za-z]+)[)]")
      
      if (!is.na(strings[1,1])) {
        matchFound = TRUE
        
        outFeatures[n] <- paste(strings[1,2],
                                strings[1,3],
                                strings[1,4],sep=".")
      }
    }
    
    # Transform "fBodyBodyGyroJerkMag-skewness()" to 
    # "fBodyBodyGyroJerkMagSkewness"
    #
    # Note: Open & closed parantheses as the end of the variable
    #       name are optional
    if (!matchFound) {
      strings <- str_match(outFeatures[n],
                           "([A-Za-z]+)-([A-Za-z]+)[(]*[)]*") 
      
      
      if (!is.na(strings[1,1])) {
        matchFound = TRUE
        
        functionName <- capitalizeVariableName(strings[1,3])
        
        outFeatures[n] <- paste(strings[1,2],
                                functionName,sep="")
      }
    }
    
    # Transform "fBodyAccJerk-maxInds-Y" to "fBodyAccJerkYMaxInds"
    if (!matchFound) {
      strings <- str_match(outFeatures[n],
                           "([A-Za-z]+)-([A-Za-z]+)-([A-Z])")
      
      if (!is.na(strings[1,1])) {
        matchFound = TRUE
        
        functionName <- capitalizeVariableName(strings[1,3])
        
        outFeatures[n] <- paste(strings[1,2],
                                strings[1,4],
                                functionName,sep="")
      }
    }
  }
  
  return(outFeatures)
}

readFeatures <- function(topLevelDataPath) {
  # Reads the UCI HAR Smartphones Data set features list into memory
  #
  # Args:
  #   topLevelDataPath: String that defines the path to the UCI Human
  #                     Activity Recognition (HAR) Smartphones Data Set
  #
  # Returns:
  #   features: 1 by 561 character vector that stores the UCI HAR 
  #             Smartphones data set features
  featuresH <- file(file.path(topLevelDataPath,
                              "features.txt"),"r")
  
  features <- readLines(featuresH)
  
  close(featuresH)
  
  # Remove feature number from feature name
  features <- gsub("[0-9]+\\s+","",features)
  
  # Reformat UCI HAR variable names so that they can be assigned
  # as the name of an R data frame's column
  features <- reformatVariableNames(features)
  
  return(features)
}

readActivityLabels <- function(topLevelDataPath) {
  # Reads the UCI HAR Smartphones Data set activity labels into memory
  #
  # Args:
  #   topLevelDataPath: String that defines the path to the UCI Human
  #                     Activity Recognition (HAR) Smartphones Data Set
  #
  # Returns:
  #   activityLabels: 1 by 6 character vector that stores the UCI HAR 
  #                   Smartphones data set activity labels
  conActivityLabels <- file(file.path(topLevelDataPath,
                                      "activity_labels.txt"),"r")
  
  activityLabels <- readLines(conActivityLabels)
  
  close(conActivityLabels)
  
  # Remove activity number from activity label
  activityLabels <- gsub("[0-9]+\\s+","",activityLabels)
  
  return(activityLabels)
}

loadActivityData <- function(topLevelDataPath,
                             dataSetType,
                             activityLabels) {
  # Reads the activity number for each record and converts it to an
  # activity label
  #
  #
  # Args:
  #   topLevelDataPath: String that defines the path to the UCI Human
  #                     Activity Recognition (HAR) Smartphones Data Set
  #
  #   dataSetType: String that defines the data set type (i.e. "train" or 
  #                "test)
  #
  #   activityLabels: 1 by 6 character vector that stores the UCI HAR 
  #                   Smartphones data set activity labels
  #
  # Returns:
  #   activityData: 1 by N factor vector that stores the UCI HAR 
  #                 Smartphones data set activity data type
  conActivityData <- file(file.path(topLevelDataPath,
                                    dataSetType,
                                    paste("y_",
                                          dataSetType,
                                          ".txt",sep="")),"rb")
  
  activityDataNumber <- as.integer(readLines(conActivityData))
  
  close(conActivityData)
  
  activityData <- vector("character", length(activityDataNumber))
  for (n in seq(1,length(activityDataNumber))) {
    activityData[n] = activityLabels[activityDataNumber[n]]
  }
  
  activityData <- as.factor(activityData)
  
  return(activityData)
}

loadDataSet <- function(topLevelDataPath,
                        dataSetType,
                        features,
                        activityLabels) {
  # Reads a UCI Human Activity Recognition (HAR) Smartphones Data Set
  # into memory
  #
  # Args:
  #   topLevelDataPath: String that defines the path to the UCI Human
  #                     Activity Recognition (HAR) Smartphones Data Set
  #
  #   dataSetType: String that defines the data set type (i.e. "train" or 
  #                "test)
  #
  #   features: 1 by 561 character vector that stores the UCI HAR 
  #             Smartphones data set features
  #
  #   activityLabels: 1 by 6 character vector that stores the UCI HAR 
  #                   Smartphones data set activity labels
  #
  # Returns:
  #   dataSet: Data frame that contains a UCI Human Activity Recognition 
  #            (HAR) Smartphones Data Set
  dataPath <- file.path(topLevelDataPath,
                        dataSetType)
  
  dataSet <- read.table(file.path(topLevelDataPath,
                                  dataSetType,
                                  paste("X_",
                                        dataSetType,
                                        ".txt",sep="")))
  
  colnames(dataSet) <- features
  
  conSubjectData <- file(file.path(topLevelDataPath,
                                   dataSetType,
                                   paste("subject_",
                                         dataSetType,
                                         ".txt",sep="")),"rb")
  
  dataSet$subject <- readLines(conSubjectData)
  
  close(conSubjectData)
  
  dataSet$subject <- as.factor(dataSet$subject)
  
  dataSet$activity <- loadActivityData(topLevelDataPath,
                                       dataSetType,
                                       activityLabels)
  
  dataSet$type <- rep(dataSetType, nrow(dataSet))
  
  return(dataSet)
}

# Download and uncompress the UCI HAR Database
if (!file.exists("getdata-projectfiles-UCI HAR Dataset")) {
  # Downloading a *.zip file requires binary file (similar to downloading
  # a JPEG image)
  #
  # http://stackoverflow.com/questions/9655361/download-png-jpg-with-r
  download.file(fileUrl,
                destfile = "./getdata-projectfiles-UCI HAR Dataset.zip",
                mode = 'wb')

  # http://www.r-bloggers.com/read-compressed-zip-files-in-r/
  unzip("./getdata-projectfiles-UCI HAR Dataset.zip",
        exdir="getdata-projectfiles-UCI HAR Dataset")
}

topLevelDataPath <- file.path(".",
                              "getdata-projectfiles-UCI HAR Dataset",
                              "UCI HAR Dataset")

features <- readFeatures(topLevelDataPath)

activityLabels <- readActivityLabels(topLevelDataPath)

dataSet <- loadDataSet(topLevelDataPath,
                       "train",
                       features,
                       activityLabels)

dataSet <- rbind(dataSet, 
                 loadDataSet(topLevelDataPath,
                             "test",
                             features,
                             activityLabels))
