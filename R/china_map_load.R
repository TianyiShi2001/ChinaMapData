#' Translate province
#'
#' @param decimal number of decimals kept. By default it's kept to the best precision.
#'
#' @return the map data as a tibble
#' @export
#'
#' @examples
#' china_map_load(2)
china_map_load <- function(decimal=NULL){
  map <- ChinaMapData::china_map
  if(!is.null(decimal)){
    map <- mutate(map,
         long = round(long, decimal),
         lat = round(lat, decimal))
  }
  return(map)
}

