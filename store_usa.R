dat=read.csv(file.choose())
locations_df=subset(dat,Country=="United States",select=c(City,Latitude,Longitude,Profit))
locations_df$id=seq.int(nrow(locations_df))

library(tidyverse)
library(ggplot2)
library(ggmap)

locations <- as_tibble(locations_df)
library(sf)
library(mapview)

library(mapview)
locations_sf <- st_as_sf(locations, coords = c("Longitude","Latitude"), crs = 4326)
mapview(locations_sf)

