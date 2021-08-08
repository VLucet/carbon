
ppm_from_date <- function(date) {

  date_formatted <- lubridate::ymd("1996-10-29")

  co2_data_clean <- get_weekly_data(clean = TRUE)

  ppm <- co2_data_clean %>%
    dplyr::mutate(diff = abs(date - date_formatted)) %>%
    dplyr::arrange(diff) %>%
    dplyr::slice(1) %>%
    dplyr::pull(co2_ppm)

  return(ppm)
}
