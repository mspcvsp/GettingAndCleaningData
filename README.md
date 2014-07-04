# Getting & Cleaning Data Project

## Introduction
This repository illustrates the process of creating a tidy data set for the ["University of California, Irvine (UCI) Human Activity Recognition (HAR) Using Smartphones Data Set"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  
  
## R scripts discussion  
Table #1 identifies the three R scripts that are included in the "Getting & Cleaning Data" repository. For example, `run_analysis.R` is a self-contained script that
    
1.  Downloads the zip file that contains the Human Activity Recognition Using Smartphones data set.  
2.  Creates a tidy data set from the UCI HAR Smartphone data set mean and standard deviation variables.  
  
Table #1: Getting & Cleaning Data repository R scripts

| R script name      | Description |  
| ------------------ | ----------- |  
| `run_analysis.R`   | Creates a tidy data set from UCI HAR Smartphone data set mean and standard deviation variables |  
| `plotTidyData.R`   | Loads a tidy data set generated by `run_analysis.R` into memory and plots the mean body acceleration magnitude using `ggplot`| 
| `createCodebook.R` | Creates HTML tables using the `xtable` function that are included in CodeBook.md |     

No changes are required to run this script since the fileURL variable defined on lines 46-48 of `run_analysis.R` points to the UCI HAR Smartphone data set Uniform Resource Locator (URL) provided in the course project description. In addition, the other two R scripts described in Table #1 (i.e. `plotTidyData.R` and `createCodebook.R`) generate results that were included in CodeBook.md.
  
