## code to prepare `DATASET` dataset goes here

usethis::use_data("DATASET")
library(tidyverse)

# read shp ----------------------------------------------------------------

china_map <- rgdal::readOGR('data-raw/china_map/bou2_4p.shp')
shape <- broom::tidy(china_map) %>%
  mutate(id = as.integer(id)) %>%
  select(long, lat, group, id)
provice_id <- as_tibble(data.frame(china_map@data, id = 0:924)) %>%
  mutate(location = iconv(NAME,"GBK", "UTF-8")) %>%
  select(id, location)
china_map <- inner_join(provice_id, shape, by = 'id') %>%
  select(-id) %>% rename(province=location) %>%
  drop_na()

usethis::use_data(china_map, overwrite = TRUE)


# province data -----------------------------------------------------------

province_data <- read_csv('data-raw/province_data.csv')
usethis::use_data(province_data, overwrite = TRUE)


# province_translation ----------------------------------------------------

province_translation <- read_csv('data-raw/province_translation.csv')
usethis::use_data(province_translation, overwrite = TRUE)

