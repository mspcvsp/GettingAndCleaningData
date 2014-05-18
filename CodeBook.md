# Codebook #

The objective of this document is to describe the process that I followed in order to create a tidy data set from the University of California (UCI), Irvine Human Activity Recognition (HAR) Using Smartphones data set mean and standard deviation measurements.

The citation for this data set is:  
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012. ["Human Activity Recognition Using Smartphones Data Set"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Variables [1]
[Github Markdown Syntax](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#lines)  
[HTML table caption](http://www.w3schools.com/tags/tag_caption.asp)  
[Line Break](http://stackoverflow.com/questions/13730982/force-line-break-br-in-header-h1-in-markdown)

<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Sat May 17 23:39:06 2014 -->
<TABLE border=1>
<caption> <u>Table #1</u>: Human Activity Recognition <br /> Using Smartphones Data Set Variable Names </caption>
<TR> <TH> # </TH> <TH> Variable </TH> <TH> Domain </TH> <TH> Description </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> tBodyAccXMean </TD> <TD> Time </TD> <TD> Body x-axis mean acceleration </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> tBodyAccYMean </TD> <TD> Time </TD> <TD> Body y-axis mean acceleration </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> tBodyAccZMean </TD> <TD> Time </TD> <TD> Body z-axis mean acceleration </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> tBodyAccXStd </TD> <TD> Time </TD> <TD> Body x-axis acceleration standard deviation </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> tBodyAccYStd </TD> <TD> Time </TD> <TD> Body y-axis acceleration standard deviation </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> tBodyAccZStd </TD> <TD> Time </TD> <TD> Body z-axis acceleration standard deviation </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> tGravityAccXMean </TD> <TD> Time </TD> <TD> Gravity x-axis mean acceleration </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> tGravityAccYMean </TD> <TD> Time </TD> <TD> Gravity y-axis mean acceleration </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> tGravityAccZMean </TD> <TD> Time </TD> <TD> Gravity z-axis mean acceleration </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> tGravityAccXStd </TD> <TD> Time </TD> <TD> Gravity x-axis acceleration standard deviation </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> tGravityAccYStd </TD> <TD> Time </TD> <TD> Gravity y-axis acceleration standard deviation </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> tGravityAccZStd </TD> <TD> Time </TD> <TD> Gravity z-axis acceleration standard deviation </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> tBodyAccJerkXMean </TD> <TD> Time </TD> <TD> Body mean x-axis acceleration derivative </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> tBodyAccJerkYMean </TD> <TD> Time </TD> <TD> Body mean y-axis acceleration derivative </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> tBodyAccJerkZMean </TD> <TD> Time </TD> <TD> Body mean z-axis acceleration derivative </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> tBodyAccJerkXStd </TD> <TD> Time </TD> <TD> Body x-axis acceleration derivative standard deviation </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> tBodyAccJerkYStd </TD> <TD> Time </TD> <TD> Body y-axis acceleration derivative standard deviation </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> tBodyAccJerkZStd </TD> <TD> Time </TD> <TD> Body z-axis acceleration derivative standard deviation </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> tBodyGyroXMean </TD> <TD> Time </TD> <TD> Body mean x-axis gyroscope </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> tBodyGyroYMean </TD> <TD> Time </TD> <TD> Body mean y-axis gyroscope </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> tBodyGyroZMean </TD> <TD> Time </TD> <TD> Body mean z-axis gyroscope </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> tBodyGyroXStd </TD> <TD> Time </TD> <TD> Body x-axis gyroscope standard deviation </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> tBodyGyroYStd </TD> <TD> Time </TD> <TD> Body y-axis gyroscope standard deviation </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> tBodyGyroZStd </TD> <TD> Time </TD> <TD> Body z-axis gyroscope standard deviation </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> tBodyGyroJerkXMean </TD> <TD> Time </TD> <TD> Body mean x-axis gyroscope derivative </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> tBodyGyroJerkYMean </TD> <TD> Time </TD> <TD> Body mean y-axis gyroscope derivative </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> tBodyGyroJerkZMean </TD> <TD> Time </TD> <TD> Body mean z-axis gyroscope derivative </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> tBodyGyroJerkXStd </TD> <TD> Time </TD> <TD> Body x-axis gyroscope derivative standard deviation </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> tBodyGyroJerkYStd </TD> <TD> Time </TD> <TD> Body y-axis gyroscope derivative standard deviation </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> tBodyGyroJerkZStd </TD> <TD> Time </TD> <TD> Body z-axis gyroscope derivative standard deviation </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> tBodyAccMagMean </TD> <TD> Time </TD> <TD> Body mean acceleration magnitude </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> tBodyAccMagStd </TD> <TD> Time </TD> <TD> Body acceleration standard deviation </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> tGravityAccMagMean </TD> <TD> Time </TD> <TD> Gravity mean acceleration magnitude </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> tGravityAccMagStd </TD> <TD> Time </TD> <TD> Gravity acceleration magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> tBodyAccJerkMagMean </TD> <TD> Time </TD> <TD> Body mean acceleration derivative magnitude </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> tBodyAccJerkMagStd </TD> <TD> Time </TD> <TD> Body acceleration derivative magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> tBodyGyroMagMean </TD> <TD> Time </TD> <TD> Body mean gyroscope magnitude </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> tBodyGyroMagStd </TD> <TD> Time </TD> <TD> Body gyroscope magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> tBodyGyroJerkMagMean </TD> <TD> Time </TD> <TD> Body mean gyroscope derivative magnitude </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> tBodyGyroJerkMagStd </TD> <TD> Time </TD> <TD> Body gyroscope derivative magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> fBodyAccXMean </TD> <TD> Frequency </TD> <TD> Mean FFT(Body x-axis acceleration) magnitude </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> fBodyAccYMean </TD> <TD> Frequency </TD> <TD> Mean FFT(Body y-axis acceleration) magnitude </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> fBodyAccZMean </TD> <TD> Frequency </TD> <TD> Mean FFT(Body z-axis acceleration) magnitude </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> fBodyAccXStd </TD> <TD> Frequency </TD> <TD> FFT(Body x-axis acceleration) magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> fBodyAccYStd </TD> <TD> Frequency </TD> <TD> FFT(Body y-axis acceleration) magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> fBodyAccZStd </TD> <TD> Frequency </TD> <TD> FFT(Body z-axis acceleration) magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> fBodyAccXMeanFreq </TD> <TD> Frequency </TD> <TD> Body mean x-axis acceleration frequency </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> fBodyAccYMeanFreq </TD> <TD> Frequency </TD> <TD> Body mean y-axis acceleration frequency </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> fBodyAccZMeanFreq </TD> <TD> Frequency </TD> <TD> Body mean z-axis acceleration frequency </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> fBodyAccJerkXMean </TD> <TD> Frequency </TD> <TD> Mean FFT(Body x-axis acceleration derivative) magnitude </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> fBodyAccJerkYMean </TD> <TD> Frequency </TD> <TD> Mean FFT(Body y-axis acceleration derivative) magnitude </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> fBodyAccJerkZMean </TD> <TD> Frequency </TD> <TD> Mean FFT(Body z-axis acceleration derivative) magnitude </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> fBodyAccJerkXStd </TD> <TD> Frequency </TD> <TD> FFT(Body x-axis acceleration derivative) magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> fBodyAccJerkYStd </TD> <TD> Frequency </TD> <TD> FFT(Body y-axis acceleration derivative) magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> fBodyAccJerkZStd </TD> <TD> Frequency </TD> <TD> FFT(Body z-axis acceleration derivative) magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> fBodyAccJerkXMeanFreq </TD> <TD> Frequency </TD> <TD> Body mean x-axis acceleration derivative frequency </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> fBodyAccJerkYMeanFreq </TD> <TD> Frequency </TD> <TD> Body mean y-axis acceleration derivative frequency </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> fBodyAccJerkZMeanFreq </TD> <TD> Frequency </TD> <TD> Body mean z-axis acceleration derivative frequency </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> fBodyGyroXMean </TD> <TD> Frequency </TD> <TD> Mean FFT(Body x-axis gyroscope) magnitude </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> fBodyGyroYMean </TD> <TD> Frequency </TD> <TD> Mean FFT(Body y-axis gyroscope) magnitude </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> fBodyGyroZMean </TD> <TD> Frequency </TD> <TD> Mean FFT(Body z-axis gyroscope) magnitude </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> fBodyGyroXStd </TD> <TD> Frequency </TD> <TD> FFT(Body x-axis gyroscope) magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> fBodyGyroYStd </TD> <TD> Frequency </TD> <TD> FFT(Body y-axis gyroscope) magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> fBodyGyroZStd </TD> <TD> Frequency </TD> <TD> FFT(Body z-axis gyroscope) magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> fBodyGyroXMeanFreq </TD> <TD> Frequency </TD> <TD> Body x-axis gyroscope mean frequency </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> fBodyGyroYMeanFreq </TD> <TD> Frequency </TD> <TD> Body y-axis gyroscope mean frequency </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> fBodyGyroZMeanFreq </TD> <TD> Frequency </TD> <TD> Body z-axis gyroscope mean frequency </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> fBodyAccMagMean </TD> <TD> Frequency </TD> <TD> Mean FFT(Body acceleration) magnitude </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> fBodyAccMagStd </TD> <TD> Frequency </TD> <TD> FFT(Body acceleration) magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> fBodyAccMagMeanFreq </TD> <TD> Frequency </TD> <TD> Body acceleration magnitude mean frequency </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> fBodyBodyAccJerkMagMean </TD> <TD> Frequency </TD> <TD> Mean FFT(Body acceleration derivative) magnitude </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> fBodyBodyAccJerkMagStd </TD> <TD> Frequency </TD> <TD> FFT(Body acceleration derivative) standard deviation </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> fBodyBodyAccJerkMagMeanFreq </TD> <TD> Frequency </TD> <TD> Body acceleration derivative mean frequency </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> fBodyBodyGyroMagMean </TD> <TD> Frequency </TD> <TD> Mean FFT(Body gyroscope) magnitude </TD> </TR>
  <TR> <TD align="right"> 75 </TD> <TD> fBodyBodyGyroMagStd </TD> <TD> Frequency </TD> <TD> FFT(Body gyroscope) magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 76 </TD> <TD> fBodyBodyGyroMagMeanFreq </TD> <TD> Frequency </TD> <TD> Body gyroscope magnitude mean frequency </TD> </TR>
  <TR> <TD align="right"> 77 </TD> <TD> fBodyBodyGyroJerkMagMean </TD> <TD> Frequency </TD> <TD> Mean FFT(Body gyroscope derivative) magnitude </TD> </TR>
  <TR> <TD align="right"> 78 </TD> <TD> fBodyBodyGyroJerkMagStd </TD> <TD> Frequency </TD> <TD> FFT(Body gyroscope derivative) magnitude standard deviation </TD> </TR>
  <TR> <TD align="right"> 79 </TD> <TD> fBodyBodyGyroJerkMagMeanFreq </TD> <TD> Frequency </TD> <TD> Body gyroscope derivative magnitude mean frequency </TD> </TR>
  <TR> <TD align="right"> 80 </TD> <TD> angle.tBodyAccMean.gravity </TD> <TD> Time </TD> <TD> angle(Body mean acceleration, gravity) </TD> </TR>
  <TR> <TD align="right"> 81 </TD> <TD> angle.tBodyAccJerkMean.gravityMean </TD> <TD> Time </TD> <TD> angle(Body mean acceleration derivative, mean gravity) </TD> </TR>
  <TR> <TD align="right"> 82 </TD> <TD> angle.tBodyGyroMean.gravityMean </TD> <TD> Time </TD> <TD> angle(Body mean gyroscope, mean gravity) </TD> </TR>
  <TR> <TD align="right"> 83 </TD> <TD> angle.tBodyGyroJerkMean.gravityMean </TD> <TD> Time </TD> <TD> angle(Body mean gyroscope derivative, mean gravity) </TD> </TR>
  <TR> <TD align="right"> 84 </TD> <TD> angle.X.gravityMean </TD> <TD> Time </TD> <TD> angle(X-axis, mean gravity) </TD> </TR>
  <TR> <TD align="right"> 85 </TD> <TD> angle.Y.gravityMean </TD> <TD> Time </TD> <TD> angle(Y-axis, mean gravity) </TD> </TR>
  <TR> <TD align="right"> 86 </TD> <TD> angle.Z.gravityMean </TD> <TD> Time </TD> <TD> angle(Z-axis, mean gravity) </TD> </TR>
   </TABLE>

## Data Transformations    
  
The top-level flow of the R script (i.e. run_analysis.R) that I wrote to create a tidy data set that contains the mean and standard deviation of the UCA HAR Smartphone data set is composed of the following nine steps:  
1. [Verify that the required R packages are installed](http://stackoverflow.com/questions/9341635/how-can-i-check-for-installed-r-packages-before-running-install-packages)  
2. [Reset the R environment](http://stackoverflow.com/questions/14187048/r-language-clean-variables-and-close-connections)    
3. Initialize the Uniform Resource Locator (i.e. URL) that refers to the compressed UCI HAR dataset.  
4. Determine whether or not the getdata-projectfiles-UCI HAR dataset folder exists in the directory where `run_analysis.R` is being run.If this folder doesn't exist, `run_analysis.R` downloads this zip using [binary mode](http://stackoverflow.com/questions/9655361/download-png-jpg-with-r). Next, it extracts the contents of this zip file using the [unzip](http://www.r-bloggers.com/read-compressed-zip-files-in-r/) function.  
5. Initialize the path to the top-level of the UCI HAR Dataset.    
6. Loads the combined training & test data set.  
7. Computes the average value of each variable for each activity and subject using the aggregate function that is part of the [plyr package](http://stackoverflow.com/questions/11370323/learning-to-understand-plyr-ddply).  
8. Order the data frame generated of step 7.) by the subject using the arrange function that is included in the plyr package. This function was mentioned in the following presentation by Hadley Wickham: ["Tidy data & tidy tools"](http://vimeo.com/33727555). In addition, a link to the slides for this presentation is provided in the a Promethus Research blog article entitled ["Good Data Management Practices for Data Analysis: Tidy Data (Part 2)](http://www.prometheusresearch.com/good-data-management-practices-for-data-analysis-tidy-data-part-2/).  
9. Write the tidy data set to a text file using *write.table()* function with the *row.names* option set to FALSE.  

The procedure that I followed to create a combined training & test data set begins with loading a description of the variables (i.e. features) stored in the *features.txt* file located in the "UCI HAR Dataset" folder.  
  
The first processing step that I apply is removing the feature number from the feature name using the following gsub function call:  
  
`features <- gsub("[0-9]+\\s+","",features)`.  
  
Next, `run_analysis.R` loops loops through the feature names and applies the regular expressions defined in Table #2 to separate substring groups from the "HCI HAR Smartphone" data set variable names. This R script subsequently reformats the feature name shown on the left column of Table #2 into the transformed feature name illustrated on the right column in this table. In addition, the regular expressions included in the center column of Table #2 are based on the following examples:
    
- [Regular expression for matching parentheses](http://stackoverflow.com/questions/5633533/regular-expression-for-matching-parentheses)    
- [Regex group capture in R](http://stackoverflow.com/questions/952275/regex-group-capture-in-r)  
  
