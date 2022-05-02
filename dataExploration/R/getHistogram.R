########### Histogram Plot ##########

#' Title
#'
#' @param df data set
#'
#' @return histogram plot for all numerical columns in data set
#' @export
#'
#' @examples getHistogram(iris)
#'
#'
getHistogram <- function(df) {
  library(Hmisc)
  numeric_df = as.data.frame(df[ ,sapply(df, is.numeric)])
  #plt <- hist.data.frame(numeric_df)
  return(hist.data.frame(numeric_df))
}

#getHistogram(data)
