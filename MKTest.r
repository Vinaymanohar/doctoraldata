R Code to find trend in a series using prewhitened Mann-Kendal Statistics.
library(modifiedmk)
library(readxl)
TEMPTABLE<-read_excel("_T_MIN_MAX.xlsx")
ANN_MAX<-TEMPTABLE$ANN_MAX
ANN_MIN<-TEMPTABLE$ANN_MIN
PREM_MAX<-TEMPTABLE$PREM_MAX
PREM_MIN<-TEMPTABLE$PREM_MIN
MON_MAX<-TEMPTABLE$MON_MAX
MON_MIN<-TEMPTABLE$MON_MIN
POST_MAX<-TEMPTABLE$POST_MAX
POST_MIN<-TEMPTABLE$POST_MIN
bcpw(ANN_MAX)
bcpw(ANN_MIN)
bcpw(PREM_MAX)
bcpw(PREM_MIN)
bcpw(MON_MAX)
bcpw(MON_MIN)
bcpw(POST_MAX)
bcpw(POST_MIN)