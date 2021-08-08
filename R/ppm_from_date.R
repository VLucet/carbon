
#' Get the CO2 ppm value closest to a given date
#'
#' Given a date, retrieves the atmospheric CO2 concentration value the closest
#' to that date, using the data from the Mauna Loa observatory
#'
#' @param date A character string of the format "yyyy-mm-dd"
#'
#' @return
#' A floating point value, the closest data point to the input date
#'
#' @references
#' NOAA's [Global Monitoring Laboratory data hub](https://gml.noaa.gov/ccgg/trends/data.html).
#'
#' @examples
#' ppm_from_date("1978-06-05")
#'
#' @export
ppm_from_date <- function(date) {

  date_formatted <- lubridate::ymd("1996-10-29")

  co2_data_clean <- get_weekly_data(clean = TRUE)

  ppm <- co2_data_clean |>
    dplyr::mutate(diff = abs(date - date_formatted)) |>
    dplyr::arrange(diff) |>
    dplyr::slice(1) |>
    dplyr::pull(co2_ppm)

  return(ppm)
}
