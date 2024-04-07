install.packages("gpx")
install.packages("tidyverse")
library(gpx)
library(tidyverse)

tabler <- function(dataf, name) {
  processed <- read_gpx(dataf)
  df <- as.data.frame(processed$tracks)
  lats <- df$Latitude
  longs <- df$Longitude
  
  df2 <- data.frame(lat_names = lats, long_names = longs)
  
  names <- c(paste0(name, "_lats"), paste0(name, "_longs"))
  
  if(length(names) != ncol(df2)) {
    stop("The number of new column names must match the number of columns in the data frame.")
  }
  
  # Assign new column names
  colnames(df2) <- names
  
  # Return the updated data frame
  return(df2)
}

capilano <- tabler("../Capilano_Canyon.gpx", "capilano_canyon") |>
  write.csv(file = "exported csvs/capilano.csv", row.names = FALSE)
buntzen <- tabler("../Buntzen Lake Trail.gpx", "buntzen_lake") |>
  write.csv(file = "exported csvs/buntzen.csv", row.names = FALSE)
woodhaven <- tabler("Woodhaven-Sasamat Trails.gpx", "woodhaven_sasamat") |>
  write.csv(file = "exported csvs/woodhaven.csv", row.names = FALSE)
tbird <- tabler("Thunderbird Ridge & Dam Mountain via LGMH.gpx","thunderbird_ridge") |>
  write.csv(file = "exported csvs/tbird.csv", row.names = FALSE)
smount <- tabler("Sugar Mountain Loop.gpx", "sugar_mountain") |>
  write.csv(file = "exported csvs/smount.csv", row.names = FALSE)
saint <- tabler("Saint Marks Summit.gpx", "saint_marks") |>
  write.csv(file = "exported csvs/saint.csv", row.names = FALSE)
rice <- tabler("Rice Lake from Lynn Canyon Park.gpx", "rice_lake") |>
  write.csv(file = "exported csvs/rice.csv", row.names = FALSE)
quarry <- tabler("Quarry Rock.gpx", "quarry_rock") |>
  write.csv(file = "exported csvs/quarry.csv", row.names = FALSE)
pump <- tabler("Pump Peak.gpx", "pump_peak") |>
  write.csv(file = "exported csvs/pump.csv", row.names = FALSE)
norvan <- tabler("Norvan Falls.gpx", "norvan_falls") |>
  write.csv(file = "exported csvs/norvan.csv", row.names = FALSE)
mystery <- tabler("Mystery Lake and Mystery Peak.gpx", "mystery_lake") |>
  write.csv(file = "exported csvs/mystery.csv", row.names = FALSE)
strachan <- tabler("Mount Strachan Loop.gpx", "mount_strachan") |>
  write.csv(file = "exported csvs/strachan.csv", row.names = FALSE)
seymour <- tabler("Mount Seymour Trail.gpx", "mount_seymour") |>
  write.csv(file = "exported csvs/seymour.csv", row.names = FALSE)
bishop <- tabler("Mount Bishop.gpx", "mount_bishop") |>
  write.csv(file = "exported csvs/bishop.csv", row.names = FALSE)
lpeak <- tabler("Lynn Peak.gpx", "lynn_peak") |>
  write.csv(file = "exported csvs/lynnpeak.csv", row.names = FALSE)
lcanyon <- tabler("Lynn Canyon.gpx", "lynn_canyon") |>
  write.csv(file = "exported csvs/lynncanyon.csv", row.names = FALSE)
lloop <- tabler("Lower Lynn Loop Trail.gpx", "lower_lynn_cannon") |>
  write.csv(file = "exported csvs/lynnloop.csv", row.names = FALSE)
light <- tabler("Lighthouse Park.gpx", "lighthouse_park") |>
  write.csv(file = "exported csvs/lighthouse.csv", row.names = FALSE)
kennedy <- tabler("Kennedy Falls.gpx", "kennedy_falls") |>
  write.csv(file = "exported csvs/kennedy.csv", row.names = FALSE)
jug <- tabler("Jug Island Beach Trail.gpx", "jug_island_beach") |>
  write.csv(file = "exported csvs/jug.csv", row.names = FALSE)
hanes <- tabler("Hanes Valley.gpx", "hanes_valley") |>
  write.csv(file = "exported csvs/hanes.csv", row.names = FALSE)
grouse <- tabler("Grouse Grind Trail.gpx", "grouse_grind") |>
  write.csv(file = "exported csvs/grouse.csv", row.names = FALSE)
goat <- tabler("Goat Mountain.gpx", "goat_mountain") |>
  write.csv(file = "exported csvs/goat.csv", row.names = FALSE)

capilano
buntzen
woodhaven
tbird
smount
saint
rice
quarry
pump
norvan
mystery
strachan
seymour
bishop
lpeak
lcanyon
lloop
light
kennedy
jug
hanes
grouse
goat
