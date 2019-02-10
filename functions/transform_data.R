transform_data <- function(df, slider1, slider2) {
  df <- suppressMessages(readr::type_convert(df))
  df <- df[slider1:slider2, ]
  df <- stats::na.omit(df)
}