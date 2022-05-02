
####### Numerical statistics############



#' Title
#'
#' @param df A data set
#'
#' @return Result of the function summary stats
#' @export
#'
#' @examples dataNumericStats(iris)

dataNumericStats <- function(df) {
  library(psych)

  numeric_df = as.data.frame(df[ ,sapply(df, is.numeric)])
  statDF = (as.data.frame(psych::describe(numeric_df)))
  statDF <- cbind(rownames(statDF), data.frame(statDF, row.names=NULL))

  names(statDF) = c("Variables", "Variance","no.of.datapoints","Mean","Standard DevSiation","Median","Trimmed mean","Mean Absloute deviation","Minimum value","Maximun Value", "Range","Skewness","kurtosis","Standard error"  )
  return(statDF)
}
