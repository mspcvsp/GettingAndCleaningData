# plotTidyData.R
#
#
# R programming style guide reference:
# -----------------------------------
# https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml

#-----------------------------------------------------------------------------
# Verify required packages are installed
#-----------------------------------------------------------------------------
# Techincal reference:
# http://stackoverflow.com/questions/9341635/how-can-i-check-for-installed-r-packages-before-running-install-packages
required.packages <- c("RColorBrewer",
                       "ggplot2")

new.packages <- required.packages[!(required.packages %in% 
                                      installed.packages()[,"Package"])]

required.packages <- c("RColorBrewer",
                       "ggplot2")

# Reset R environment
# http://stackoverflow.com/questions/14187048/r-language-clean-variables-and-close-connections
closeAllConnections()
rm(list=ls())

library(ggplot2)
library(RColorBrewer)

tidyData <- read.table("./tidyData.txt",
                       header=TRUE)

# Techincal references:
# -------------------
# http://stackoverflow.com/questions/14733732/cant-change-fonts-in-ggplot-geom-text
windowsFonts(Times=windowsFont("TT Times New Roman"))

ggplot(tidyData, aes(x=subject,y=tBodyAccXMean,colour=activity)) + 
  geom_point(size=5) + facet_grid(. ~ activity) + 
  facet_wrap(~ activity,nrow=3) + 
  scale_x_discrete(breaks=c(seq(1,30,5))) +
  scale_color_brewer(type="qual", palette="Dark2") +
  theme_gray(base_size=16, base_family="Times") +
  labs(x="Subject #", y="X-axis Body Acceleration")
ggsave("tBodyAccXMean.png")
