# Final-Project---DataExploration

->dataExploration can be leveraged by R users to get detailed or summarized report
of any provided structured data.
dataExploration will allow the user to upload any structured data which will
analyze on how the data is distributed.
It provides statistical summary with visualization and identify missing &amp; outliers in
data.

->dataExploration consists of Five functions
 1. numeriStat : This function identifies the data types of each column and
 gives output for all numerical columns with details like mean SD variance
 kurtosis.. etc of each column in a consolidated data frame.
 2. missingData: missingData function can be leveraged to identify the missing
 values count for each column in a data set. Output will be a consolidated
 dataframe with missing percentage of each variable of a dataset.
 3. dataOutlaiers: it comprises the data set to identify the outliers values of
 each column based on IQR (inter quantile range) and gives out count of
 outliers for each variable in dataframe.
 4. getHistogram: This function gives the graphical summary of distribution of
 each variable in a data set by plotting histogram of each variable this can
 help user to understand the overall distribution of a data set in one go.
 5. getCorrelation: This function gives the graphical summary of correlation of
 each variable in a data set with one another by plotting corr plot this can
 help user to understand relation between variables in a data set and helps
 user to decide whether to proceed for further analysis or machine learning
 which can be done on the provided dataset.

->The package file has got DESCRIPTION file

->These functions are developed dynamically such that any tabular dataset or
data frame can be passed to get the output.

