#' China Map Data
#'
#' China map data with boundaries between provinces/municipalities/
#' autonomous regions/SARs
#' @format A data frame with 53940 rows and 10 variables:
#' \describe{
#'   \item{province}{name of province/municipality/autonomous region/SAR}
#'   \item{long}{longitude}
#'   \item{lat}{latitude}
#'   \item{group}{groups of individual polygons; used in plotting, e.g. ggplot(china_map, aes(long, lat, group=group))+geom_polygon()}
#'   ...
#' }
#' @source \url{http://bzdt.ch.mnr.gov.cn}
"china_map"

#' Translation of province names
#'
#' Translations of provinces/municipalities/autonomous regions/SARs
#' @format A data frame with 53940 rows and 10 variables:
#' \describe{
#'   \item{...}{short or full names for each language}
#'   ...
#' }
"province_translation"


#' Province Data
#'
#' Data of provinces/municipalities/autonomous regions/SARs,
#' including the positions of their capitals
"province_data"
