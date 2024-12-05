
library(dplyr)
library(tidyverse)

data<-read.csv('data-raw/Pulliam_Airport_Weather_Station.csv',header=TRUE)

data<-data%>%select(DATE,PRCP,SNOW,TMAX)

Flagstaff_Weather<-data%>%filter(year(DATE)>=2015)

#save(object=Flagstaff_Weather,file="Flagstaff_Weather.rda")

usethis::use_data(Flagstaff_Weather,overwrite = TRUE)

