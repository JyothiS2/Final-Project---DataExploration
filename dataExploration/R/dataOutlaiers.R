


######### Identifiying outliers ###############

#' Title
#'
#' @param df data set
#'
#' @return Result of the function outlier data points for all columns
#' @export
#'
#' @examples dataOutlaiers(iris)
#'
#'
dataOutlaiers <- function(df) {

  FindOutliers <- function(data) {
    lowerq = quantile(data)[2]
    upperq = quantile(data)[4]
    iqr = upperq - lowerq #Or use IQR(data)
    # we identify extreme outliers
    extreme.threshold.upper = (iqr * 3) + upperq
    extreme.threshold.lower = lowerq - (iqr * 3)
    result <- which(data > extreme.threshold.upper | data < extreme.threshold.lower)
    length(result)
  }

  numeric_df = as.data.frame(df[ ,sapply(df, is.numeric)])

  outlaiersData <- as.data.frame(apply(numeric_df, 2, FindOutliers))
  outlaiersData <- cbind(rownames(outlaiersData), data.frame(outlaiersData, row.names=NULL))
  names(outlaiersData) <- c('Variables',"Outlaiers count")

  return(outlaiersData)
}
