# Codebook #

The objective of this document is to process that I followed in order to create a tidy data set from the University of California, Irvine Human Activity Recognition Using Smartphones data set mean and standard deviation measurements.

The citation for this data set is:  
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012. ["Human Activity Recognition Using Smartphones Data Set"](http://http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Variables
<TABLE border=1>
<TR> <TH> # </TH> <TH> variable </TH> <TH> description </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> tBodyAccXMean </TD> <TD> tBodyAccXMean </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> tBodyAccYMean </TD> <TD> tBodyAccYMean </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> tBodyAccZMean </TD> <TD> tBodyAccZMean </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> tBodyAccXStd </TD> <TD> tBodyAccXStd </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> tBodyAccYStd </TD> <TD> tBodyAccYStd </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> tBodyAccZStd </TD> <TD> tBodyAccZStd </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> tGravityAccXMean </TD> <TD> tGravityAccXMean </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> tGravityAccYMean </TD> <TD> tGravityAccYMean </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> tGravityAccZMean </TD> <TD> tGravityAccZMean </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> tGravityAccXStd </TD> <TD> tGravityAccXStd </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> tGravityAccYStd </TD> <TD> tGravityAccYStd </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> tGravityAccZStd </TD> <TD> tGravityAccZStd </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> tBodyAccJerkXMean </TD> <TD> tBodyAccJerkXMean </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> tBodyAccJerkYMean </TD> <TD> tBodyAccJerkYMean </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> tBodyAccJerkZMean </TD> <TD> tBodyAccJerkZMean </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> tBodyAccJerkXStd </TD> <TD> tBodyAccJerkXStd </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> tBodyAccJerkYStd </TD> <TD> tBodyAccJerkYStd </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> tBodyAccJerkZStd </TD> <TD> tBodyAccJerkZStd </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> tBodyGyroXMean </TD> <TD> tBodyGyroXMean </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> tBodyGyroYMean </TD> <TD> tBodyGyroYMean </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> tBodyGyroZMean </TD> <TD> tBodyGyroZMean </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> tBodyGyroXStd </TD> <TD> tBodyGyroXStd </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> tBodyGyroYStd </TD> <TD> tBodyGyroYStd </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> tBodyGyroZStd </TD> <TD> tBodyGyroZStd </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> tBodyGyroJerkXMean </TD> <TD> tBodyGyroJerkXMean </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> tBodyGyroJerkYMean </TD> <TD> tBodyGyroJerkYMean </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> tBodyGyroJerkZMean </TD> <TD> tBodyGyroJerkZMean </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> tBodyGyroJerkXStd </TD> <TD> tBodyGyroJerkXStd </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> tBodyGyroJerkYStd </TD> <TD> tBodyGyroJerkYStd </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> tBodyGyroJerkZStd </TD> <TD> tBodyGyroJerkZStd </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> tBodyAccMagMean </TD> <TD> tBodyAccMagMean </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> tBodyAccMagStd </TD> <TD> tBodyAccMagStd </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> tGravityAccMagMean </TD> <TD> tGravityAccMagMean </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> tGravityAccMagStd </TD> <TD> tGravityAccMagStd </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> tBodyAccJerkMagMean </TD> <TD> tBodyAccJerkMagMean </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> tBodyAccJerkMagStd </TD> <TD> tBodyAccJerkMagStd </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> tBodyGyroMagMean </TD> <TD> tBodyGyroMagMean </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> tBodyGyroMagStd </TD> <TD> tBodyGyroMagStd </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> tBodyGyroJerkMagMean </TD> <TD> tBodyGyroJerkMagMean </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> tBodyGyroJerkMagStd </TD> <TD> tBodyGyroJerkMagStd </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> fBodyAccXMean </TD> <TD> fBodyAccXMean </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> fBodyAccYMean </TD> <TD> fBodyAccYMean </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> fBodyAccZMean </TD> <TD> fBodyAccZMean </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> fBodyAccXStd </TD> <TD> fBodyAccXStd </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> fBodyAccYStd </TD> <TD> fBodyAccYStd </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> fBodyAccZStd </TD> <TD> fBodyAccZStd </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> fBodyAccXMeanFreq </TD> <TD> fBodyAccXMeanFreq </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> fBodyAccYMeanFreq </TD> <TD> fBodyAccYMeanFreq </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> fBodyAccZMeanFreq </TD> <TD> fBodyAccZMeanFreq </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> fBodyAccJerkXMean </TD> <TD> fBodyAccJerkXMean </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> fBodyAccJerkYMean </TD> <TD> fBodyAccJerkYMean </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> fBodyAccJerkZMean </TD> <TD> fBodyAccJerkZMean </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> fBodyAccJerkXStd </TD> <TD> fBodyAccJerkXStd </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> fBodyAccJerkYStd </TD> <TD> fBodyAccJerkYStd </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> fBodyAccJerkZStd </TD> <TD> fBodyAccJerkZStd </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> fBodyAccJerkXMeanFreq </TD> <TD> fBodyAccJerkXMeanFreq </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> fBodyAccJerkYMeanFreq </TD> <TD> fBodyAccJerkYMeanFreq </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> fBodyAccJerkZMeanFreq </TD> <TD> fBodyAccJerkZMeanFreq </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> fBodyGyroXMean </TD> <TD> fBodyGyroXMean </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> fBodyGyroYMean </TD> <TD> fBodyGyroYMean </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> fBodyGyroZMean </TD> <TD> fBodyGyroZMean </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> fBodyGyroXStd </TD> <TD> fBodyGyroXStd </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> fBodyGyroYStd </TD> <TD> fBodyGyroYStd </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> fBodyGyroZStd </TD> <TD> fBodyGyroZStd </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> fBodyGyroXMeanFreq </TD> <TD> fBodyGyroXMeanFreq </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> fBodyGyroYMeanFreq </TD> <TD> fBodyGyroYMeanFreq </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> fBodyGyroZMeanFreq </TD> <TD> fBodyGyroZMeanFreq </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> fBodyAccMagMean </TD> <TD> fBodyAccMagMean </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> fBodyAccMagStd </TD> <TD> fBodyAccMagStd </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> fBodyAccMagMeanFreq </TD> <TD> fBodyAccMagMeanFreq </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> fBodyBodyAccJerkMagMean </TD> <TD> fBodyBodyAccJerkMagMean </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> fBodyBodyAccJerkMagStd </TD> <TD> fBodyBodyAccJerkMagStd </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> fBodyBodyAccJerkMagMeanFreq </TD> <TD> fBodyBodyAccJerkMagMeanFreq </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> fBodyBodyGyroMagMean </TD> <TD> fBodyBodyGyroMagMean </TD> </TR>
  <TR> <TD align="right"> 75 </TD> <TD> fBodyBodyGyroMagStd </TD> <TD> fBodyBodyGyroMagStd </TD> </TR>
  <TR> <TD align="right"> 76 </TD> <TD> fBodyBodyGyroMagMeanFreq </TD> <TD> fBodyBodyGyroMagMeanFreq </TD> </TR>
  <TR> <TD align="right"> 77 </TD> <TD> fBodyBodyGyroJerkMagMean </TD> <TD> fBodyBodyGyroJerkMagMean </TD> </TR>
  <TR> <TD align="right"> 78 </TD> <TD> fBodyBodyGyroJerkMagStd </TD> <TD> fBodyBodyGyroJerkMagStd </TD> </TR>
  <TR> <TD align="right"> 79 </TD> <TD> fBodyBodyGyroJerkMagMeanFreq </TD> <TD> fBodyBodyGyroJerkMagMeanFreq </TD> </TR>
  <TR> <TD align="right"> 80 </TD> <TD> angle.tBodyAccMean.gravity </TD> <TD> angle.tBodyAccMean.gravity </TD> </TR>
  <TR> <TD align="right"> 81 </TD> <TD> angle.tBodyAccJerkMean.gravityMean </TD> <TD> angle.tBodyAccJerkMean.gravityMean </TD> </TR>
  <TR> <TD align="right"> 82 </TD> <TD> angle.tBodyGyroMean.gravityMean </TD> <TD> angle.tBodyGyroMean.gravityMean </TD> </TR>
  <TR> <TD align="right"> 83 </TD> <TD> angle.tBodyGyroJerkMean.gravityMean </TD> <TD> angle.tBodyGyroJerkMean.gravityMean </TD> </TR>
  <TR> <TD align="right"> 84 </TD> <TD> angle.X.gravityMean </TD> <TD> angle.X.gravityMean </TD> </TR>
  <TR> <TD align="right"> 85 </TD> <TD> angle.Y.gravityMean </TD> <TD> angle.Y.gravityMean </TD> </TR>
  <TR> <TD align="right"> 86 </TD> <TD> angle.Z.gravityMean </TD> <TD> angle.Z.gravityMean </TD> </TR>
   </TABLE>
