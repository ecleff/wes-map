# Wesleyan specific map
library(leaflet)
library(shiny)
library(dplyr)
library(devtools)
library(leaflet.extras)
wes_data <- data.frame("Place" = c("[Select location]",
                                   "Long Lane Farm", 
                                   "Indian Hill Cemetery",
                                   "Beman Triangle", 
                                   "High Rise/Traverse Square",
                                   "University Organizing Center",
                                   "The CFA",
                                   "Cheshire Correctional Facility",
                                   "York Correctional Institution",
                                   "MacDougall-Walker Correctional Institution",
                                   "Music House",
                                   "200 Church",
                                   "Olin Memorial Library",
                                   "167-169 High Street",
                                   "Alpha Delta Phi",
                                   "Office of Public Safety",
                                   "College Row",
                                   "First President's House/Center for the Americas",
                                   "President's House",
                                   "Downey House",
                                   "Davison Arts Center",
                                   "Davison Health Center",
                                   "Russell House",
                                   "Green Street/North End Action Team"), 
                       "Longitude" = c(-72.6569, -72.666572, -72.662807, -72.660037,-72.651434, -72.653768, -72.657644,
                                       -72.899007, -72.237167,-72.635379, -72.656320, -72.654979, -72.656680,
                                       -72.653967, -72.654756, -72.653932, -72.655411, -72.655301, -72.655620,
                                       -72.654398, -72.655820, -72.655855, -72.654626, -72.651723), 
                       "Latitude" = c(41.5566, 41.544479, 41.556045, 41.553141, 41.556051, 41.554871, 41.559195,
                                      41.522029, 41.323157, 41.950153,41.561128,41.554568, 41.554736, 41.554169,
                                      41.554839, 41.555563, 41.556162, 41.557185, 41.557665, 41.558491, 41.558595,
                                      41.559487, 41.560504, 41.565099),
                       "Zoom"=c(12, 16.5,  16.5,  16.5, 17.5, 17.5, 17.5, 14.5, 14.5, 17.5, 17.5, 17.5, 17.5,
                                17.5, 17.5, 17.5, 17.5, 17.5, 17.5, 17.5, 17.5, 17.5, 17.5, 17.5),
                       "Color"=c("white", "red", "red", "red", "red", "red", "red", "red", "red", "red", 
                                 "red", "red", "red", "red", "red", "red", "red", "red", "red", "red", 
                                 "red", "red", "red", "red"),
                       "Opacity"=c(.1, .7, .7, .7, .7, .7, .7, .7, .7, .7, .7, .7, .7, 
                                   .7, .7, .7, .7, .7, .7, .7, .7, .7, .7, .7))


#library(RCurl)
#urlfile<-'https://github.com/ecleff/wes-map/blob/master/wes_data.csv'
#wes_data<-read.csv("wes_data.csv")




