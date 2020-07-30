library(hydroGOF)
require(zoo)
setwd("I:\\CLIMATE DATA\\COMPARISION")
data<-read.csv.zoo("test_comma.csv")
obs_imd<-data$observed
sim_gcm<-data$simulated
gof(sim = sim_gcm, obs = obs_imd)
compare=gof(sim = sim_gcm, obs = obs_imd)
write.csv(compare, file="result.csv")