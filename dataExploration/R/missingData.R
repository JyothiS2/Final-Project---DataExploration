#' Title
#'
#' @param df data set
#'
#' @return Result of the function missing data points for all columns
#' @export
#'
#' @examples missingDataNumber(iris)
missingDataNumber <- function(df) {
  missData <- as.data.frame(colMeans(is.na(df))*100)
  missData <- cbind(rownames(missData), data.frame(missData, row.names=NULL))
  names(missData) <- c('Variables',"Missing Percentage")
  return(missData)
}
