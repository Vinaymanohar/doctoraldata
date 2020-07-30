#R Code to Find the Abrupt Change in Time Series using the Level Fitting Techniques
library(strucchange)
library(fUnitRoots)
library(astsa)
library(readxl)
Annual_RF <- read_excel("C:/Users/Admin/Desktop/Thesis/Analysis#8_Abrupt_Change/Rainfall_Final.xlsx")
mnlpa<-ts(data=Annual_RF, start=1901, end = 2050, frequency = 1)
mnlpa ~ tt
l <- length(mnlpa)
tt <- 1:l
trend_fit <- lm(mnlpa ~ tt)
#summary(trend_fit)
#plot(mnlpa)
#lines(ts(fitted(trend_fit), start=1880, frequency = 1), col = 4)
mnlpa_brk <- breakpoints(mnlpa ~ tt, h = 0.1)
#summary(mnlpa_brk)
#plot(mnlpa_brk)
plot(mnlpa, col="Blue", main="Abrupt Change Points in Monsoonal Rainfall of MNLPA", xlab="Rainfall Years (1901-2050)", ylab="Monsoon Rainfall in mm", cex.lab=0.75)
lines(fitted(mnlpa_brk, breaks = 6), col = "red")
lines(confint(mnlpa_brk, breaks = 6), col = "hallow")
#End of trend
#Start of Descriptive Statistics
breakdates(mnlpa_brk, breaks = 6)
#trend break coefficients
coef(mnlpa_brk, breaks = 6)