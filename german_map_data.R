temp <- tempfile()
download.url <- "https://userpage.fu-berlin.de/soga/300/30100_data_sets/spatial/"
zipfile <- "germany_districts.zip"
## download the file
download.file(paste0(download.url,zipfile),temp, mode="wb")
## unzip the file(s)
unzip(temp)
## close file connection
unlink(temp)
dists <- st_read("./datasets/germany_districts.shp")


#

dists %>% ggplot(aes(fill = log(pop_dens))) + geom_sf()


dists %>% filter(str_detect(district, "Lübeck")) %>% ggplot() + geom_sf()
