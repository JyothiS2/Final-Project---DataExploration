########### correlation Plot ##########

#' Title
#'
#' @param df data set
#'
#' @return Gives Correlation graph of entire data
#' @export
#'
#' @examples getCorrelation(iris)
#'
getCorrelation <- function(df) {
  library(corrplot)
  numeric_df = as.data.frame(df[ ,sapply(df, is.numeric)])
  cor_data <- cor(numeric_df)
  return(corrplot(cor_data, method="number"))
}

#getCorrelation(data)
