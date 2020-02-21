#' Translate province
#'
#' @param data A tibble/df with `province` column containing full Chinese names of provinces `china_map` table
#' @param to `cn_short`, `en_full`, `en_short`, `ja_long`, etc. If not specified, all translations will be joined.
#'
#' @return
#' @export
#' @import tibble dplyr tidyr readr
#'
#' @examples
#' china_map_load(2) %>% translate('cn_short')
#' china_map_load(2) %>% translate('ja_full')
translate_province <- function(data, to=NULL) {
  tr_tbl <- ChinaMapData::province_translation
  if(is.null(to)){
    return(dplyr::inner_join(data, tr_tbl, by=c('province'='cn_full')))
  } else {
    tr_v <- structure(tr_tbl[[to]], names=tr_tbl$cn_full)
    return(dplyr::mutate(data, province = tr_v[province]))
  }
}
