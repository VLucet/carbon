
get_weekly_data <- function(clean = TRUE) {

  weekly_data_url <-
    "https://gml.noaa.gov/webdata/ccgg/trends/co2/co2_weekly_mlo.txt"

  co2_data <- read.table(weekly_data_url, skip = 49)
  names(co2_data) <- c("year", "month", "day", "year_decimal",
                       "co2_ppm", "nb_days", "1_year_ago",
                       "10_years_ago", "increase_since_1980")

  if (clean) {
    co2_data <- co2_data |>
      dplyr::mutate(date = lubridate::ymd(paste(year, month, day,
                                                sep = "-"))) |>
      dplyr::select(-year, -month, -day) |>
      dplyr::relocate(date)
  }

  return(co2_data)
}
