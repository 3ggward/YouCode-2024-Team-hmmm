library(gpx)
library(tidyverse)

arrayer <- function(string) {
  processed <- read_gpx(string)
  df <- as.data.frame(processed$tracks)
  lats <- df$Latitude
  longs <- df$Longitude
  
  i <- 1
  vect <- c()
  while(i < nrow(df)) {
    lat <- lats[i]
    long <- longs[i]
    vect <- append(vect, array(c(lat, long)))
    i <- i + 1
  }
  array(vect, dim = c(1, 2, nrow(df) - 1))
  
  
}

capilano <- arrayer("Capilano_Canyon.gpx")

saveRDS(capilano, file = "Capilano_Tracks.rds")
